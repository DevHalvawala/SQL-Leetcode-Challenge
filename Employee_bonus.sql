-- SOLUTION --

SELECT
    B.BONUS,
    E.NAME
FROM
    EMPLOYEE E
    LEFT JOIN BONUS B
    ON B.EMPID = E.EMPID
WHERE
    BONUS < 1000
    OR BONUS IS NULL


-- QUESTION --

WRITE A SOLUTION TO REPORT THE NAME AND BONUS AMOUNT OF EACH EMPLOYEE WITH A BONUS LESS THAN 1000.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Employee table:
+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+
Bonus table:
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
Output: 
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+