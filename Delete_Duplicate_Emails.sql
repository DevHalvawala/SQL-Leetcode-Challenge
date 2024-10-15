-- SOLUTION --
-- QUESTION --

WRITE A SOLUTION TO DELETE ALL DUPLICATE EMAILS, KEEPING ONLY ONE UNIQUE EMAIL WITH THE SMALLEST ID.
FOR SQL USERS, PLEASE NOTE THAT YOU ARE SUPPOSED TO WRITE A DELETE STATEMENT AND NOT A SELECT ONE.
FOR PANDAS USERS, PLEASE NOTE THAT YOU ARE SUPPOSED TO MODIFY PERSON IN PLACE.
AFTER RUNNING YOUR SCRIPT, THE ANSWER SHOWN IS THE PERSON TABLE. THE DRIVER WILL FIRST COMPILE AND RUN YOUR PIECE OF CODE AND THEN SHOW THE PERSON TABLE. THE FINAL ORDER OF THE PERSON TABLE DOES NOT MATTER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
Explanation: john@example.com is repeated two times. We keep the row with the smallest Id = 1.