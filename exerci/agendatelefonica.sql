CREATE TABLE pessoas (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE telefones (
    id INTEGER PRIMARY KEY,
    pessoa_id INTEGER,
    numero VARCHAR(15) NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

INSERT INTO pessoas (id, nome) VALUES (1,'Diogo');
INSERT INTO telefones (id, pessoa_id, numero) VALUES (1,1,'(21) 98765-4321');

UPDATE pessoas SET id = 2 WHERE nome = 'Diogo';
DELETE FROM pessoas WHERE nome = 'Diogo';

SELECT FROM telefones;

SELECT * FROM pessoas;
