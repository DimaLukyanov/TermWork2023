--Создание таблицы movie_actors
CREATE TABLE movie_actors (
  PRIMARY KEY(movie_id, actor_id),
  movie_id INT,
  actor_id INT, 
  FOREIGN KEY (movie_id) REFERENCES movies(id),
  FOREIGN KEY (actor_id) REFERENCES actors(id)
);
