-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

SELECT N, CASE
           WHEN P IS null THEN 'Root'
           WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT null) THEN 'Leaf' 
           ELSE 'Inner'
           END
FROM BST
ORDER BY N;