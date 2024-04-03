-- models/raw_sales_data.sql

{{ config(
    materialized='view',
    unique_key='order_id'
) }}

with source_data as (
    select
        order_id,
        customer_id,
        cast(order_date as date) as order_date,
        product_id,
        quantity,
        cast(unit_price as decimal(10,2)) as unit_price,
        cast(total_price as decimal(10,2)) as total_price
    from {{ source('my_source', 'stg_raw_sales_data') }}
)

select *
from source_data;
