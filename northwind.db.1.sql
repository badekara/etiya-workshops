--SQL WORKSHOP 
--1
SELECT productid,productname, supplierid FROM Products WHERE supplierid BETWEEN 1 AND 5
--2
SELECT productid,productname, supplierid FROM Products WHERE supplierid IN (1,2,4,5)
--3
SELECT productid,productname FROM Products WHERE productname='Chang' OR productname='Aniseed Syrup'
--4
SELECT productid,productname FROM Products WHERE supplierid=3 OR unitprice>10
--5
SELECT (productname ||' - '||unitprice) AS 'ÜRÜN - BİRİM FİYAT'FROM Products
--6
SELECT productname FROM PRODUCTS WHERE UPPER(productname) LIKE '%C%'
--7
SELECT productname FROM PRODUCTS WHERE productname LIKE 'N%'AND NOT productname LIKE '%N%'
--8
SELECT productname,unitsinstock FROM Products WHERE unitsinstock>50
--9
SELECT productname,unitprice FROM PRODUCTS
WHERE unitprice=(SELECT MAX(unitprice) FROM Products) OR unitprice=(SELECT MIN(unitprice) FROM PRODUCTS)
--10
SELECT productname FROM Products WHERE productname LIKE '%Spice%'

