🛒 Customer & Sales Insights Dashboard
SQL + Power BI Portfolio Project
By Adi Al Soub

📊 Project Overview
This project showcases my end-to-end data analysis workflow using PostgreSQL (via pgAdmin) and Power BI. The dataset simulates a retail business and includes information about customers, orders, products, payments, regions, and product reviews.

The goal is to demonstrate:

SQL querying proficiency

Data modeling and cleaning

Business intelligence storytelling using Power BI

🧩 Database Schema
The database includes the following tables:

customers

products

orders

order_details

payments

regions

product_reviews

sales_reps

Each table is connected through proper primary/foreign key relationships and reflects realistic e-commerce operations.

📁 Key Features & Questions Answered
🔹 SQL Analysis
I wrote and verified over 25 SQL queries covering:

Customer acquisition and retention

Revenue analysis by region and product category

Product performance and order volume

Payment behavior and review activity

🔹 Power BI Dashboard
The dashboard includes:

Total revenue, orders, and customer KPIs

Monthly customer acquisition trends

Revenue by product category and region

Top products by revenue

New vs Retained customers

Customers with no orders in the past 6 months

Some visuals are directly powered by SQL queries I developed; others use Power BI DAX and modeling.

📌 Dashboard Structure
The Power BI report is structured across 3 tabs:

1. Executive Overview
Total Revenue

Total Orders

Customer Count

Revenue by Region (from SQL Q: Revenue by Region)

Revenue by Product Category (from SQL Q: Revenue by Product Category)

2. Customer Insights
New vs Retained Customers (from SQL Q: Identify new vs retained)

Customer Acquisition Trend by Month

Customers with No Orders in the Last 6 Months (from SQL Q: Last order check)

3. Product & Order Analysis
Top 10 Products by Revenue (from SQL Q: Top products by revenue)

Average Order Size Over Time

Orders with More Than 3 Items (from SQL Q: Complex orders)

⚙️ Tools & Technologies

PostgreSQL for querying and data modeling (via pgAdmin)

Power BI Desktop for visualization

DAX for measures and dynamic insights

GitHub for project hosting

🚀 How to Use
Clone this repository

Run the provided SQL schema and insert data in your PostgreSQL environment

Open the .pbix Power BI file and connect it to your PostgreSQL DB

Interact with the dashboards!

📫 Contact
Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/adi-soub-488428111/) or reach out via email at adisoub@gmail.com
