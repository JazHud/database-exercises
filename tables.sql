USE codeup_test_db;

DROP TABLE IF EXISTS users;
--  TABLE CALLED USERS VVVV
CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(35) NOT NULL, -- colum named first_name with its own SQL data types VARCHAR(35) meaning text up to 35 charters
    last_name VARCHAR(65) NOT NULL,
    PRIMARY KEY (user_id)
);
