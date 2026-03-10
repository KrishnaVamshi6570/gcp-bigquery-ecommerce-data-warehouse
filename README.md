# BigQuery Ecommerce Data Warehouse

## Project Overview

This project implements a **cloud-based data warehouse using Google BigQuery** to analyze e-commerce sales data.

The system ingests raw CSV datasets, transforms them into a **star schema warehouse**, and visualizes insights using **Looker Studio dashboards**.

---

# Architecture

The data pipeline follows this architecture:

![Architecture](architecture/star_schema.png)

### Pipeline Steps

1. Raw CSV dataset ingestion
2. Data stored in BigQuery raw tables
3. SQL transformations
4. Star schema data warehouse
5. Analytics view for BI tools
6. Looker Studio dashboard visualization

---

# Technologies

- Google Cloud Platform
- BigQuery
- SQL
- Looker Studio

---

# Data Warehouse Model

### Fact Table
- `fact_sales`

### Dimension Tables
- `dim_customers`
- `dim_products`
- `dim_sellers`
- `dim_date`

---

# Dashboard Insights

The dashboard provides key business metrics:

- Total Revenue KPI
- Revenue Trend Over Time
- Top Product Categories
- Sales Distribution by Region

---

# Dashboard

![Dashboard](dashboard/dashboard_overview.png)

---

# Dataset

Brazilian E-Commerce Public Dataset by Olist

Source:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce