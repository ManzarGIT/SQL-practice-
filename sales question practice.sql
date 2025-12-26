

create table sales_zs
(product_id int,
product_name varchar(60),
price int,
);

insert into sales_zs values
(1, 'Laptop', 75000.00),
(2, 'Smartphone', 42000.00),
(3, 'Tablet', 28000.00),
(4, 'Wireless Mouse', 1200.00),
(5, 'Keyboard', 1800.00),
(6, 'Monitor 24 inch', 15500.00),
(7, 'Monitor 27 inch', 22500.00),
(8, 'USB Flash Drive 32GB', 600.00),
(9, 'USB Flash Drive 64GB', 950.00),
(10, 'External Hard Disk 1TB', 5200.00),
(11, 'External Hard Disk 2TB', 8200.00),
(12, 'SSD 512GB', 6400.00),
(13, 'SSD 1TB', 11200.00),
(14, 'Printer Inkjet', 8900.00),
(15, 'Printer Laser', 18500.00),
(16, 'Router', 3200.00),
(17, 'WiFi Extender', 2100.00),
(18, 'Webcam HD', 2600.00),
(19, 'Webcam Full HD', 4800.00),
(20, 'Headphones Wired', 1500.00),
(21, 'Headphones Wireless', 6200.00),
(22, 'Bluetooth Speaker', 5400.00),
(23, 'Smartwatch', 9800.00),
(24, 'Power Bank 10000mAh', 2200.00),
(25, 'Power Bank 20000mAh', 3800.00),
(26, 'Graphics Card', 36500.00),
(27, 'CPU Processor', 29500.00),
(28, 'Motherboard', 17500.00),
(29, 'RAM 16GB', 7200.00),
(30, 'Cooling Fan', 1300.00);

select * from sales_zs

select TOP(5)* from sales_zs order by price desc;

--Write a query to display all products sorted by price in ascending order.
select product_name from sales_zs order by price asc;

--Write a query to display the top 5 cheapest products.

select top(5)* from sales_zs order by price asc

--Write a query to find products with a price greater than 10,000.

select * from sales_zs where price >10000;

--Write a query to display the average price of all products.

select AVG(price) as average_price from sales_zs

--Write a query to find the most expensive product.

select top(1)*  from sales_zs order by price desc;

--Write a query to display product names and prices for products whose price is between 5,000 and 20,000.

select product_name,price from sales_zs where price between 5000 and 20000

--Write a query to count how many products have a price less than 5,000.

select count(*) as number_of_prduct  from sales_zs where price <5000

--Write a query to display the total value of all products (sum of prices).

select sum(price) as sum_of_prices from sales_zs

--Write a query to display the top 3 most expensive products, but only show product_name and price.
select product_id from (
select top(3)* from sales_zs order by price desc
)n

select product_name,price from sales_zs where product_id in (select product_id from (
select top(3)* from sales_zs order by price desc
)n)

--ALTERNATE SOLUTION 
SELECT *
FROM sales_zs
WHERE product_name LIKE 'USB%';

--Write a query to find products whose name contains the word “USB”.

select * from sales_zs where product_name like '%USB%';

--GROUP BY & HAVING — Practice Questions

--Question 1 — Basic GROUP BY
--Display the count of products for each price value.

SELECT count(*) FROM sales_zs group by price

--Display the number of products priced above 10,000 and below or equal to 10,000 (two groups).

select 
 case
 when price >10000 then 'above 10000'
 else 'below 10000'
 end as price_category,
 
 count(*) as product_count from sales_zs 
 group by 
 case 
 when price >10000 then 'above 10000'
 else 'below 10000'
 end ;



 select * from sales_zs

 select 
 case 
 when price <5000 then 'affordable'
 else 'not affrdable'
end as affordable ,

count(*) as product_count from sales_zs
group by 
case when price <5000 then 'affordable'
else 'not affrdable'
end ;

select 
case 
when price <10000 then 'afford'
else 'non_afford'
end as affrodability,
count(*) as product_count from sales_zs group by 
case when price <10000 then 'afford' else 'non_afford'
end ;



--Display how many products exist in each price range:
--Below 5,000
--5,000 to 20,000
--Above 20,000
select 
case 
when price <5000 then 'below 5k'
when price between 5000 and 20000 then '5k to 2k'
else 'above 20k' 
end as categories,
count(*) as number_of_product from sales_zs 
group by case 
when price <5000 then 'below 5k'
when price between 5000 and 20000 then '5k to 2k'
else 'above 20k' 
end ;

--Total price value for each price
SELECT 
  price,
  SUM(price) AS total_price
FROM sales_zs
GROUP BY price;

--Minimum and maximum price for each price group
SELECT
  price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM sales_zs
GROUP BY price;


