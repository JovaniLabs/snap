--The app needs to send users a summary of their engagement.
--Find the username of the most popular user, defined as the user who has had the most messages sent to them.

--Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:

--CREATE INDEX "search_messages_by_to_user_id"
--ON "messages"("to_user_id");


SELECT
    "u"."username" AS "most_popular"

FROM
    "users" "u"

INNER JOIN
    "messages" "m" ON "u"."id" = "m"."to_user_id"

GROUP BY
    "m"."to_user_id"

ORDER BY
    COUNT("m"."to_user_id") DESC

LIMIT 1
;


