CREATE TABLE stars (
    name TEXT PRIMARY KEY,
    temp INT);

CREATE TABLE planets (
    name TEXT PRIMARY KEY,
    orbital_period FLOAT,
    star_name TEXT NOT NULL REFERENCES stars);

CREATE TABLE moons (
    name TEXT PRIMARY KEY,
    planet_name TEXT REFERENCES planets
);


INSERT INTO stars
  (name, temp)
  VALUES
    ('The Sun', '5800'),
    ('Proxima Centauri', '3042'),
    ('Gliese', '876');

INSERT INTO planets
  (name, orbital_period, star_name)
  VALUES
    ('Earth', '1.00', 'The Sun'),
    ('Mars', '1.882', 'The Sun'),
    ('Venus', '0.62', 'The Sun'),
    ('Proxima Centauri b', '0.03', 'Proxima Centauri'),
    ('Gliese 876 b', '0.236', 'Gliese 876');

INSERT INTO moons
  (name, planet_name)
  VALUES
    ('The Moon', 'Earth'),
    ('Phobos', 'Mars'),
    ('Deimos', 'Mars');