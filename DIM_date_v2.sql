-- Clean dim date table  --
SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      ,[EnglishDayNameOfWeek] as Day
      ,[WeekNumberOfYear] as week_no
      ,[EnglishMonthName] as month
      ,[MonthNumberOfYear] as month_no
	  ,SUBSTRING([EnglishMonthName],1,3) as MonthShort
      ,[CalendarQuarter] as quarter
      ,[CalendarYear] as year
  FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  where
  [CalendarYear] >= 2019