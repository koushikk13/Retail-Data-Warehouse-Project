create table dim_customers as
select 
    customer_id,
    customer_name,
    country,
year(signup_date) as signup_year
from raw_customers;
