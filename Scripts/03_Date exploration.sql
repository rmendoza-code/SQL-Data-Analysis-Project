-- Find the date of the first and last order
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date
FROM gold.fact_sales

-- How many years and months of sales are available
SELECT
DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales

-- Find the youngest and the oldest customer
SELECT 
MIN(birthdate) AS oldest_customer,
DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_customer,
DATEDIFF(year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers