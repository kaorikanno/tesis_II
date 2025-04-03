#!/bin/tcsh

set subjs = (101915 103515 104820 105923 114217 114823 117122 120111 124826 114217 114823 120111 124826 125424 128026 128632 131419 132017 133019 135528 136732 139637 149236 151627 151829 152427 153126 156031 157942 159845 160729 160931 161630 162733 167743 169747 171431 173839 175136 175237 175439 181131 182032 182436 187345 188448 190031 192035 204016 204420 204521 210415 212318 212419 221319 231928 250427 257542 257946 285345 286347 289555 307127 321323 322224 394956 422632 429040 453542 456346 463040 481042 499566 513130 549757 552544 555348 562446 567961 576255 599469 623137 626648 654350 693461 715950 748258 809252 816653 822244 861456 902242 907656 930449 970764 987983 993675)

foreach subj ($subjs)
    echo $subj

 #   cp ${subj}/reho_01.nii.gz features_ttest/reho_${subj}_01.nii.gz 
 #   cp ${subj}/reho_02.nii.gz features_ttest/reho_${subj}_02.nii.gz
 #   cp ${subj}/reho_03.nii.gz features_ttest/reho_${subj}_03.nii.gz

    cp ${subj}/rsfc_01.nii.gz_ALFF+tlrc.BRIK features_sujetas/rsfc_01.nii.gz_${subj}_ALFF+tlrc.BRIK
    cp ${subj}/rsfc_01.nii.gz_ALFF+tlrc.HEAD features_sujetas/rsfc_01.nii.gz_${subj}_ALFF+tlrc.HEAD

    cp ${subj}/rsfc_01.nii.gz_fALFF+tlrc.BRIK features_sujetas/rsfc_01.nii.gz_${subj}_fALFF+tlrc.BRIK
    cp ${subj}/rsfc_01.nii.gz_fALFF+tlrc.HEAD features_sujetas/rsfc_01.nii.gz_${subj}_fALFF+tlrc.HEAD 

end


