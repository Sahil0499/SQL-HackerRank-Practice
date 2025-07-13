-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

SELECT CI.NAME
FROM CITY CI
LEFT JOIN COUNTRY CO
ON CI.CountryCode = CO.Code
WHERE CONTINENT ='AFRICA';