
SELECT  [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[PromotionKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      ,[SalesOrderLineNumber]
      ,[RevisionNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[UnitPriceDiscountPct]
      ,[DiscountAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]
      ,[SalesAmount]
      ,[TaxAmt]
      ,[Freight]
      ,[CarrierTrackingNumber]
      ,[CustomerPONumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]


--Cleaning FactInternetSales table to extract the columns needed for the project
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] -- ,[PromotionKey]
  -- ,[CurrencyKey]
  -- ,[SalesTerritoryKey]
  , [SalesOrderNumber] 
  -- ,[SalesOrderLineNumber]
  -- ,[RevisionNumber]
  --  ,[OrderQuantity]
  --  ,[UnitPrice]
  -- ,[ExtendedAmount]
  -- ,[UnitPriceDiscountPct]
  --  ,[DiscountAmount]
  --  ,[ProductStandardCost]
  -- ,[TotalProductCost]
  , [SalesAmount] 
  -- ,[TaxAmt]
  -- ,[Freight]
  --  ,[CarrierTrackingNumber]
  --  ,[CustomerPONumber]
  -- ,[OrderDate]
  -- ,[DueDate]
  --,[ShipDate]
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
Order By 
  OrderDateKey ASC


  --FactInternetSales Table query without comments

  SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
Order By 
  OrderDateKey ASC