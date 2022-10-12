CREATE TABLE athletes (
    id INTEGER,
    name TEXT
);

CREATE TABLE nocs (
    id INTEGER,
    noc TEXT,
    region TEXT
);

CREATE TABLE sports (
    id INTEGER,
    sport TEXT
);

CREATE TABLE events (
    id INTEGER,
    sport_id INTEGER,
    event TEXT
);

CREATE TABLE games (
    id INTEGER,
    year INTEGER,
    season TEXT,
    city TEXT
);

CREATE TABLE results (
    athlete_id INTEGER,
    noc_id INTEGER,
    sport_id INTEGER,
    event_id INTEGER,
    game_id INTEGER,
    medal TEXT
);