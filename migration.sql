DROP TABLE publishers IF EXISTS;
DROP TABLE series IF EXISTS;
DROP TABLE issues IF EXISTS;
DROP TABLE writers IF EXISTS;
DROP TABLE artists IF EXISTS;



CREATE TABLE publishers (
  id serial PRIMARY KEY,
  name text
);

CREATE TABLE series (
  id serial PRIMARY KEY,
  pub_id numeric REFERENCES publishers (id),
  name text,
  overview text,
  genre text
);

CREATE TABLE issues (
  id serial PRIMARY KEY,
  series_id numeric REFERENCES series (id),
  name text,
  cover_img text,
  plot text,
  issue_num numeric
);

CREATE TABLE writers (
  id serial PRIMARY KEY,
  name text,
  issue_id numeric REFERENCES issues (id)
);

CREATE TABLE artists (
  id serial PRIMARY KEY,
  name text,
  issue_id numeric REFERENCES issues (id)
);
