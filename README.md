# Disaster Impact Analysis

## Project Overview

This project analyzes disaster events and their impact on different regions. The project focuses on data cleaning, data preprocessing, MySQL database management, SQL analysis, and data visualization.

The analysis helps identify regions and disaster types with higher affected populations, economic losses, disaster severity patterns, and yearly disaster trends.

## Technologies Used

- Python
- Pandas
- MySQL
- SQL
- Matplotlib
- Google Colab
- Jupyter Notebook

## Datasets

The project uses three datasets:

- `regions.csv` - Contains region information such as population and area.
- `disaster_events.csv` - Contains disaster event details such as disaster type, region, date, and severity.
- `impact_assessment.csv` - Contains information about affected people and economic losses.

## Data Cleaning and Preprocessing

The following data preprocessing steps were performed:

- Loaded datasets using Pandas
- Checked data types and dataset structure
- Identified and handled missing values
- Removed duplicate records
- Converted event dates into the appropriate format
- Standardized disaster type values
- Cleaned region information
- Merged disaster event and impact assessment data
- Created the final dataset for analysis

## MySQL Database

The cleaned data was stored in a MySQL database named `disaster_db`.

The database contains:

- `regions`
- `disaster_events`
- `impact_assessment`

SQL queries were used for grouping, aggregation, filtering, sorting, and analysis.

## SQL Analysis

The project includes the following analyses:

1. Top 5 regions by total affected population
2. Disaster severity distribution by disaster type
3. Total economic loss by disaster type
4. Number of disaster events by year
5. Average affected people per disaster by region
6. Number of disaster events by region
7. Total economic loss by region
8. Average economic loss by disaster severity
9. Total affected people by disaster type
10. Top 5 individual disaster events by affected population

## Data Visualization

Matplotlib was used to create charts for:

- Regional disaster impact
- Disaster type comparison
- Economic loss analysis
- Severity analysis
- Yearly disaster trends
- Top affected disaster events

## Key Insights

- West Bengal had the highest total affected population among the analyzed regions.
- Floods affected the highest number of people among the disaster types.
- High-severity disasters had the highest average economic loss.
- Kerala recorded the highest total economic loss among the regions.
- 2023 recorded the highest number of disaster events in the dataset.
- Tamil Nadu had the highest number of disaster events among the regions.

## Project Files

```text
disaster-impact-analysis/
├── Disaster_Impact_Analysis.ipynb
├── regions.csv
├── disaster_events.csv
├── impact_assessment.csv
└── README.md
