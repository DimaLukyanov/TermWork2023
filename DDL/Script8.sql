--Создание таблицы movie_directors
CREATE TABLE movie_directors (
  PRIMARY KEY(movie_id, director_id),
  movie_id INTEGER REFERENCES movies(id),
  director_id INTEGER REFERENCES directors(id)
);
