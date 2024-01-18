-- Cleansed DIM_Date Table--
select 
  DateKey, 
  FullDateAlternateKey as Date, 
  --[DayNumberOfWeek]
  EnglishDayNameOfWeek as Day, 
  EnglishMonthName as Month, 
  Left(EnglishMonthName, 3) as MonthShort, 
  MonthNumberOfYear as MonthNo, 
  CalendarQuarter as Quarter, 
  CalendarYear as Year 
from 
  [dbo].[DimDate] 
where 
  CalendarYear >= 2019;