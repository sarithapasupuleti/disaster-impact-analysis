from data_cleaning import clean_disaster_data
from data_transformation import transform_disaster_data


def run_pipeline():
    # Step 1: Clean the raw disaster data
    clean_disaster_data(
        "data/disaster_data.csv",
        "data/cleaned_disaster_data.csv"
    )

    # Step 2: Transform the cleaned data
    transform_disaster_data(
        "data/cleaned_disaster_data.csv",
        "data/transformed_disaster_data.csv"
    )

    print("Disaster Data Pipeline completed successfully.")


if __name__ == "__main__":
    run_pipeline()
