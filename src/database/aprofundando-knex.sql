-- Active: 1681344616668@@127.0.0.1@3306
-- Tabelas já foram criadas
CREATE TABLE bands (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE songs (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    bandId TEXT NOT NULL,
    FOREIGN KEY (bandId) REFERENCES bands (id)
);

-- Bandas já foram inseridas
INSERT INTO bands (id, name)
VALUES
    ('b001', 'Evanescence'),
    ('b002', 'LS Jack'),
    ('b003', 'Blink-182');

-- Músicas já foram inseridas
INSERT INTO songs (id, name, bandId)
VALUES
    ('s001', 'Bring me to life', 'b001'),
    ('s002', 'Carla', 'b002'),
    ('s003', 'Uma carta', 'b002'),
    ('s004', 'All the small things', 'b003'),
    ('s005', 'I miss you', 'b003');

SELECT * FROM songs;
SELECT * FROM bands;
drop table songs;