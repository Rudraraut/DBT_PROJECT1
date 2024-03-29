-- tests/test_raw_sales_data_column_nullability.sql

-- Check for NULL values in the sales_id column
select count(*)
from {{ ref('raw_sales_data') }}
where sales_id is null;

-- Check for NULL values in the product_id column
select count(*)
from {{ ref('raw_sales_data') }}
where product_id is null;

-- Check for NULL values in the customer_id column
select count(*)
from {{ ref('raw_sales_data') }}
where customer_id is null;

-- Check for NULL values in the sale_date column
select count(*)
from {{ ref('raw_sales_data') }}
where sale_date is null;
