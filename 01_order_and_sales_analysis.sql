-- Count of orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM customers
GROUP BY order_status;

-- Yearly Sales Trend for Shipped Orders

SELECT 
  LEFT(order_date, 4) AS year,  
  SUM(order_amount) AS total_sales
FROM customers
WHERE order_status = 'shipped'
GROUP BY LEFT(order_date, 4)  
ORDER BY LEFT(order_date, 4);  


