

WITH cleaned_customers AS (
    SELECT
        customer_id,
        {{ clean_customer_name('customer_name') }} AS cleaned_name,
        email,
        phone_number
    FROM
        stg_raw_customer_data
)
SELECT
    customer_id,
    cleaned_name,
    email,
    phone_number
FROM
    cleaned_customers;
