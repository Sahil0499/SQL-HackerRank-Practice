-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT SUM(CI.POPULATION) 
FROM CITY CI
LEFT JOIN COUNTRY CO
ON CI.CountryCode = CO.Code
WHERE CONTINENT ='ASIA';