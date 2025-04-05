// Relation One to One

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

CREATE TABLE document(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    dni_number INT NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id)
    FOREIGN KEY(user_id) REFERENCES users(id)
)


// Relation One to Many

CREATE TABLE users(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(25) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id),
    CHECK(age > 18)
    post_id INT NOT NULL,
    FOREIGN KEY(post_id) REFERENCES posts(id)
)

CREATE TABLE posts(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    title VARCHAR(25) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id)
)


// Relation Many to Many

CREATE TABLE users(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(25) NOT NULL UNIQUE,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id),
)

CREATE TABLE languages(
    id INT NOT NULL UNIQUE AUTO_INCREMENT,
    language VARCHAR(25) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY(id)
)

CREATE TABLE users_languages(
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(language_id) REFERENCES languages(id)
    PRIMARY KEY(user_id, language_id),
    UNIQUE(user_id, language_id)
)