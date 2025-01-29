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

  NOT IN
  SELECT * FROM Customers WHERE City NOT IN ('Paris', 'Berlin');

  SELECT * FROM Customers WHERE NOT CustomerID > 50;
  SELECT * FROM Customers WHERE NOT CustomerID < 50;

8. INSERT INTO
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Tom','Berlin','Germany')

9. NULL
-- Null is added when we don't add any value to column, it is not zero or empty space, so to test for null we need
IS NULL , IS NOT NULL
SELECT CustomerName FROM Customers WHERE City is NOT NULL;
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NULL;
  
10. UPDATE
UPDATE Customers SET CustomerName = 'Shadab', City = 'Miraj' WHERE CustomerID = 1;
UPDATE Customers SET ContactName='Juan' WHERE Country='Mexico';
Always put WHERE otherwise it will updat all the columns in the table

11. DELETE
DELETE FROM customers WHERE customerName = 'shadab';  -- again WHERE is important
To DELETE all rowas without deleting the column 
DELETE FROM table_name;
DELETE FROM Customers;

12. TOP
--  Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.
SELECT TOP 3 * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country='Germany' LIMIT 3;

13. Aggregate Functions
  Min():  SELECT MIN (Price) FROM Products;
  Max(): SELECT MAX (Price) FROM Products;
  SELECT MIN(Price) AS SmallestPrice FROM Products;  -- this gives the resulting column a name as SmallestPrice







