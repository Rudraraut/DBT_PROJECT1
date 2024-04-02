

{{ config(
    materialized='view',
    schema='TEST_SCHEMA',
    alias='raw_sales_data'
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    product_id,
    quantity,
    unit_price,
    total_price
FROM
    {{ source('my_source', 'stg_raw_sales_data') }}
