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

CREATE TABLE reservas (
    id_reserva SERIAL PRIMARY KEY,
    id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    data_reserva DATE NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede),
    FOREIGN KEY (id_quarto) REFERENCES quartos (id_quarto)
);

SELECT * FROM reservas;

INSERT INTO hospedes (nome, sexo, idade, email, telefone) VALUES
('Bernardo', 'Masculino', 19, 'bernardo@gmail.com', '(19) 99367-1234'),
('Maria', 'Feminino', 34, 'maria@gmail.com', '(19) 99234-9872'),
('João', 'Masculino', 25, 'joao@gmail.com', '(19) 99723-9653'),
('Eduardo', 'Masculino', 20, 'eduardo@gmail.com', '(19) 99731-1920');

INSERT INTO quartos (numero, suite, reservado) VALUES
(1, TRUE, TRUE),
(2, FALSE, TRUE),
(3, FALSE, TRUE),
(4, TRUE, FALSE;)
(5, FALSE, FALSE)

INSERT INTO reservas (id_hospede, id_quarto, data_reserva, data_inicio, data_fim) VALUES
(1, 1, '2024-08-15', '2024-11-02', NULL),
(2, 2, '2024-10-29', '2024-11-04', NULL),
(3, 3, '2024-05-12', '2024-11-04', NULL),
(4, 4, '2023-09-12', '2024-02-08', '2024-03-10'),




