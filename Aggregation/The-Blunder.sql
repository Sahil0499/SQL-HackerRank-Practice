-- The Blunder
-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

SELECT CEIL(AVG(Salary) - AVG(REPLACE(SALARY, '0', ''))) FROM EMPLOYEES;