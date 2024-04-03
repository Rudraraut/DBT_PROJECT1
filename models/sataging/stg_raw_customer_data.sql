-- models/staging/stg_raw_customer_data.sql

CREATE TABLE {{ ref('my_source', 'stg_raw_customer_data') }} (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    registration_date DATE
);
