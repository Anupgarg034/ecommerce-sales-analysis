# E-Commerce Sales Analysis

## Project Overview

This project analyzes e-commerce sales data to identify sales trends, profitable product categories, regional performance, customer purchasing behavior, and payment preferences.

The project uses Python, SQL, and Power BI to perform data cleaning, exploratory data analysis, business analysis, visualization, and interactive dashboard creation.

## Objectives

- Analyze overall sales and profit performance
- Identify the most profitable product categories
- Analyze regional sales performance
- Understand customer purchasing behavior
- Analyze payment method preferences
- Study the relationship between discounts and profit
- Build an interactive Power BI dashboard
- Generate business insights and recommendations

## Dataset

The dataset contains **5,000 e-commerce orders** with information about:

- Order ID
- Order Date
- Customer Name
- Region
- City
- Category
- Sub-Category
- Product Name
- Quantity
- Unit Price
- Discount
- Sales
- Profit
- Payment Mode

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQL
- SQLite
- Power BI
- Jupyter Notebook

## Project Structure

```text
ecommerce-sales-analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── ecommerce_sales.db
│
├── notebooks/
│   └── 01_data_cleaning.ipynb
│
├── output/
│   └── charts/
│
├── power BI/
│   └── ECommerce_Sales_Dashboard.pbix
│
├── sql/
│   └── sales_analysis.sql
│
├── src/
│
├── venv/
│
├── .gitignore
├── README.md
└── requirements.txt

## Key Analysis

The project analyzes 5,000 e-commerce orders and focuses on:

- Sales and profit trends over time
- Product category performance
- Regional sales performance
- Payment method preferences
- City-wise sales
- Customer purchasing behavior
- Discount and profit relationships

## Key Metrics

| Metric | Value |
|---|---:|
| Total Sales | 533.67M |
| Total Profit | 79.71M |
| Total Orders | 5,000 |

## Power BI Dashboard

The interactive Power BI dashboard provides insights into:

- Total Sales
- Total Profit
- Total Orders
- Sales & Profit Trend Over Time
- Sales by Product Category
- Profit by Product Category
- Sales by Region
- Sales by Payment Method
- Sales by City

## Project Workflow

1. Data Collection
2. Data Cleaning using Python and Pandas
3. Exploratory Data Analysis
4. SQL-based Analysis using SQLite
5. Data Visualization using Matplotlib and Seaborn
6. Interactive Dashboard Creation using Power BI
7. Business Insights and Recommendations

## How to Run

### Python Environment

Create a virtual environment:

```bash
python -m venv venv


### Activate Virtual Environment

#### Windows

```bash
venv\Scripts\activate

### Install Required Libraries

```bash
pip install -r requirements.txt

### Run Jupyter Notebook

```bash
jupyter notebook

Then open:

```text
notebooks/01_data_cleaning.ipynb

## SQL Analysis

The SQL analysis is available in:

```text
sql/sales_analysis.sql

The project uses SQLite for database analysis.

## Power BI Dashboard

Open the Power BI dashboard file:

```text
power BI/ECommerce_Sales_Dashboard/ECommerce_Sales_Dashboard.pbix

## Business Insights

The analysis helps identify:

- Overall sales and profit performance
- Best-performing product categories
- Regional sales patterns
- Preferred payment methods
- City-wise sales performance
- Customer purchasing behavior
- The relationship between discounts and profitability

## Business Recommendations

- Focus on high-profit product categories.
- Improve sales strategies in lower-performing regions.
- Promote preferred payment methods.
- Analyze customer purchasing patterns to improve retention.
- Optimize discount strategies to protect profit margins.
- Use the Power BI dashboard for continuous sales monitoring.

## Author

**Anup Garg**

E-Commerce Sales Analysis using Python, SQL and Power BI.