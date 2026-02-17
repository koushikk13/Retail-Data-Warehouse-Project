CREATE VIEW vw_monthly_sales AS
SELECT 
DATE_FORMAT(order_date,'%Y-%m') AS month,
SUM(revenue) AS total_revenue
FROM fact_sales
GROUP BY month;
CREATE VIEW vw_customer_value AS
SELECT customer_id, SUM(revenue) total_spent
FROM fact_sales
GROUP BY customer_id;
CREATE VIEW vw_country_performance AS
SELECT 
c.country,
SUM(f.revenue) total_revenue
FROM fact_sales f
JOIN dim_customers c
ON f.customer_id = c.customer_id
GROUP BY c.country;
