
-- Create staging model for raw sales data
SELECT
    order_id,
    customer_id,
    CAST(order_date AS DATE) AS order_date,
    product_id,
    quantity,
    CAST(unit_price AS DECIMAL(10,2)) AS unit_price,
    CAST(total_price AS DECIMAL(10,2)) AS total_price
FROM
    {{ ref('raw_sales_data') }};
