CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  release_year INTEGER NOT NULL,
  duration_minutes INTEGER NOT NULL,
  rating DECIMAL(3,1) NOT NULL
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

CREATE TABLE movie_genres (
  PRIMARY KEY(movie_id, genre_id),
  movie_id INTEGER REFERENCES movies(id),
  genre_id INTEGER REFERENCES genres(id)
);

CREATE TABLE movie_countries (
  PRIMARY KEY(movie_id, country_id),
  movie_id INTEGER REFERENCES movies(id),
  country_id INTEGER REFERENCES countries(id)
);

CREATE TABLE movie_directors (
  PRIMARY KEY(movie_id, director_id),
  movie_id INTEGER REFERENCES movies(id),
  director_id INTEGER REFERENCES directors(id)
);

CREATE TABLE movie_actors (
  PRIMARY KEY(movie_id, actor_id),
  movie_id INTEGER REFERENCES movies(id),
  actor_id INTEGER REFERENCES actors(id)
);
