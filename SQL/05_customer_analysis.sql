-- Display the top 10 customers by sales.
SELECT 
`Customer Name`,
SUM(Sales) AS total_sales
FROM superstore_clean
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;

-- Display the top 10 products by sales.
SELECT
`Product Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_clean
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
