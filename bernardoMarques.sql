CREATE DATABABASE reservahotel;

\c reservahotel;

CREATE TABLE hospedes (
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo VARCHAR(15) NOT NULL,
    idade INT NOT NULL CHECK (IDADE > 18),
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
);

SELECT * FROM hospedes;

CREATE TABLE quartos (
    id_quarto SERIAL PRIMARY KEY,
    numero INT NOT NULL,
    suite BOOLEAN NOT NULL,
    reservado BOOLEAN NOT NULL
);

SELECT * FROM quartos;