import os
import nibabel as nib
import numpy as np
import pandas as pd
from nilearn.decomposition import CanICA
from nilearn.input_data import NiftiMasker

# Listar archivos NIfTI .nii.gz de sujetos
lista_archivos = []
for root, dirs, files in os.walk(".", topdown=False):
    for name in files:
        if name.endswith('.nii.gz'):
            sujeta = os.path.join(root, name)
            lista_archivos.append(sujeta)

print(f'Archivos encontrados: {lista_archivos}')

# Aplicar CanICA
canica = CanICA(n_components=20, mask_strategy='whole-brain-template', random_state=42)
canica.fit(lista_archivos)  # Ajusta CanICA a los sujetos

# Las componentes en formato de imágenes 3D
# components_img = canica.components_img_
# components_img.to_filename('ica_components.nii.gz')

# Crear una lista para guardar los promedios de cada sujeto
lista_promedios = []

# Extraer el promedio de cada componente por sujeto
for archivo in lista_archivos:
    img = nib.load(archivo)  # Cargar la imagen del sujeto
    masker = NiftiMasker(mask_img=canica.mask_img_)  # Usar la misma máscara que CanICA usó
    subject_data = masker.fit_transform(img)  # Convertir la imagen a un array 2D (n_voxels, n_timepoints)
    
    # Obtener las señales correspondientes a las 20 componentes ICA
    subject_components = np.dot(subject_data, canica.components_.T)  # Multiplicamos los datos por las componentes
    
    # Para cada componente, calcular el promedio de los valores
    promedios = subject_components.mean(axis=0)  # Promediar los valores de las componentes para ese sujeto
    lista_promedios.append(promedios)

# Convertir la lista de promedios en un DataFrame
df_promedios = pd.DataFrame(lista_promedios, columns=[f'component_{i+1}' for i in range(20)])

# Agregar los nombres de los archivos para identificar cada sujeto
df_promedios['file_name'] = lista_archivos

# Guardar el DataFrame como CSV
df_promedios.to_csv('canica_promedios.csv', index=False)

print("Promedios de las componentes ICA guardados en 'canica_componentes_promedios.csv'")
