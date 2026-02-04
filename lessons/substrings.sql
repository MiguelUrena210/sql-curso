SELECT
	*
FROM
	users;

SELECT
	name,
	substring(name, 0, POSITION(' ' IN name)) AS "First_Name",
	substring(name, POSITION(' ' IN name) + 1) AS "Last_Name"
FROM
	users;

UPDATE users
SET
	first_name = substring(name, 0, POSITION(' ' IN name)),
	last_name = substring(name, POSITION(' ' IN name) + 1);