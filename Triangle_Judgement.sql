-- SOLUTION --

SELECT
    X,
    Y,
    Z,
    CASE
        WHEN(X+Y>Z
        AND Y+Z>X
        AND Z+X>Y) THEN
            'Yes'
        ELSE
            'No'
    END AS TRIANGLE
FROM
    TRIANGLE

    
-- QUESTION --

REPORT FOR EVERY THREE LINE SEGMENTS WHETHER THEY CAN FORM A TRIANGLE.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+