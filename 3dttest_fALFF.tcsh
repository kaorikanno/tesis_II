#!/bin/tcsh -xef

# created by uber_ttest.py: version 2.0 (December 28, 2017)
# creation date: Wed Feb 19 13:23:11 2020

# ---------------------- set process variables ----------------------

set mask_dset = /opt/home/kaori/Downloads/personas/101915/rfMRI_REST1_RL.nii.gz

# specify and possibly create results directory
set results_dir = ttest_fALFF.results
if ( ! -d $results_dir ) mkdir $results_dir

# ------------------------- process the data -------------------------

3dttest++ -prefix $results_dir/Flanker_bienAyB -AminusB            \
          -mask $mask_dset                                         \
          -setA Inc-Con_Group1                                     \
         01 "features_sujetas/rsfc_01.nii.gz_103515_fALFF+tlrc.BRIK" \
         02 "features_sujetas/rsfc_01.nii.gz_104820_fALFF+tlrc.BRIK" \
         05 "features_sujetas/rsfc_01.nii.gz_136732_fALFF+tlrc.BRIK" \
         06 "features_sujetas/rsfc_01.nii.gz_151627_fALFF+tlrc.BRIK" \
         08 "features_sujetas/rsfc_01.nii.gz_156031_fALFF+tlrc.BRIK" \
         09 "features_sujetas/rsfc_01.nii.gz_160931_fALFF+tlrc.BRIK" \
         10 "features_sujetas/rsfc_01.nii.gz_190031_fALFF+tlrc.BRIK" \
         11 "features_sujetas/rsfc_01.nii.gz_221319_fALFF+tlrc.BRIK" \
         13 "features_sujetas/rsfc_01.nii.gz_693461_fALFF+tlrc.BRIK" \
         14 "features_sujetas/rsfc_01.nii.gz_809252_fALFF+tlrc.BRIK" \
         15 "features_sujetas/rsfc_01.nii.gz_105923_fALFF+tlrc.BRIK" \
         16 "features_sujetas/rsfc_01.nii.gz_114217_fALFF+tlrc.BRIK" \
         17 "features_sujetas/rsfc_01.nii.gz_120111_fALFF+tlrc.BRIK" \
         18 "features_sujetas/rsfc_01.nii.gz_133019_fALFF+tlrc.BRIK" \
         19 "features_sujetas/rsfc_01.nii.gz_135528_fALFF+tlrc.BRIK" \
         20 "features_sujetas/rsfc_01.nii.gz_162733_fALFF+tlrc.BRIK" \
         21 "features_sujetas/rsfc_01.nii.gz_175439_fALFF+tlrc.BRIK" \
         22 "features_sujetas/rsfc_01.nii.gz_204016_fALFF+tlrc.BRIK" \
         23 "features_sujetas/rsfc_01.nii.gz_204420_fALFF+tlrc.BRIK" \
         24 "features_sujetas/rsfc_01.nii.gz_204521_fALFF+tlrc.BRIK" \
         26 "features_sujetas/rsfc_01.nii.gz_429040_fALFF+tlrc.BRIK" \
         27 "features_sujetas/rsfc_01.nii.gz_456346_fALFF+tlrc.BRIK" \
         28 "features_sujetas/rsfc_01.nii.gz_513130_fALFF+tlrc.BRIK" \
         29 "features_sujetas/rsfc_01.nii.gz_576255_fALFF+tlrc.BRIK" \
         30 "features_sujetas/rsfc_01.nii.gz_623137_fALFF+tlrc.BRIK" \
         31 "features_sujetas/rsfc_01.nii.gz_128026_fALFF+tlrc.BRIK" \
         32 "features_sujetas/rsfc_01.nii.gz_151829_fALFF+tlrc.BRIK" \
         34 "features_sujetas/rsfc_01.nii.gz_212419_fALFF+tlrc.BRIK" \
         35 "features_sujetas/rsfc_01.nii.gz_654350_fALFF+tlrc.BRIK" \
         36 "features_sujetas/rsfc_01.nii.gz_822244_fALFF+tlrc.BRIK" \
      -setB Inc-Con_Group2                         \
         38 "features_sujetas/rsfc_01.nii.gz_159845_fALFF+tlrc.BRIK" \
         40 "features_sujetas/rsfc_01.nii.gz_286347_fALFF+tlrc.BRIK" \
         41 "features_sujetas/rsfc_01.nii.gz_322224_fALFF+tlrc.BRIK" \
         42 "features_sujetas/rsfc_01.nii.gz_463040_fALFF+tlrc.BRIK" \
         43 "features_sujetas/rsfc_01.nii.gz_715950_fALFF+tlrc.BRIK" \
         44 "features_sujetas/rsfc_01.nii.gz_902242_fALFF+tlrc.BRIK" \
         45 "features_sujetas/rsfc_01.nii.gz_117122_fALFF+tlrc.BRIK" \
         46 "features_sujetas/rsfc_01.nii.gz_173839_fALFF+tlrc.BRIK" \
         47 "features_sujetas/rsfc_01.nii.gz_181131_fALFF+tlrc.BRIK" \
         48 "features_sujetas/rsfc_01.nii.gz_289555_fALFF+tlrc.BRIK" \
         49 "features_sujetas/rsfc_01.nii.gz_453542_fALFF+tlrc.BRIK" \
         51 "features_sujetas/rsfc_01.nii.gz_552544_fALFF+tlrc.BRIK" \
         53 "features_sujetas/rsfc_01.nii.gz_626648_fALFF+tlrc.BRIK" \
         54 "features_sujetas/rsfc_01.nii.gz_861456_fALFF+tlrc.BRIK" \
         55 "features_sujetas/rsfc_01.nii.gz_114823_fALFF+tlrc.BRIK" \
         56 "features_sujetas/rsfc_01.nii.gz_124826_fALFF+tlrc.BRIK" \
         57 "features_sujetas/rsfc_01.nii.gz_125424_fALFF+tlrc.BRIK" \
         58 "features_sujetas/rsfc_01.nii.gz_188448_fALFF+tlrc.BRIK" \
         59 "features_sujetas/rsfc_01.nii.gz_192035_fALFF+tlrc.BRIK" \
         60 "features_sujetas/rsfc_01.nii.gz_250427_fALFF+tlrc.BRIK" \
         61 "features_sujetas/rsfc_01.nii.gz_257946_fALFF+tlrc.BRIK" \
         62 "features_sujetas/rsfc_01.nii.gz_321323_fALFF+tlrc.BRIK" \
         65 "features_sujetas/rsfc_01.nii.gz_481042_fALFF+tlrc.BRIK" \
         66 "features_sujetas/rsfc_01.nii.gz_816653_fALFF+tlrc.BRIK" \

