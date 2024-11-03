use onlineecommerce;

SELECT `Category`, SUM(Sales) AS TotalSales, AVG(Sales) AS AvgSales, SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY `Category`;

SELECT `Product Name`, SUM(Sales) AS TotalSales
FROM Orders
GROUP BY `Product Name`
ORDER BY TotalSales DESC
LIMIT 10;

SELECT COUNT(DISTINCT Orders.`Order ID`) AS TotalOrders, COUNT(DISTINCT Returns.`Order ID`) AS ReturnedOrders,
       (COUNT(DISTINCT Returns.`Order ID`) / COUNT(DISTINCT Orders.`Order ID`)) * 100 AS ReturnRate
FROM Orders
LEFT JOIN Returns ON Orders.`Order ID` = Returns.`Order ID`;

SELECT `Segment`, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY `Segment`;