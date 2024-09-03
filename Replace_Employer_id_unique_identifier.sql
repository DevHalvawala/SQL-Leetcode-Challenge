-- SOLUTION --
SELECT
    U.UNIQUE_ID,
    E.NAME
FROM
    EMPLOYEES   E
    LEFT JOIN EMPLOYEEUNI U
    ON E.ID =U.ID

-- QUESTION --

WRITE A SOLUTION TO SHOW THE UNIQUE ID OF EACH USER, IF A USER DOES NOT HAVE A UNIQUE ID REPLACE JUST SHOW NULL.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+
EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+
Output: 
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+