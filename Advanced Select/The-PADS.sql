-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT concat(Name,'(',Left(Occupation,1),')') AS NewName
FROM Occupations 
ORDER BY NewName;

SELECT concat('There are a total of ', count(occupation),' ', lower(Occupation),'s.') AS O
FROM OCCUPATIONS 
GROUP BY occupation
ORDER BY O