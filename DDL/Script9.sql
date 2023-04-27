--Создание таблицы movie_actors
CREATE TABLE movie_actors (
  PRIMARY KEY(movie_id, actor_id),
  movie_id INTEGER REFERENCES movies(id),
  actor_id INTEGER REFERENCES actors(id)
);
