-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

SELECT 
   C.company_code,
   MIN(founder),
   COUNT(DISTINCT lead_manager_code),
   COUNT(DISTINCT senior_manager_code),
   COUNT(DISTINCT manager_code),
   COUNT(DISTINCT employee_code)
FROM COMPANY C
LEFT JOIN Employee E
ON C.company_code = E.company_code
GROUP BY C.company_code
ORDER BY C.company_code;