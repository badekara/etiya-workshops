--1
SELECT COUNT(DISTINCT(productid)) AS 'NUMBER OF PRODUCTS' , categoryid AS 'CATEGORY 'FROM Products
GROUP BY categoryid
--2
SELECT productname AS 'PRODUCT NAME', unitprice 'UNIT PRICE' FROM Products
ORDER BY unitprice desc LIMIT 5
--3
SELECT supplierid 'SUPPLIER', ROUND(AVG(unitprice),3) AS 'AVERAGE PRICE' FROM Products
GROUP BY supplierid ORDER BY AVG(unitprice) DESC
--4
SELECT categoryid, ROUND(AVG(unitprice),3) AS 'AVERAGE PRICE' FROM Products
WHERE unitprice>100
GROUP BY categoryid
--5
SELECT *,(quantity*unitprice) AS 'TOTAL PRICE' FROM 'Order Details'
WHERE (quantity*unitprice)>1000 ORDER BY (quantity*unitprice) DESC
--6
SELECT * FROM Orders WHERE shippeddate IS NOT NULL
ORDER BY shippeddate DESC LIMIT 10
--7
SELECT ROUND(AVG(unitprice),4) AS 'AVERAGE PRICE' FROM Products
--8
SELECT  SUM(unitsinstock) AS 'TOTAL STOCK OF PRODUCTS WHOSE PRICE ARE MORE THAN 50 'FROM Products WHERE unitprice >50
--9
SELECT shippeddate FROM Orders WHERE shippeddate IS NOT NULL
ORDER BY shippeddate ASC LIMIT 1
--10
SELECT employeeid,firstname||' '||lastname AS 'FULL NAME',CAST(strftime('%Y', 'now') - strftime('%Y', hiredate) AS INTEGER) AS 'YEAR DIFFERENCE'
FROM Employees
--11
SELECT orderid,ROUND(SUM((unitprice*quantity)-(discount*quantity))) AS 'ROUNDED TOTAL PRICE' FROM 'Order Details'
GROUP BY orderid ORDER BY ROUND(SUM((unitprice*quantity)-(discount*quantity))) ASC
--12
SELECT SUM(unitsinstock) 'ALL PRODUCTS IN STOCK' FROM Products
--13
SELECT productid,productname, unitprice FROM Products
WHERE unitprice=(select MAX(unitprice) from Products) OR unitprice=(select MIN(unitprice) from Products)
--14
select strftime('%Y',orderdate) as 'YEAR', COUNT(orderid) AS 'NUMBER OF ORDERS' FROM Orders
GROUP BY strftime('%Y',orderdate)
--15
SELECT firstname|| ' '|| lastname AS 'FULL NAME' FROM Employees
--16
SELECT city,LENGTH(city) AS 'LENGTH' FROM Customers
--17
SELECT productid,productname,ROUND(unitprice,2) AS 'ROUNDED PRICE' FROM Products
--18
SELECT COUNT(orderid) AS 'TOTAL ORDER NUMBER' FROM Orders
--19
SELECT ROUND(AVG(unitprice),3) AS 'AVERAGE PRICE', categoryid 'CATEGORY ID'
FROM PRODUCTS GROUP BY categoryid
--20
SELECT (SELECT count(orderid) FROM Orders WHERE orderdate IS NULL)  / 
(SELECT count(orderid) FROM Orders) AS 'PERCENTAGE OF ORDERS THAT DONT HAVE ORDER DATE'
--21
SELECT productname,(unitprice*1.1) FROM Products where unitprice=(select max(unitprice) from products)
--22
select productname 'PRODUCT NAME',substring(productname,1,3) 'FIRST THREE LETTERS' FROM Products
--23
SELECT strftime('%Y',orderdate) AS 'YEAR',strftime('%m',orderdate) AS 'MONTH',COUNT(orderid) 'NUMBER OF ORDERS' 
FROM Orders GROUP BY strftime('%Y',orderdate),strftime('%m',orderdate)
--24
SELECT orderid, ROUND((UnitPrice * Quantity),2) AS 'TOTAL PRICE' FROM 'Order Details' GROUP BY orderid
--25
SELECT SUM(unitprice) 'TOTAL PRICE OF PRODUCTS WITHOUT STOCK' FROM Products WHERE unitsinstock=0












