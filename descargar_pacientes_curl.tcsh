#!/bin/tcsh -xef

# set subjs = (117122 124826 125424 134829 159845 173839 181131 188448 192035 212520 250427 257946 286347 289555 321323 322224 341935 355845 453542 463040 481042 481143 552544 580347 626648 715950 816653 861456 902242 585256 394956 131419 153126 157942 285345 307127 907656 101915 132017 161630 169747 562446 182436 160729 182032 212318 555348 149236 139637 152427 355542 128632 187345 599469 167743 748258 970764 171431 231928 210415 462139 549757 930449 987983 175136 149842 175237 422632 499566 993675 257542 567961 103515 104820 122519 132320 136732 151627 154835 156031 160931 190031 221319 569864 693461 809252 105923 114217 120111 133019 135528 162733 175439 204016 204420 204521 371843 429040 456346 513130 576255 623137 128026 151829 172332 212419 654350 822244)

# set subjs = (103515 101915 104820 105923 114217 114823 117122 120111 122519 124826 125424 128026 128632 131419 132017 132320 133019 134829 135528 136732 139637 149236 149842 151627 151829 152427 153126 154835 156031 157942 159845 160729 160931 161630 162733 167743 169747 171431 172332 173839 175136 175237 175439 181131 182032 182436 187345 188448 190031 192035 204016 204420 204521 210415 212318 212419 212520 221319 231928 250427 257542 257946 285345 286347 289555 307127 321323 322224 341935 355542 355845 371843 394956 422632 429040 453542 456346 462139 463040 481042 481143 499566 513130 549757 552544 555348 562446 567961 569864 576255 580347 585256 599469 623137 626648 654350 693461 715950 748258 809252 816653 822244 861456 902242 907656 930449 970764 987983 993675
)

# sujeto de prueba:

set subjs = 117122

foreach subj ( $subjs )

#curl -u usuario:clave --output T1w_restore.1.60.nii.gz  https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/389328/files/rfMRI_REST1_7T_PA/OneStepResampling/T1w_restore.1.60.nii.gz

#curl -u usuario:clave --output rfMRI_REST1_LR.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/$subj/experiments/114823_7T/resources/rfMRI_REST1_PA_FIX/files/rfMRI_REST1_LR.nii.gz

# y la máscara que nos falta

#curl -u usuario:clave --output rfMRI_REST1_7T_PA_mc_mask.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/$subj/files/rfMRI_REST1_7T_PA/MotionCorrection/rfMRI_REST1_7T_PA_mc_mask.nii.gz

#curl -u usuario:clave --output Scout_gdc_mask.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/389328/files/rfMRI_REST1_7T_PA/Scout_gdc_mask.nii.gz

#curl -u usuario:clave --output brainmask_fs.1.60.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/124826/files/MNINonLinear/Results/rfMRI_REST1_7T_PA/brainmask_fs.1.60.nii.gz

#curl -u usuario:clave --output mask.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/822244/files/MNINonLinear/Results/rfMRI_REST1_7T_PA/RibbonVolumeToSurfaceMapping/mask.nii.gz

#curl -u usuario:clave --output brainmask_fs.1.60.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/$subj/files/rfMRI_REST1_7T_PA/brainmask_fs.1.60.nii.gz

#curl -u usuario:clave --output rfMRI_REST1_7T_PA_nonlin_mask.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/$subj/files/rfMRI_REST1_7T_PA/rfMRI_REST1_7T_PA_nonlin_mask.nii.gz

#curl -u usuario:clave --output Mask.nii.gz https://db.humanconnectome.org/data/projects/HCP_1200/subjects/ConnectomeDB_S00440/experiments/ConnectomeDB_E11795/resources/$subj/files/rfMRI_REST1_7T_PA/DistortionCorrectionAndEPIToT1wReg_FLIRTBBRAndFreeSurferBBRbased/FieldMap/Mask.nii.gz

