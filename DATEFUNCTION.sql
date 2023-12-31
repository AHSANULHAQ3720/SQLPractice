Select Getdate() As curentdate -- Give Current Date
Select CURRENT_TIMESTAMP as currenttimestamp  --CurrentTimestamp
Select GETUTCDATE() as UTCDate  -- GET UTC DATE PAKISTAN IS UTC + 5 SO IT SHOW 5 HOUR BEHIND
SELECT DATEPART(DAY,GETDATE())   -- GET INTEGER VALUE OF DAY THROUGH DATEPART
SELECT DATEPART(WEEKDAY,GETDATE())   -- GET INTEGER VALUE OF WEEKDAY THROUGH DATEPART
SELECT DATENAME(WEEKDAY,GETDATE())   -- GET NVHARCHAR VALUE OF WEEKDAY THROUGH DATENAME

SELECT DATEADD(WEEK,251,getdate()) -- ADD DAYS IN CURRENT DATE
SELECT DATEDIFF(DAY,GETDATE(),DATEADD(WEEK,251,getdate()))  -- CREATED DATEDIFF VARIABLE BY SUBTRACTING TWO DATES

