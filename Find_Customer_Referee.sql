-- SOLUTION--

SELECT
    NAME
FROM
    CUSTOMER
WHERE
    REFEREE_ID != 2
    OR REFEREE_ID IS NULL

 -----------------------------------   

Table: Customer
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+

In SQL, id is the primary key column for this table.

EACH ROW OF THIS TABLE INDICATES THE ID OF A CUSTOMER, THEIR NAME, AND THE ID OF THE CUSTOMER WHO REFERRED THEM.
FIND THE NAMES OF THE CUSTOMER THAT ARE NOT REFERRED BY THE CUSTOMER WITH ID = 2.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+