USE SalesProject;

-- View data
SELECT * FROM Sales_Project;

-- Total sales
SELECT SUM(Sales) AS TotalSales
FROM Sales_Project;

-- Total number of orders
SELECT COUNT(*) AS TotalOrders
FROM Sales_Project;

-- Sales by category
SELECT Category, SUM(Sales) AS TotalSales
FROM Sales_Project
GROUP BY Category;

-- Profit by region
SELECT Region, SUM(Profit) AS TotalProfit
FROM Sales_Project
GROUP BY Region;

-- Top 5 products
SELECT TOP 5 Product, SUM(Sales) AS TotalSales
FROM Sales_Project
GROUP BY Product
ORDER BY TotalSales DESC;

-- Sales by customer
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM Sales_Project
GROUP BY CustomerName;

-- Most Profitable product
SELECT TOP 1 Product,
SUM(Profit) AS TotalProfit
FROM Sales_Project
GROUP BY Product
ORDER BY TotalProfit DESC;

-- Region with Highest sales
SELECT TOP 1 Region,
SUM(Sales) AS TotalSales
FROM Sales_Project
GROUP BY Region
ORDER BY TotalSales DESC;

-- Finds best  category(Highest sales)
SELECT TOP 1 Category,
       SUM(Sales) AS TotalSales
FROM Sales_Project
GROUP BY Category
ORDER BY TotalSales DESC;

-- Average profit per order
SELECT AVG(Profit) AS AvgProfit
FROM Sales_Project;


