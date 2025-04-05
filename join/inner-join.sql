SELECT * FROM users
INNER JOIN document
ON users.id = document.user_id

SELECT id, first_name, last_name, age, email, created_at, dni_number FROM users
INNER JOIN document
ON users.id = document.user_id;

SELECT id, first_name, last_name, age, email, created_at, dni_number FROM users
INNER JOIN document
ON users.id = document.user_id;
WHERE id > 1
ORDER BY age DESC

SELECT id, first_name, last_name, age, email, created_at, dni_number 
FROM users
INNER JOIN document
ON users.id = document.user_id;
WHERE id > 1
ORDER BY age DESC
LIMIT 1