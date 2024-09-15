-- SOLUTION --

SELECT
    CONTEST_ID,
    ROUND(COUNT(1) * 100 / (
        SELECT
            COUNT(1)
        FROM
            USERS
    ), 2) AS PERCENTAGE
FROM
    REGISTER
GROUP BY
    1
ORDER BY
    2 DESC,
    1;

    
-- QUESTION --

WRITE A SOLUTION TO FIND THE PERCENTAGE OF THE USERS REGISTERED IN EACH CONTEST ROUNDED TO TWO DECIMALS.
RETURN THE RESULT TABLE ORDERED BY PERCENTAGE IN DESCENDING ORDER. IN CASE OF A TIE, ORDER IT BY CONTEST_ID IN ASCENDING ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Users table:
+---------+-----------+
| user_id | user_name |
+---------+-----------+
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |
+---------+-----------+
Register table:
+------------+---------+
| contest_id | user_id |
+------------+---------+
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |
+------------+---------+
Output: 
+------------+------------+
| contest_id | percentage |
+------------+------------+
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |
+------------+------------+
Explanation: 
All the users registered in contests 208, 209, and 210. The percentage is 100% and we sort them in the answer table by contest_id in ascending order.
Alice and Alex registered in contest 215 and the percentage is ((2/3) * 100) = 66.67%
Bob registered in contest 207 and the percentage is ((1/3) * 100) = 33.33%