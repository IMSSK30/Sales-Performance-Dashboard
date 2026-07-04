SELECT * FROM superstore LIMIT 10;
DESCRIBE superstore;

-- Check total records and missing values.
SELECT 
  COUNT(*) AS total_rows,
  COUNT(`Order ID`) AS order_id_not_null,
  COUNT(Sales) AS sales_not_null,
  COUNT(Profit) AS profit_not_null
FROM superstore;

-- Create a cleaned view with proper date formats.
CREATE OR REPLACE VIEW superstore_clean AS
SELECT *,
STR_TO_DATE(`Order Date`, '%d-%m-%y') AS order_date_clean,
STR_TO_DATE(`Ship Date`, '%d-%m-%y') AS ship_date_clean
FROM superstore;

-- Calculate delivery time between order and ship date.
SELECT 
`Order ID`,
order_date_clean,
ship_date_clean,
DATEDIFF(ship_date_clean, order_date_clean) AS delivery_days
FROM superstore_clean
LIMIT 10;
