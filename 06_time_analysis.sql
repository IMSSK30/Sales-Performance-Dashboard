-- Analyze monthly sales trend over time.
SELECT 
YEAR(order_date_clean) AS year,
MONTH(order_date_clean) AS month,
SUM(Sales) AS total_sales
FROM superstore_clean
GROUP BY YEAR(order_date_clean), MONTH(order_date_clean)
ORDER BY year, month;