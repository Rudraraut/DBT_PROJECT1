
{% schema_test name="raw_customer_data_schema_test" %}

-- Query to check if columns exist in the raw_customer_data table
select
    customer_id
from
    TEST_SCHEMA.columns
where
    table_name = 'raw_customer_data'
    and column_name in ('customer_id', 'first_name', 'last_name', 'email', 'phone_number', 'registration_date');
