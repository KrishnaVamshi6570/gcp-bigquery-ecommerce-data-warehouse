##creating a view for dashboard in looker studio
CREATE OR REPLACE VIEW `cdebatch52-486907.ecommerce_dwh.sales_dashboard_view` AS
SELECT
    f.order_id,
    f.order_date,
    f.price,
    f.freight_value,
    p.category,
    c.customer_state,
    s.seller_id
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales` f
LEFT JOIN `cdebatch52-486907.ecommerce_dwh.dim_products` p
ON f.product_id = p.product_id
LEFT JOIN `cdebatch52-486907.ecommerce_dwh.dim_customers` c
ON f.customer_id = c.customer_id
LEFT JOIN `cdebatch52-486907.ecommerce_dwh.dim_sellers` s
ON f.seller_id = s.seller_id;