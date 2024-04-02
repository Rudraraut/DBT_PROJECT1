-- tests/test_raw_customer_data_column_nullability.sql

-- Check for NULL values in the customer_id column

   depends_on: {{ ref('raw_customer_data') }}

select count(*)
from {{ ref('raw_customer_data') }}
where customer_id is null;

-- Check for NULL values in the first_name column
select count(*)
from {{ ref('raw_customer_data') }}
where first_name is null;

-- Check for NULL values in the last_name column
select count(*)
from {{ ref('raw_customer_data') }}
where last_name is null;

-- Check for NULL values in the email column
select count(*)
from {{ ref('raw_customer_data') }}
where email is null;

-- Check for NULL values in the phone_number column
select count(*)
from {{ ref('raw_customer_data') }}
where phone_number is null;

-- Check for NULL values in the registration_date column
select count(*)
from {{ ref('raw_customer_data') }}
where registration_date is null;
