create table emp(
    empno number,
    ename varchar(20),
    job varchar(20),
    sal number,
    deptno number
);

insert into emp(empno,ename,job,sal,deptno) values(1,'Harsh','Technician',12345,45);
insert into emp(empno,ename,job,sal,deptno) values(2,'Amita','Engineering',23453,20);
insert into emp(empno,ename,job,sal,deptno) values(3,'Brijesh','Mechanic',334456,12);
insert into emp(empno,ename,job,sal,deptno) values(4,'Vaibhav','Doctor',23460,90);
insert into emp(empno,ename,job,sal,deptno) values(5,'Rahul','Dancer',12345,78);

select empno,ename from emp where deptno=90;

select ename from emp where sal>12345

select ename,sal from emp
where job='Doctor' or job='Dancer';

select * from emp
where sal>12345 and sal<334456; 

select ename from emp
where sal is null;

select ename from emp
where ename like 'V%';

select ename from emp
where ename like '%h';

select ename from emp
where ename like 'h%' or ename like 'H%' or ename like '%h' or ename like '%H';

select ename from emp
where ename like '_a%' or ename like '_A%';