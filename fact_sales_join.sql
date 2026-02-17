create table fact_sales as
select 
    o.order_id,
    o.customer_id,
    i.product_id,
    o.order_date,
    i.quantity,
    i.price,
    (i.quantity * i.price) as revenue
from stg_orders o
join raw_order_items i
on o.order_id = i.order_id;
