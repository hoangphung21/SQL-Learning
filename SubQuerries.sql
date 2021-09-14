/*
Subquerries
*/

select * 
from EmployeeSalary

-- subquerries in Select
select EmployeeID, Salary,(Select avg(Salary)  from EmployeeSalary ) as avgSalary
from EmployeeSalary

-- subquerries in Patition By
select EmployeeID, Salary, avg(Salary) over()  as avgSalary
from EmployeeSalary

-- can not work with the group by

-- subquerries in From( not really recommend because temptable is easier to reuse)
select a.EmployeeID, avgSalary
from(
	select EmployeeID, Salary, avg(Salary) over()  as avgSalary
	from EmployeeSalary) a

--subquerries in where
select EmployeeID, JobTitle, Salary
from EmployeeSalary
where EmployeeID in (
	select EmployeeID from EmployeeDemographics
	where age > 30
)
