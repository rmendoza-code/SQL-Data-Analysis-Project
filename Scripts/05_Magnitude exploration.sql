-- Find total customers by countries
SELECT 
country,
COUNT(customer_key) AS Total_customers
FROM gold.dim_customers
GROUP BY country
ORDER BY Total_customers DESC;


-- Find total customers by gender
SELECT 
gender,
COUNT(customer_key) AS Total_customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY Total_customers DESC;


--Find total products by category
SELECT
category,
COUNT(product_key) AS Total_products
FROM gold.dim_products
GROUP BY category
ORDER BY Total_products DESC;

-- What is the average costs in each category?
SELECT
category,
AVG(cost) AS Avg_costs
FROM gold.dim_products
GROUP BY category
ORDER BY Avg_costs DESC;


-- What is the total revenue generated for each category?
SELECT 
p.category,
SUM(f.sales_amount) total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
GROUP BY p.category
ORDER BY total_revenue DESC;


-- What is the total revenue generated by each customer?
SELECT
c.customer_key,
c.first_name,
c.last_name,
SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
GROUP BY
c.customer_key,
c.first_name,
c.last_name
ORDER BY total_revenue DESC;


-- What is the distribution of items sold across countries?
SELECT
c.country,
SUM(f.quantity) AS total_sold_items
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
GROUP BY c.country
ORDER BY total_sold_items DESC;


