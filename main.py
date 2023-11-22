import pandas as pd

data = pd.read_excel('Proyecto_final_IN2023.xlsx')
missingData = data.isnull().sum()
print("Data sin imputaciones ",missingData)

# Imputación de datos
# Gender con moda
data['Gender'].fillna(data['Gender'].mode()[0], inplace=True)

# Total_Amount con media
data['Total_Amount'].fillna(data['Total_Amount'].mean(), inplace=True)

print("Data con imputaciones ",data.isnull().sum())

stats = data.describe()
print(stats)

# Creamos un nuevo dataframe sin datos nulos
data.to_excel('Proyecto_final_IN2023_update.xlsx', index=False)
