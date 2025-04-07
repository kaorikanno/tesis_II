from nilearn import image

sujetos = []
num_sujetos = [
    101915, 103515, 104820, 105923, 114217, 114823, 117122, 120111, 124826, 125424,
    128026, 128632, 131419, 132017, 133019, 135528, 136732, 139637, 149236, 151627,
    151829, 152427, 153126, 156031, 157942, 159845, 160729, 160931, 161630, 162733,
    167743, 169747, 171431, 172332, 173839, 175136, 175237, 175439, 181131, 182032,
    182436, 187345, 188448, 190031, 192035, 204016, 204420, 204521, 210415, 212318,
    212419, 221319, 231928, 250427, 257542, 257946, 285345, 286347, 289555, 307127,
    321323, 322224, 371843, 394956, 422632, 429040, 453542, 456346, 462139,
    463040, 481042, 499566, 513130, 549757, 552544, 555348, 562446, 567961,
    576255, 585256, 599469, 623137, 626648, 654350, 693461, 715950, 748258, 809252,
    816653, 822244, 861456, 902242, 907656, 930449, 970764, 987983, 993675
] # estos los tengo

for sujeta in num_sujetos:
  sujetos.append(f'{sujeta}/rfMRI_REST1_01.nii.gz')
  sujetos.append(f'{sujeta}/rfMRI_REST1_02.nii.gz')
  sujetos.append(f'{sujeta}/rfMRI_REST1_03.nii.gz')

print(sujetos)

# Cargar todas las imágenes en una lista de imágenes Nifti1Image
fmri_images = [image.load_img(img_file) for img_file in sujetos]


# --------------------------------------------------------------------------------


from nilearn.decomposition import CanICA

canica = CanICA(
    n_components=20,
    memory="nilearn_cache",
    memory_level=2,
    verbose=10,
    mask_strategy="whole-brain-template",
    random_state=0,
    standardize="zscore_sample",
    n_jobs=2,
)
canica.fit(fmri_images)

# Retrieve the independent components in brain space. Directly
# accessible through attribute `components_img_`.
canica_components_img = canica.components_img_
# components_img is a Nifti Image object, and can be saved to a file with
# the following lines:
from pathlib import Path

output_dir = Path.cwd() / "results" / "plot_compare_decomposition"
output_dir.mkdir(exist_ok=True, parents=True)
print(f"Output will be saved to: {output_dir}")
canica_components_img.to_filename(output_dir / "canica_resting_state.nii.gz")
