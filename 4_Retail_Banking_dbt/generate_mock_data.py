import pandas as pd
import numpy as np
import os
import random
from datetime import datetime, timedelta

# Set random seed
np.random.seed(42)
random.seed(42)

print("🚀 Generando Base de Datos Sintética de Banca Minorista (Retail Banking)...")

# Configuraciones
NUM_CUSTOMERS = 1000
START_DATE = datetime(2023, 1, 1)
END_DATE = datetime(2023, 12, 31)

# 1. Tabla de CLIENTES (Customers)
customer_ids = [f"CUST-{str(i).zfill(5)}" for i in range(1, NUM_CUSTOMERS + 1)]
segmentos = ['Retail', 'Premium', 'Private Banking']
ciudades = ['Madrid', 'Barcelona', 'Valencia', 'Sevilla', 'Bilbao', 'Zaragoza']

clientes_df = pd.DataFrame({
    'customer_id': customer_ids,
    'age': np.random.randint(18, 85, NUM_CUSTOMERS),
    'segment': np.random.choice(segmentos, NUM_CUSTOMERS, p=[0.7, 0.25, 0.05]),
    'city': np.random.choice(ciudades, NUM_CUSTOMERS),
    'join_date': [START_DATE - timedelta(days=random.randint(0, 1000)) for _ in range(NUM_CUSTOMERS)]
})

# 2. Tabla de CUENTAS (Accounts)
# Cada cliente tiene 1 o 2 cuentas
accounts_data = []
account_counter = 1
for cid in customer_ids:
    num_cuentas = random.choices([1, 2], weights=[0.8, 0.2])[0]
    for _ in range(num_cuentas):
        accounts_data.append({
            'account_id': f"ACC-{str(account_counter).zfill(6)}",
            'customer_id': cid,
            'account_type': random.choices(['Checking', 'Savings'], weights=[0.7, 0.3])[0],
            'status': random.choices(['Active', 'Closed', 'Frozen'], weights=[0.9, 0.08, 0.02])[0],
            'open_date': START_DATE - timedelta(days=random.randint(0, 1000))
        })
        account_counter += 1

cuentas_df = pd.DataFrame(accounts_data)

# 3. Tabla de TRANSACCIONES (Transactions)
# Generamos unas 50,000 transacciones aleatorias
NUM_TRANSACTIONS = 50000
account_ids = cuentas_df['account_id'].tolist()
transaction_types = ['Transfer In', 'Transfer Out', 'Card Payment', 'ATM Withdrawal', 'Salary Deposit', 'Fee']

transactions_data = {
    'transaction_id': [f"TRX-{str(i).zfill(7)}" for i in range(1, NUM_TRANSACTIONS + 1)],
    'account_id': np.random.choice(account_ids, NUM_TRANSACTIONS),
    'transaction_date': [START_DATE + timedelta(days=random.randint(0, 364), hours=random.randint(0, 23)) for _ in range(NUM_TRANSACTIONS)],
    'transaction_type': np.random.choice(transaction_types, NUM_TRANSACTIONS, p=[0.15, 0.20, 0.40, 0.10, 0.10, 0.05]),
    'amount': np.random.exponential(150, NUM_TRANSACTIONS).round(2)
}

transacciones_df = pd.DataFrame(transactions_data)

# Lógica de importes: Si es salida, el amount es negativo
salidas = ['Transfer Out', 'Card Payment', 'ATM Withdrawal', 'Fee']
transacciones_df.loc[transacciones_df['transaction_type'].isin(salidas), 'amount'] *= -1

# Ordenamos las transacciones por fecha
transacciones_df = transacciones_df.sort_values(by=['account_id', 'transaction_date'])

# Guardar en CSV en la carpeta raw_data
out_dir = "C:/Users/es00700248/Desktop/Personal/Financial-Analytics-Showcase/4_Retail_Banking_dbt/raw_data"

clientes_df.to_csv(os.path.join(out_dir, "raw_customers.csv"), index=False)
cuentas_df.to_csv(os.path.join(out_dir, "raw_accounts.csv"), index=False)
transacciones_df.to_csv(os.path.join(out_dir, "raw_transactions.csv"), index=False)

print(f"✅ ¡Éxito! Archivos CSV generados en: {out_dir}")
print(f"   - raw_customers.csv ({len(clientes_df)} filas)")
print(f"   - raw_accounts.csv ({len(cuentas_df)} filas)")
print(f"   - raw_transactions.csv ({len(transacciones_df)} filas)")
