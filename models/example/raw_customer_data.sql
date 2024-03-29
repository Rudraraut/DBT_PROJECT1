SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    TO_DATE(registration_date, 'YYYY-MM-DD') AS registration_date
FROM
    {{ model('raw_customer_data', 'raw_customer_data') }};
