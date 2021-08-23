USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(150) NOT NULL,
                        name  VARCHAR(250) NOT NULL,
                        release_date YEAR,
                        sales FLOAT,
                        genre VARCHAR(100),
                        PRIMARY KEY (id)
);

describe albums;