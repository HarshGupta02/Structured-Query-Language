create table S(
    sno number,
    sname varchar(20),
    city varchar(20),
    constraints pk_sno primary key(sno)
);

create table P(
    pno number,
    pname varchar2(20),
    color varchar2(20),
    constraints pk_pno primary key(pno)
);

create table J(
    jno number,
    jname varchar2(20),
    city varchar2(20),
    constraints pk_jno primary key(jno)
);

create table dept(
    deptno number,
    dname varchar2(20) check(dname in ('Acc','comp','elect')),
    constraints pk_deptno primary key(deptno)
);

create table emp(
    empno number primary key,
    ename varchar2(20) unique,
    job varchar2(20) check(job in ('Prof','Ap','Lect')),
    sal number not null,
    deptno number,
    foreign key(deptno) references dept(deptno)
);

create table SPJ(
    sno number,
    pno number,
    jno number,
    qty number,
    constraints pk_total primary key(sno,pno,jno),
    constraints fk_spj_sno foreign key(sno) references S(sno),
    constraints fk_spj_pno foreign key(pno) references P(pno),
    constraints fk_spj_jno foreign key(jno) references J(jno)
);

insert into S(sno,sname,city) values(1,'Harsh','Delhi');
insert into S(sno,sname,city) values(2,'Vaibhav','Delhi');
insert into S(sno,sname,city) values(3,'Amita','Ghaziabad');
insert into S(sno,sname,city) values(4,'Brijesh','Punjab');
insert into S(sno,sname,city) values(5,'Rahul','Delhi');

insert into J(jno,jname,city) values(1,'Yash','Delhi');
insert into J(jno,jname,city) values(2,'Kanav','Delhi');
insert into J(jno,jname,city) values(3,'Nirmay','Ghaziabad');
insert into J(jno,jname,city) values(4,'Ashutosh','Punjab');
insert into J(jno,jname,city) values(5,'Pinky','Delhi');

insert into P(pno,pname,color) values(1,'Aparna','Red');
insert into P(pno,pname,color) values(2,'Naina','Blue');
insert into P(pno,pname,color) values(3,'Nirali','Blue');
insert into P(pno,pname,color) values(4,'Maulika','Green');
insert into P(pno,pname,color) values(5,'Himja','Yellow');

insert into dept(deptno,dname) values(1,'Acc');
insert into dept(deptno,dname) values(2,'Acc');
insert into dept(deptno,dname) values(3,'comp');
insert into dept(deptno,dname) values(4,'Acc');
insert into dept(deptno,dname) values(5,'elect');

insert into SPJ(sno,pno,jno,qty) values(1,4,4,1);
insert into SPJ(sno,pno,jno,qty) values(2,3,3,2);
insert into SPJ(sno,pno,jno,qty) values(3,2,2,3);
insert into SPJ(sno,pno,jno,qty) values(4,1,1,4);

insert into emp(empno,ename,job,sal,deptno) values(1,'Sid','Prof',51000,1);
insert into emp(empno,ename,job,sal,deptno) values(2,'Ad','AP',71000,2);
insert into emp(empno,ename,job,sal,deptno) values(3,'Ish','AP',61000,3);
insert into emp(empno,ename,job,sal,deptno) values(4,'Harsh','Lect',21000,4);
insert into emp(empno,ename,job,sal,deptno) values(5,'Harsh','Lect',21000,5);

desc SPJ

select * from user_constraints

alter table SPJ drop constraint pk_total;

alter table SPJ add constraint pk_total primary key(sno,pno,jno);

alter table emp modify ename varchar2(30);

desc emp;

alter table emp modify ename varchar(20);

alter table emp add comm number(6);

desc emp;

alter table J drop column city

alter table J add city varchar(20);

desc J

create table emp_duplicate as select * from emp;

desc emp_duplicate

create table dept_duplicate(dno,department) as select * from dept;

desc dept_duplicate

drop table dept