##creating date dimension table
CREATE OR REPLACE TABLE `cdebatch52-486907.ecommerce_dwh.dim_date` AS
SELECT
    date,
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    EXTRACT(DAY FROM date) AS day
FROM UNNEST(GENERATE_DATE_ARRAY('2016-01-01','2018-12-31')) AS date;
