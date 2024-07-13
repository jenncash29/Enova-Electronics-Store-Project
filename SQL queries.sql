--1. Calculating the order counts, revenue, and AOV for Macbooks sold in North America per each quarter across all years. 
SELECT
  DATE_TRUNC(purchase_ts, quarter) AS quarter,
  COUNT(DISTINCT orders.id) AS order_count,
  ROUND(SUM(usd_price), 2) AS total_revenue,
  ROUND(AVG(usd_price), 2) AS aov
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
WHERE product_name = 'Macbook Air Laptop'
  AND region = 'NA'
GROUP BY 1
ORDER BY 1;


--2. Calculating the average quarterly order count and revenue for MacBooks sold in North America across all quarters.
WITH quarterly_metrics AS (
  SELECT  
    DATE_TRUNC(purchase_ts, quarter) AS quarter,
    COUNT(DISTINCT orders.id) AS order_count,
    SUM(usd_price) AS total_revenue
  FROM core.orders 
  LEFT JOIN core.customers 
    ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup 
    ON customers.country_code = geo_lookup.country
  WHERE product_name = 'Macbook Air Laptop'
    AND region = 'NA'
  GROUP BY 1)

SELECT 
  ROUND(AVG(order_count), 2) AS avg_quarter_orders,
  ROUND(AVG(total_revenue), 2) AS avg_quarter_revenue
FROM quarterly_metrics;


--3. Identifying the region that has the average highest time to deliver for products purchased in 2022 on the website or products purchased on mobile in any year.  
SELECT
  geo_lookup.region,
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, day)) AS delivery_days
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
WHERE (EXTRACT(year FROM order_status.purchase_ts) = 2022
   AND purchase_platform = 'website')
   OR purchase_platform = 'mobile app'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;


--4. Calculating the refund rate and refund count for each product overall.
SELECT
  CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS cleaned_product_name,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count,
  ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END)*100, 2) AS refund_rate
FROM core.orders 
LEFT JOIN core.order_status
  ON orders.id = order_status.order_id
GROUP BY 1
ORDER BY 3 DESC;


--5. Identifying the most popular product within each region.
--This query can be done as a CTE or in one query using QUALIFY. 
SELECT
  region,
  CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS cleaned_product_name,
  COUNT(DISTINCT orders.id) AS total_orders
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
GROUP BY 1, 2
QUALIFY ROW_NUMBER() OVER (PARTITION BY region ORDER BY COUNT(DISTINCT orders.id) DESC) = 1
ORDER BY 3 DESC;


--6. Comparing the YoY differences in time taken to make a purchase between loyalty customers vs. non-loyalty customers.
SELECT
  EXTRACT(year FROM purchase_ts) AS year,
  CASE WHEN loyalty_program = 1 THEN 'YES' ELSE 'NO' END AS is_loyalty,
  ROUND(AVG(DATE_DIFF(purchase_ts, created_on, day)), 1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(purchase_ts, created_on, month)), 1) AS months_to_purchase
FROM core.orders 
LEFT JOIN core.customers 
  ON orders.customer_id = customers.id
GROUP BY 1, 2
ORDER BY 1;


--7. Identifying and ranking each country within its region based on total revenue using a window function.
SELECT
  region,
  country,
  ROUND(SUM(usd_price), 2) AS total_revenue,
  RANK() OVER(PARTITION BY region ORDER BY SUM(usd_price) DESC) AS country_rank
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
GROUP BY 1, 2
ORDER BY 1;


--8. Identifying the top 3 customers with the highest order count on each purchase platform for targeted marketing efforts, allowing for ties.
WITH customer_order_count AS (
  SELECT 
    purchase_platform,
    customer_id,
    COUNT(DISTINCT id) AS order_count
  FROM core.orders
  GROUP BY 1,2),

ranking_cte AS (
  SELECT 
	*, 
	DENSE_RANK() OVER (PARTITION BY purchase_platform ORDER BY order_count DESC) AS order_ranking
  FROM customer_order_count)

SELECT * 
FROM ranking_cte 
WHERE order_ranking <= 3;


--9. Identifying the product distribution by order count and average price for each supplier. 
SELECT
  CASE WHEN orders.product_name LIKE '%gaming monitor%' THEN '27in 4K Gaming Monitor' ELSE orders.product_name END AS cleaned_product_name,
  supplier,
  COUNT(orders.id) AS order_count,
  ROUND(AVG(usd_price),2) AS average_price
FROM core.orders 
LEFT JOIN core.suppliers 
  ON orders.product_id = suppliers.product_id
GROUP BY 1,2
ORDER BY 1,3 DESC;


--10. Identifying non-loyalty customers who have made three or more purchases for targeted conversion marketing campaigns.
WITH ranking AS (
  SELECT 
	*,
	DENSE_RANK() OVER(PARTITION BY customer_id ORDER BY purchase_ts) AS order_ranking
  FROM core.orders
  LEFT JOIN core.customers 
	ON orders.customer_id = customers.id
  WHERE loyalty_program = 0)
	
SELECT * 
FROM ranking
WHERE order_ranking >= 3;


