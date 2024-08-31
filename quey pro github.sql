
--Em Quais Estados Estão Localizados os Funcionários Da Empresa?
Select StateProvinceName as Estado , Count(*) as Funcionarios
	from HumanResources.vEmployee 
	GROUP BY StateProvinceName
	order by Funcionarios DESC 

-- Verifique a quantidade de funcionarios por departamento. 
select Department,COUNT(*) as Quantidade 
	from HumanResources.vEmployeeDepartment 
	group by Department
	order by Quantidade DESC

-- Verifique e ordene a quantidade de produtos do inventário.

select * from Production.Product
select * from Production.ProductInventory

select p.ProductID ,p.Name , SUM (pi.Quantity) as Quantidade
from Production.Product p 
inner join Production.ProductInventory pi on p.ProductID = pi.ProductID
group by p.ProductID , P.Name
order by Quantidade desc


-- historio de quantidade de produtos vendidos ao longo do tempo 
select * from Production.TransactionHistory where ProductID = 2
Select *  from Production.Product where ProductID = 2



