-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM
(SELECT 
       Name, 
       Occupation, 
       ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS NUM 
       FROM OCCUPATIONS)
AS SubQuery
GROUP BY NUM