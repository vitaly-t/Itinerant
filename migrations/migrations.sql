-- These migrations are to be performed manually using
 -- the psql console

DROP DATABASE IF EXISTS itinerant;
CREATE DATABASE itinerant;

\c itinerant

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE trips (
  id SERIAL PRIMARY KEY,
  body VARCHAR NOT NULL,
  user_id INTEGER REFERENCES users (id)
);
