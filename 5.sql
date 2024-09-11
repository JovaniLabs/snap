--For any two users, the app needs to quickly show a list of the friends they have in common.
--Given two usernames, lovelytrust487 and exceptionalinspiration482,
--find the user IDs of their mutual friends.
--A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends.

--Ensure your query uses the index automatically created on primary key columns of the friends table.
--This index is called sqlite_autoindex_friends_1.

--select the "friend_id" of mutual friends
--from 'friends' table of users 'lovelytrust487' and 'exceptionalinspiration482' as
--"mutual_friends_id"
SELECT
    "f1"."friend_id" AS "mutual_friend_id"

--create alias "f1" for friends" table
FROM
    "friends" "f1"

    --join "friends" table with itself use alias 'f2'
    --find common "friend_id" between 'f1' and 'f2'
INNER JOIN
    "friends" "f2" ON "f1"."friend_id" = "f2"."friend_id"

    --join "users" "u1" table with "friends" "f1" table to retrieve
    --"user_id" information of 'lovelytrust487'
INNER JOIN
    "users" "u1" ON "f1"."user_id" = "u1"."id"

    --join "users" "u2" table with "friends" "f2" table to retrieve
    --"user_id" information of 'exceptionalinspiration482'
INNER JOIN
    "users" "u2" ON "f2"."user_id" = "u2"."id"

    --filter for the correct usernames to find mutual friends
    --of "lovelytrust487" and "exceptionalinspiration482"
WHERE
    "u1"."username" = 'lovelytrust487'
    AND "u2"."username" = 'exceptionalinspiration482'

;
