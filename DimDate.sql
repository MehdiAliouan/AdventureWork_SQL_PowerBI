--Cleaning Date Table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [EnglishMonthName] AS Month, 
  left([EnglishMonthName], 3) AS MonthShort, 
  [MonthNumberOfYear] MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
From 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  CalendarYear >= 2019
