

{% macro clean_customer_name(name) %}
    
    SELECT REGEXP_REPLACE({{ name }}, '[^a-zA-Z ]', '') AS cleaned_name
{% endmacro %}

{% macro calculate_discount(price, discount_percent) %}
    
    SELECT {{ price }} * (1 - ({{ discount_percent }} / 100.0)) AS discounted_price
{% endmacro %}
