create table Student(
    Rno number,
    Name varchar(20),
    DOB date,
    Gender varchar(20),
    Class varchar(20),
    College varchar(20),
    City varchar(20),
    Marks number
);

insert into Student(Rno,Name,DOB,Gender,Class,College,City,Marks) values(1,'Harsh','22-FEB-2018','M','5','Thapar','Ghaziabad',34);
insert into Student(Rno,Name,DOB,Gender,Class,College,City,Marks) values(2,'Amita','21-FEB-2018','F','5','Thapar','Delhi',45);
insert into Student(Rno,Name,DOB,Gender,Class,College,City,Marks) values(3,'Brijesh','20-FEB-2018','M','5','Thapar','Mumbai',67);
insert into Student(Rno,Name,DOB,Gender,Class,College,City,Marks) values(4,'Vaibhav','19-FEB-2018','M','5','Thapar','Ghaziabad',23);
insert into Student(Rno,Name,DOB,Gender,Class,College,City,Marks) values(5,'Rahul','18-FEB-2018','M','5','Thapar','Patna',10);

select * from Student

desc Student

select Rno,Name,Class from Student where City='Ghaziabad';

select * from Student

order by Marks asc;

update Student set Marks=69 where Rno=5;

select * from Student

update Student set Name='Sameer', City='Punjab' where Rno=5;

select * from Student

delete from Student where City='Punjab';

select * from Student

delete from Student where marks<30;

select * from Student
