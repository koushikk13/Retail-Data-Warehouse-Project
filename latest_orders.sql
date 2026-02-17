create table latest_orders as
select *
from (
    select *,
           ROW_NUMBER() OVER (
             partition by customer_id
             order by order_date DESC
           ) rn
    from fact_sales
) t
where rn = 1;
