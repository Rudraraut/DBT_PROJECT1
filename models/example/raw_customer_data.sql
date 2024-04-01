

-- Declare dependency on the staging model
{{ config(
    materialized='table',
    depends_on=[ref('stg_raw_customer_data')]
) }}

-- Create or replace view for raw customer data
CREATE OR REPLACE VIEW {{ ref('raw_customer_data') }} AS
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    registration_date
FROM
    {{ ref('stg_raw_customer_data') }};
