SELECT t.id 
FROM Weather AS t, Weather AS y
WHERE Datediff(t.RecordDate, y.RecordDate) = 1 
    AND t.Temperature > y.Temperature
