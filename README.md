# Retail Sales Analytics: A 15-Query SQL Case Study for Real-World Business Insights

A complete SQL analytics project delivering actionable insights into revenue, customer behavior, and product performance using a clean, multi-table retail database.

## Project Overview

This project is a full end-to-end SQL analytics case study designed to mirror the work of a real data analyst in a retail business. Using a realistic multi-year dataset of customers, products, orders, and order items, the goal is to uncover meaningful insights about revenue trends, customer value, product performance, and purchasing behavior.

Across 15 structured SQL queries, this project demonstrates:

- Data cleaning and relational joins
- Aggregations and window functions
- Customer segmentation and lifecycle analysis
- Revenue trend analysis across days, months, and years
- Behavioral metrics such as repeat purchase rates and average days between orders

The result is a polished, professional analytics workflow that showcases SQL mastery and business-oriented thinking.

## Dataset Description

This project is built on a clean, relational retail dataset designed to replicate real-world transactional systems. The database includes four interconnected tables:

- customers — unique customer profiles used for segmentation, lifetime value, and behavioral analysis
- products — a structured product catalog spanning multiple retail categories
- orders — multi-year order records capturing customer activity and purchase timing
- order_items — granular line-item data enabling revenue calculations, product performance analysis, and basket-level insights

The dataset contains 200 customers, 2000 orders, and thousands of order items across a six-year period (2023–2028).

## Database Schema

customers                orders                   order_items               products
-----------              -----------              --------------            -----------
customer_id (PK)   ───<  order_id (PK)      ───<  order_item_id (PK)
first_name              customer_id (FK)         order_id (FK)        >─── product_id (PK)
last_name               order_date               product_id (FK)           product_name
email                                             quantity                 category
                                                  unit_price               price

## Folder Structure

retail_sales_analytics/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   └── order_items.csv
│
├── database/
│   └── retail_sales.db
│
├── queries/
│   ├── 01_total_revenue.sql
│   ├── 02_total_orders.sql
│   ├── ...
│   └── 15_avg_days_between_orders.sql
│
├── results/
│   ├── query_01.csv
│   ├── ...
│   └── query_15.csv
│
└── README.md

## How to Run the Project

1. Clone or download the repository to your local machine.
2. Open the SQLite database located at `database/retail_sales.db` using DB Browser for SQLite or any SQL editor.
3. Open the `queries/` folder to access all 15 analysis queries.
4. Run each query individually to reproduce the full analysis, including:
   - Total revenue and order volume
   - Customer lifetime value
   - Repeat purchase behavior
   - Product-level performance
   - Daily, monthly, and yearly revenue trends
5. (Optional) Review the `results/` folder to compare your outputs with the saved results.

## SQL Analysis Overview (All 15 Queries)

1. Total Revenue — Calculates total revenue generated across the entire dataset.
2. Total Number of Orders — Counts all orders placed over the multi-year period.
3. Top 10 Customers by Total Spending — Identifies the highest-value customers.
4. Top-Selling Products by Revenue — Ranks products by total sales generated.
5. Monthly Revenue Trends — Reveals seasonality and long-term patterns.
6. Customer Order Frequency — Counts how many orders each customer has placed.
7. Customer Lifetime Value (CLV) — Calculates total revenue per customer.
8. Daily Revenue — Shows revenue at the daily level.
9. Average Order Value (AOV) — Computes the average revenue per order.
10. Products Purchased More Than 50 Times — Highlights high-demand products.
11. Yearly Revenue Trends — Summarizes revenue by year.
12. First-Time vs. Returning Customers — Breaks down customer behavior.
13. Revenue by Product Category — Identifies top-performing categories.
14. Customer Repeat Purchase Rate — Measures how many customers return.
15. Average Days Between Orders — Loyalty metric showing purchase frequency.

## Key Insights

- Revenue grows steadily year over year.
- A small group of customers drives a large share of revenue.
- Product performance is concentrated among top sellers.
- Clear seasonality appears in monthly revenue trends.
- Most customers place only one order.
- Average Order Value is stable across the dataset.
- Returning customers tend to buy again quickly.

Retail Sales SQL Analysis — End-to-End Business Insights from a Multi-Table Database

Project Overview
This project is a complete SQL analytics case study built on a multi-table retail sales database. The goal was to explore customer behavior, product performance, revenue trends, and store operations using real-world business questions. I designed and executed 15 production-quality SQL queries, each focused on uncovering insights that support data-driven decision-making in retail and e-commerce environments. The project demonstrates my ability to work with relational data, write efficient SQL, and translate raw data into clear, actionable insights that matter to the business.

Business Problem
Retail organizations generate large volumes of transactional data, but turning that data into strategy requires structured analysis. This project focuses on answering questions that help businesses identify top-performing products and categories, understand customer purchasing patterns, evaluate store performance, detect seasonality, and measure the impact of discounts and promotions. These insights support decisions around pricing, inventory, marketing, and customer retention.

Approach and Methodology
Using a normalized SQLite database with tables for customers, products, stores, sales, and transactions, I validated data integrity, mapped out the schema, and wrote 15 SQL queries using joins, aggregations, window functions, and subqueries. Each query answers a real business question and mirrors the workflow of a data analyst working with retail data. The project is organized with a clean, reproducible folder structure and clear documentation.

Key Insights
Revenue is concentrated among a small group of products and categories.
High-value customers purchase more frequently and across more product categories.
Sales show strong seasonal patterns, with clear monthly spikes.
Certain stores consistently outperform others, suggesting differences in location or customer demographics.
Promotions increase transaction volume but do not always lead to higher revenue.

Skills Demonstrated
SQL (joins, CTEs, window functions, aggregations, subqueries), data modeling, schema interpretation, business analytics, insight generation, reproducible project structure, and clear communication of technical findings.

Why This Project Matters
This project showcases my ability to think like an analyst — not just write SQL. It demonstrates how I approach a business problem, structure a data investigation, and communicate insights that support real decision-making. It serves as a flagship example of my SQL, analytics, and storytelling capabilities.


## Tools Used

- SQLite
- DB Browser for SQLite
- SQL
- CSV files
