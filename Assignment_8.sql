select Sname from SalesPeople 
where city in (select City from Customers)

select distinct Sname from SalesPeople inner join Customers on SalesPeople.City = Customers.City

select Sname, Cname from SalesPeople,Customers where SalesPeople.City = Customers.City

select distinct Sname from SalesPeople,Customers where SalesPeople.Snum = Customers.Snum and SalesPeople.City = Customers.City

select Snum,max(Amt) as Total from Orders 
group by Snum

select Sname,Snum,max(Amt) from SalesPeople natural join Orders
group by Snum,Sname