"Specification"

"In each corresponding .sql file, write a SQL query to implement the features described below. Since speed is of the essence, you’ll need to also ensure your query uses the specified index. The best way to ensure a query is using an index to check the results of EXPLAIN QUERY PLAN.

If feeling unsure how to interpret the output of EXPLAIN QUERY PLAN, see the Advice section for some additional explanation!


1.sql
The app’s user engagement team needs to identify active users. Find all usernames of users who have logged in since 2024-01-01. Ensure your query uses the search_users_by_last_login index, which is defined as follows:

CREATE INDEX "search_users_by_last_login"
ON "users"("last_login_date");


2.sql
Users need to be prevented from re-opening a message that has expired. Find when the message with ID 151 expires. You may use the message’s ID directly in your query.

Ensure your query uses the index automatically created on the primary key column of the messages table.


3.sql
The app needs to rank a user’s “best friends,” similar to Snapchat’s “Friend Emojis” feature. Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently. Order the user IDs by the number of messages creativewisdom377 has sent to those users, most to least.

Ensure your query uses the search_messages_by_from_user_id index, which is defined as follows:

CREATE INDEX "search_messages_by_from_user_id"
ON "messages"("from_user_id");


4.sql
The app needs to send users a summary of their engagement. Find the username of the most popular user, defined as the user who has had the most messages sent to them.

Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:

CREATE INDEX "search_messages_by_to_user_id"
ON "messages"("to_user_id");


5.sql
For any two users, the app needs to quickly show a list of the friends they have in common. Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends. A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends.

Ensure your query uses the index automatically created on primary key columns of the friends table. This index is called sqlite_autoindex_friends_1.

Need a hint?


Advice
Use EXPLAIN QUERY PLAN to show a query's steps
Interpret the results of EXPLAIN QUERY PLAN
"
