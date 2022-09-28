/*condition =,<,>,!=,<>,<=,>=
in(set)->for multiple lines wwe use this 
between and (for a finding range)
like
%->zero or more characters 
*/
select ename,sal from emp where sal>1250;
select ename,sal from emp where sal<1250;
select ename,sal,job,deptno from emp where dept<>30;
select * from emp where ename='smith';
# display those employees details who earns a salary value gretaer than or equal to 3000
select * from emp where sal>=3000;
select * from emp where ename in ('smith','king');
# display the employees working as clerk and salesman
select * from emp where job in ('clerk','salesman');
#display the employee salary from a range 1250 and 3000
select ename,sal from emp where sal between 1250 and 3000;
# write a query to find who has hired after 01-jan-81
select * from emp where hiredate > '1981-01-0';
select ename from emp where ename like 's%';
#display the names of all those employees whose name contains an 'a'
select ename from emp where ename like '%a%';
select ename from emp where ename like '%a%a%';
select ename from emp where ename like'__i%';# starts with 3rd letter
#display the name of all those employees whose name contains an e in the second last position
select ename from emp where ename like '%e__';
select ename,sal,comm from emp where comm is null;

