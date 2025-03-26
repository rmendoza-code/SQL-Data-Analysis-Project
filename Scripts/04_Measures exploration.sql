-- Find the Total sales
SELECT SUM(sales_amount) AS Total_sales FROM gold.fact_sales

-- Find the Total quantity
SELECT SUM(quantity) AS Total_quantity FROM gold.fact_sales

-- Find the average selling price
SELECT AVG(price) AS Average_price FROM gold.fact_sales;

-- Find the total number of orders
SELECT COUNT(order_number) AS Total_orders FROM gold.fact_sales;
SELECT COUNT(DISTINCT order_number) AS Total_orders FROM gold.fact_sales;

-- Find the total number of products
SELECT COUNT(product_key) AS Total_products FROM gold.dim_products;
SELECT COUNT(DISTINCT product_key) AS Total_products FROM gold.dim_products;

-- Find the total number of customers
SELECT COUNT(customer_key) AS Total_customers FROM gold.dim_customers;

-- Find the total numbers of customers that has placed an order
SELECT COUNT(DISTINCT customer_key) AS Total_customers_with_order FROM gold.fact_sales;


-- Generate a Report that shows all key metrics of the business
SELECT  'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT  'Total Quantity' AS measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price' AS measure_name, AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders' AS measure_name, COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Products' AS measure_name, COUNT(DISTINCT product_key) AS measure_value FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers;
