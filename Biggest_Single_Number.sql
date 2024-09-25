-- SOLUTION --

SELECT
    MAX(NUM) AS NUM
FROM
    (
        SELECT
            NUM
        FROM
            MYNUMBERS
        GROUP BY
            NUM
        HAVING
            COUNT(NUM)=1
    ) AS A

    
-- QUESTION --

A single number is a number that appeared only once in the MyNumbers table.

FIND THE LARGEST SINGLE NUMBER. IF THERE IS NO SINGLE NUMBER, REPORT NULL.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |
+-----+
Output: 
+-----+
| num |
+-----+
| 6   |
+-----+
Explanation: The single numbers are 1, 4, 5, and 6.
Since 6 is the largest single number, we return it.