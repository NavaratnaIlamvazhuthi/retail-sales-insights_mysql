-- SQL Queries for Business Insights from Superstore Dataset

-- 1. Top 10 Products by Sales
SELECT ProductName, SUM(Sales) AS TotalSales
FROM Orders
GROUP BY ProductName
ORDER BY TotalSales DESC
LIMIT 10;

-- 2. Monthly Sales Trend
SELECT 
  DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
  SUM(Sales) AS MonthlySales
FROM Orders
GROUP BY Month
ORDER BY Month;

-- 3. Region-wise Profit
SELECT Region, SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Region
ORDER BY TotalProfit DESC;

-- 4. Customer Segment Performance
SELECT Segment, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Segment
ORDER BY TotalSales DESC;

-- 5. Profit Margin by Category
SELECT Category, 
       SUM(Profit) AS TotalProfit,
       SUM(Sales) AS TotalSales,
       ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS ProfitMarginPercentage
FROM Orders
GROUP BY Category;

-- 6. Top 5 Customers by Sales
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM Orders
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 5;

-- 7.Shipping Delay (in Days)
SELECT 
  OrderID,
  DATEDIFF(ShipDate, OrderDate) AS Shipping_Delay_Days,
  CustomerName,
  ShipMode
FROM Orders
ORDER BY Shipping_Delay_Days DESC
LIMIT 10;

-- 8. Year-over-Year Sales Growth by Month
SELECT 
  DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
  YEAR(OrderDate) AS Year,
  SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Year, Month
ORDER BY Month;

-- 9. Profit Margin Categorization
SELECT 
  ProductName,
  Sales,
  Profit,
  ROUND((Profit / Sales) * 100, 2) AS ProfitMarginPercent,
  CASE 
    WHEN (Profit / Sales) > 0.3 THEN 'High Margin'
    WHEN (Profit / Sales) BETWEEN 0.1 AND 0.3 THEN 'Medium Margin'
    ELSE 'Low Margin'
  END AS MarginCategory
FROM Orders
WHERE Sales > 0
ORDER BY ProfitMarginPercent DESC
LIMIT 20;

-- 10.  Top-Selling Products per Category Using RANK function
SELECT *
FROM (
  SELECT 
    Category,
    ProductName,
    SUM(Sales) AS TotalSales,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS SalesRank
  FROM Orders
  GROUP BY Category, ProductName
) ranked
WHERE SalesRank <= 3;

-- 11. Segment-Level Discount & Profit Analysis
SELECT 
  Segment,
  ROUND(AVG(Discount), 2) AS AvgDiscount,
  ROUND(SUM(Profit), 2) AS TotalProfit,
  COUNT(*) AS OrderCount
FROM Orders
GROUP BY Segment
ORDER BY TotalProfit DESC;

