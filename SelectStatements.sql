/*
select statements
*. top. distinct, count, as, max, min, avg
*/

select FirstName , LastName
from EmployeeDemograpics

select top 5 *
from EmployeeDemograpics

select distinct(gender)
from EmployeeDemograpics

select count(lastName) as NumberofLastName
from EmployeeDemograpics

select max(Salary) as HighestSalary
from EmpployeeSalary

select min(Salary) as LowestSalary
from EmpployeeSalary

select avg(salary) as AverageSalary
from EmpployeeSalary



