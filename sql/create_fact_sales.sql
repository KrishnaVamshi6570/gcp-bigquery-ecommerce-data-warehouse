##creating the fact table(sales)

CREATE OR REPLACE TABLE `cdebatch52-486907.ecommerce_dwh.fact_sales` AS
SELECT
    oi.order_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    DATE(o.order_purchase_timestamp) AS order_date,
    oi.price,
    oi.freight_value
FROM `cdebatch52-486907.ecommerce_raw.order_items_raw` oi
JOIN `cdebatch52-486907.ecommerce_raw.orders_raw` o
ON oi.order_id = o.order_id;