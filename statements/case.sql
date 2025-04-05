SELECT first_name, age,
CASE
    WHEN age > 18 THEN 'Adult'
    ELSE 'Child'
END AS age_group
FROM users;