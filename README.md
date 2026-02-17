# 🛒 Retail Data Warehouse Project (MySQL)

## 📌 Overview

This project demonstrates the design of a SQL-based Retail Data Warehouse using MySQL.

The objective is to simulate how raw ERP-style data is transformed into analytics-ready datasets through structured SQL pipelines. The project focuses on data engineering concepts such as data modeling, transformation logic, and analytical table creation.

---

## 🧱 Project Architecture

Raw Layer → Staging Layer → Warehouse Layer → Analytics Layer


---

## 🗂️ Database Layers

### 🔹 Raw Layer

These tables store original transactional data.

- raw_customers
- raw_products
- raw_orders
- raw_order_items

---

### 🔹 Staging Layer

Data cleaning and preprocessing occur here.

- stg_orders
- filtered_customer_table

Tasks performed:

- Handling NULL values
- Applying CASE WHEN logic
- Preparing structured datasets

---

### 🔹 Warehouse Layer

Main analytical fact table:

- fact_sales

This table integrates customer, product, and order data for reporting and analysis.

---

### 🔹 Analytics Layer

Business-level analytical tables:

- customer_metrics
- latest_orders

These tables support KPI analysis and advanced SQL queries.

---

## ⚙️ Technologies Used

- MySQL
- SQL (JOINs, Subqueries, Aggregations)
- GitHub

---

## 🧠 SQL Concepts Demonstrated

- Data Warehouse Modeling
- Aggregations & GROUP BY
- CASE WHEN transformations
- Subqueries
- Data Cleaning Techniques

---

## 📁 Project Files

