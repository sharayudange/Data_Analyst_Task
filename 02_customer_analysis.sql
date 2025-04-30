-- Total number of orders per customer
SELECT customer_id, COUNT(*) AS order_count
FROM customers
GROUP BY customer_id
ORDER BY order_count DESC;


-- Repeat customers with first and last order dates
SELECT 
  customer_id,
  MIN(STR_TO_DATE(order_date, '%d-%m-%Y')) AS first_order_date,
  MAX(STR_TO_DATE(order_date, '%d-%m-%Y')) AS last_order_date,
  COUNT(*) AS total_orders
FROM customers
GROUP BY customer_id
HAVING total_orders > 1;

-- Customer segmentation by total order amount
SELECT 
  customer_id,
  COUNT(order_id) AS orders,
  SUM(order_amount) AS total_spent,
  CASE
    WHEN SUM(order_amount) > 500 THEN 'High Value'
    WHEN SUM(order_amount) BETWEEN 200 AND 500 THEN 'Mid Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM customers
GROUP BY customer_id;