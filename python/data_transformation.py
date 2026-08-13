import pandas as pd


def transform_disaster_data(input_file, output_file):
    # Read the cleaned data
    df = pd.read_csv(input_file)

    # Convert column names to lowercase
    df.columns = df.columns.str.lower().str.replace(" ", "_")

    # Remove completely empty columns
    df = df.dropna(axis=1, how="all")

    # Save the transformed data
    df.to_csv(output_file, index=False)

    print("Data transformation completed successfully.")


if __name__ == "__main__":
    transform_disaster_data(
        "data/cleaned_disaster_data.csv",
        "data/transformed_disaster_data.csv"
    )
