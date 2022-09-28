use scott;
show tables;
select * from emp;#display all the columns of the table only once
select ename ,job from emp;#display the name job and salary of all the employees
#display the anual salary of all emplyoees of 100
select ename,sal*12,sal from emp;
#display the annual salary of all employees after deduction of 100
select ename,sal*12-100,sal from emp;
#display annual salary of all employees after deduction of 100 every month
select ename as name,(sal-100)*12 as annual_exp,sal from emp;#bodmas rule
select ename as name,sal as salary from emp;
select ename as name,sal as "monthly salary" from emp;
#distinct is used for unique values
select distinct deptno from emp;#(values wont repeat)
select distinct deptno,job from emp;#(rows wont repeat)
