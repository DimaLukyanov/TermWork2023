--Создание таблицы movie_directors
CREATE TABLE movie_directors (
  PRIMARY KEY(movie_id, director_id),
  movie_id INT,
  director_id INT, 
  FOREIGN KEY (movie_id) REFERENCES movies(id),
  FOREIGN KEY (director_id) REFERENCES directors(id)
);
