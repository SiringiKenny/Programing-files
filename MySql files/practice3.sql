drop database if exists anotherworkplace;
create database anotherworkplace;
use anotherworkplace;
#DROP TABLE IF EXISTS dept;
#DROP TABLE IF EXISTS salgrade;
#DROP TABLE IF EXISTS emp;



CREATE TABLE salgrade(
grade int(4) not null primary key,
losal decimal(10,2),
hisal decimal(10,2));



CREATE TABLE dept(
deptno int(2) not null primary key,
dname varchar(50) not null,
location varchar(50) not null);



CREATE TABLE emp(
empno int(4) not null primary key,
ename varchar(50) not null,
job varchar(50) not null,
mgr int(4),
hiredate date,
sal decimal(10,2),
comm decimal(10,2),
deptno int(2) not null);



insert into dept values (10,'Accounting','New York');



insert into dept values (20,'Research','Dallas');



insert into dept values (30,'Sales','Chicago');



insert into dept values (40,'Operations','Boston');





insert into emp values (7369,'SMITH','CLERK',7902,'93/6/13',800,0.00,20);



insert into emp values (7499,'ALLEN','SALESMAN',7698,'98/8/15',1600,300,30);



insert into emp values (7521,'WARD','SALESMAN',7698,'96/3/26',1250,500,30);



insert into emp values (7566,'JONES','MANAGER',7839,'95/10/31',2975,null,20);



insert into emp values (7698,'BLAKE','MANAGER',7839,'92/6/11',2850,null,30);



insert into emp values (7782,'CLARK','MANAGER',7839,'93/5/14',2450,null,10);



insert into emp values (7788,'SCOTT','ANALYST',7566,'96/3/5',3000,null,20);



insert into emp values (7839,'KING','PRESIDENT',null,'90/6/9',5000,0,10);



insert into emp values (7844,'TURNER','SALESMAN',7698,'95/6/4',1500,0,30);



insert into emp values (7876,'ADAMS','CLERK',7788,'99/6/4',1100,null,20);



insert into emp values (7900,'JAMES','CLERK',7698,'00/6/23',950,null,30);



insert into emp values (7934,'MILLER','CLERK',7782,'00/1/21',1300,null,10);



insert into emp values (7902,'FORD','ANALYST',7566,'97/12/5',3000,null,20);



insert into emp values (7654,'MARTIN','SALESMAN',7698,'98/12/5',1250,1400,30);




insert into salgrade values (1,700,1200);



insert into salgrade values (2,1201,1400);



insert into salgrade values (3,1401,2000);



insert into salgrade values (4,2001,3000);



insert into salgrade values (5,3001,99999);

select * from emp where deptno not in(10,20);
#select * from emp where  ename not like '_A_';

select empno,replace(ename,"A","x"),ename,reverse(ename),concat(ename," salary is ",sal) salaryDetails ,lpad(sal,20,"$"),rpad(sal,20,"*") from emp;

SELECT COALESCE('Hexa', 'Hexaware', NULL, Null, NULL, 'uma',null,null);

#SELECT IF(500<1000, "YES", "NO");

#select ename,sal,comm,if(sal>1000,comm,'No Comm') from emp;

#select sal,comm, ifnull(comm,sal) from emp;

select * from emp;

select * from dept;

select empno,ename,job, location,dname
from emp,dept;