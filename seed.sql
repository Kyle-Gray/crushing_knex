PREPARE insertPub (text) AS
  INSERT INTO publishers (name) VALUES($1);

EXECUTE insertPub('Marvel');
EXECUTE insertPub('DC');
EXECUTE insertPub('Image');
EXECUTE insertPub ('IDW');

PREPARE insertSeries (integer, text, text, text, numeric) AS
  INSERT INTO series (pub_id, name, genre, overview, year) VALUES ($1, $2, $3, $4, $5);

EXECUTE insertSeries ('2', 'Hellblazer', 'Horror', 'Crass occult detective makes hard choices.', 1988);
EXECUTE insertSeries ('4', 'Locke & Key', 'Horror', 'This house is haunted.', 2008);
EXECUTE insertSeries ('1', 'The Superior Spider-Man', 'Superhero', 'Doc Ock has taken over the body of Peter Parker.', 2013);
EXECUTE insertSeries ('2', 'American Vampire', 'Horror', 'Proper vampire stories. No sparkles.', 2010);
EXECUTE insertSeries ('3', 'Nailbiter', 'Horror', 'Buckaroo, Oregon has given birth to sixteen of the vilest serial killers in the world.', 2014);

PREPARE insertIssues (integer, numeric, text, text, text) AS INSERT INTO issues (series_id, issue_num, name, cover_img) VALUES ($1, $2, $3, $4);

EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');
EXECUTE insertIssues ('');

PREPARE insertWriters (integer, text) AS
  INSERT INTO writers (plot_id, name) VALUES ($1, $2);
  EXECUTE insertWriters('');

PREPARE insertArtists(integer, text, text) AS
  INSERT INTO artists (issue_id, name, type) VALUES ($1, $2, $3);
  EXECUTE insertArtists ('');

PREPARE insertPlots(integer, text) AS
  INSERT INTO plots (issue_id, plot) VALUES ($1, $2);

EXECUTE insertPlots ('');
