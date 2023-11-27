use Shopping_Trends;
show tables;
select * from shopping_trends_updated;
SHOW COLUMNS from shopping_trends_updated;

-- Total_Revenue
SELECT SUM(`Purchase Amount (USD)`) AS Total_Revenue FROM shopping_trends_updated;

-- Avg revenue by customer
SELECT SUM(`Purchase Amount (USD)`)/ Count(`Customer ID`) as Avg_revenue FROM shopping_trends_updated;


-- Total customer
SELECT Count(`Customer ID`) as Total_customer FROM shopping_trends_updated;


-- Avg review rating
SELECT SUM(`Review Rating`)/ Count(`Customer ID`) as Avg_review_rating FROM shopping_trends_updated;


-- Avg order per customer
SELECT SUM(`Previous Purchases`)/ Count(`Customer ID`) as Avg_order_per_customer FROM shopping_trends_updated;

-- Total revenue by category
SELECT (`Category`) , sum(`Purchase Amount (USD)`) * 100 / (SELECT sum(`Purchase Amount (USD)`) FROM shopping_trends_updated) AS Total_sales
from shopping_trends_updated
GROUP BY Category;

-- Total revenue by size
SELECT (`Size`) , sum(`Purchase Amount (USD)`) * 100 / (SELECT sum(`Purchase Amount (USD)`) FROM shopping_trends_updated) AS Total_sales
from shopping_trends_updated
GROUP BY Size;

-- Total revenue by season
SELECT (`Season`) , sum(`Purchase Amount (USD)`) * 100 / (SELECT sum(`Purchase Amount (USD)`) FROM shopping_trends_updated) AS Total_sales
from shopping_trends_updated
GROUP BY Season;

-- Top 5 item purchased (Item Purchased_)
SELECT `Item Purchased`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Item Purchased`
ORDER BY Total_Revenue DESC
LIMIT 5;


-- Top 5 (color)
SELECT `Color`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Color`
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Top 5 shipping type
SELECT `Shipping Type`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Shipping Type`
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Bottom 5 item purchased (Item Purchased_)
SELECT `Item Purchased`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Item Purchased`
ORDER BY Total_Revenue ASC
LIMIT 5;

-- Bottom 5 (color)
SELECT `Color`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Color`
ORDER BY Total_Revenue ASC
LIMIT 5;

-- Bottom 5 shipping type
SELECT `Shipping Type`, SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM shopping_trends_updated
GROUP BY `Shipping Type`
ORDER BY Total_Revenue ASC
LIMIT 5;





