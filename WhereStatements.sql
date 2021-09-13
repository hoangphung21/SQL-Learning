/*
Where statements
=, <>, < , > , and , or , like , null, not null, in
*/

select *
from EmployeeDemograpics
where age > 30 and gender = 'male'

select *
from EmployeeDemograpics
where FirstName like '%toby%'