🧾 Superstore Retail Sales Insights (SQL Project Only)

A complete SQL portfolio project to explore and analyze sales, profit, customer, and product data using the popular Superstore dataset.

This project showcases essential skills for Data Analyst and Business Analyst roles by combining raw CSV data, SQL querying, and business insight extraction.

------------------------------------------------------------
📁 Project Structure

retail-sales-insights/
├── data/
│   └── Sample - Superstore.csv
├── sql_scripts/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── analysis_queries.sql
├── sql_query_results/
│   ├── top_products_by_sales.png
│   ├── region_wise_profit.png
│   └── monthly_sales_trend.png
│   └── Customer_segment_bysales.png
│   └── Prfit_margin_by_category.png
│   └── Segment-Level Discount & Profit Analysis.png
│   └── Shipping_delay.png
│   └── customer_by_sales.png
│   └── TopSellingProducts_perCategory.png
│   └── YOY sales growth.png
└── README.md

------------------------------------------------------------
🎯 Objectives

- Load and transform sales data using SQL (MySQL)
- Extract actionable business insights with SQL queries
- Capture and document query results for visual reference
- Organize and publish the project on GitHub

------------------------------------------------------------
📊 Dataset Overview

- Dataset: Superstore (Retail Sales)
- Format: CSV
- Size: ~10K records
- Fields: Order ID, Order Date, Product, Sales, Profit, Region, Category, etc.
- Source: https://www.kaggle.com/datasets/vivek468/superstore-dataset-final

------------------------------------------------------------
🛠️ SQL Components

create_tables.sql – Defines the `Orders` table schema

insert_data.sql – Loads CSV data using:
OrderDate = STR_TO_DATE(@OrderDate, '%d-%m-%Y')
ShipDate = STR_TO_DATE(@ShipDate, '%d-%m-%Y')

analysis_queries.sql – Contains business analysis queries

🔹 Basic Insights
- Top 10 Products by Sales
- Monthly Sales Trend
- Region-wise Profit
- Customer Segment Performance

🔹 Advanced Analysis Queries

1. Shipping Delay (in Days)

2. Year-over-Year Sales Growth by Month

3. Profit Margin Categorization

4. Top-Selling Products per Category Using RANK

5. Segment-Level Discount & Profit Analysis

6. Rolling 3-Month Sales

------------------------------------------------------------
📸 SQL Query Results (Screenshots)

Screenshots from MySQL Workbench / SQLyog:
- top_products_by_sales.png
- monthly_sales_trend.png
- region_wise_profit.png

------------------------------------------------------------
🧠 Skills Demonstrated

- SQL: Joins, filters, group by, case, window functions
- MySQL: File import, date formatting, analytical functions
- Business Insight: Segment performance, profitability, delays
- GitHub: Version control and project documentation

------------------------------------------------------------
✅ How to Use

1. Clone or download the repo
2. Load `Sample - Superstore.csv` into MySQL
3. Run queries from `analysis_queries.sql`
4. Review screenshots and insights

------------------------------------------------------------
🙌 Acknowledgements

Dataset Source: Superstore Sales – Kaggle (by vivek468)
https://www.kaggle.com/datasets/vivek468/superstore-dataset-final

⭐ Fork this repo or give a star if you find it helpful!