select sum(price) as total_sales from sales_zs
select count(*)as number_of_item from sales_zs
select avg(price) as average_price from sales_zs
select top(10)* from sales_zs order by price desc ;
select max(price)as maximum from sales_zs
select min(price)as minimum  from sales_zs

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);
INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1,'Rahul','Delhi'),
(2,'Amit','Mumbai'),
(3,'Neha','Delhi'),
(4,'Priya','Pune'),
(5,'Arjun','Mumbai'),
(6,'Suman','Chennai'),
(7,'Rakesh','Delhi'),
(8,'Anjali','Pune'),
(9,'Mohit','Mumbai'),
(10,'Kavita','Delhi'),
(11,'Pankaj','Jaipur'),
(12,'Rohit','Mumbai'),
(13,'Sneha','Pune'),
(14,'Deepak','Delhi'),
(15,'Nisha','Chennai'),
(16,'Varun','Mumbai'),
(17,'Simran','Delhi'),
(18,'Kunal','Jaipur'),
(19,'Ritu','Pune'),
(20,'Aman','Delhi'),
(21,'Akash','Mumbai'),
(22,'Pooja','Delhi'),
(23,'Vikas','Pune'),
(24,'Meena','Chennai'),
(25,'Sanjay','Delhi'),
(26,'Isha','Mumbai'),
(27,'Manish','Jaipur'),
(28,'Aarti','Pune'),
(29,'Tarun','Delhi'),
(30,'Reena','Mumbai');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES
(101,1,'2024-01-05',4500),
(102,2,'2024-01-07',12000),
(103,3,'2024-01-10',8000),
(104,4,'2024-01-12',3000),
(105,5,'2024-01-15',15000),
(106,6,'2024-01-18',6000),
(107,7,'2024-01-20',2000),
(108,8,'2024-01-22',9000),
(109,9,'2024-01-25',11000),
(110,10,'2024-01-28',5000),
(111,11,'2024-02-01',4000),
(112,12,'2024-02-03',13000),
(113,13,'2024-02-05',7000),
(114,14,'2024-02-08',16000),
(115,15,'2024-02-10',4500),
(116,16,'2024-02-12',14000),
(117,17,'2024-02-15',5500),
(118,18,'2024-02-18',6000),
(119,19,'2024-02-20',8500),
(120,20,'2024-02-22',10000),
(121,21,'2024-02-25',12500),
(122,22,'2024-02-28',7200),
(123,23,'2024-03-02',4800),
(124,24,'2024-03-05',3000),
(125,25,'2024-03-07',17000),
(126,26,'2024-03-10',9000),
(127,27,'2024-03-12',6500),
(128,28,'2024-03-15',8200),
(129,29,'2024-03-18',10500),
(130,30,'2024-03-20',11500);

select * from Orders
select  distinct  city from Customers

select city ,count(*) as number from Customers group by City

--Write an SQL query to display City-wise total order amount and number of orders.
SELECT 
    b.City,
    SUM(a.OrderAmount) AS TotalOrderAmount,
    COUNT(a.OrderID) AS TotalOrders
FROM Orders a
INNER JOIN Customers b
    ON a.CustomerID = b.CustomerID
GROUP BY b.City
HAVING SUM(a.OrderAmount) > 50000
ORDER BY TotalOrderAmount DESC;
--Write an SQL query to find City-wise average order amount 
--and total number of customers who placed at least one order.


select b.City,AVG(a.OrderAmount) as TotalOrderAmount ,count(a.CustomerID) as TotalOrders   from Orders a 
inner join Customers b 
on a.CustomerID=b.CustomerID
group by b.City
having count(a.CustomerID)>1


--Write an SQL query to find City-wise highest order amount and total number of orders.
--Conditions:
--Consider only orders placed in January 2024
--Output columns:
--City
--HighestOrderAmount
--TotalOrders
--Show only those cities where total number of orders is at least 3
--Sort the result by HighestOrderAmount in descending order

select b.City,max(a.OrderAmount) as HighestOrderAmount, count(a.OrderID) as TotalOrders from Orders a
inner join Customers b
on a.CustomerID=b.CustomerID
where a.OrderDate>='2024-01-01' and a.OrderDate<'2024-02-01'
group by b.City
having count(a.OrderID) >=3
order by max(a.OrderAmount) desc ;


select count(distinct CustomerID) from Orders

--Write an SQL query to find City-wise total sales and number of unique customers.
--Conditions:
--Consider only orders with order amount ? 8,000
--Output columns:
--City
--TotalSales
--UniqueCustomerCount
--Show only those cities where total sales exceed 40,000
--Sort the result by TotalSales in descending order


select b.City,SUM(a.OrderAmount) as TotalSales, count(distinct a.CustomerID) as UniqueCustomerCount from Orders a
inner join Customers b
on a.CustomerID=b.CustomerID
where a.OrderAmount >=8000
group by b.City
having SUM(a.OrderAmount) >40000
order by SUM(a.OrderAmount) desc ;

select * from Customers

