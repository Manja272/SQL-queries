-- SELECT * from sh.SALES;
--  // Display the all sales table

-- SELECT prod_id, count(*) as total_product
-- FROM sh.SALES
-- group BY PROD_ID;
--   //Display the total number of products in each sales

-- select PROD_ID, avg(amount_sold) as avg_sales
-- from sh.SALES
-- group BY PROD_ID;
-- //Display the avg of sales in each product

-- SELECT PROD_ID, MIN(amount_sold) as minimum_salary, MAX(AMOUNT_SOLD) as maximum_salary
-- from sh.SALES
-- group BY PROD_ID;
-- //Display the both minimum and maximum salaries of each product

-- SELECT prod_id, sum (AMOUNT_SOLD * QUANTITY_SOLD) as revenue
-- FROM sh.SALES
-- group BY PROD_ID;
-- //Display the total revenue(price * quantity) in each peoduct

-- SELECT cust_id, count(*) as total_sales
-- FROM sh.SALES
-- group by CUST_ID;
-- //  Display the number of slaes in each customers

-- SELECT cust_id, avg(amount_sold) as avg_sales
-- from sh.SALES
-- group by CUST_ID
--   //Display the average sales in each customer

-- SELECT cust_id, MAX(amount_sold) as highest_amount
-- FROM sh.SALES
-- group BY CUST_ID;
--  //Display the highest amount in each customer

-- SELECT cust_id, min(amount_sold) as lowest_amount
-- FROM sh.SALES
-- group BY CUST_ID
--   //Displthe lowest amount in each customers

