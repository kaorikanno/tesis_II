import dask.array as da
import nibabel as nib

fmri_file_path = r'100307.results/errts.100307.tproject+tlrc.BRIK'

# Load the NIfTI file lazily using Dask
img = nib.load(fmri_file_path)
data = da.from_array(img.get_fdata(), chunks=(10, 10, 10, -1))  # Adjust the chunk size

# Process the data in chunks
result = []
num =0

for chunk in da.core.slices_from_chunks(data.chunks):
    num += 1
    chunks_nifti = nib.Nifti1Image(chunk, 4)
    nib.save(chunks_nifti, '100307.results/chunk{0}.BRIK'.format(num))

