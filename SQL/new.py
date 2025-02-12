import pandas as pd

# Load the CSV file
df = pd.read_csv('fifa.csv', encoding='utf-8', errors='replace')

# Save the cleaned CSV back to file
df.to_csv('fifa_cleaned.csv', index=False, encoding='utf-8')