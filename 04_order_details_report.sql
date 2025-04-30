-- Join orders with payments for full details
SELECT 
  co.order_id,
  co.customer_id,
  co.order_date,
  co.order_amount,
  co.order_status,
  p.payment_date,
  p.payment_amount,
  p.payment_method,
  p.payment_status
FROM customers co
LEFT JOIN payments p ON co.order_id = p.order_id
ORDER BY STR_TO_DATE(co.order_date, '%d-%m-%Y');