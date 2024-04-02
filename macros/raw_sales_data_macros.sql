

{% macro apply_discount(discount_rate) %}
SELECT
    order_id,
    customer_id,
    order_date,
    product_id,
    quantity,
    unit_price * (1 - {{ discount_rate }}) AS discounted_unit_price,
    total_price * (1 - {{ discount_rate }}) AS discounted_total_price
FROM
    {{ ref('raw_sales_data') }}
{% endmacro %}
