

-- Declare dependency on the staging model
{{ config(
    materialized='table',
    depends_on=[ref('stg_raw_customer_data')]
) }}

-