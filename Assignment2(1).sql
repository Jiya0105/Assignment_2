CREATE DATABASE superstore_analysis;
USE superstore_analysis;

SHOW tables;

SELECT * FROM superstore
LIMIT 10;

DESCRIBE superstore;

SELECT *
FROM superstore
WHERE region='West';

SELECT *
FROM superstore
WHERE category='Technology';

SELECT *
FROM superstore
WHERE sales > 1000;

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region;

SELECT Category,
       SUM(Quantity) AS Total_Quantity
FROM Superstore
GROUP BY Category;

SELECT Category,
       AVG(Sales) AS Average_Sales
FROM Superstore
GROUP BY Category;

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category;

SELECT Region,
       COUNT(*) AS Orders_Count,
       SUM(Sales) AS Revenue,
       SUM(Profit) AS Profit
FROM Superstore
GROUP BY Region
ORDER BY Revenue DESC;

SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Order ID`,
       COUNT(*) AS Duplicate_Count
FROM Superstore
GROUP BY `Order ID`
HAVING COUNT(*) > 1;

SELECT YEAR(`Order Date`) AS Year,
       MONTH(`Order Date`) AS Month,
       SUM(Sales) AS Monthly_Sales
FROM Superstore
GROUP BY YEAR(`Order Date`),
         MONTH(`Order Date`)
ORDER BY Year, Month;

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region;

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category;

SELECT Region,
       COUNT(*) AS Orders_Count,
       SUM(Sales) AS Revenue,
       SUM(Profit) AS Profit
FROM Superstore
GROUP BY Region
ORDER BY Revenue DESC;

SELECT *
FROM Superstore
WHERE Sales IS NULL
   OR Quantity IS NULL
   OR Region IS NULL;

SELECT COUNT(*) AS Total_Rows
FROM Superstore;