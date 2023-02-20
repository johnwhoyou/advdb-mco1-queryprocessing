CREATE DATABASE ADVDB_MCO1;
USE ADVDB_MCO1;

CREATE TABLE movies (
    movie_id INT NOT NULL,
    movie_name VARCHAR(255) NOT NULL,
    movie_year INT NOT NULL,
    movie_rank FLOAT,
    PRIMARY KEY USING BTREE (movie_id)
);

CREATE TABLE genres (
    movie_id INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE actors (
    actor_id INT NOT NULL,
    movie_id INT NOT NULL,
    actor_role VARCHAR(255) NOT NULL,
    actor_first_name VARCHAR(255),
    actor_last_name VARCHAR(255),
    actor_gender CHAR,
    PRIMARY KEY USING BTREE (actor_id, actor_role, movie_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE directors (
    director_id INT NOT NULL,
    movie_id INT NOT NULL,
    director_first_name VARCHAR(255),
    director_last_name VARCHAR(255),
    director_genre VARCHAR(255),
    director_prob FLOAT,
    PRIMARY KEY USING BTREE (director_id, movie_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);