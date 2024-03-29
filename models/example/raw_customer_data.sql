
    
{{ ref('raw_customer_data') }}
   
CREATE OR REPLACE VIEW staging_customer_data AS
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    TO_DATE(registration_date, 'YYYY-MM-DD') AS registration_date
FROM
    raw_customer_data;
