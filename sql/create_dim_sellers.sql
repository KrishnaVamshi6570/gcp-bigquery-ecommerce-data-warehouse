##creating sellers dimension table
CREATE OR REPLACE TABLE `cdebatch52-486907.ecommerce_dwh.dim_sellers` AS
SELECT
    seller_id,
    seller_city,
    seller_state
FROM `cdebatch52-486907.ecommerce_raw.sellers_raw`;