--QUESTION 
--Classify each order into an OrderCategory based on OrderAmount, then show city-wise total orders and total sales for each category.
--OrderCategory Rules (CASE logic)
--If OrderAmount < 5,000 → 'Low Value'
--If OrderAmount BETWEEN 5,000 AND 10,000 → 'Medium Value'
--If OrderAmount > 10,000 → 'High Value'
--Output Columns (Exact)
--City
--OrderCategory
--TotalOrders
--TotalSales
--Conditions
--Use INNER JOIN
--Use CASE
--Use GROUP BY
--Sort by:
--City (ASC)
--TotalSales (DESC)

select * from Orders
select * from Customers


select 
t2.City,
case 
when t1.OrderAmount <5000 then 'Low Value'
when t1.OrderAmount between 5000 and 10000 then 'Medium value'
else 'High value'

end as OrderCategory,

  t2.City,sum(t1.OrderAmount) as TotalSales from Orders t1
 inner join Customers t2 
 on t1.CustomerID=t2.CustomerID

 group by 
 case 
 when t1.OrderAmount <5000 then 'Low Value'
 when t1.OrderAmount between 5000 and 10000 then 'Medium value'
 else 'High value'
 end

 --gpt answer
 SELECT 
    t2.City,
    CASE 
        WHEN t1.OrderAmount < 5000 THEN 'Low Value'
        WHEN t1.OrderAmount BETWEEN 5000 AND 10000 THEN 'Medium Value'
        ELSE 'High Value'
    END AS OrderCategory,
    COUNT(t1.OrderID) AS TotalOrders,
    SUM(t1.OrderAmount) AS TotalSales
FROM Orders t1
INNER JOIN Customers t2
    ON t1.CustomerID = t2.CustomerID
GROUP BY 
    t2.City,
    CASE 
        WHEN t1.OrderAmount < 5000 THEN 'Low Value'
        WHEN t1.OrderAmount BETWEEN 5000 AND 10000 THEN 'Medium Value'
        ELSE 'High Value'
    END
ORDER BY 
    t2.City ASC,
    TotalSales DESC;


--Question
--Show City-wise order performance by classifying orders as Small or Large, then calculate totals.
--Classification Rule (CASE)
--If OrderAmount < 10,000 → 'Small Order'
--If OrderAmount >= 10,000 → 'Large Order'
--Output Columns (Exact)
--City
--OrderType
--TotalOrders
--TotalSales
--Conditions
--Use INNER JOIN
--Use CASE
--Use GROUP BY
--Include only cities where TotalSales ≥ 30,000
--Sort by:
--City (ASC)
--OrderType (ASC)

select  t2.City ,
case 
when t1.OrderAmount <10000 then 'Small Order'
else 'large order'
end as orderType,
sum(t1.OrderID) as TotalOrders ,sum(t1.OrderAmount) as TotalSales
from Orders t1 inner join Customers t2 on t1.CustomerID=t2.CustomerID 

group by t2.City,
case when t1.OrderAmount <10000 then 'Small Order'
else 'large order'
end

having sum(t1.OrderAmount) >=30000 
order by 
t2.City asc,
orderType DESC;

--Question
--Calculate City-wise revenue contribution by order value category using CASE inside aggregate functions.
--OrderValueCategory Rules (CASE logic)
--OrderAmount < 5,000 → LowValueSales
--OrderAmount BETWEEN 5,000 AND 10,000 → MediumValueSales
--OrderAmount > 10,000 → HighValueSales
--Output Columns (Exact)
--City
--LowValueSales
--MediumValueSales
--HighValueSales
--TotalSales
--Conditions
--Use INNER JOIN
--Use CASE inside SUM() (this is mandatory)
--One row per City
--Sort by TotalSales in descending order
select 
b.City,
case when a.OrderAmount<5000 THEN 'LowValueSales' 
end as Lowvaluesales,
case when a.OrderAmount between 5000 and 10000 then 'MediumvaluesSales' end as MediumValueSales,
case when a.OrderAmount>10000 then 'HighValueSales'  end as HighValueSales,
sum(a.OrderAmount) as TotalSales
 from Orders a 
inner join Customers b 
on a.CustomerID=b.CustomerID 
group by b.City,
case when a.OrderAmount<5000 THEN 'LowValueSales' end ,case when a.OrderAmount between 5000 and 10000 then 'MediumvaluesSales' end ,
case when a.OrderAmount>10000 then 'HighValueSales' end 

--gpt answer
SELECT
    b.City,
    SUM(CASE WHEN a.OrderAmount < 5000 THEN a.OrderAmount ELSE 0 END) AS LowValueSales,
    SUM(CASE WHEN a.OrderAmount BETWEEN 5000 AND 10000 THEN a.OrderAmount ELSE 0 END) AS MediumValueSales,
    SUM(CASE WHEN a.OrderAmount > 10000 THEN a.OrderAmount ELSE 0 END) AS HighValueSales,
    SUM(a.OrderAmount) AS TotalSales
FROM Orders a
INNER JOIN Customers b
    ON a.CustomerID = b.CustomerID
GROUP BY b.City
ORDER BY TotalSales DESC;

