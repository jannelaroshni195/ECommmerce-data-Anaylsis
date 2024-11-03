use onlineecommerce;

DELETE FROM orders
WHERE ROWID NOT IN (
    SELECT MIN(ROWID)
    FROM orders
    GROUP BY `Order ID`
);

SELECT * FROM orders WHERE `Order Date` IS NULL OR `Customer ID` IS NULL;

UPDATE orders SET `Order Date` = STR_TO_DATE(`Order Date`, '%Y-%m-%d')
WHERE `Order Date` IS NOT NULL;

SELECT DISTINCT `Category` FROM Orders;


