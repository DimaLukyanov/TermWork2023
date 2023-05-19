--Создание таблицы movies
CREATE TABLE movies (
  id INT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  release_year INTEGER NOT NULL,
  duration_minutes INTEGER NOT NULL,
  rating DECIMAL(3,1) NOT NULL
);
