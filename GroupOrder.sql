/*
	Group by and Order By
*/

select gender, count(Gender) as countgender
from EmployeeDemograpics
where age > 30
group by gender
order by countgender desc

select * 
from EmployeeDemograpics
order by age desc, Gender desc