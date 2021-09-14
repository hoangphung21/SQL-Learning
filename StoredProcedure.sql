/*
Stored Procedures and Use Cases
*/

create procedure test
as
select *
from SQLLearning..EmployeeDemographics

exec test
----
create procedure temp_Employee
as
create table #temp_employee(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

insert into #temp_Employee
select JobTitle, Count(JobTitle), avg(age),avg(salary)
from SQLLearning..EmployeeDemographics emp
join SQLLearning..EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

select *
from #temp_employee

exec temp_Employee @JobTitle = 'Salesman'