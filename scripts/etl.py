import pandas as pd

# Load raw data
raw_data_path = './data/noshowappointments.csv'
processed_data_path = './data/processed_data.csv'

df = pd.read_csv(raw_data_path)

# Example preprocessing (update this as needed)
df.columns = df.columns.str.lower().str.replace(" ", "_")
df['scheduled_day'] = pd.to_datetime(df['scheduled_day'])
df['appointment_day'] = pd.to_datetime(df['appointment_day'])

# Save preprocessed data
df.to_csv(processed_data_path, index=False)
print(f"Processed data saved to {processed_data_path}")
