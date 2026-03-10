####creating product dimension table##
CREATE OR REPLACE TABLE `cdebatch52-486907.ecommerce_dwh.dim_products` AS
SELECT
    p.product_id,
    t.product_category_name_english AS category,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm
FROM `cdebatch52-486907.ecommerce_raw.products_raw` p
LEFT JOIN `cdebatch52-486907.ecommerce_raw.category_translation_raw` t
ON p.product_category_name = t.product_category_name;
