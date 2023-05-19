--Создание таблицы movie_countries
CREATE TABLE movie_countries (
  PRIMARY KEY(movie_id, country_id),
  movie_id INT,
  country_id INT, 
  FOREIGN KEY (movie_id) REFERENCES movies(id),
  FOREIGN KEY (country_id) REFERENCES countries(id)
);
