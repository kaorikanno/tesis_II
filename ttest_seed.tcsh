#!/bin/tcsh -xef

# created by uber_ttest.py: version 2.0 (December 28, 2017)
# creation date: Wed Feb 19 13:23:11 2020

# ---------------------- set process variables ----------------------

set mask_dset = /opt/home/kaori/Downloads/personas/101915/rfMRI_REST1_RL.nii.gz

# specify and possibly create results directory
set results_dir = seed_results/ttest
if ( ! -d $results_dir ) mkdir $results_dir

# ------------------------- process the data -------------------------

3dttest++ -prefix $results_dir/Flanker_bienByC -AminusB            \
          -mask $mask_dset                                         \
          -setA Inc-Con_Group1                                     \
1 " 394956/pC_mask_map+tlrc.BRIK" \
2 " 131419/pC_mask_map+tlrc.BRIK" \
3 " 153126/pC_mask_map+tlrc.BRIK" \
4 " 157942/pC_mask_map+tlrc.BRIK" \
5 " 285345/pC_mask_map+tlrc.BRIK" \
6 " 307127/pC_mask_map+tlrc.BRIK" \
7 " 907656/pC_mask_map+tlrc.BRIK" \
8 " 101915/pC_mask_map+tlrc.BRIK" \
9 " 132017/pC_mask_map+tlrc.BRIK" \
10 " 161630/pC_mask_map+tlrc.BRIK" \
11 " 169747/pC_mask_map+tlrc.BRIK" \
12 " 562446/pC_mask_map+tlrc.BRIK" \
13 " 182436/pC_mask_map+tlrc.BRIK" \
14 " 160729/pC_mask_map+tlrc.BRIK" \
15 " 182032/pC_mask_map+tlrc.BRIK" \
16 " 212318/pC_mask_map+tlrc.BRIK" \
17 " 555348/pC_mask_map+tlrc.BRIK" \
18 " 149236/pC_mask_map+tlrc.BRIK" \
19 " 139637/pC_mask_map+tlrc.BRIK" \
20 " 152427/pC_mask_map+tlrc.BRIK" \
21 " 128632/pC_mask_map+tlrc.BRIK" \
22 " 187345/pC_mask_map+tlrc.BRIK" \
23 " 599469/pC_mask_map+tlrc.BRIK" \
24 " 167743/pC_mask_map+tlrc.BRIK" \
25 " 748258/pC_mask_map+tlrc.BRIK" \
26 " 970764/pC_mask_map+tlrc.BRIK" \
27 " 171431/pC_mask_map+tlrc.BRIK" \
28 " 231928/pC_mask_map+tlrc.BRIK" \
29 " 210415/pC_mask_map+tlrc.BRIK" \
30 " 549757/pC_mask_map+tlrc.BRIK" \
31 " 930449/pC_mask_map+tlrc.BRIK" \
32 " 987983/pC_mask_map+tlrc.BRIK" \
33 " 175136/pC_mask_map+tlrc.BRIK" \
34 " 175237/pC_mask_map+tlrc.BRIK" \
35 " 422632/pC_mask_map+tlrc.BRIK" \
36 " 499566/pC_mask_map+tlrc.BRIK" \
37 " 993675/pC_mask_map+tlrc.BRIK" \
38 " 257542/pC_mask_map+tlrc.BRIK" \
39 " 567961/pC_mask_map+tlrc.BRIK" \
          -setB Inc-Con_Group2                                                    \
40 " 103515/pC_mask_map+tlrc.BRIK" \
41 " 104820/pC_mask_map+tlrc.BRIK" \
42 " 136732/pC_mask_map+tlrc.BRIK" \
43 " 151627/pC_mask_map+tlrc.BRIK" \
44 " 156031/pC_mask_map+tlrc.BRIK" \
45 " 160931/pC_mask_map+tlrc.BRIK" \
46 " 190031/pC_mask_map+tlrc.BRIK" \
47 " 221319/pC_mask_map+tlrc.BRIK" \
48 " 693461/pC_mask_map+tlrc.BRIK" \
49 " 809252/pC_mask_map+tlrc.BRIK" \
50 " 105923/pC_mask_map+tlrc.BRIK" \
51 " 114217/pC_mask_map+tlrc.BRIK" \
52 " 120111/pC_mask_map+tlrc.BRIK" \
53 " 133019/pC_mask_map+tlrc.BRIK" \
54 " 135528/pC_mask_map+tlrc.BRIK" \
55 " 162733/pC_mask_map+tlrc.BRIK" \
56 " 175439/pC_mask_map+tlrc.BRIK" \
57 " 204016/pC_mask_map+tlrc.BRIK" \
58 " 204420/pC_mask_map+tlrc.BRIK" \
59 " 204521/pC_mask_map+tlrc.BRIK" \
60 " 429040/pC_mask_map+tlrc.BRIK" \
61 " 456346/pC_mask_map+tlrc.BRIK" \
62 " 513130/pC_mask_map+tlrc.BRIK" \
63 " 576255/pC_mask_map+tlrc.BRIK" \
64 " 623137/pC_mask_map+tlrc.BRIK" \
65 " 128026/pC_mask_map+tlrc.BRIK" \
66 " 151829/pC_mask_map+tlrc.BRIK" \
67 " 212419/pC_mask_map+tlrc.BRIK" \
68 " 654350/pC_mask_map+tlrc.BRIK" \
69 " 822244/pC_mask_map+tlrc.BRIK" \