SELECT * FROM users WHERE email IS NULL;

SELECT * FROM users WHERE email IS NOT NULL;

SELECT first_name, IFNULL(age, 0) AS age FROM users;
