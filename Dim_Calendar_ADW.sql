SELECT   [DateKey]
      ,[FullDateAlternateKey]
      ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      ,[SpanishDayNameOfWeek]
      ,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth]
      ,[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      ,[SpanishMonthName]
      ,[FrenchMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      ,[CalendarSemester]
      ,[FiscalQuarter]
      ,[FiscalYear]
      ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]

	--Cleaning Dim.Date table to select the columns needed for the project
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date 
  --,[DayNumberOfWeek]
  , [EnglishDayNameOfWeek] As Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  ,[WeekNumberOfYear]
  ,[EnglishMonthName] As Month, 
  LEFT ([EnglishMonthName], 3) As MonthShort -- For visualization alignment
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear], 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  DimDate
  WHERE CalendarYear >= 2019

  -- Cleaned Dim.Date Query without comments
  SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date, 
  [EnglishDayNameOfWeek] As Day, 
  [WeekNumberOfYear], 
  [EnglishMonthName] As Month, 
  LEFT ([EnglishMonthName], 3) As MonthShort, 
  [MonthNumberOfYear], 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year 
FROM 
  DimDate 
WHERE 
  CalendarYear >= 2019