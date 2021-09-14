/*
Temp table
*/

create table #temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

insert into #temp_Employee values(
'1001', 'HR', '45000'
)

insert into #temp_Employee
select *
from SQLLearning..EmployeeSalary

select *
from #temp_Employee

drop table if exists #temp_Employee2
create table #temp_Employee2(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

insert into #temp_Employee2
select JobTitle, Count(JobTitle), avg(age),avg(salary)
from SQLLearning..EmployeeDemographics emp
join SQLLearning..EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

select *
from #temp_Employee2

