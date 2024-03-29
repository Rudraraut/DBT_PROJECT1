-- tests/test_raw_customer_data_row_count.sql

select count(*)
from {{ ref('raw_customer_data') }};
