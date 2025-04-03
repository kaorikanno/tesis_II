set subjs = ( 103515 )


foreach subj ( $subjs )

    cd $subj
    echo $subj

#    mkdir archivos_blur1
#    cp rfMRI_REST1_01.nii.gz archivos_blur1
#    cd archivos_blur1
#    3dBlurToFWHM -FWHM 6 -input rfMRI_REST1_01.nii.gz -prefix rfMRI_BLUR_01.nii.gz


#if ( ! -f Vid_R_mask+tlrc.HEAD) then

#       set seeds = ( "0 -53 26" "-48 -62 36" "46 -62 32" "0 52 -6" "-24 -22 -20" "24 -20 -22" "-38 -4 48" "40 -4 48" "-24 -58 52" "22 -58 54" "-56 -60 -2" #"54 -58 -4" "-36 -25 57" "36 -25 57" "-43 -26 12" "43 -26 12" "-30 -88 0" "30 -88 0" )

#       set seed_names = ( "pC" "Lat_Par_L" "Lat_Par_R" "mPFC" "HF_L" "HF_R" "FEF_L" "FEF_R" "IPS_L" "IPS_R" "MT_L" "MT_R" "Mot_L" "Mot_R" "Aud_L" "Aud_R" #"Vis_L" "Vid_R")

#       set l = `echo "${#seeds}"`
#       foreach x (`seq 1 1 $l`)
#           echo "seed number:" $x
#           echo $seed_names[$x] $seeds[$x]
#           echo "$seeds[$x]" > ./tmp_dani.txt
#           echo 3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_01.nii.gz -srad 5 -xyz ./tmp_dani.txt
#           3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_01.nii.gz -srad 5 -xyz ./tmp_dani.txt
#       end

#    else 
#       echo seed ready 
#    endif 


#if ( ! -f pC_mask_map_z+tlrc.HEAD) then
#   # Step 3a: Extract mean time series within each ROI
#   3dROIstats -mask pC_mask+tlrc  -1Dformat rfMRI_BLUR_01.nii.gz > pC_mask_ts.1D
#   3dROIstats -mask Mot_L_mask+tlrc  -1Dformat rfMRI_BLUR_01.nii.gz > Mot_L_mask_ts.1D

#   # Step 3b: Generate Pearson correlation between mean time series and all other voxels
#   #original: 3dTcorr1D -pearson -prefix s01_LAmyg.Tcorr1D.nii errts.s01.REST.anaticor+tlrc s01_LAmyg.1D
#   3dTcorr1D -pearson -prefix pC_mask_map+tlrc rfMRI_BLUR_01.nii.gz pC_mask_ts.1D
#   3dTcorr1D -pearson -prefix Mot_L_mask_map+tlrc rfMRI_BLUR_01.nii.gz Mot_L_mask_ts.1D

#   # Step 3c: Convert r score to a z score for use in group analyses
#   #ORIGINAL: 3dcalc -a s01_LAmyg.Tcorr1D.nii -expr 'atanh(a)' -prefix s01_LAmyg.z.nii
#   3dcalc -a pC_mask_map+tlrc -expr 'atanh(a)' -prefix pC_mask_map_z+tlrc
#   3dcalc -a Mot_L_mask_map+tlrc -expr 'atanh(a)' -prefix Mot_L_mask_map_z+tlrc

#else 
#    echo pC_mask_map_z and Mot_L_mask_map ready 
#endif 

#cd ..


# -------------------------------------------------------------------------------------------------------------------------------

    mkdir archivos_blur2
    cp rfMRI_REST1_02.nii.gz archivos_blur2
    cd archivos_blur2
    3dBlurToFWHM -FWHM 6 -input rfMRI_REST1_02.nii.gz -prefix rfMRI_BLUR_02.nii.gz


if ( ! -f Vid_R_mask+tlrc.HEAD) then

       set seeds = ( "0 -53 26" "-48 -62 36" "46 -62 32" "0 52 -6" "-24 -22 -20" "24 -20 -22" "-38 -4 48" "40 -4 48" "-24 -58 52" "22 -58 54" "-56 -60 -2" "54 -58 -4" "-36 -25 57" "36 -25 57" "-43 -26 12" "43 -26 12" "-30 -88 0" "30 -88 0" )

       set seed_names = ( "pC" "Lat_Par_L" "Lat_Par_R" "mPFC" "HF_L" "HF_R" "FEF_L" "FEF_R" "IPS_L" "IPS_R" "MT_L" "MT_R" "Mot_L" "Mot_R" "Aud_L" "Aud_R" "Vis_L" "Vid_R")

       set l = `echo "${#seeds}"`
       foreach x (`seq 1 1 $l`)
           echo "seed number:" $x
           echo $seed_names[$x] $seeds[$x]
           echo "$seeds[$x]" > ./tmp_dani.txt
           echo 3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_02.nii.gz -srad 5 -xyz ./tmp_dani.txt
           3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_02.nii.gz -srad 5 -xyz ./tmp_dani.txt
       end

    else 
       echo seed ready 
    endif 


