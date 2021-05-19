CREATE TABLE users
    (id int AUTO_INCREMENT PRIMARY KEY,
     username varchar(200) UNIQUE NOT NULL,
     created_at TIMESTAMP DEFAULT Now()
    );
    
    
CREATE TABLE photos
    (id int AUTO_INCREMENT PRIMARY KEY,
     images_url varchar(200) NOT NULL,
     user_id int NOT NULL,
     created_at timestamp DEFAULT NOW(),
     FOREIGN KEY (user_id) REFERENCES users(id)
    );
    
CREATE TABLE comments
    (id int AUTO_INCREMENT PRIMARY KEY,
     commetn_txt varchar(200) NOT NULL,
     photo_id int NOT NULL,
     user_id int NOT NULL,
     created_at timestamp DEFAULT NOW(),
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     FOREIGN KEY(user_id) REFERENCES users(id)
    );
    
    
CREATE TABLE likes
    (user_id int NOT NULL,
     photo_id int NOT NULL,
     created_at timestamp DEFAULT NOW(),
     FOREIGN KEY(user_id) REFERENCES users(id),
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     PRIMARY KEY(user_id, photo_id)
    );
    

CREATE TABLE tags
    (id int AUTO_INCREMENT PRIMARY KEY,
     tag_name varchar(200) UNIQUE,
     created_at timestamp DEFAULT NOW()
    );

CREATE TABLE photo_tags
    (photo_id int NOT NULL,
     tag_id int NOT NULL,
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     FOREIGN KEY(tag_id) REFERENCES tags(id),
     PRIMARY KEY(photo_id,tag_id)
    );