import pandas as pd

# Read the Excel file
excel_file = 'pacientes_utiles.xlsx'
df = pd.read_excel(excel_file)

# Get the first column
first_column = df.iloc[:, 0]

# Print all values in the first column in the same line
print(' '.join(map(str, first_column)))
