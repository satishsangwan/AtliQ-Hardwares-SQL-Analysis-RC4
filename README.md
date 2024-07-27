# SQL Project: Atliq Hardwares - Resume Challenge 4
## Insights to Management in Consumer Goods Domain
## Project Overview

**Domain:** Consumer Goods  
**Function:** Executive Management  
**Company:** Atliq Hardwares (imaginary company)  
**Challenge:** Codebasics's Resume Challenge 4 [Here is the Link](https://codebasics.io/challenge/codebasics-resume-project-challenge)

Atliq Hardwares is one of the leading computer hardware producers in India with a significant presence in other countries. However, the management noticed that they do not get enough insights to make quick and smart data-informed decisions. To address this, they aim to expand their data analytics team by hiring junior data analysts.

Tony Sharma, the data analytics director, designed a SQL challenge to assess candidates' technical and soft skills. This project involves solving 10 ad-hoc requests to provide valuable business insights.

## Table of Contents

1. [Project Tasks](#project-tasks)
2. [Task-wise Insights and Recommendations](#task-wise-insights-and-recommendations)
3. [Overall Summary](#overall-summary)
4. [Recommendations](#recommendations)
5. [Technical Details](#technical-details)
6. [Power BI Dashboard](#power-bi-dashboard)

## Data Model
We are provided with 6 different data tables namely dim_customer, dim_product, fact_sales_monthly, fact_gross_price, fact_pre_invoice_deductions, fact_manufacturing_cost and also shown in entity relationship diagram (ERD) below:

**ERD** ![ERD]()


## Project Tasks

### Task 1
**Request:** Provide the list of markets in which customer "Atliq Exclusive" operates its business in the APAC region.

**SQL Query** ![SQL QUERY](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task-1.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_1_Output.png)

### Task 2
**Request:** What is the percentage of unique product increase in 2021 vs. 2020? The final output contains these fields:
- unique_products_2020
- unique_products_2021
- percentage_chg

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task-2.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_2_Output.png)

### Task 3
**Request:** Provide a report with all the unique product counts for each segment and sort them in descending order of product counts. The final output contains:
- segment
- product_count

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---3.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_3_Output.png)

### Task 4
**Request:** Which segment had the most increase in unique products in 2021 vs 2020? The final output contains:
- segment
- product_count_2020
- product_count_2021
- difference

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---4.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_4_Output.png)

### Task 5
**Request:** Get the products that have the highest and lowest manufacturing costs. The final output should contain:
- product_code
- product
- manufacturing_cost

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---5.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_5_Output.png)

### Task 6
**Request:** Generate a report with the top 5 customers who received the highest average pre_invoice_discount_pct for the fiscal year 2021 in the Indian market. The final output contains:
- customer_code
- customer
- average_discount_percentage

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---6.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_6_Output.png)

### Task 7
**Request:** Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. This analysis helps to understand low and high-performing months for strategic decisions. The final report contains:
- Month
- Year
- Gross sales Amount

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---7.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_7_Output.png)

### Task 8
**Request:** In which quarter of 2020 was the maximum total_sold_quantity? The final output contains:
- Quarter
- total_sold_quantity

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---8.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_8_Output.png)

### Task 9
**Request:** Which channel brought more gross sales in the fiscal year 2021 and the percentage of contribution? The final output contains:
- channel
- gross_sales_mln
- percentage

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---9.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_9_Output.png)

### Task 10
**Request:** Get the Top 3 products in each division that have the highest total_sold_quantity in fiscal year 2021. The final output contains:
- division
- product_code
- product
- total_sold_quantity
- rank_order

**SQL Query** ![SQL Query](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task---10.png)

**Out-Put** ![Out-Put](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/images/Task_10_Output.png)

## Task-wise Insights and Recommendations

### Task 1
- **Diverse Market Presence:** Atliq Exclusive operates across multiple APAC countries, indicating a strong market presence.
- **Regional Focus:** Significant focus on major APAC economies like India, Japan, and Australia.
- **Recommendation:** Strengthen market strategies in key APAC countries to leverage their diverse market dynamics.

### Task 2
- **Significant Product Increase:** Unique products increased by 36.33% from 2020 to 2021, indicating product range expansion.
- **Competitive Advantage:** Expanded product lineup enhances competitive advantage.
- **Recommendation:** Continue diversifying the product portfolio to meet diverse customer needs and stay competitive.

### Task 3
- **Top Segments by Variety:** Notebook and Accessories segments have the highest number of unique products.
- **Growth Opportunities:** Lower counts in Networking and Storage suggest potential for future expansion.
- **Recommendation:** Focus on expanding product offerings in lower-count segments to capture more market share.

### Task 4
- **Highest Growth Segment:** Accessories saw the most significant increase in unique products (34).
- **Increase in Desktop and Storage:** Desktop and Storage segments saw increases of 15 and 5 products, respectively.
- **Recommendation:** Invest further in the Accessories segment and continue supporting the growing Desktop and Storage segments to capitalize on their positive trends.

