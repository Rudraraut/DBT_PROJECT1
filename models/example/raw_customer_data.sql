-- models/raw_customer_data.sql

{{ config(
    materialized='view',
    unique_key='customer_id'
) }}

with source_data as (
    select
        customer_id,
        first_name,
        last_name,
        email,
        phone_number,
        registration_date
    from {{ source('my_source', 'stg_raw_customer_data') }}
)

select *
from source_data;
