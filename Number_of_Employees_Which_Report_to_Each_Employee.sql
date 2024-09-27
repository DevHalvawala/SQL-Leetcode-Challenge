-- SOLUTION --

SELECT
    M.EMPLOYEE_ID,
    M.NAME,
    COUNT(E.EMPLOYEE_ID) AS REPORTS_COUNT,
    ROUND(AVG(E.AGE))    AS AVERAGE_AGE
FROM
    EMPLOYEES E
    JOIN EMPLOYEES M
    ON E.REPORTS_TO = M.EMPLOYEE_ID
GROUP BY
    EMPLOYEE_ID
ORDER BY
    EMPLOYEE_ID

    
-- QUESTION --

WRITE A SOLUTION TO REPORT THE IDS AND THE NAMES OF ALL MANAGERS, THE NUMBER OF EMPLOYEES WHO REPORT DIRECTLY TO THEM, AND THE AVERAGE AGE OF THE REPORTS ROUNDED TO THE NEAREST INTEGER.
RETURN THE RESULT TABLE ORDERED BY EMPLOYEE_ID.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Employees table:
+-------------+---------+------------+-----+
| employee_id | name    | reports_to | age |
+-------------+---------+------------+-----+
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |
+-------------+---------+------------+-----+
Output: 
+-------------+-------+---------------+-------------+
| employee_id | name  | reports_count | average_age |
+-------------+-------+---------------+-------------+
| 9           | Hercy | 2             | 39          |
+-------------+-------+---------------+-------------+
Explanation: Hercy has 2 people report directly to him, Alice and Bob. Their average age is (41+36)/2 = 38.5, which is 39 after rounding it to the nearest integer.