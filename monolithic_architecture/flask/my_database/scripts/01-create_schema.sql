USE my_system_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(80) NOT NULL,
    firstname VARCHAR(150),
    lastname VARCHAR(150),
    usersecret VARCHAR(512),
    isactivate BOOLEAN,
    PRIMARY KEY (id)
);