--Select
--ANSII
Select * from Customers
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers

Select * from Customers where City = 'Berlin'

--case insensitive
seLEct * from Products where CategoryID=1 or CategoryID=3
Select * from Products where CategoryID=1 and UnitPrice >= 10

select * from Products order by ProductName
select * from Products order by CategoryID,ProductName

--asc ascending artan - desc descending azalan
select * from Products order by UnitPrice desc
select * from Products where CategoryID=1 order by UnitPrice desc

--count bir sutundaki sayıyı getirir ama sadece 1 sütun
Select count(*) from Products
Select count(*) from Customers

--Adet alias oluyor
Select count(*) Adet from Products where CategoryID = 2

Select CategoryID,COUNT(*) from Products group by CategoryID
--miktarı 10 dan az olan
Select CategoryID,COUNT(*) from Products group by CategoryID having COUNT(*)<10

Select CategoryID,COUNT(*) from Products where UnitPrice>20 
group by CategoryID having COUNT(*)<10

--inner join sadece eşlesen dataları getirir
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

--DTO Data Transformation Object

select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where products.UnitPrice>10

select * 
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID 

--left join solda olup sağda olmayanları
select * 
from Products p left join [Order Details] od
on p.ProductID = od.ProductID 

Select * from Customers c inner join Orders o
on c.CustomerID = o.CustomerID

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID

--hiç ürün almamış kişiler
Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null

Select * from Customers c right join Orders o
on c.CustomerID = o.CustomerID 

--birden fazla rablo join etmek
select * 
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID 
inner join Orders o
on o.OrderID = od.OrderID
