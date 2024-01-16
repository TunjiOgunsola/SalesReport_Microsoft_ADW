SELECT  [ProductKey]
      ,[ProductAlternateKey]
      ,[ProductSubcategoryKey]
      ,[WeightUnitMeasureCode]
      ,[SizeUnitMeasureCode]
      ,[EnglishProductName]
      ,[SpanishProductName]
      ,[FrenchProductName]
      ,[StandardCost]
      ,[FinishedGoodsFlag]
      ,[Color]
      ,[SafetyStockLevel]
      ,[ReorderPoint]
      ,[ListPrice]
      ,[Size]
      ,[SizeRange]
      ,[Weight]
      ,[DaysToManufacture]
      ,[ProductLine]
      ,[DealerPrice]
      ,[Class]
      ,[Style]
      ,[ModelName]
      ,[LargePhoto]
      ,[EnglishDescription]
      ,[FrenchDescription]
      ,[ChineseDescription]
      ,[ArabicDescription]
      ,[HebrewDescription]
      ,[ThaiDescription]
      ,[GermanDescription]
      ,[JapaneseDescription]
      ,[TurkishDescription]
      ,[StartDate]
      ,[EndDate]
      ,[Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct]

  -- Cleaning of DimProduct Table

SELECT 
  [ProductKey], 
  [ProductAlternateKey] As [Product Item Code] -- ,[ProductSubcategoryKey]
  -- ,[WeightUnitMeasureCode]
  -- ,[SizeUnitMeasureCode]
  -- ,[EnglishProductName] As [Product Name]
  -- ,[SpanishProductName]
  -- ,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  ,[EnglishProductCategoryName] As [Product Category], 
  [EnglishProductSubcategoryName] As [Sub Category], 
  [Color] AS [Product Color] 
  -- ,[SafetyStockLevel]
  -- ,[ReorderPoint]
  --,[ListPrice]
  ,[Size] AS [Product Size] 
  -- ,[SizeRange]
  -- ,[Weight]
  -- ,[DaysToManufacture]
  ,[ProductLine] As [Product Line] -- ,[DealerPrice]
  -- ,[Class]
  -- ,[Style]
  ,[ModelName] AS [Product Model Name] -- ,[LargePhoto]
  ,[EnglishDescription] AS [Product Description] -- ,[FrenchDescription]
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  -- ,[HebrewDescription]
  -- ,[ThaiDescription]
  -- ,[GermanDescription]
  -- ,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  -- ,[Status]
  , 
  ISNULL(Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] As p 
  LEFT JOIN DimProductSubcategory As ps On ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory pc On pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey


--DimProduct Query without comments
SELECT 
  [ProductKey], 
  [ProductAlternateKey] As [Product Item Code], 
  [EnglishProductCategoryName] As [Product Category], 
  [EnglishProductSubcategoryName] As [Sub Category], 
  [Color] AS [Product Color], 
  [Size] AS [Product Size], 
  [ProductLine] As [Product Line], 
  [ModelName] AS [Product Model Name], 
  [EnglishDescription] AS [Product Description], 
  ISNULL(Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] As p 
  LEFT JOIN DimProductSubcategory As ps On ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory pc On pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey