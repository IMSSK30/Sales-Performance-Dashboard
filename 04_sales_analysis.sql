-- Analyze sales by product category.
SELECT 
Category,
ROUND(SUM(Sales),2) AS total_sales
FROM superstore_clean
GROUP BY Category
ORDER BY total_sales DESC;

-- Analyze sales by region.
SELECT 
Region,
ROUND(SUM(Sales),2) AS total_sales
FROM superstore_clean
GROUP BY Region
ORDER BY total_sales DESC;

-- Analyze sales by customer segment.
SELECT
Segment,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_clean
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Analyze profit by state.
SELECT
State,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_clean
GROUP BY State
ORDER BY Total_Profit DESC;