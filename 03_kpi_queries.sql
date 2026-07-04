-- Calculate total sales.
SELECT ROUND(SUM(Sales),2) AS total_sales
FROM superstore_clean;

-- Calculate total profit.
SELECT ROUND(SUM(Profit),2) AS total_profit
FROM superstore_clean;

-- Count unique orders.
SELECT COUNT(DISTINCT `Order ID`) AS total_orders
FROM superstore_clean;

-- Calculate average sales per transaction.
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM superstore_clean;

-- Count unique customers.
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM superstore_clean;

-- Calculate overall profit margin percentage.
SELECT
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM superstore_clean;