-- SOLUTION --

SELECT
    P.PROJECT_ID,
    ROUND(AVG(E.EXPERIENCE_YEARS),
    2) AS AVERAGE_YEARS
FROM
    PROJECT AS P
    INNER JOIN EMPLOYEE AS E
    ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
GROUP BY
    P.PROJECT_ID;



-- QUESTION --

WRITE AN SQL QUERY THAT REPORTS THE AVERAGE EXPERIENCE YEARS OF ALL THE EMPLOYEES FOR EACH PROJECT, ROUNDED TO 2 DIGITS.
RETURN THE RESULT TABLE IN ANY ORDER.
THE QUERY RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Project table:
+-------------+-------------+
| project_id  | employee_id |
+-------------+-------------+
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |
+-------------+-------------+
Employee table:
+-------------+--------+------------------+
| employee_id | name   | experience_years |
+-------------+--------+------------------+
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
+-------------+--------+------------------+
Output: 
+-------------+---------------+
| project_id  | average_years |
+-------------+---------------+
| 1           | 2.00          |
| 2           | 2.50          |
+-------------+---------------+
Explanation: The average experience years for the first project is (3 + 2 + 1) / 3 = 2.00 and for the second project is (3 + 2) / 2 = 2.50