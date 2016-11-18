DROP TABLE IF EXISTS writers;
DROP TABLE IF EXISTS plots;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS issues;
DROP TABLE IF EXISTS series;
DROP TABLE IF EXISTS publishers;


CREATE TABLE publishers (
  id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE series (
  id serial PRIMARY KEY,
  pub_id integer NOT NULL REFERENCES publishers (id),
  name text NOT NULL,
  overview text,
  genre text,
  year numeric
);

CREATE TABLE issues (
  id serial PRIMARY KEY,
  series_id integer NOT NULL REFERENCES series(id),
  issue_num numeric NOT NULL,
  cover_img text,
  name text
);


CREATE TABLE artists (
  id serial PRIMARY KEY,
  issue_id integer NOT NULL REFERENCES issues(id),
  name text NOT NULL,
  type text
);

CREATE TABLE plots (
  id serial PRIMARY KEY,
  issue_id integer NOT NULL REFERENCES issues(id),
  plot text
);

CREATE TABLE writers (
  id serial PRIMARY KEY,
  plot_id integer NOT NULL REFERENCES plots(id),
  name text NOT NULL
);
