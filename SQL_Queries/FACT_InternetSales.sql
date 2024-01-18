--Cleansed FACT_InternetSales Table--
select 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount 
from 
  dbo.FactInternetSales 
where 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 --Ensures we always bring 2 years of date from extraction.
order by 
  OrderDateKey asc