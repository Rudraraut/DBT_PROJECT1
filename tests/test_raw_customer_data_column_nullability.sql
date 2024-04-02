

   depends_on: {{ ref('raw_customer_data') }}

select count(*)
from {{ ref('raw_customer_data') }}
where customer_id is null;

select count(*)
from {{ ref('raw_customer_data') }}
where first_name is null;


select count(*)
from {{ ref('raw_customer_data') }}
where last_name is null;


select count(*)
from {{ ref('raw_customer_data') }}
where email is null;


select count(*)
from {{ ref('raw_customer_data') }}
where phone_number is null;


select count(*)
from {{ ref('raw_customer_data') }}
where registration_date is null;
