#########Total revenue metric
SELECT
SUM(price + freight_value) AS total_revenue
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales`;

#monthly revenue trend
SELECT
FORMAT_DATE('%Y-%m', order_date) AS month,
SUM(price + freight_value) AS revenue
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales`
GROUP BY month
ORDER BY month;

#top 10 product categories
SELECT
p.category,
SUM(f.price) AS revenue
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales` f
JOIN `cdebatch52-486907.ecommerce_dwh.dim_products` p
ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC
LIMIT 10;

#sales by state
SELECT
c.customer_state,
SUM(f.price) AS revenue
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales` f
JOIN `cdebatch52-486907.ecommerce_dwh.dim_customers` c
ON f.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

#top sellers
SELECT
s.seller_id,
SUM(f.price) AS revenue
FROM `cdebatch52-486907.ecommerce_dwh.fact_sales` f
JOIN `cdebatch52-486907.ecommerce_dwh.dim_sellers` s
ON f.seller_id = s.seller_id
GROUP BY s.seller_id
ORDER BY revenue DESC
LIMIT 10;