create table raw_customers (
    customer_id int primary key,
    customer_name varchar(50),
    country varchar(30),
    signup_date date
);

create table raw_products (
    product_id int primary key,
    product_name varchar(50),
    category varchar(30)
);

create table raw_orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    status varchar(20)
);

create table raw_order_items (
    order_item_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    price decimal(10,2)
);