3dttest++ -prefix $results_dir/Flanker_bienAyC -AminusB            \
          -mask $mask_dset                                         \
          -setA Inc-Con_Group1                                     \
         01 "features_sujetas/rsfc_01.nii.gz_103515_fALFF+tlrc.BRIK" \
         02 "features_sujetas/rsfc_01.nii.gz_104820_fALFF+tlrc.BRIK" \
         05 "features_sujetas/rsfc_01.nii.gz_136732_fALFF+tlrc.BRIK" \
         06 "features_sujetas/rsfc_01.nii.gz_151627_fALFF+tlrc.BRIK" \
         08 "features_sujetas/rsfc_01.nii.gz_156031_fALFF+tlrc.BRIK" \
         09 "features_sujetas/rsfc_01.nii.gz_160931_fALFF+tlrc.BRIK" \
         10 "features_sujetas/rsfc_01.nii.gz_190031_fALFF+tlrc.BRIK" \
         11 "features_sujetas/rsfc_01.nii.gz_221319_fALFF+tlrc.BRIK" \
         13 "features_sujetas/rsfc_01.nii.gz_693461_fALFF+tlrc.BRIK" \
         14 "features_sujetas/rsfc_01.nii.gz_809252_fALFF+tlrc.BRIK" \
         15 "features_sujetas/rsfc_01.nii.gz_105923_fALFF+tlrc.BRIK" \
         16 "features_sujetas/rsfc_01.nii.gz_114217_fALFF+tlrc.BRIK" \
         17 "features_sujetas/rsfc_01.nii.gz_120111_fALFF+tlrc.BRIK" \
         18 "features_sujetas/rsfc_01.nii.gz_133019_fALFF+tlrc.BRIK" \
         19 "features_sujetas/rsfc_01.nii.gz_135528_fALFF+tlrc.BRIK" \
         20 "features_sujetas/rsfc_01.nii.gz_162733_fALFF+tlrc.BRIK" \
         21 "features_sujetas/rsfc_01.nii.gz_175439_fALFF+tlrc.BRIK" \
         22 "features_sujetas/rsfc_01.nii.gz_204016_fALFF+tlrc.BRIK" \
         23 "features_sujetas/rsfc_01.nii.gz_204420_fALFF+tlrc.BRIK" \
         24 "features_sujetas/rsfc_01.nii.gz_204521_fALFF+tlrc.BRIK" \
         26 "features_sujetas/rsfc_01.nii.gz_429040_fALFF+tlrc.BRIK" \
         27 "features_sujetas/rsfc_01.nii.gz_456346_fALFF+tlrc.BRIK" \
         28 "features_sujetas/rsfc_01.nii.gz_513130_fALFF+tlrc.BRIK" \
         29 "features_sujetas/rsfc_01.nii.gz_576255_fALFF+tlrc.BRIK" \
         30 "features_sujetas/rsfc_01.nii.gz_623137_fALFF+tlrc.BRIK" \
         31 "features_sujetas/rsfc_01.nii.gz_128026_fALFF+tlrc.BRIK" \
         32 "features_sujetas/rsfc_01.nii.gz_151829_fALFF+tlrc.BRIK" \
         34 "features_sujetas/rsfc_01.nii.gz_212419_fALFF+tlrc.BRIK" \
         35 "features_sujetas/rsfc_01.nii.gz_654350_fALFF+tlrc.BRIK" \
         36 "features_sujetas/rsfc_01.nii.gz_822244_fALFF+tlrc.BRIK" \
      -setB Inc-Con_Group2                         \
         68 "features_sujetas/rsfc_01.nii.gz_394956_fALFF+tlrc.BRIK" \
         69 "features_sujetas/rsfc_01.nii.gz_131419_fALFF+tlrc.BRIK" \
         70 "features_sujetas/rsfc_01.nii.gz_153126_fALFF+tlrc.BRIK" \
         71 "features_sujetas/rsfc_01.nii.gz_157942_fALFF+tlrc.BRIK" \
         72 "features_sujetas/rsfc_01.nii.gz_285345_fALFF+tlrc.BRIK" \
         73 "features_sujetas/rsfc_01.nii.gz_307127_fALFF+tlrc.BRIK" \
         74 "features_sujetas/rsfc_01.nii.gz_907656_fALFF+tlrc.BRIK" \
         75 "features_sujetas/rsfc_01.nii.gz_101915_fALFF+tlrc.BRIK" \
         76 "features_sujetas/rsfc_01.nii.gz_132017_fALFF+tlrc.BRIK" \
         77 "features_sujetas/rsfc_01.nii.gz_161630_fALFF+tlrc.BRIK" \
         78 "features_sujetas/rsfc_01.nii.gz_169747_fALFF+tlrc.BRIK" \
         79 "features_sujetas/rsfc_01.nii.gz_562446_fALFF+tlrc.BRIK" \
         80 "features_sujetas/rsfc_01.nii.gz_182436_fALFF+tlrc.BRIK" \
         81 "features_sujetas/rsfc_01.nii.gz_160729_fALFF+tlrc.BRIK" \
         82 "features_sujetas/rsfc_01.nii.gz_182032_fALFF+tlrc.BRIK" \
         83 "features_sujetas/rsfc_01.nii.gz_212318_fALFF+tlrc.BRIK" \
         84 "features_sujetas/rsfc_01.nii.gz_555348_fALFF+tlrc.BRIK" \
         85 "features_sujetas/rsfc_01.nii.gz_149236_fALFF+tlrc.BRIK" \
         86 "features_sujetas/rsfc_01.nii.gz_139637_fALFF+tlrc.BRIK" \
         87 "features_sujetas/rsfc_01.nii.gz_152427_fALFF+tlrc.BRIK" \
         89 "features_sujetas/rsfc_01.nii.gz_128632_fALFF+tlrc.BRIK" \
         90 "features_sujetas/rsfc_01.nii.gz_187345_fALFF+tlrc.BRIK" \
         91 "features_sujetas/rsfc_01.nii.gz_599469_fALFF+tlrc.BRIK" \
         92 "features_sujetas/rsfc_01.nii.gz_167743_fALFF+tlrc.BRIK" \
         93 "features_sujetas/rsfc_01.nii.gz_748258_fALFF+tlrc.BRIK" \
         94 "features_sujetas/rsfc_01.nii.gz_970764_fALFF+tlrc.BRIK" \
         95 "features_sujetas/rsfc_01.nii.gz_171431_fALFF+tlrc.BRIK" \
         96 "features_sujetas/rsfc_01.nii.gz_231928_fALFF+tlrc.BRIK" \
         97 "features_sujetas/rsfc_01.nii.gz_210415_fALFF+tlrc.BRIK" \
         99 "features_sujetas/rsfc_01.nii.gz_549757_fALFF+tlrc.BRIK" \
         100 "features_sujetas/rsfc_01.nii.gz_930449_fALFF+tlrc.BRIK" \
         101 "features_sujetas/rsfc_01.nii.gz_987983_fALFF+tlrc.BRIK" \
         102 "features_sujetas/rsfc_01.nii.gz_175136_fALFF+tlrc.BRIK" \
         104 "features_sujetas/rsfc_01.nii.gz_175237_fALFF+tlrc.BRIK" \
         105 "features_sujetas/rsfc_01.nii.gz_422632_fALFF+tlrc.BRIK" \
         106 "features_sujetas/rsfc_01.nii.gz_499566_fALFF+tlrc.BRIK" \
         107 "features_sujetas/rsfc_01.nii.gz_993675_fALFF+tlrc.BRIK" \
         108 "features_sujetas/rsfc_01.nii.gz_257542_fALFF+tlrc.BRIK" \
         109 "features_sujetas/rsfc_01.nii.gz_567961_fALFF+tlrc.BRIK" \

