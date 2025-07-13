-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

-- without CTE
SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property WP
ON W.CODE = WP.CODE
WHERE is_evil = 0 AND w.coins_needed = (SELECT MIN(W1.coins_needed)
                                        FROM Wands W1 
                                        JOIN Wands_Property WP1
                                         ON W1.CODE = WP1.CODE
                                        WHERE WP1.age = WP.age 
                                        AND W1.power = W.power
                                       )
ORDER BY power DESC, age DESC;


-- with CTE
WITH CTE AS (
    SELECT W.id, WP.age, W.coins_needed, W.power,
    ROW_NUMBER()Over(PARTITION BY WP.age,W.power ORDER BY W.coins_needed) rn
FROM Wands W
JOIN Wands_Property WP
ON W.CODE = WP.CODE
WHERE is_evil = 0)

SELECT id, age, coins_needed, power from CTE
where rn =1
ORDER BY power DESC, age DESC;