/****** Script for Fact internet_sales table  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
	  ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where
  left (OrderDateKey,4) >=year(GETDATE())-2 --ensure we always bring 2 years data from extraction
  order by
  OrderDateKey asc