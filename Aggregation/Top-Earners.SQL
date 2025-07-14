-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

SELECT (SALARY*MONTHS) AS TS, COUNT(*)
FROM EMPLOYEE
GROUP BY TS
ORDER BY TS DESC
LIMIT 1;