3dttest++ -prefix $results_dir/Flanker_bienByC -AminusB            \
          -mask $mask_dset                                         \
          -setA Inc-Con_Group1                                     \
         38 "features_sujetas/rsfc_01.nii.gz_159845_fALFF+tlrc.BRIK" \
         40 "features_sujetas/rsfc_01.nii.gz_286347_fALFF+tlrc.BRIK" \
         41 "features_sujetas/rsfc_01.nii.gz_322224_fALFF+tlrc.BRIK" \
         42 "features_sujetas/rsfc_01.nii.gz_463040_fALFF+tlrc.BRIK" \
         43 "features_sujetas/rsfc_01.nii.gz_715950_fALFF+tlrc.BRIK" \
         44 "features_sujetas/rsfc_01.nii.gz_902242_fALFF+tlrc.BRIK" \
         45 "features_sujetas/rsfc_01.nii.gz_117122_fALFF+tlrc.BRIK" \
         46 "features_sujetas/rsfc_01.nii.gz_173839_fALFF+tlrc.BRIK" \
         47 "features_sujetas/rsfc_01.nii.gz_181131_fALFF+tlrc.BRIK" \
         48 "features_sujetas/rsfc_01.nii.gz_289555_fALFF+tlrc.BRIK" \
         49 "features_sujetas/rsfc_01.nii.gz_453542_fALFF+tlrc.BRIK" \
         51 "features_sujetas/rsfc_01.nii.gz_552544_fALFF+tlrc.BRIK" \
         53 "features_sujetas/rsfc_01.nii.gz_626648_fALFF+tlrc.BRIK" \
         54 "features_sujetas/rsfc_01.nii.gz_861456_fALFF+tlrc.BRIK" \
         55 "features_sujetas/rsfc_01.nii.gz_114823_fALFF+tlrc.BRIK" \
         56 "features_sujetas/rsfc_01.nii.gz_124826_fALFF+tlrc.BRIK" \
         57 "features_sujetas/rsfc_01.nii.gz_125424_fALFF+tlrc.BRIK" \
         58 "features_sujetas/rsfc_01.nii.gz_188448_fALFF+tlrc.BRIK" \
         59 "features_sujetas/rsfc_01.nii.gz_192035_fALFF+tlrc.BRIK" \
         60 "features_sujetas/rsfc_01.nii.gz_250427_fALFF+tlrc.BRIK" \
         61 "features_sujetas/rsfc_01.nii.gz_257946_fALFF+tlrc.BRIK" \
         62 "features_sujetas/rsfc_01.nii.gz_321323_fALFF+tlrc.BRIK" \
         65 "features_sujetas/rsfc_01.nii.gz_481042_fALFF+tlrc.BRIK" \
         66 "features_sujetas/rsfc_01.nii.gz_816653_fALFF+tlrc.BRIK" \
      -setB Inc-Con_Group2                         \
         68 "features_sujetas/rsfc_01.nii.gz_394956_fALFF+tlrc.BRIK" \
         69 "features_sujetas/rsfc_01.nii.gz_131419_fALFF+tlrc.BRIK" \
         70 "features_sujetas/rsfc_01.nii.gz_153126_fALFF+tlrc.BRIK" \
         71 "features_sujetas/rsfc_01.nii.gz_157942_fALFF+tlrc.BRIK" \
         72 "features_sujetas/rsfc_01.nii.gz_285345_fALFF+tlrc.BRIK" \
         73 "features_sujetas/rsfc_01.nii.gz_307127_fALFF+tlrc.BRIK" \
         74 "features_sujetas/rsfc_01.nii.gz_907656_fALFF+tlrc.BRIK" \
         75 "features_sujetas/rsfc_01.nii.gz_101915_fALFF+tlrc.BRIK" \
         76 "features_sujetas/rsfc_01.nii.gz_132017_fALFF+tlrc.BRIK" \
         77 "features_sujetas/rsfc_01.nii.gz_161630_fALFF+tlrc.BRIK" \
         78 "features_sujetas/rsfc_01.nii.gz_169747_fALFF+tlrc.BRIK" \
         79 "features_sujetas/rsfc_01.nii.gz_562446_fALFF+tlrc.BRIK" \
         80 "features_sujetas/rsfc_01.nii.gz_182436_fALFF+tlrc.BRIK" \
         81 "features_sujetas/rsfc_01.nii.gz_160729_fALFF+tlrc.BRIK" \
         82 "features_sujetas/rsfc_01.nii.gz_182032_fALFF+tlrc.BRIK" \
         83 "features_sujetas/rsfc_01.nii.gz_212318_fALFF+tlrc.BRIK" \
         84 "features_sujetas/rsfc_01.nii.gz_555348_fALFF+tlrc.BRIK" \
         85 "features_sujetas/rsfc_01.nii.gz_149236_fALFF+tlrc.BRIK" \
         86 "features_sujetas/rsfc_01.nii.gz_139637_fALFF+tlrc.BRIK" \
         87 "features_sujetas/rsfc_01.nii.gz_152427_fALFF+tlrc.BRIK" \
         89 "features_sujetas/rsfc_01.nii.gz_128632_fALFF+tlrc.BRIK" \
         90 "features_sujetas/rsfc_01.nii.gz_187345_fALFF+tlrc.BRIK" \
         91 "features_sujetas/rsfc_01.nii.gz_599469_fALFF+tlrc.BRIK" \
         92 "features_sujetas/rsfc_01.nii.gz_167743_fALFF+tlrc.BRIK" \
         93 "features_sujetas/rsfc_01.nii.gz_748258_fALFF+tlrc.BRIK" \
         94 "features_sujetas/rsfc_01.nii.gz_970764_fALFF+tlrc.BRIK" \
         95 "features_sujetas/rsfc_01.nii.gz_171431_fALFF+tlrc.BRIK" \
         96 "features_sujetas/rsfc_01.nii.gz_231928_fALFF+tlrc.BRIK" \
         97 "features_sujetas/rsfc_01.nii.gz_210415_fALFF+tlrc.BRIK" \
         99 "features_sujetas/rsfc_01.nii.gz_549757_fALFF+tlrc.BRIK" \
         100 "features_sujetas/rsfc_01.nii.gz_930449_fALFF+tlrc.BRIK" \
         101 "features_sujetas/rsfc_01.nii.gz_987983_fALFF+tlrc.BRIK" \
         102 "features_sujetas/rsfc_01.nii.gz_175136_fALFF+tlrc.BRIK" \
         104 "features_sujetas/rsfc_01.nii.gz_175237_fALFF+tlrc.BRIK" \
         105 "features_sujetas/rsfc_01.nii.gz_422632_fALFF+tlrc.BRIK" \
         106 "features_sujetas/rsfc_01.nii.gz_499566_fALFF+tlrc.BRIK" \
         107 "features_sujetas/rsfc_01.nii.gz_993675_fALFF+tlrc.BRIK" \
         108 "features_sujetas/rsfc_01.nii.gz_257542_fALFF+tlrc.BRIK" \
         109 "features_sujetas/rsfc_01.nii.gz_567961_fALFF+tlrc.BRIK" \



