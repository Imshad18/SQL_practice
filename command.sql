SQL is case insensitive, still I will use all caps for SQL keywords

-- We have tables called Customers & Products, they have many columns like CustomerID, CustomerName, City, etc

1. SELECT  
SELECT * FROM Customers;   -- this is SELECT Everything
-- This will give the entire table 

SELECT CustomerName, City FROM Customers;
-- will returen CustomerName & City columns

2. DISTINCT
SELECT DISTINCT City FROM Customers;
-- will only choose distinct entries and skip the repeated ones

SELECT COUNT(DISTINCT City) FROM Customers;
-- this gives us the total number of enquired objects

--for MS Access 
SELECT COUNT(*) AS DistinctCountry FROM (SELECT DISTINCT Country FROM Customers);

3. WHERE
--The WHERE clause is used to filter records. It is used to extract only those records that fulfill a specified condition
SELECT * FROM Customers WHERE Country='Mexico';
SELECT * FROM Customers WHERE CustomerID > 80;   -- >< operators can be used

4. ORDER BY
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT * FROM Products ORDER BY Price;

SELECT * FROM Products ORDER BY productname DESC; --for alphabets

SELECT * FROM Customers ORDER BY Country, CustomerName;   -- here if country name is same then it orders by the name of CustomerName 

5. AND
SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

Mixing AND and OR
SELECT * FROM Customers WHERE country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');  -- this gives only Spain results
SELECT * FROM Customers WHERE country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%'; -- this without brackets gives all entires that start with G from Sapin but also all entieres starting with R from all countries

6. OR
SELECT * FROM Customers WHERE country = 'Spain' OR country = 'Germany';

7. NOT
SELECT * FROM Customers WHERE NOT Country = 'Spain';
SELECT * FROM Customers WHERE CustomerName NOT LIKE 'A%';

  NOT BETWEEN
  SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60;
  SELECT * FROM Customers WHERE CustomerName NOT BETWEEN 'A' AND 'J';











