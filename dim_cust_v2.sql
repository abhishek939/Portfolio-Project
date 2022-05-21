/****** Script for dim_customer table  ******/
SELECT  c.[CustomerKey] 
      ,c.[FirstName] as [First Name]
      ,c.[LastName] as [Last Name]
	  ,c.[FirstName]+' '+[LastName] as [Full Name]
      ,case c.[Gender] when 'M' then 'Male' when 'F' then 'Female' end as Gender
      ,c.[DateFirstPurchase]
	  ,g.City as [Customer City]--joined from geography table
  FROM [dbo].[DimCustomer] as c
  left join dbo.DimGeography as g
  on g.GeographyKey = c.GeographyKey
  order by CustomerKey asc