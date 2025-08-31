SELECT table_schema, table_name FROM information_schema.tables;

SELECT table_name, table_type 
FROM information_schema.tables 
WHERE table_schema = 'staging';

CREATE SCHEMA staging;
CREATE SCHEMA sales_marts;

DROP SCHEMA IF EXISTS staging_sales_marts CASCADE;
DROP SCHEMA IF EXISTS staging_staging CASCADE;
DROP SCHEMA IF EXISTS sales_marts CASCADE;
DROP SCHEMA IF EXISTS staging CASCADE;

SELECT * FROM stg_orders LIMIT 5;
SELECT * FROM stg_products LIMIT 5;
SELECT * FROM stg_users LIMIT 5;

SELECT DISTINCT schemaname FROM pg_tables;

SELECT * FROM sales_marts.fact_orders LIMIT 10;

DROP SCHEMA IF EXISTS staging_sales_marts CASCADE;
DROP SCHEMA IF EXISTS staging_staging CASCADE;

SELECT * FROM staging.dim_products LIMIT 10;
SELECT * FROM staging.dim_users LIMIT 10;
SELECT * FROM staging.fact_orders LIMIT 10;

SELECT * FROM sales_marts.agg_orders_customer_product LIMIT 10;