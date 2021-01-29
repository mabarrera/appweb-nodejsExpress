CREATE DATABASE database_links;

USE database_links;

CREATE TABLES user(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);


ALTER TABLE user
    ADD PRIMARY KEY(id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT;

DESCRIBE user;


CREATE TABLE links(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);
