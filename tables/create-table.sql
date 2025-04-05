CREATE TABLE users(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(25) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id),
    CHECK(age > 18)
)

INSERT INTO users(first_name, last_name, age, email)
VALUES
('pedro', 'perez', 34, 'pedro@gmail.com'),
('juan', 'perez', 35, 'juan@gmail.com'),
('maria', 'perez', 36, 'maria@gmail.com');
