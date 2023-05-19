--Создание таблицы movie_genres
CREATE TABLE movie_genres (
  PRIMARY KEY(movie_id, genre_id),
  movie_id INT,
  genre_id INT, 
  FOREIGN KEY (movie_id) REFERENCES movies(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);
