--Cleansed DIM_Products Table--
select 
  p.ProductKey, 
  p.ProductAlternateKey as ProductItemCode, 
  p.EnglishProductName as [Product Name], 
  ps.EnglishProductSubcategoryName as [Sub Category], 
  pc.EnglishProductCategoryName as [Product Category], 
  p.Color as [Product Color], 
  p.Size as [Product Size], 
  p.ProductLine as [Product Line], 
  p.ModelName as [Product Model Name], 
  p.EnglishDescription as [Product Description], 
  ISNULL(p.Status, 'Outdated ') as [Product Status] 
from 
  dbo.DimProduct as p 
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc