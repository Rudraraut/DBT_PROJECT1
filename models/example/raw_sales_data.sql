CREATE OR REPLACE TRANSIENT TABLE DEMO_DB.TEST_SCHEMA_TEST_SCHEMA.staging_raw_sales_data AS
SELECT
    order_id,
    customer_id,
    CAST(order_date AS DATE) AS order_date,
    product_id,
    quantity,
    CAST(unit_price AS DECIMAL(10,2)) AS unit_price,
    CAST(total_price AS DECIMAL(10,2)) AS total_price
FROM
    DEMO_DB.TEST_SCHEMA.raw_sales_data;
