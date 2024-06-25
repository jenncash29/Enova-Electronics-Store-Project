--1. Calculating the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years. 
SELECT
  DATE_TRUNC(purchase_ts, quarter) as quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(usd_price), 2) as total_sales_usd,
  ROUND(AVG(usd_price), 2) as aov_usd
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
WHERE product_name = "Macbook Air Laptop"
  AND region = 'NA'
GROUP BY 1
ORDER by 1;


--2. Identifying the region that has the average highest time to deliver for products purchased in 2022 on the website or products purchased on mobile in any year.  
SELECT
  geo_lookup.region,
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, day)) as delivery_days
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
WHERE (EXTRACT(year FROM order_status.purchase_ts) = 2022
   AND purchase_platform = 'website')
   OR purchase_platform = 'mobile'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;


--3. Calculating the refund rate and refund count for each product overall.
SELECT
  CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS cleaned_product_name,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count,
  ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END)*100, 2) AS refund_rate
FROM core.orders 
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
GROUP BY 1
ORDER BY 3 DESC;


--4. Identifying the most popular product within each region.
--First step is to create a CTE to identify the region, product name, and total order count.
WITH sales_by_product AS (
  SELECT
    region,
    CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS cleaned_product_name,
    COUNT(DISTINCT orders.id) AS total_orders
  FROM core.orders 
  LEFT JOIN core.customers 
    ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup 
    ON customers.country_code = geo_lookup.country
  GROUP BY 1, 2)

--Second step is to create a window function to group each region and order by the order count descending so that I can extract the topped ranked product for each region.  
SELECT *
FROM sales_by_product
QUALIFY ROW_NUMBER() OVER (PARTITION BY region ORDER BY total_orders DESC) = 1
ORDER BY total_orders DESC;


--5. Comparing the YoY differences in time taken to make a purchase between loyalty customers vs. non-loyalty customers.
SELECT
  EXTRACT(year FROM purchase_ts) as year,
  CASE WHEN loyalty_program = 1 THEN 'YES' ELSE 'NO' END AS is_loyalty,
  ROUND(AVG(DATE_DIFF(purchase_ts, created_on, day)), 1) as days_to_purchase,
  ROUND(AVG(DATE_DIFF(purchase_ts, created_on, month)), 1) as months_to_purchase
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
GROUP BY 1, 2
ORDER BY 1;
