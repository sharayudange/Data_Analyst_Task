-- Payment status distribution
SELECT payment_status, COUNT(*) AS count
FROM payments
GROUP BY payment_status;

-- Payment method vs. success rate
SELECT 
  payment_method,
  payment_status,
  COUNT(*) AS count
FROM payments
GROUP BY payment_method, payment_status;


-- Failed payments trend over time
SELECT 
  DATE_FORMAT(STR_TO_DATE(payment_date, '%d-%m-%Y'), '%Y-%m') AS month,
  COUNT(*) AS failed_count
FROM payments
WHERE payment_status = 'failed'
GROUP BY month
ORDER BY month;

