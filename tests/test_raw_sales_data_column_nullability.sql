
select count(*)
from {{ ref('raw_sales_data') }}
where sales_id is null;

select count(*)
from {{ ref('raw_sales_data') }}
where product_id is null;


select count(*)
from {{ ref('raw_sales_data') }}
where customer_id is null;


select count(*)
from {{ ref('raw_sales_data') }}
where sale_date is null;
