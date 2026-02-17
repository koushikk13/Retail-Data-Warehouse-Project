create table customer_metrics AS
select *,
SUM(revenue) OVER (partition by customer_id) as customer_lifetime_value
from fact_sales;
