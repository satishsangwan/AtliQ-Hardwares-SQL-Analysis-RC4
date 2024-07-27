# In this file SQL Queries for all 10 tasks are written##
# get_quarter is a user defined function

# Task 1. Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.
SELECT 
    customer_code, customer, market
FROM
    dim_customer
WHERE
    customer = 'AtliQ Exclusive'
        AND region = 'APAC';
        
# Task 2. What is the percentage of unique product increase in 2021 vs. 2020? The final output contains these fields, 
		-- unique_products_2020 
		-- unique_products_2021 
		-- percentage_chg

WITH cte1 as
(SELECT 
	Count(distinct product_code) as unique_products_2020
FROM 
		fact_sales_monthly
WHERE 
		fiscal_year =2020),
cte2 as
(SELECT 
			Count(distinct product_code) as unique_products_2021
		FROM 
			fact_sales_monthly
		WHERE 
			fiscal_year =2021) 
SELECT
	unique_products_2020,
    unique_products_2021,
    ROUND(ABS(unique_products_2020-unique_products_2021)*100/unique_products_2020,2) as percentage_chg
FROM cte1
CROSS JOIN cte2;

# Task 3. Provide a report with all the unique product counts for each segment and  sort them in descending order of product counts. The final output contains 2 fields, 
       		-- segment 
       		-- product_count

SELECT 
    segment, 
    COUNT(DISTINCT product_code) AS product_count
FROM
    dim_product
GROUP BY segment
ORDER BY product_count DESC;

# Task 4. Follow-up: Which segment had the most increase in unique products in 2021 vs 2020? The final output contains these fields, 
		-- segment 
		-- product_count_2020 
		-- product_count_2021 
		-- difference
WITH cte1 AS
(
	SELECT
		p.segment,
		Count(distinct s.product_code) AS unique_products_2020			
	FROM 
			fact_sales_monthly s
	JOIN dim_product p
	ON p.product_code=s.product_code
	WHERE 
			fiscal_year =2020
	GROUP BY p.segment
),
cte2 AS 
(
	SELECT 
			p.segment,
			Count(distinct s.product_code) as unique_products_2021
	FROM 
	fact_sales_monthly s
	JOIN dim_product p 
	on p.product_code=s.product_code
	WHERE 
		 fiscal_year =2021
	GROUP BY p.segment
) 
SELECT
	cte1.segment,
    cte1.unique_products_2020,
    cte2.unique_products_2021,
    ABS(unique_products_2020-unique_products_2021) AS difference
FROM cte1
JOIN cte2
ON cte1.segment=cte2.segment
ORDER BY difference DESC;

# Task 5. Get the products that have the highest and lowest manufacturing costs. The final output should contain these fields, 
		-- product_code 
		-- product 
		-- manufacturing_cost
-- Subquery to get the highest manufacturing cost product
(SELECT 
    dp.product_code, 
    dp.product, 
    fmc.manufacturing_cost
FROM 
    dim_product dp
JOIN 
    fact_manufacturing_cost fmc 
ON 
    dp.product_code = fmc.product_code
ORDER BY 
    fmc.manufacturing_cost DESC 
LIMIT 1)

UNION ALL

-- Subquery to get the lowest manufacturing cost product
(SELECT 
    dp.product_code, 
    dp.product, 
    fmc.manufacturing_cost
FROM 
    dim_product dp
JOIN 
    fact_manufacturing_cost fmc 
ON 
    dp.product_code = fmc.product_code
ORDER BY 
    fmc.manufacturing_cost ASC 
LIMIT 1);

# Task 6. Generate a report which contains the top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. The final output contains these fields, 
		-- customer_code 
		-- customer 
		-- average_discount_percentage
SELECT 
    c.customer_code,
    c.customer,
    AVG(d.pre_invoice_discount_pct) AS average_discount_percentage
FROM
    fact_pre_invoice_deductions d
        JOIN
    dim_customer c ON c.customer_code = d.customer_code
WHERE
    d.fiscal_year = 2021
        AND c.market = 'INDIA'
GROUP BY customer_code , customer
ORDER BY average_discount_percentage DESC
LIMIT 5;

# Task 7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month . This analysis helps to get an idea of low and high-performing months and take strategic decisions. The final report contains these columns: 
		-- Month 
		-- Year 
		-- Gross sales Amount

SELECT 
    s.date,
    s.fiscal_year,
    ROUND(SUM(s.sold_quantity * g.gross_price) / 1000000,
            2) AS gross_sales_amount_mln
FROM
    fact_sales_monthly s
        JOIN
    fact_gross_price g ON s.product_code = g.product_code
        AND s.fiscal_year = g.fiscal_year
        JOIN
    dim_customer c ON c.customer_code = s.customer_code
WHERE
    c.customer = 'AtliQ Exclusive'
GROUP BY date, fiscal_year;

# Task 8. In which quarter of 2020, got the maximum total_sold_quantity? The final output contains these fields sorted by the total_sold_quantity, 
		-- Quarter 
		-- total_sold_quantity
SELECT 
	fiscal_year,
    GET_QUARTER(date) AS quarter,
    SUM(sold_quantity) AS total_sold_quantity
FROM
    fact_sales_monthly
WHERE
fiscal_year = 2020
GROUP BY quarter
ORDER BY total_sold_quantity DESC;

# Task 9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution? The final output contains these fields, 			
		-- channel 
		-- gross_sales_mln 
		-- percentage
WITH cte1 AS
(SELECT 
    s.fiscal_year,c.channel,
    ROUND(SUM(s.sold_quantity * g.gross_price) / 1000000,
            2) AS gross_sales_amount_mln
FROM
    fact_sales_monthly s
        JOIN
    fact_gross_price g ON s.product_code = g.product_code
        AND s.fiscal_year = g.fiscal_year
        JOIN
    dim_customer c ON c.customer_code = s.customer_code
WHERE
s.fiscal_year = 2021
GROUP BY channel
)

SELECT 
	channel,
    gross_sales_amount_mln,
    gross_sales_amount_mln*100/sum(gross_sales_amount_mln) over() as percentage
FROM 
	cte1
ORDER BY gross_sales_amount_mln DESC;

# Task 10. Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021? The final output contains these fields, 
		-- division 
		-- product_code 
		-- product 
		-- total_sold_quantity 
		-- rank_order
WITH cte1 AS
(
SELECT 
    p.division,
    s.product_code,
    p.product,
    SUM(s.sold_quantity) AS total_sold_quantity
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON p.product_code = s.product_code
GROUP BY product_code , product , division
),
cte2 AS
(
	SELECT 
		*,
		dense_rank()  over (partition by division order by total_sold_quantity desc) as rank_order
	FROM 
		cte1
)
SELECT 
    division,
    product_code,
    product,
    total_sold_quantity,
    rank_order
FROM
    cte2
WHERE
    rank_order <= 3;







