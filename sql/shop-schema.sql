DROP DATABASE IF EXISTS DiscoStu;
CREATE DATABASE DiscoStu;
USE DiscoStu;
CREATE TABLE CDs (
  Autor VARCHAR(255) NOT NULL,
  Disco VARCHAR(255) NOT NULL,
  Pais VARCHAR(255) NOT NULL,
  Precio FLOAT NOT NULL
);

INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('Juan Antonio Canta','Las aventuras de Juan Antonio Canta', 'España' ,4.95);
INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('El Chivi','Me llaman radical','España',4.95);
INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('Flower Power','Hippyjanders','USA',6.95);
INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('Tenacious D','The Pick of Destiny','USA',9.95);
INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('Lucas Grijander','El trastofono','España',4.95);
INSERT INTO CDs(Autor,Disco,Pais,Precio) VALUES('Darth Vader','Fathers Day','DeathStar',20.95);


CREATE TABLE Registro (
  id INTEGER NOT NULL AUTO_INCREMENT,
  Cantidad INTEGER NOT NULL,
  Total FLOAT NOT NULL,
  Primary Key (id)
);