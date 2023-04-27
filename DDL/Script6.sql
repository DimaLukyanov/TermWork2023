--Создание таблицы movie_genres
CREATE TABLE movie_genres (
  PRIMARY KEY(movie_id, genre_id),
  movie_id INTEGER REFERENCES movies(id),
  genre_id INTEGER REFERENCES genres(id)
);
