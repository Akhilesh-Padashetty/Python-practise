#set-2
#q-1). select all employees in department 10 whose salary is greater than 3000. [table: employee]
select * from employee where deptno=10 and salary>3000;
#q-2-a). How many students have graduated with first class?
select count(id) from students where marks between 50 and 60;
#q-2-b)How many students have obtained distinction? [table: students]
select count(id) from students where marks between 80 and 100;
#q-3). Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer.[table: station]
select distinct id,city from station where id%2=0;
#q-4)Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. In other words, if N is the number of city entries in station, and N1 is the number of distinct city names in station, write a query to find the value of N-N1 from station.
#[table: station]
select count(city),count(distinct city),count(city)-count(distinct city) as unique_cities from station;
#q-5-a). Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]
select distinct city from station where left(city,1) in('a','e','i','o','u');
#q-5-b)Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates
select distinct city from station where (left(city,1) in('a','e','i','o','u')) and (right(city,1) in ('a','e','i','o','u'));
#q-5-c). Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station where left(city,1) not in('a','e','i','o','u');
#q-5-d)Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. [table: station]
select distinct city from station where (left(city,1) not in('a','e','i','o','u')) and (right(city,1) not in('a','e','i','o','u'));
#q-6). Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 36 months. Sort your result by descending order of salary. [table: emp]
select first_name,last_name,hire_date,salary from emp where hire_date>date_sub(now(),interval 36 month) and salary>2000 order by salary  desc;
#q-7). How much money does the company spend every month on salaries for each department? [table: employee]
select deptno,sum(salary) as total_salary from employee group by deptno;
#q-8). How many cities in the CITY table have a Population larger than 100000. [table: city]
select count(name) from city where population>100000;
#q-9). What is the total population of California? [table: city]
select district,sum(population) from city where district='california';
#q-10). What is the average population of the districts in each country? [table: city]
select countrycode,district,avg(population) from city group by district;
#q-11)Find the ordernumber, status, customernumber, customername and comments for all orders that are ‘Disputed=  [table: orders, customers]
select o.orderNumber,o.status,c.customerNumber,c.customerName,o.comments from orders as o left outer join 
customers as c on (c.customerNumber=o.customerNumber) where o.status='disputed';