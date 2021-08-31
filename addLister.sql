use database_design;

CREATE TABLE user (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        user_name VARCHAR(150) NOT NULL,
                        email VARCHAR(150) NOT NULL,
                        password VARCHAR(150) NOT NULL,
                        PRIMARY KEY (id)
);

drop table if exists category;

CREATE TABLE ad (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      ad_title VARCHAR(150) NOT NULL,
                      ad_description VARCHAR(150) NOT NULL,
                      category VARCHAR(150) NOT NULL,
                      PRIMARY KEY (id),
                      FOREIGN KEY (id) REFERENCES user(id)
);

CREATE TABLE category (
                          id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         help_wanted VARCHAR(150) NOT NULL,
                         giveaway VARCHAR(150) NOT NULL,
                         furniture VARCHAR(150) NOT NULL,
                         small_businesses VARCHAR(150) NOT NULL,
                         large_businesses VARCHAR(150) NOT NULL,
                          PRIMARY KEY (id)
);

create table ad_category (
        category_id INTEGER UNSIGNED NOT NULL,
        ad_id INTEGER UNSIGNED NOT NULL,
        FOREIGN KEY (category_id) REFERENCES category(id),
        FOREIGN KEY (ad_id) REFERENCES ad(id)
);


select user.email, ad.id, ad.ad_title
from user
         INNER JOIN ad
             ON user.id=ad.id;

select ad.ad_title, ad.id, ad_category.category_id
from ad
         INNER JOIN ad_category
                    ON ad.id=ad_category.category_id;

select category.id
from category
inner join ad
on ad.id=category.id;

select user.user_name, ad_title
from user
         inner join ad
                    on ad.id=user.id;







