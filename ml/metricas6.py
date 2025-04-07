import os
from nilearn import plotting
from nilearn import image
from nilearn.image import load_img
import numpy as np
import matplotlib.pyplot as plt
from nilearn import datasets
from nilearn.input_data import NiftiMasker
from nilearn.maskers import NiftiLabelsMasker
from nilearn.connectome import ConnectivityMeasure
from nilearn.regions import connected_label_regions
import nibabel as nib
import pandas as pd
from nilearn import datasets, image
from nilearn.masking import intersect_masks

# Comenzamos abriendo los archivos:
lista_archivos = []
for root, dirs, files in os.walk(".", topdown=False): # falta modificar para que tome bien los archivos !!!!
    for name in files:
        if name.endswith('nii.gz'):
            sujeta = os.path.join(name)
            lista_archivos.append(sujeta)

# --------------------------------------------------------------------------------------------------------------------

# Cargar los atlas Harvard-Oxford (cortical y subcortical)
atlas_cortical = datasets.fetch_atlas_harvard_oxford("cort-maxprob-thr25-2mm")
atlas_subcortical = datasets.fetch_atlas_harvard_oxford("sub-maxprob-thr25-2mm")

# Elegir las ROIs de interés
selected_rois_cortical = [4, 5, 6, 11, 12, 13, 21, 31]  # Corteza
selected_rois_subcortical = [4, 5, 9, 10, 15, 16, 19, 20]  # Subcorteza

# Preparar el masker con los atlas y filtrar solo las ROIs seleccionadas
masker_cortical = NiftiLabelsMasker(labels_img=atlas_cortical.filename, 
                                    standardize=True)
masker_subcortical = NiftiLabelsMasker(labels_img=atlas_subcortical.filename, 
                                       standardize=True)

# Lista para almacenar los resultados
results = []

# Procesar cada archivo de imagen (reemplaza `images` con la lista de tus archivos fMRI)
for img_path in lista_archivos:
    # Extraer datos de cada ROI seleccionada
    cortical_signals = masker_cortical.fit_transform(img_path)
    subcortical_signals = masker_subcortical.fit_transform(img_path)
    
    # Filtrar solo las ROIs de interés
    cortical_data = cortical_signals[:, selected_rois_cortical]
    subcortical_data = subcortical_signals[:, selected_rois_subcortical]
    
    # Calcular promedio y desviación estándar por cada ROI seleccionada
    cortical_means = cortical_data.mean(axis=0)
    cortical_stds = cortical_data.std(axis=0)
    subcortical_means = subcortical_data.mean(axis=0)
    subcortical_stds = subcortical_data.std(axis=0)
    
    # Guardar en resultados, incluyendo el nombre del archivo
    file_name = os.path.basename(img_path)  # Obtener solo el nombre del archivo
    result_row = [file_name] + list(cortical_means) + list(cortical_stds) + \
                 list(subcortical_means) + list(subcortical_stds)
    results.append(result_row)

# Crear un DataFrame para el CSV
column_names = ['file_name'] + \
               [f'cortical_mean_{roi}' for roi in selected_rois_cortical] + \
               [f'cortical_std_{roi}' for roi in selected_rois_cortical] + \
               [f'subcortical_mean_{roi}' for roi in selected_rois_subcortical] + \
               [f'subcortical_std_{roi}' for roi in selected_rois_subcortical]

df = pd.DataFrame(results, columns=column_names)
df.to_csv('selected_rois.csv', index=False)

