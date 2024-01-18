--Cleansed DIM_Customers Table--
select 
  c.CustomerKey as CustomerKey, 
  c.FirstName as [First Name], 
  c.LastName as [Last Name], 
  c.FirstName + ' ' + c.LastName as [Full Name], 
  case c.Gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  c.DateFirstPurchase as DateFirstPurchase, 
  g.city as [Customer City] 
from 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc