# Top_Youtubers_2024

## Top UK YouTubers 2024 Dashboard

## Overview

This project analyzes the top YouTube channels in the UK for 2024 based on key metrics such as total views, total videos, and subscriber count. The cleaned dataset is visualized using Power BI to generate insights into channel performance and engagement.

Disclaimer: This project was created for educational purposes. This is my very first project utilizing Power BI. I followed the YouTube tutorial "Excel to Power BI Portfolio Project" by Stephen | Data to complete the project and made some minor adjustments to the workflow and visualizations. The original dataset was sourced from Kaggle.

## Project Workflow

### 1. Data Cleaning with SQL

The dataset was cleaned and prepared using SQL to ensure data quality. Below are the data quality checks performed:

Data Quality Tests

Raw Count Check:

SELECT COUNT(*) AS no_of_rows FROM view_uk_youtubers_2024;

Column Count Check:

SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024';

Data Type Check:

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024';

Duplicate Records Check:

SELECT channel_name, COUNT(*) AS duplicate_count
FROM view_uk_youtubers_2024
GROUP BY channel_name
HAVING COUNT(*) > 1;

### 2. Visualization with Power BI

Using the cleaned dataset, I created the following visualizations in Power BI:

Top 10 YouTubers by Views: A treemap displaying the leading YouTube channels in terms of total views.

Top 10 YouTubers by Subscribers: A bar chart showing the most subscribed channels.

Channel Engagement Ratios: Key metrics such as:

Average Views per Video (M)

Subscriber Engagement Rate

Views per Subscriber

Summary Table: Includes total views, videos, and subscribers for each channel.

## Key Insights

NoCopyrightSounds leads with the highest subscriber count (33.60M).

DanTDM has significant dominance in terms of total views.

Channels with fewer videos often achieve higher engagement ratios, indicating focused, high-quality content.

## Technologies Used

SQL: For data cleaning and quality testing.

Power BI: For creating interactive dashboards and visualizations.

Kaggle Dataset: Used as the primary data source.

How to Use

Clone this repository:

git clone <repository-url>

Import the dataset into a SQL database.

Execute the provided SQL queries to clean the data.

Open the Power BI file to explore the visualizations.

Educational Purpose

This project demonstrates the integration of SQL and Power BI for data analysis and visualization. It is a valuable exercise for beginners learning how to:

Clean and prepare datasets.

Perform basic data quality checks.

Create meaningful insights using Power BI.

Acknowledgements

Dataset Source: Kaggle

Tutorial Reference: The project was developed by following "Excel to Power BI Portfolio Project" by Stephen | Data, with modifications made to suit personal learning objectives.

Contact

Feel free to connect with me on LinkedIn or reach out via email at tharushika9719@gmail.com.
