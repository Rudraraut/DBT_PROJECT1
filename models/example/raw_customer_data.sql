

-- Define a source model to extract data from the raw customer data source
-- Replace 'your_source_name' with the actual name of your source defined in source.yml

{{ config(
    materialized='view',
    schema='TEST_SCHEMA',
    alias='raw_customer_data'
) }}

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    registration_date
FROM
    {{ source('my_source', 'stg_raw_customer_data') }}
