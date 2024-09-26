-- SOLUTION --

SELECT
    CUSTOMER_ID
FROM
    CUSTOMER
GROUP BY
    CUSTOMER_ID
HAVING
    COUNT(DISTINCT PRODUCT_KEY) = (
        SELECT
            COUNT(PRODUCT_KEY)FROM PRODUCT
    )
    

-- QUESTION --

WRITE A SOLUTION TO REPORT THE CUSTOMER IDS FROM THE CUSTOMER TABLE THAT BOUGHT ALL THE PRODUCTS IN THE PRODUCT TABLE.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Customer table:
+-------------+-------------+
| customer_id | product_key |
+-------------+-------------+
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |
+-------------+-------------+
Product table:
+-------------+
| product_key |
+-------------+
| 5           |
| 6           |
+-------------+
Output: 
+-------------+
| customer_id |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: 
The customers who bought all the products (5 and 6) are customers with IDs 1 and 3.