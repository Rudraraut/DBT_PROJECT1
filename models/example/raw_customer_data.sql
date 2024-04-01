-- Create or replace view for raw customer data
CREATE OR REPLACE VIEW DEMO_DB.TEST_SCHEMA_TEST_SCHEMA.raw_customer_data AS
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    registration_date
FROM
    stg_raw_customer_data;
