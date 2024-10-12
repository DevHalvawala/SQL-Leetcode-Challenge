-- SOLUTION --

SELECT
    USER_ID,
    CONCAT(UPPER(LEFT(NAME, 1)), LCASE(SUBSTRING(NAME, 2))) AS NAME
FROM
    USERS
ORDER BY
    USER_ID;

    
-- QUESTION --

WRITE A SOLUTION TO FIX THE NAMES SO THAT ONLY THE FIRST CHARACTER IS UPPERCASE AND THE REST ARE LOWERCASE.
RETURN THE RESULT TABLE ORDERED BY USER_ID.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
Output: 
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+