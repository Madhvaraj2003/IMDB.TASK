CREATE DATABASE imdb;
USE imdb;
Create table Movies(movie_id  INT auto_increment Primary key,
  title varchar(255),
  release_year INT 
  );
   CREATE TABLE Media (
      media_id INt auto_increment primary key, 
      movie_id INT,
      media_type ENUM('video', 'Image'),
      media_url varchar(240),
      foreign key (movie_id) references Movies(movie_id)
      );
    
   CREATE TABLE Genre ( 
        genre_id int auto_increment primary key,
        genre_name varchar(250)
        );
        
   CREATE TABLE Movie_Genre (
        movie_id INT,
        genre_id INT,
        foreign key (movie_id) references Movies(movie_id),
        foreign key (genre_id) references Genre(genre_id),
        Primary key (movie_id, genre_id)
        );
        
	CREATE TABLE Users ( 
        User_id int auto_increment primary key,
        User_name varchar(100)
        );
        
        
     CREATE TABLE Reviews ( 
        review_id int auto_increment primary key,
        movie_id INT,
        User_id INT,
        rating_id INT,
        comment text,
		foreign key (movie_id) references Movies(movie_id),
        foreign key (User_id) references Users(User_id)
);
        
        
    CREATE TABLE Artists ( 
        artist_id int auto_increment primary key,
        artist_name varchar(100)
        );
        
        
        
	CREATE TABLE Skills ( 
        skill_id int auto_increment primary key,
        skill_name varchar(100)
        );
        
	CREATE TABLE Artist_Skills ( 
        artist_id INT,
        skill_id INT,
        foreign key (artist_id) references Artists (artist_id),
        foreign key(skill_id) references Skills(skill_id),
        primary key (artist_id, skill_id)
        );
        
    CREATE TABLE Artist_Movie_Roles (
	    artist_id INT,
        movie_id INT,
        role_name varchar(100),
	    foreign key (artist_id) references Artists (artist_id),
		foreign key (movie_id) references Movies (movie_id),
        primary key (artist_id, movie_id, role_name)
        );
            
    INSERT INTO Movies (title, release_year) Values ('the dark Knight', 2008);
    INSERT INTO  Genre (genre_name) Values ('Action'), ('Sci-fi');
	INSERT INTO Movie_Genre(movie_id, genre_id) Values (1, 1), (1, 2);
	INSERT INTO Media (movie_id, media_type, media_url) Values (1, 'Video', 'video_link_1'),
    (1, 'Image', 'image_link_1');
	INSERT INTO Users (user_name) Values ('harry'), ('james');
	INSERT INTO  Reviews (movie_id, user_id, rating_id, comment) Values (1, 1, 9, 'Great movie!');
    INSERT INTO Artists (artist_name) Values ('Christian Bale');
	INSERT INTO  Skills (Skill_name) Values ('Acting'), ('Director');
	INSERT INTO  Artist_Skills (artist_id, skill_id) Values (1, 1), (1, 2);
    INSERT INTO Artist_Movie_Roles (artist_id, movie_id, role_name) Values (1, 1, 'Hero'), (1, 1, 'Director');
         
         select * from Movies;
		 select * from Media;   
         select * from Genre;
         select * from Artists;
         select * from Skills;
         select * from Artist_Movie_Roles;
         select * from Reviews;
         






    
    
        