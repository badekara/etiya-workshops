--1
select CU.CompanyName,O.OrderID,O.OrderDate from ORDERS AS O JOIN Customers AS CU ON CU.CustomerID= O.CustomerID
--2
SELECT S.SupplierID,S.CompanyName,P.ProductID,P.ProductName 
FROM Suppliers AS S LEFT JOIN Products AS P ON P.SupplierID=S.SupplierID
--3
SELECT E.EmployeeID,CONCAT(E.FirstName,E.LastName) AS 'FULL NAME',O.OrderID 
FROM Orders AS O LEFT JOIN Employees AS E ON E.EmployeeID=O.EmployeeID
--4
select O.OrderID,CU.CustomerID from Customers as CU FULL JOIN Orders AS O ON O.CustomerID=CU.CustomerID
--5
SELECT CA.CategoryID,CA.CategoryName,P.ProductID,P.ProductName  FROM Categories AS CA CROSS JOIN Products AS P
--6
SELECT C.CompanyName,O.OrderID,O.OrderDate,E.EmployeeID,CONCAT(E.FirstName,E.LastName) AS 'FULL NAME' 
FROM Employees AS E JOIN Orders AS O ON E.EmployeeID=O.EmployeeID 
JOIN Customers AS C ON O.CustomerID=C.CustomerID
WHERE strftime('%Y', O.OrderDate) ='1998'
--7
SELECT CU.CustomerID,CU.CompanyName,count(o.OrderID) 'TOTTAL ORDERS'
FROM Orders AS O JOIN Customers AS CU ON CU.CustomerID=O.CustomerID
GROUP BY O.CustomerID
HAVING count(o.OrderID)>5
ORDER BY count(o.OrderID) ASC
--8
SELECT P.ProductName,SUM(OD.Quantity) 'TOTAL QUANTITY',(OD.Quantity * OD.UnitPrice) 'TOTAL PRICE'
FROM OrderDetails AS OD JOIN Products AS P ON P.ProductID=OD.ProductID
GROUP BY OD.productid
ORDER BY COUNT(OD.ProductID) ASC
--9
SELECT O.OrderID,O.OrderDate,O.CustomerID,CU.CompanyName
FROM Orders AS O JOIN Customers AS CU ON CU.CustomerID=O.CustomerID
WHERE CU.CompanyName LIKE 'B%'
--10
SELECT P.CategoryID,CA.CategoryName,P.ProductID,P.ProductName 
FROM Categories AS CA LEFT JOIN Products AS P ON CA.CategoryID=P.CategoryID
where P.ProductName IS NULL
--11
SELECT E1.EmployeeID,CONCAT(E1.FirstName,E1.LastName) AS 'EMPLOYEE',CONCAT(E2.FirstName,E2.LastName) AS 'MANAGER' 
FROM Employees  AS E1
LEFT JOIN Employees AS E2 ON E1.ReportsTo=E2.EmployeeID
--12
SELECT CA.CategoryID,CA.CategoryName,P.ProductID,P.ProductName,MAX(P.UnitPrice) AS 'MOST EXPENSIVE'
FROM Products AS P JOIN Categories AS CA ON CA.CategoryID=P.CategoryID
GROUP BY CA.CategoryID
--13
select O.OrderID,O.OrderDate,OD.ProductID,OD.UnitPrice,OD.Quantity,OD.Discount
from Orders as O JOIN OrderDetails AS OD ON O.OrderID=OD.OrderID
ORDER BY O.OrderID
--14
SELECT E.EmployeeID,COUNT(O.EmployeeID) AS 'TOTAL ORDERS'
FROM Employees AS E LEFT JOIN Orders AS O ON E.EmployeeID=O.EmployeeID
GROUP BY E.EmployeeID
--15
SELECT CA.CategoryID,CA.CategoryName,P.ProductName,MIN(P.UnitPrice) ',CHEAPEST PRICE'
FROM Categories AS CA JOIN Products AS P ON CA.CategoryID=P.CategoryID
GROUP BY CA.CategoryID
--16
SELECT S.SupplierID,S.CompanyName,P.ProductName,MAX(P.UnitPrice) 'MOST EXPENSIVE'
FROM Products AS P JOIN Suppliers AS S ON S.SupplierID=P.SupplierID
GROUP BY S.SupplierID
--17
SELECT E.EmployeeID,CONCAT(E.FirstName,E.LastName) AS 'FULL NAME',O.OrderID,MAX(O.OrderDate) 'LATEST ORDER'
FROM Orders AS O JOIN Employees AS E ON O.EmployeeID=E.EmployeeID
GROUP BY E.EmployeeID
--18
SELECT unitprice,COUNT(productid) FROM Products
WHERE unitprice>20
GROUP BY unitprice
--19
SELECT O.OrderID,O.OrderDate,CU.CustomerID,CU.CompanyName
FROM ORDERS AS O JOIN Customers AS CU ON CU.CustomerID=O.CustomerID
WHERE strftime('%Y', O.OrderDate) BETWEEN '1997' AND '1999'
--20
SELECT CU.CustomerID,CU.CompanyName
FROM CUSTOMERS AS CU LEFT JOIN Orders AS O ON CU.CustomerID=O.CustomerID
WHERE O.OrderID IS NULL























