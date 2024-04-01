

-- Define staging model for raw_customer_data
{{ config(
    materialized='table',
    unique_key='customer_id'
) }}

create table {{ ref('stg_raw_customer_data') }} as (
    select
        *
    from
        {{ source('raw_customer_data', 'raw_customer_data') }}
);
