

select count(*)
from {{ ref('raw_customer_data') }};
