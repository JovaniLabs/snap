--The app needs to rank a user’s “best friends,” similar to Snapchat’s “Friend Emojis” feature.
--Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently.
--Order the user IDs by the number of messages creativewisdom377 has sent to those users, most to least.

--Ensure your query uses the search_messages_by_from_user_id index, which is defined as follows:

--CREATE INDEX "search_messages_by_from_user_id"
--ON "messages"("from_user_id");

--select "to_user_id" from table messages use alias "m"
-- and use "m"."to_user_id" as alias "top_3
SELECT
    "m"."to_user_id" AS "top_3"

--from messages table use alias "m"
FROM
    "messages" "m"

--join messages and users table of "from_user_id" and "id"
INNER JOIN
    "users" "u" ON "m"."from_user_id" = "u"."id"

--filter for only 'creativewisdom377'
WHERE
    "u"."username" = 'creativewisdom377'

--group all messages that are being sent to 'creativewisdom377' user id
GROUP BY
    "m"."to_user_id"

--count messages sent then order from most to least sent messages
ORDER BY
    COUNT("m_sent") DESC
LIMIT 3
;
