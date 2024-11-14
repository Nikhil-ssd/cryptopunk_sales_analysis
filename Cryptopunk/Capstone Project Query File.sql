USE cryptopunk;

-- #1
SELECT COUNT(transaction_hash) AS Total_Sales FROM pricedata;

-- #2
SELECT name, eth_price, usd_price, DATE(event_date) AS event_date FROM pricedata
ORDER BY usd_price DESC LIMIT 5;

-- #3

SELECT event_date, usd_price, 
AVG(usd_price) 
OVER(ORDER BY event_date ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) AS last_fify_transactions_moving_avg
FROM pricedata;

-- #4
SELECT name AS NFTnames, AVG(usd_price) AS average_price
FROM pricedata
GROUP BY NFTnames
ORDER BY AVG(usd_price) DESC;

-- #5
SELECT DISTINCT dayname(event_date) AS Day_name,
COUNT(transaction_hash) AS 'Total_Transactions',
AVG(eth_price) AS Average_ETH_price
FROM pricedata
GROUP BY Day_name
ORDER BY COUNT(transaction_hash);

-- #6
SELECT *,
CONCAT(name, " was sold for ", "$", ROUND(usd_price,-3), " to ", buyer_address, " from ", seller_address, " on ", event_date) 
AS summary
FROM pricedata;

-- #7
CREATE VIEW 1919_purchases AS 
SELECT * FROM pricedata WHERE buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685";

-- #8
SELECT ROUND(eth_price, -2) AS ETH_price_range,
COUNT(*) AS count,
RPAD("", COUNT(*), "=") AS bar 
FROM pricedata
GROUP BY ETH_price_range
ORDER BY ETH_price_range;

-- #9
SELECT name AS NFT_name, MAX(usd_price) AS price, "Highest" AS status
FROM pricedata
GROUP BY NFT_name
UNION
SELECT name AS NFT_name, MIN(usd_price) AS price, "Lowest" AS status
FROM pricedata
GROUP BY NFT_name
ORDER BY NFT_name, status;

-- #10
-- Creating a CTE
WITH CTE AS(
SELECT DISTINCT date_format(event_date, "%Y/%m") AS YearMonth, name as NFT_name, COUNT(transaction_hash) AS QuantitySold, 
MAX(usd_price) AS Max_USD_Price,
DENSE_RANK() OVER(PARTITION BY date_format(event_date, "%Y/%m") ORDER BY COUNT(transaction_hash) DESC, 
MAX(usd_price) DESC) NFT_rank
FROM pricedata
GROUP BY date_format(event_date, "%Y/%m"), NFT_name)
-- Selecting from CTE
SELECT * FROM CTE WHERE NFT_rank = 1;

-- #11
SELECT DISTINCT date_format(event_date, "%Y / %m") AS YearMonth, ROUND(COUNT(transaction_hash), -2) AS Total_volume
FROM pricedata 
GROUP BY YearMonth
ORDER BY YearMonth;

-- #12
SELECT COUNT(*) AS Total_Transactions FROM pricedata
WHERE buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685"
OR seller_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685";

-- #13
-- Creating a Temporary table named 13A

CREATE TEMPORARY TABLE 13A
SELECT event_date, usd_price, 
AVG(usd_price) OVER(PARTITION BY event_date) AS daily_average FROM pricedata;

-- Selecting from the temporary table created above
SELECT *, (10*daily_average/100) AS ten_percent_of_earlier_DA, AVG(usd_price) OVER(PARTITION BY event_date) AS new_daily_average
FROM 13A
WHERE NOT usd_price < (10*daily_average/100);




                                               


