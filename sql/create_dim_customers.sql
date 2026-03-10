###creating customers dimension table 
CREATE OR REPLACE TABLE `cdebatch52-486907.ecommerce_dwh.dim_customers` AS
SELECT
    customer_id,
    customer_unique_id,
    customer_city,
    customer_state
FROM `cdebatch52-486907.ecommerce_raw.customers_raw`;
