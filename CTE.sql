/*
CTE
*/

with CTE_Employees as(
select FirstName, LastName,gender,Salary,
count(gender) over(partition by gender) as totalgender,
avg(salary) over(partition by gender) as averageSalary
from SQLLearning..EmployeeDemographics as emp
join SQLLearning..EmployeeSalary as sal
on emp.EmployeeID = sal.EmployeeID
where Salary > 45000
)
select FirstName, averageSalary 
from CTE_Employees