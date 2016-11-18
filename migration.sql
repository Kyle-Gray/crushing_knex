DROP TABLE publishers IF EXISTS;
DROP TABLE series IF EXISTS;
DROP TABLE issues IF EXISTS;
DROP TABLE writers IF EXISTS;
DROP TABLE artists IF EXISTS;
DROP TABLE plots IF EXISTS;


CREATE TABLE publishers (
  id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE series (
  id serial PRIMARY KEY,
  pub_id numeric NOT NULL REFERENCES publishers (id),
  name text NOT NULL,
  overview text,
  genre text,
  year numeric
);

CREATE TABLE issues (
  id serial PRIMARY KEY,
  series_id numeric NOT NULL REFERENCES series(id),
  issue_num numeric NOT NULL,
  name text,
  cover_img text
);

CREATE TABLE writers (
  id serial PRIMARY KEY,
  plot_id numeric NOT NULL REFERENCES plots(id),
  name text NOT NULL
);

CREATE TABLE artists (
  id serial PRIMARY KEY,
  issue_id numeric NOT NULL REFERENCES issues(id),
  name text NOT NULL,
  type text
);

CREATE TABLE plots (
  id serial PRIMARY KEY,
  issue_id numeric NOT NULL REFERENCES,
  plot text
);
