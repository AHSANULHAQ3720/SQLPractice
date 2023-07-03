Select * from tblproduct   -- TABLE PRODUCT
Select * from tblsales     -- TABLE SALES


ALTER VIEW vwTableSalesbyProduct
WITH SchemaBinding
AS

Select p.Name,
Sum(s.QuantitySold) as TotalQuantity,
SUM(ISNULL(p.UnitsPrice * s.QuantitySold,0)) as TotalSales,
COUNT_BIG(*) As TotalTrans
from dbo.tblproduct p
JOIN dbo.tblsales s ON
p.ProductID = s.ProductID
Group by Name

Select *  from vwTableSalesbyProduct  --  Querying view

CREATE UNIQUE CLUSTERED INDEX ix_vwTableSalesbyProduct
ON vwTableSalesbyProduct(Name)