import pandas as pd


def clean_disaster_data(input_file, output_file):
    # Read the raw disaster data
    df = pd.read_csv(input_file)

    # Remove duplicate records
    df = df.drop_duplicates()

    # Remove leading and trailing spaces from column names
    df.columns = df.columns.str.strip()

    # Handle missing values
    for column in df.select_dtypes(include="object").columns:
        df[column] = df[column].fillna("Unknown")

    # Save cleaned data
    df.to_csv(output_file, index=False)

    print("Data cleaning completed successfully.")


if __name__ == "__main__":
    clean_disaster_data(
        "data/disaster_data.csv",
        "data/cleaned_disaster_data.csv"
    )
