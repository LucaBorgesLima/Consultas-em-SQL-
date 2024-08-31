select * from HumanResources.Employee
select * from HumanResources.vEmployeeDepartment

select JobTitle , count(Gender) from HumanResources.Employee
where Gender = 'M'
group by JobTitle


