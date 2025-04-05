SELECT id, first_name, last_name, age, email, created_at, dni_number FROM users
LEFT JOIN document
ON users.id = document.user_id;