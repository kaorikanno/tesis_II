# Lista de sujetos

subjects = [
    101915, 103515, 104820, 105923, 114217, 114823, 117122, 120111, 122519, 124826,
    125424, 128026, 128632, 131419, 132017, 133019, 134829, 135528, 136732, 139637,
    149236, 151627, 151829, 152427, 153126, 156031, 157942, 159845, 160729, 160931,
    161630, 162733, 167743, 169747, 171431, 172332, 173839, 175136, 175237, 175439,
    181131, 182032, 182436, 187345, 188448, 190031, 192035, 204016, 204420, 204521,
    210415, 212318, 212419, 221319, 231928, 250427, 257542, 257946, 285345, 286347,
    289555, 307127, 321323, 322224, 341935, 355542, 355845, 371843, 394956, 422632,
    429040, 453542, 456346, 462139, 463040, 481042, 481143, 499566, 513130, 549757,
    552544, 555348, 562446, 567961, 569864, 576255, 580347, 585256, 599469, 623137,
    626648, 654350, 693461, 715950, 748258, 809252, 816653, 822244, 861456, 902242,
    907656, 930449, 970764, 987983, 993675
]

subjects_m = [
    159845, 286347, 322224, 463040, 715950, 902242, 117122, 173839, 181131, 289555, 453542, 
    552544, 626648, 861456, 114823, 124826, 125424, 188448, 192035, 250427, 257946, 321323, 
    481042, 816653
]

subjects_p = [
    394956, 131419, 153126, 157942, 285345, 307127, 907656, 101915, 132017, 161630, 169747, 562446, 
    182436, 160729, 182032, 212318, 555348, 149236, 139637, 152427, 128632, 187345, 599469, 167743, 
    748258, 970764, 171431, 231928, 210415, 549757, 930449, 987983, 175136, 175237, 422632, 499566, 
    993675, 257542, 567961
]

subjects_l = [
    103515, 104820, 136732, 151627, 156031, 160931, 190031, 221319, 693461, 809252, 105923, 114217, 
    120111, 133019, 135528, 162733, 175439, 204016, 204420, 204521, 429040, 456346, 513130, 576255, 
    623137, 128026, 151829, 212419, 654350, 822244
]


# Genera la salida en el formato deseado

# print("3dANOVA -levels 3                     \\")

# for subject in subjects_m:
#     print(f"         -dset 1 {subject}/pC_mask_map+tlrc.BRIK \\")

# print("                                                      \\")

# for subject in subjects_p:
#     print(f"         -dset 2 {subject}/pC_mask_map+tlrc.BRIK \\")

# print("                                                      \\")

# for subject in subjects_l:
#     print(f"         -dset 3 {subject}/pC_mask_map+tlrc.BRIK \\")


# ------------------    grupo A     -------------------

# print("3dttest++ -prefix $results_dir/Flanker_bienAyB -AminusB            \\")
# print("          -mask $mask_dset                                         \\")
# print("          -setA Inc-Con_Group1                                     \\")

# i = 0
# for subject in subjects_m:
#     i += 1
#     print(f"           {i} \" {subject}/pC_mask_map_z+tlrc.BRIK\" \\")

# print("          -setB Inc-Con_Group2                                                    \\")
# for subject in subjects_p:
#     i += 1
#     print(f"           {i} \" {subject}/pC_mask_map_z+tlrc.BRIK\" \\")

# ------------------   grupo B   ------------------------

# print("3dttest++ -prefix $results_dir/Flanker_bienAyC -AminusB            \\")
# print("          -mask $mask_dset                                         \\")
# print("          -setA Inc-Con_Group1                                     \\")

# i = 0
# for subject in subjects_m:
#     i += 1
#     print(f"{i} \" {subject}/pC_mask_map+tlrc.BRIK\" \\")

# print("          -setB Inc-Con_Group2                                                    \\")
# for subject in subjects_l:
#     i += 1
#     print(f"{i} \" {subject}/pC_mask_map+tlrc.BRIK\" \\")

# # ------------------   grupo B   ------------------------

# print("3dttest++ -prefix $results_dir/Flanker_bienByC -AminusB            \\")
# print("          -mask $mask_dset                                         \\")
# print("          -setA Inc-Con_Group1                                     \\")

# i = 0
# for subject in subjects_p:
#     i += 1
#     print(f"{i} \" {subject}/pC_mask_map+tlrc.BRIK\" \\")

# print("          -setB Inc-Con_Group2                                                    \\")
# for subject in subjects_l:
#     i += 1
#     print(f"{i} \" {subject}/pC_mask_map+tlrc.BRIK\" \\")

i = 0
for subject in subjects:
    i += 1
    print(f"           {i} \" {subject}/pC_mask_map_z+tlrc.BRIK\" \\")