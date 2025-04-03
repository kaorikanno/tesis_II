Primero, necesitamos procesar imágenes MRI entonces, ¿Qué elegimos?

- Nilearn es para analizar los cerebros usando machine-learning.
- Nibabel es para escribir y leer la data en formato médico.

Es útil usar ambas, usando lo de https://lukas-snoek.com/

Usando los datos proporcionados por nilearn, nos sirve lo del archivo nilearn_tutorial.
Si queremos procesar nuestros propios datos con nileanr y nibabel, usar lo del archivo nilearn_HCP1

Para hacer una parcelación del cerebro, podemos usar el de HCP automático de Glasser et al:  https://rmldj.github.io/hcp-utils/ .

Para ver mi recolección de datos: https://uccl0-my.sharepoint.com/:x:/r/personal/kaori_kanno_uc_cl/_layouts/15/doc2.aspx?sourcedoc=%7B78723E0C-FC07-42ED-A3F0-24C5DA701457%7D&file=mujeresDMN.xlsx&action=default&mobileredirect=true

info de los primeros 10 cerebros (errst y classes) en:

https://uccl0-my.sharepoint.com/personal/kaori_kanno_uc_cl/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fkaori%5Fkanno%5Fuc%5Fcl%2FDocuments%2Fcerebros&view=0

info recopilada por Pablo:

https://uccl0-my.sharepoint.com/:x:/g/personal/pablo_burgos_uc_cl/Eb7bbTHj8lpAlsio0xW2xsUB6-wySstnvFi_MF6f3DXDYA?e=4%3ACUduJw&fromShare=true&at=9&CID=69f234e8-694f-a262-411b-00b23b1d2b24


colab hecho hasta ahora para las métricas (features) de conectividad, pero que no funciona en colab por el espacio de RAM:

https://colab.research.google.com/drive/1HVtysu9VakeGnIb6F8T9i1c_VXzVW5Xk#scrollTo=nJwgwI0o3oRm
