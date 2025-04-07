import os
from nilearn import plotting
from nilearn import image
from nilearn.image import load_img
import numpy as np
import matplotlib.pyplot as plt
from nilearn import datasets
from nilearn.maskers import NiftiLabelsMasker
from nilearn.connectome import ConnectivityMeasure
from nilearn.regions import connected_label_regions
import nibabel as nib
import pandas as pd

# Listar archivos de la carpeta actual, excluyendo algunos archivos especificos
lista_archivos = []
for root, dirs, files in os.walk(".", topdown=False):
    for name in files:
        if name.endswith('.nii.gz') and name != 'ica_components.nii.gz':
            sujeta = os.path.join(root, name)
            lista_archivos.append(sujeta)

# Cargar el atlas de Harvard-Oxford
dataset_ho = datasets.fetch_atlas_harvard_oxford("cort-maxprob-thr25-2mm")
atlas_ho_filename = dataset_ho.filename

# Configurar el masker
masker = NiftiLabelsMasker(labels_img=atlas_ho_filename, standardize=True,
                           memory='nilearn_cache', resampling_target="data",
                           detrend=True, verbose=0)

# ----------------------------------------- Aplicacion de ROIs ---------------------------------

mean_signals_all_subjects = []

# Procesar cada sujeto
for subject in lista_archivos:
    fmri_img = nib.load(subject)
    time_series = masker.fit_transform(fmri_img)
    mean_signal_rois = np.mean(time_series, axis=0)
    mean_signals_all_subjects.append([subject] + list(mean_signal_rois))  # Agregar el nombre del archivo como primer elemento

# Crear un DataFrame
columns = ['file_name'] + [f'ROI_{i+1}' for i in range(mean_signal_rois.shape[0])]
df_mean_signal = pd.DataFrame(mean_signals_all_subjects, columns=columns)

# Guardar en un archivo CSV
df_mean_signal.to_csv('mean_signal_rois.csv', index=False)

print("Archivo con los promedios guardado: mean_signal_rois.csv")


