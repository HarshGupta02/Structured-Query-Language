create table SalesPeople( 
    Snum number, 
    Sname varchar(20), 
    City varchar(20), 
    Comm number(5,2), 
    constraints pk_Snum primary key(Snum), 
    constraints unq_Sname unique(Sname) 
);

insert into SalesPeople(Snum,Sname,City,Comm) values(1001,'Peel','London',.12);
insert into SalesPeople(Snum,Sname,City,Comm) values(1002,'Serres','Sanjose',.13);
insert into SalesPeople(Snum,Sname,City,Comm) values(1004,'Motika','Landon',.11);
insert into SalesPeople(Snum,Sname,City,Comm) values(1007,'Rifkin','Barcelona',.15);
insert into SalesPeople(Snum,Sname,City,Comm) values(1003,'Axelrod','Newyork',.10);

create table Customers( 
    Cnum number primary key, 
    Cname varchar(20), 
    City varchar(20) not null, 
    Snum number, 
    foreign key(Snum) references SalesPeople(Snum) 
    -- constraints pk_Cnum primary key(Cnum), 
    -- constraints nn_City not null(City), 
    -- constraints fk_Snum foreign key (Snum) references SalesPeople(Snum) 
);

insert into Customers(Cnum,Cname,City,Snum) values(2001,'Hoffman','London',1001);
insert into Customers(Cnum,Cname,City,Snum) values(2002,'Giovanni','Rome',1003);
insert into Customers(Cnum,Cname,City,Snum) values(2003,'Liu','Sanjose',1002);
insert into Customers(Cnum,Cname,City,Snum) values(2004,'Grass','Berlin',1002);
insert into Customers(Cnum,Cname,City,Snum) values(2006,'Clemens','London',1001);
insert into Customers(Cnum,Cname,City,Snum) values(2008,'Cisneros','Sanjose',1007);
insert into Customers(Cnum,Cname,City,Snum) values(2007,'Pereira','Rome',1004);

create table Orders( 
    Onum number primary key, 
    Amt number(6,2), 
    Odate date, 
    Cnum number, 
    foreign key(Cnum) references Customers(Cnum), 
    Snum number, 
    foreign key(Snum) references SalesPeople(Snum) 
);

insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3001,18.69,'3-OCT-1990',2008,1007);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3003,767.19,'3-OCT-1990',2001,1001);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3002,1900.10,'3-OCT-1990',2007,1004);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3005,5160.45,'3-OCT-1990',2003,1002);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3006,1098.16,'3-OCT-1990',2008,1007);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3009,1713.23,'4-OCT-1990',2002,1003);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3007,75.75,'5-OCT-1990',2004,1002);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3008,4273.00,'5-OCT-1990',2006,1001);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3010,1309.95,'6-OCT-1990',2004,1002);
insert into Orders(Onum,Amt,Odate,Cnum,Snum) values(3011,9891.88,'6-OCT-1990',2006,1001);

select count(*) as Cnt  
from SalesPeople  
where Sname like '%a' or Sname like '%A';

select Snum,sum(Amt) as Total from Orders 
group by Snum having sum(Amt)>2000;

select count(*) as Total from SalesPeople 
where city='Newyork';

select count(*) as Total from SalesPeople
where city='Landon' or city='Paris';

select Snum,count(*) as Total,Odate from Orders 
group by Snum,Odate

select Odate,count(*) as Total from Orders 
group by Odate

select * from Customers
where Cname like 'G%' and rownum<2
order by Cname asc

select Snum,max(Amt) from Orders group by Snum having Snum=1002 or Snum=1007

select Odate,max(Amt) as max_total from Orders
group by Odate having max(Amt) > 3000;

select count(*),City,Comm from SalesPeople 
group by City,Comm;