### Task 5
- **Cost Disparity:** Significant difference between the highest (AQ HOME Allin1 Gen 2) and lowest (AQ Master wired x1 Ms) manufacturing costs.
- **Cost Optimization:** High manufacturing costs indicate potential for cost reduction opportunities.
- **Recommendation:** Analyze and optimize manufacturing processes to reduce costs for high-cost products.

### Task 6
- **High Discount Leaders:** Top customers like Flipkart, Viveks, and Ezone receive high average discounts, above 30%.
- **Competitive Discounting:** Competitive discounting environment in the Indian market.
- **Recommendation:** Tailor discount strategies to balance between attracting top customers and maintaining profitability.

### Task 7
- **High-Performing Months:** November 2020 and December 2020 showed peak sales, while March 2020 had the lowest sales.
- **Seasonal Trends:** Significant fluctuations in sales indicate varying demand patterns.
- **Recommendation:** Plan promotions and inventory adjustments based on high-performing periods and address reasons for low sales in early 2020.

### Task 8
- **Top Quarter:** Q1 2020 had the highest total sold quantity, while Q3 2020 had the lowest.
- **Quarterly Trends:** Strong performance in Q1 and significant drop in Q3 suggest potential market challenges or seasonality effects.
- **Recommendation:** Analyze Q1 strategies for replication and investigate Q3 performance issues to improve future sales.

### Task 9
- **Dominant Channel:** Retailer channel contributed 73.23% of total gross sales, far exceeding other channels.
- **Contribution Distribution:** Retailer channel's contribution is significantly higher compared to Direct and Distributor channels.
- **Recommendation:** Strengthen retailer partnerships and explore ways to boost sales through Direct and Distributor channels.

### Task 10
- **Top Products:** AQ Pen Drive products lead in the N & S division, AQ Gamers Ms in the P & A division, and AQ Digit in the PC division.
- **Product Ranking:** Different divisions have varied top performers, indicating diverse product preferences.
- **Recommendation:** Focus on promoting and stocking top-performing products in each division to maximize sales.

## Overall Summary

- **Strong Market Presence:** Atliq Exclusive has a diverse APAC market presence and should leverage it.
- **Product Expansion:** Significant increase in unique products indicates a successful diversification strategy.
- **Segment Focus:** High product variety in Notebook and Accessories segments suggests a comprehensive approach, with growth opportunities in lower-count segments.
- **Cost Management:** Significant cost disparity highlights the need for manufacturing cost optimization.
- **Channel Strategy:** The Retailer channel's dominant contribution underscores the importance of strengthening retailer relationships.
- **Sales Performance:** November and December 2020 were high-performing months, while early 2020 saw low sales. Focus on high-performing periods and address issues behind low sales.

## Recommendations

1. **Strengthen market strategies in key APAC regions.**
2. **Continue expanding the product portfolio to meet diverse needs.**
3. **Invest in the growing Desktop and Storage segments and address declines in specific areas.**
4. **Optimize manufacturing processes to reduce costs for high-cost products.**
5. **Tailor discount strategies to maintain profitability while attracting top customers.**
6. **Focus on promoting high-performing months and address reasons for low sales in early 2020 to improve future performance.**

## Technical Details

- **SQL Queries:** Used a range of SQL queries from basic to advanced, including CTE, subquery, GROUP BY, window functions, user-defined functions, and stored procedures.
- **Database:** MySQL
- **Visualization:** Power BI for creating charts and visualizations
- **Presentation:** Microsoft PowerPoint for making the presentation
- **Documentation:** Created a Scope of Work file for the project

## Power BI Dashboard

Additionally, an interactive Power BI dashboard was created to analyze customer, product, and sales data, providing a comprehensive view of Atliq Hardwares' performance.

![Description](https://drive.google.com/uc?export=view&id=1gAoy41VDK8EiiIA5-UB7da5pJoPjTrnd)

## Installation and Usage
To use the SQL scripts, follow these steps:

1. **Clone the Repository:**

git clone https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis.git
cd AtliQ-Hardwares-SQL-Analysis

2. **Set Up Your Environment:**

Install MySQL Workbench if not already installed.
Open MySQL Workbench and connect to your database.

3. **Run the SQL Scripts:**

Open SQL_Queries_for_Resume_Challenge_Project_4.sql in MySQL Workbench.
Execute the queries in your MySQL Workbench environment to generate the reports.

4. **Review the Presentation:**

Open Adhoc_SQL_Insights_Presentation.pdf to view the detailed analysis and visualizations.

## Contributing
Contributions are welcome! Please fork the repository and submit pull requests for any improvements or additional analyses.

## License
This project is licensed under the [MIT License](https://github.com/satishsangwan/AtliQ-Hardwares-SQL-Analysis/blob/main/LICENSE)

## Contact
For inquiries, please contact Satish Sangwan 
- Email: ssangwan91@gmail.com
- LinkedIN : https://www.linkedin.com/in/satish-sangwan-da/
