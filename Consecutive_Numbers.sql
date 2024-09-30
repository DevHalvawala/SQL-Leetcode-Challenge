-- SOLUTION --

SELECT
    DISTINCT NUM AS CONSECUTIVENUMS
FROM
    LOGS
WHERE
    (ID + 1, NUM) IN (
        SELECT
            *
        FROM
            LOGS
    )
    AND (ID + 2, NUM) IN (
        SELECT
            *
        FROM
            LOGS
    )

    
-- QUESTION --

FIND ALL NUMBERS THAT APPEAR AT LEAST THREE TIMES CONSECUTIVELY.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.