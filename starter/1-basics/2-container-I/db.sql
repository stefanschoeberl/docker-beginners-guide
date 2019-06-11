CREATE TABLE fhlug (
  id INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL
);

INSERT INTO fhlug (firstName, lastName) VALUES ('Max', 'Mustermann');
INSERT INTO fhlug (firstName, lastName) VALUES ('Otto', 'Normalverbraucher');