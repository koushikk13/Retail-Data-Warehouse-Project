CREATE TABLE stg_orders AS
SELECT *,
       CASE 
           WHEN status IS NULL THEN 'Unknown'
           ELSE status
       END AS clean_status
FROM raw_orders;
