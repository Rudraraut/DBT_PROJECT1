-- models/example/stg_raw_customer_data.sql

-- Create or replace transient staging table for raw customer data
CREATE OR REPLACE TRANSIENT TABLE {{ ref('raw_customer_data') }}_staging AS
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    TO_DATE(registration_date, 'YYYY-MM-DD') AS registration_date
FROM
    {{ ref('raw_customer_data') }};
