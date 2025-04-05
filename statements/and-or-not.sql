SELECT * FROM users WHERE email NOT LIKE 'inaki@gmail.com';

SELECT * FROM users WHERE NOT email = 'inaki@gmail.com';

SELECT * FROM users WHERE email LIKE '%gmail%' AND age < 20;

SELECT * FROM users WHERE email LIKE '%gmail%' OR age < 20;
