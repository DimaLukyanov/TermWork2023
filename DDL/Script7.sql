--Создание таблицы movie_countries
CREATE TABLE movie_countries (
  PRIMARY KEY(movie_id, country_id),
  movie_id INTEGER REFERENCES movies(id),
  country_id INTEGER REFERENCES countries(id)
);
