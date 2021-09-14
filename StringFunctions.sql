/*
String functions + Use Cases
*/

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- using trim, ltrim, rtrim
select EmployeeID, trim(EmployeeID) as IDTrimmed
from EmployeeErrors

select EmployeeID, ltrim(EmployeeID) as IDTrimmed
from EmployeeErrors

select EmployeeID, rtrim(EmployeeID) as IDTrimmed
from EmployeeErrors

--using replace
select LastName, replace(LastName, '- Fired', '') as LastNameFixed
from EmployeeErrors

-- using subtring
select err.FirstName as ErrorName, substring(err.FirstName,1,3), dem.FirstName as RightName, substring(dem.FirstName,1,3)
from EmployeeErrors err
join EmployeeDemographics dem
	on substring(err.FirstName,1,3) = substring(dem.FirstName,1,3)

-- using upper and lower
select FirstName, lower(FirstName)
from EmployeeErrors