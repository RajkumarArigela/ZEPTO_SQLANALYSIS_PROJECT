# 🛒 Zepto E-commerce SQL Data Analysis Project By Rajkumar Arigela

## 📌 Project Overview

This project focuses on analyzing an e-commerce inventory dataset inspired by **Zepto**, one of India’s fastest-growing quick-commerce startups. The goal is to use **SQL** to extract actionable business insights from product, pricing, and stock data — simulating the daily responsibilities of a **data analyst** in an e-commerce environment.

---

## 🎯 Objectives

- 📦 Explore and understand inventory-related data  
- 🧮 Analyze product discounts, pricing, availability, and category performance  
- 💡 Derive business-focused insights for decision-making  
- 🧠 Showcase practical SQL skills, including query writing and optimization  

---

## 🗃️ Dataset Structure (`zepto` Table)

| Column Name             | Data Type | Description                                   |
|-------------------------|-----------|-----------------------------------------------|
| `sku_id`                | INT (PK)  | Unique product identifier                     |
| `name`                  | TEXT      | Product name                                  |
| `category`              | TEXT      | Product category                              |
| `brand`                 | TEXT      | Brand of the product                          |
| `mrp`                   | INT       | Maximum Retail Price                          |
| `discountPercent`       | INT       | Percentage discount on MRP                    |
| `discountedSellingPrice`| INT       | Final selling price after discount            |
| `availableQuantity`     | INT       | Current inventory level                       |
| `weightInGms`           | INT       | Weight of the product in grams                |
| `outOfStock`            | TEXT      | Indicates whether the product is out of stock |
| `quantity`              | INT       | Quantity per SKU                              |

---

## 📊 Key SQL Queries & Insights

Each query answers a critical business question to help the operations, marketing, and product teams make better decisions.

| Query No. | Description |
|-----------|-------------|
| Q1 | Top 10 best-value products by discount percentage |
| Q2 | High MRP products that are currently out of stock |
| Q3 | Estimated revenue per product category |
| Q4 | Premium products (MRP > ₹500) with low discounts |
| Q5 | Categories with highest average discount |
| Q6 | Price per gram for value comparison |
| Q7 | Classification into Low, Medium, Bulk based on weight |
| Q8 | Total inventory weight by category |
| Q9 | Products with highest available quantity |
| Q10 | Product names with the most SKUs listed |
| Q11 | Average discount by product name |
| Q12 | Categories with the most out-of-stock products |
| Q13 | Max, min, avg MRP per category |
| Q14 | Products having same name but different MRPs |
| Q15 | Items with zero quantity but not marked as out-of-stock |
| Q16 | Top 5 categories by total inventory value |

> 🔍 Each query simulates a real-world analytics use case — including inventory planning, pricing strategy, category performance, and more.

---

## 🛠️ Tools & Technologies

- **SQL** – Used to extract, analyze, and transform data  
- **MySQL / PostgreSQL** – Query compatibility with standard RDBMS systems  
- **Excel / Google Sheets (optional)** – For summary reports or visual checks  
- **GitHub** – For hosting, version control, and public portfolio showcasing  

---

## 📂 Project Structure

zepto-SQL-data-analysis-project/

│
├── 📄 zepto_SQL_data_analysis.sql

│ └─ Core SQL file with all business analysis queries

│
├── 📄 README.md

│ └─ This file – project documentation and summary

│
├── 📊 zepto_insights_summary.xlsx (optional)

│ └─ Summarized KPIs, pivot tables, and visualizations

│
├── 📽️ zepto_SQL_presentation.pptx (optional)

│ └─ PowerPoint for showcasing findings

│
└── 📁 visualizations/

└─ Screenshots of query results, graphs, or dashboards


---

🚀 How to Use This Project

📥 Step 1: Clone the Project

git clone https://github.com/RajkumarArigela/zepto-SQL-data-analysis-project.git
cd zepto-SQL-data-analysis-project

⚙️ Step 2: Run the Analysis

Open the file zepto_SQL_data_analysis.sql in any SQL editor (like MySQL Workbench, DBeaver, or pgAdmin).

Create a new database.

Import the Zepto dataset (CSV or SQL format).

Run each query one by one to explore key insights.

👉 You can also visualize the results using tools like Excel, Power BI, or Tableau (optional but recommended).

📈 What You’ll Learn

✅ How to write SQL queries for real business problems

✅ Analyze e-commerce product, pricing, and inventory data

✅ Turn raw data into actionable business insights

✅ Build a strong, portfolio-ready project as a data analyst

## 🌐 Let’s Connect

I regularly share data-related projects, SQL tips, and interview preparation resources.  
If you're also learning or working in data analytics, feel free to connect and collaborate!

- 📧 Email: rajkumaarigela@gmail.com  
- 💼 LinkedIn: [linkedin.com/in/rajkumar-arigela-b958a2328](https://www.linkedin.com/in/rajkumar-arigela-b958a2328)  
- 💻 GitHub: [github.com/RajkumarArigela](https://github.com/RajkumarArigela)

🪪 License

MIT License — Feel free to fork, use, or customize this project in your own portfolio. Attribution is appreciated!

💡 Thanks for Visiting!

If you found this project helpful or inspiring, please ⭐ star the repository or share it with others learning SQL and analytics.
Let’s grow and learn together! 🚀
