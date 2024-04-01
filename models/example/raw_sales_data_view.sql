-- Create or replace view for raw sales data
CREATE OR REPLACE VIEW DEMO_DB.TEST_SCHEMA_TEST_SCHEMA.raw_sales_data_view AS
SELECT
    *
FROM
    DEMO_DB.TEST_SCHEMA_TEST_SCHEMA.staging_raw_sales_data;
