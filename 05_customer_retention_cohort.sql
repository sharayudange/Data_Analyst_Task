WITH cohorts AS (
  SELECT
    customer_id,
    MIN(DATE_FORMAT(STR_TO_DATE(order_date, '%Y-%m-%d'), '%Y-%m')) AS cohort_month
  FROM customers
  GROUP BY customer_id
),
orders_by_month AS (
  SELECT
    customer_id,
    DATE_FORMAT(STR_TO_DATE(order_date, '%Y-%m-%d'), '%Y-%m') AS order_month
  FROM customers
)
SELECT
  c.cohort_month,
  o.order_month,
  COUNT(DISTINCT o.customer_id) AS num_customers
FROM cohorts c
JOIN orders_by_month o ON c.customer_id = o.customer_id
GROUP BY c.cohort_month, o.order_month
ORDER BY c.cohort_month, o.order_month;
