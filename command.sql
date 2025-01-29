SQL is case insensitive, still I will use all caps for SQL keywords

-- We have tables called Customers & Products which has many columns like CustomerID, CustomerName, City, etc

SELECT * FROM Customers;   -- this is SELECT Everything
-- This will give the entire table 

SELECT CustomerName, City FROM Customers;
-- will returen CustomerName & City columns

DISTINCT
SELECT DISTINCT City FROM Customers;
-- will only choose distinct entries and skip the repeated ones

SELECT COUNT(DISTINCT City) FROM Customers;
-- this gives us the total number of enquired objects

--for MS Access 
SELECT COUNT(*) AS DistinctCountry FROM (SELECT DISTINCT Country FROM Customers);


WHERE
--The WHERE clause is used to filter records. It is used to extract only those records that fulfill a specified condition
SELECT * FROM Customers WHERE Country='Mexico';
SELECT * FROM Customers WHERE CustomerID > 80;   -- >< operators can be used

ORDER BY
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT * FROM Products ORDER BY Price;

SELECT * FROM Products ORDER BY productname DESC; --for alphabets

SELECT * FROM Customers ORDER BY Country, CustomerName;   -- here if country name is same then it orders by the name of CustomerName 
















