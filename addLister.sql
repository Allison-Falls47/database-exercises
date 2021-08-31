use database_design;

CREATE TABLE user (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        user_name VARCHAR(150) NOT NULL,
                        email VARCHAR(150) NOT NULL,
                        password VARCHAR(150) NOT NULL,
                        PRIMARY KEY (id)
);
DROP TABLE IF EXISTS user_ad;
CREATE TABLE user_ad (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      ad_title VARCHAR(150) NOT NULL,
                      ad_description VARCHAR(150) NOT NULL,
                      category VARCHAR(150) NOT NULL,
                      PRIMARY KEY (id),
                      FOREIGN KEY (id) REFERENCES user(id)
);

CREATE TABLE category (
                         help_wanted VARCHAR(150) NOT NULL,
                         giveaway VARCHAR(150) NOT NULL,
                         furniture VARCHAR(150) NOT NULL,
                         small_businesses VARCHAR(150) NOT NULL,
                         large_businesses VARCHAR(150) NOT NULL
);





