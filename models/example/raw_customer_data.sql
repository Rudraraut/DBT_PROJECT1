 (
    select
        customer_id,
        first_name,
        last_name,
        email,
        phone_number,
        TO_DATE(registration_date, 'YYYY-MM-DD') AS registration_date
    from
        DEMO_DB.TEST_SCHEMA.raw_customer_data
);
