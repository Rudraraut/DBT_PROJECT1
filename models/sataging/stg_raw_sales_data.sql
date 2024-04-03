-- models/staging/stg_raw_sales_data.sql

CREATE TABLE {{ ref('my_source', 'stg_raw_sales_data') }} (
    order_id INT,
    customer_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2)
);
