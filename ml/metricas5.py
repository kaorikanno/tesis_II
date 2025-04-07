import os
from nilearn import image, masking
import numpy as np
import nibabel as nib
import pandas as pd
from sklearn.decomposition import PCA, FastICA

# Listar archivos
lista_archivos = []
for root, dirs, files in os.walk(".", topdown=False):
    for name in files:
        if name.endswith('.nii') and name != 'ica_components.nii.gz':
            sujeta = os.path.join(root, name)
            lista_archivos.append(sujeta)

print(lista_archivos)

# Crear una máscara común para todas las imágenes
imagenes = [nib.load(sujeta) for sujeta in lista_archivos]
mascara_comun = masking.compute_multi_epi_mask(imagenes)

# Función para aplanar la imagen usando la máscara común
def aplanacion(img, mask):
    img_data = img.get_fdata()
    img_flat = img_data[mask.get_fdata() > 0]  # Aplicar la máscara común
    return img_flat

# Cargar y aplanar las imágenes usando la máscara común
lista_sujetas = []
for sujeto in lista_archivos:
    img = nib.load(sujeto)
    img_flat = aplanacion(img, mascara_comun)
    lista_sujetas.append(img_flat)

# Convertir la lista de sujetos a un array de NumPy
data = np.array(lista_sujetas)

# Aplicar PCA
#pca = PCA(n_components=20)
#X_pca = pca.fit_transform(data)

# Aplicar ICA
ica = FastICA(n_components=20)
X_ica = ica.fit_transform(data)

# Crear DataFrames con los nombres de archivos como columna adicional
#df_pca = pd.DataFrame(X_pca, columns=[f'pca_{i+1}' for i in range(X_pca.shape[1])])
df_ica = pd.DataFrame(X_ica, columns=[f'ica_{i+1}' for i in range(X_ica.shape[1])])

# Agregar la columna con los nombres de los archivos
#df_pca['file_name'] = lista_archivos
df_ica['file_name'] = lista_archivos

# Reordenar las columnas para que 'file_name' sea la primera
#df_pca = df_pca[['file_name'] + [col for col in df_pca.columns if col != 'file_name']]
df_ica = df_ica[['file_name'] + [col for col in df_ica.columns if col != 'file_name']]

# Guardar los DataFrames como CSV
#df_pca.to_csv('mean_pca.csv', index=False)
df_ica.to_csv('mean_ica.csv', index=False)

print("Archivos guardados como 'mean_pca.csv' y 'mean_ica.csv'")

# Reconstruir las imágenes 3D con base en la máscara común
#map_shape = mascara_comun.shape  # Usar la forma original de las imágenes cerebrales
#components = ica.components_.T  # (n_voxels, n_components)

#for comp_idx in range(components.shape[1]):
    # Crear una imagen vacía llena de ceros con el tamaño original del cerebro
#    full_brain = np.zeros(map_shape)
    # Asignar los valores de las componentes ICA a las posiciones de la máscara
#    full_brain[mascara_comun.get_fdata() > 0] = components[:, comp_idx]
    
    # Guardar la componente como una imagen NIfTI
#    img_ica = nib.Nifti1Image(full_brain, np.eye(4))  # Usar matriz identidad para las coordenadas
#    nib.save(img_ica, f'component_{comp_idx}_ICA.nii')

#print("Componentes ICA guardados exitosamente con la máscara común.")