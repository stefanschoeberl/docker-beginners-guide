CREATE TABLE person (
  id INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL
);

INSERT INTO person (firstName, lastName) VALUES ('Max', 'Mustermann');
INSERT INTO person (firstName, lastName) VALUES ('Otto', 'Normalverbraucher');