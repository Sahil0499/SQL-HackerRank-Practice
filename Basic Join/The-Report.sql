-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

SELECT CASE
        WHEN G.GRADE > 7 THEN S.NAME
        ELSE NULL
        END AS NAMES, G.GRADE, S.MARKS
FROM Students S
INNER JOIN Grades G
ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC, NAMES, S.MARKS;