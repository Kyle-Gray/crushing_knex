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

PREPARE insertIssues (integer, numeric, text, text, text) AS INSERT INTO issues (series_id, issue_num, cover_img, name) VALUES ($1, $2, $3, $4);

EXECUTE insertIssues ('1', '1', 'https://en.wikipedia.org/wiki/Hellblazer#/media/File:Hellblazer_1.jpg
');
EXECUTE insertIssues ('2', '1', 'https://en.wikipedia.org/wiki/Locke_%26_Key#/media/File:Joehilllockekey.jpg
');
EXECUTE insertIssues ('3', '1', 'https://en.wikipedia.org/wiki/The_Superior_Spider-Man#/media/File:Superior_Spider-Man_1.jpg
');
EXECUTE insertIssues ('4', '1', 'https://en.wikipedia.org/wiki/American_Vampire#/media/File:American_Vampire_Cover_-1.jpg
');
EXECUTE insertIssues ('5', '1', 'https://en.wikipedia.org/wiki/Nailbiter_(comic)#/media/File:Nailbiter_Image_Comics_issue_1.png
');

PREPARE insertPlots(integer, text) AS
INSERT INTO plots (issue_id, plot) VALUES ($1, $2);

EXECUTE insertPlots ('1', 'This is the beginning of a two-part story that reintroduces Constantine and Emma, both first seen in Swamp Thing, and introduces several supporting Hellblazer characters. It makes explicit references to the events of Swamp Thing issue 37, in which Emma was killed.
');
EXECUTE insertPlots ('2', "In Willits, California, the Locke family are spending their summer. Tyler Locke, the oldest son of Rendell and Nina Locke, is upset that his own summer plans had been cancelled by his father after an argument. The family is soon attacked by Sam Lesser. Sam, under the orders of 'Dodge', demands Rendell turn over the Anywhere Key and the Omega Key. Rendell refuses, and is killed. The Lockes move to Rendell's childhood home, Keyhouse, in Lovecraft, Massachusetts. While exploring the manor, Tyler's youngest sibling, Bode Locke, discovers he can use the Ghost Key to leave his body and become a ghost. Meanwhile, Sam is contacted by Dodge, who promises to help him escape from the detention facility he was taken to after murdering Rendell.
");
EXECUTE insertPlots ('3', "Doctor Octopus with his dying breath has taken over the body of Peter Parker, displacing Peter into Octavius's own dying one, right before the end. Convinced that he can be a 'superior' hero to Peter, Otto takes to the streets to mete out his own brand of justice.
");
EXECUTE insertPlots ('4', "Stephen King -When notorious outlaw Skinner Sweet is attacked by an old enemy (who happens to be a member of the undead), the first American vampire is born... a vampire powered by the sun, stronger, fiercer, and meaner than anything that came before.
");
EXECUTE insertPlots ('4', 'Scott Snyder plot - Pearl Jones is a struggling young actress in 1920s Los Angeles. But when her big break brings her face-to-face with an ancient evil, her Hollywood dream quickly turns into a brutal, shocking nightmare.
');
EXECUTE insertPlots ('5', "Buckaroo, Oregon has given birth to sixteen of the vilest serial killers in the world. An obsessed FBI profiler investigating the town has suddenly gone missing, and now an NSA Agent must work with the notorious serial killer Edward “Nailbiter” Warren to find his friend and solve the mystery of “Where do serial killers come from?”
");

PREPARE insertWriters (integer, text) AS
  INSERT INTO writers (plot_id, name) VALUES ($1, $2);

  EXECUTE insertWriters('1', 'Jamie Delano');
  EXECUTE insertWriters('2', 'Joe Hill');
  EXECUTE insertWriters('3', 'Dan Slott');
  EXECUTE insertWriters('4', 'Stephen King');
  EXECUTE insertWriters('4', 'Scott Snyder');
  EXECUTE insertWriters('5', 'Joshua Williamson');

PREPARE insertArtists(integer, text, text) AS
  INSERT INTO artists (issue_id, name, type) VALUES ($1, $2, $3);

  EXECUTE insertArtists ('1', 'John Ridgeway', 'Story art');
  EXECUTE insertArtists ('1', 'Dave McKean', 'Cover art');
  EXECUTE insertArtists ('2', 'Gabriel Rodriguez', 'Cover art');
  EXECUTE insertArtists ('2', 'Gabriel Rodriguez', 'Story art');
  EXECUTE insertArtists ('3', 'Ryan Stegman', 'Cover art');
  EXECUTE insertArtists ('3', 'Ryan Stegman', 'Story art');
  EXECUTE insertArtists ('3', 'Edgar Delgado', 'Cover art');
  EXECUTE insertArtists ('4', 'Rafael Albuquerque', 'Cover art');
  EXECUTE insertArtists ('4', 'Rafael Albuquerque', 'Story art');
  EXECUTE insertArtists ('5', 'Mike Henderson', 'Cover art');
  EXECUTE insertArtists ('5', 'Mike Henderson', 'Story art');
