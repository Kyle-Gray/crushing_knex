-- INSERT INTO publishers (name) VALUES ('');
--
-- INSERT INTO series (name, overview, genre) VALUES ('', '', '');
--
-- INSERT INTO issues (name, cover_img, plot, issue_num) VALUES ('', '', '', '');
--
-- INSERT INTO writers (name) VALUES ('');
--
-- INSERT INTO artists (name) VALUES ('');


PREPARE insertPub (text) AS
  INSERT INTO publishers (name) VALUES($1);

EXECUTE insertPub('Marvel');
EXECUTE insertPub('DC');
EXECUTE insertPub('Image');
EXECUTE insertPub ('IDW');

PREPARE insertSeries (numeric, text, text, numeric, text) AS
  INSERT INTO series (pub_id, name, genre, year,  overview) VALUES ($1, $2, $3, $4, $5);

EXECUTE insertSeries ('');
EXECUTE insertSeries ('');
EXECUTE insertSeries ('');
EXECUTE insertSeries ('');
EXECUTE insertSeries ('');

PREPARE insertIssues (numeric, numeric, text, text, text) AS INSERT INTO issues (series_id, issue_num, name, cover_img) VALUES ($1, $2, $3, $4);

EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');

PREPARE insertWriters (numeric, text) AS
  INSERT INTO writers (plot_id, name) VALUES ($1, $2);

  EXECUTE insertWriters('');


PREPARE insertArtists(numeric, text, text) AS
  INSERT INTO artists (issue_id, name, type) VALUES ($1, $2, $3);

  EXECUTE insertArtists ('');



PREPARE insertPlots(numeric, text) AS
  INSERT INTO plots (issue_id, plot) VALUES ($1, $2);

EXECUTE insertPlots ('');
