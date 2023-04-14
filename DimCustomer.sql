/****** Cleaning the DimCustomer Table and DimGeography Table  ******/

SELECT 
  c.customerKey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + LastName AS [Full Name], 
  Case c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  Left join dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
Order BY 
  CustomerKey ASC;
