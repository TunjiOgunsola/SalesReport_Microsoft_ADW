
SELECT  [CustomerKey]
      ,[GeographyKey]
      ,[CustomerAlternateKey]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[NameStyle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Suffix]
      ,[Gender]
      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[SpanishEducation]
      ,[FrenchEducation]
      ,[EnglishOccupation]
      ,[SpanishOccupation]
      ,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Phone]
      ,[DateFirstPurchase]
      ,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]


  -- Cleaning DimCustomer Table to select the columns needed.

SELECT 
  c.[CustomerKey] -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  , c.[FirstName] 
  -- ,[MiddleName]
  , c.[LastName], 
  FirstName + ' ' + LastName As [Full Name] -- Merging names together
  -- ,[NameStyle]
  -- ,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  --,[Gender]
  , 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END Gender -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  , c.[DateFirstPurchase] -- ,[CommuteDistance]
  , g.[City] AS [Customer City] -- Joined Customer City from DimGeography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] As c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] g 
  ON g.GeographyKey = c.GeographyKey


  -- DimCustomer query without comments
  SELECT 
  c.[CustomerKey], 
  c.[FirstName], 
  c.[LastName], 
  FirstName + ' ' + LastName As [Full Name], 
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END Gender, 
  c.[DateFirstPurchase], 
  g.[City] AS [Customer City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] As c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] g ON g.GeographyKey = c.GeographyKey