-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select ProductName, CategoryName from Product
join Category on Product.CategoryId = Category.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select id, CompanyName from [Order] as o
join Shipper as s on o.ShipVia = s.id
where OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select Quantity, ProductName from OrderDetail
join [Product] on Product.id = OrderDetail.ProductId
where OrderID = 10251
order by ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select id as 'Order ID', CompanyName as 'Customer Company', LastName as 'Employee Last Name' from [Order]
join Customer on Customer.id = [Order].CustomerId
join Employee on Employee.id = [Order].EmployeeId