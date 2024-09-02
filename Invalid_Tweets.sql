-- SOLUTION

SELECT
    TWEET_ID
FROM
    TWEETS
WHERE
    CHAR_LENGTH(CONTENT) > 15;

-- QUESTION

WRITE A SOLUTION TO FIND THE IDS OF THE INVALID TWEETS. THE TWEET IS INVALID IF THE NUMBER OF CHARACTERS USED IN THE CONTENT OF THE TWEET IS STRICTLY GREATER THAN 15.
RETURN THE RESULT TABLE IN ANY ORDER.
THE RESULT FORMAT IS IN THE FOLLOWING EXAMPLE.
EXAMPLE 1:



Input: 
Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+
Output: 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
Explanation: 
Tweet 1 has length = 14. It is a valid tweet.
Tweet 2 has length = 32. It is an invalid tweet.