if ( ! -f pC_mask_map_z+tlrc.HEAD) then
   # Step 3a: Extract mean time series within each ROI
   3dROIstats -mask pC_mask+tlrc  -1Dformat rfMRI_BLUR_02.nii.gz > pC_mask_ts.1D
   3dROIstats -mask Mot_L_mask+tlrc  -1Dformat rfMRI_BLUR_02.nii.gz > Mot_L_mask_ts.1D

   # Step 3b: Generate Pearson correlation between mean time series and all other voxels
   #original: 3dTcorr1D -pearson -prefix s01_LAmyg.Tcorr1D.nii errts.s01.REST.anaticor+tlrc s01_LAmyg.1D
   3dTcorr1D -pearson -prefix pC_mask_map+tlrc rfMRI_BLUR_02.nii.gz pC_mask_ts.1D
   3dTcorr1D -pearson -prefix Mot_L_mask_map+tlrc rfMRI_BLUR_02.nii.gz Mot_L_mask_ts.1D

   # Step 3c: Convert r score to a z score for use in group analyses
   #ORIGINAL: 3dcalc -a s01_LAmyg.Tcorr1D.nii -expr 'atanh(a)' -prefix s01_LAmyg.z.nii
   3dcalc -a pC_mask_map+tlrc -expr 'atanh(a)' -prefix pC_mask_map_z+tlrc
   3dcalc -a Mot_L_mask_map+tlrc -expr 'atanh(a)' -prefix Mot_L_mask_map_z+tlrc

else 
    echo pC_mask_map_z and Mot_L_mask_map ready 
endif 

cd ..

# -------------------------------------------------------------------------------------------------------------------------------

    mkdir archivos_blur3
    cp rfMRI_REST1_03.nii.gz archivos_blur3
    cd archivos_blur3
    3dBlurToFWHM -FWHM 6 -input rfMRI_REST1_03.nii.gz -prefix rfMRI_BLUR_03.nii.gz

if ( ! -f Vid_R_mask+tlrc.HEAD) then

       set seeds = ( "0 -53 26" "-48 -62 36" "46 -62 32" "0 52 -6" "-24 -22 -20" "24 -20 -22" "-38 -4 48" "40 -4 48" "-24 -58 52" "22 -58 54" "-56 -60 -2" "54 -58 -4" "-36 -25 57" "36 -25 57" "-43 -26 12" "43 -26 12" "-30 -88 0" "30 -88 0" )

       set seed_names = ( "pC" "Lat_Par_L" "Lat_Par_R" "mPFC" "HF_L" "HF_R" "FEF_L" "FEF_R" "IPS_L" "IPS_R" "MT_L" "MT_R" "Mot_L" "Mot_R" "Aud_L" "Aud_R" "Vis_L" "Vid_R")

       set l = `echo "${#seeds}"`
       foreach x (`seq 1 1 $l`)
           echo "seed number:" $x
           echo $seed_names[$x] $seeds[$x]
           echo "$seeds[$x]" > ./tmp_dani.txt
           echo 3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_03.nii.gz -srad 5 -xyz ./tmp_dani.txt
           3dUndump -prefix $seed_names[$x]_mask -master rfMRI_BLUR_03.nii.gz -srad 5 -xyz ./tmp_dani.txt
       end

    else 
       echo seed ready 
    endif 


if ( ! -f pC_mask_map_z+tlrc.HEAD) then
   # Step 3a: Extract mean time series within each ROI
   3dROIstats -mask pC_mask+tlrc  -1Dformat rfMRI_BLUR_03.nii.gz > pC_mask_ts.1D
   3dROIstats -mask Mot_L_mask+tlrc  -1Dformat rfMRI_BLUR_03.nii.gz > Mot_L_mask_ts.1D

   # Step 3b: Generate Pearson correlation between mean time series and all other voxels
   #original: 3dTcorr1D -pearson -prefix s01_LAmyg.Tcorr1D.nii errts.s01.REST.anaticor+tlrc s01_LAmyg.1D
   3dTcorr1D -pearson -prefix pC_mask_map+tlrc rfMRI_BLUR_03.nii.gz pC_mask_ts.1D
   3dTcorr1D -pearson -prefix Mot_L_mask_map+tlrc rfMRI_BLUR_03.nii.gz Mot_L_mask_ts.1D

   # Step 3c: Convert r score to a z score for use in group analyses
   #ORIGINAL: 3dcalc -a s01_LAmyg.Tcorr1D.nii -expr 'atanh(a)' -prefix s01_LAmyg.z.nii
   3dcalc -a pC_mask_map+tlrc -expr 'atanh(a)' -prefix pC_mask_map_z+tlrc
   3dcalc -a Mot_L_mask_map+tlrc -expr 'atanh(a)' -prefix Mot_L_mask_map_z+tlrc

else 
    echo pC_mask_map_z and Mot_L_mask_map ready 
endif 

cd ..
cd ..

end

