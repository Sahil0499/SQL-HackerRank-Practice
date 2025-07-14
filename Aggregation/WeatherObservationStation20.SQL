-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

SELECT ROUND(AVG(LAT_N), 4) AS median
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS RN,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) AS Ordered
WHERE RN = FLOOR((total_rows + 1) / 2);