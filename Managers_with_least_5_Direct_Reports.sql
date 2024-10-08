-- SOLUTION --

SELECT
    A.NAME
FROM
    EMPLOYEE A
    JOIN EMPLOYEE B
    ON A.ID = B.MANAGERID
GROUP BY
    B.MANAGERID
HAVING
    COUNT(*) >= 5

-- QUESTION --

WRITE A SOLUTION TO FIND MANAGERS WITH AT LEAST FIVE DIRECT REPORTS.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+