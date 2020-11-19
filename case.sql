--se crea la db
CREATE DATABASE caseNew;
--ingresamos a la db \c casenew

--creamos la tabla editorial
CREATE TABLE editorial(
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);
--creamos la tabla libro
CREATE TABLE libro(
    id INT PRIMARY KEY,
    titulo VARCHAR (150),
    editorial INT,
    FOREIGN KEY (editorial) REFERENCES editorial(id)
);

--creamos la tabla autor
CREATE TABLE autor(
    id INT PRIMARY KEY,
    nombre VARCHAR (150)
);

--creamos la tabla lector
CREATE TABLE lector(
    id INT PRIMARY KEY,
    nombre VARCHAR(150)
);

--creamos la tabla relacion libro_autor
CREATE TABLE libro_autor (
    id INT PRIMARY KEY,
    codigo_libro INT,
    id_autor INT,
    FOREIGN KEY (codigo_libro) REFERENCES libro(id), 
    FOREIGN KEY (id_autor) REFERENCES autor(id)
);

--creamos la tabla relacion prueba_alumno
CREATE TABLE libro_lector (
    id INT PRIMARY KEY,
    id_libro INT,
    id_lector INT,
    fecha_dev DATE,
    FOREIGN KEY (id_libro) REFERENCES libro(id), 
    FOREIGN KEY (id_lector) REFERENCES lector(id)
);

--insertamos valores en la tabla editorial
INSERT INTO editorial (id, nombre)
VALUES (1,'UTHEA');
INSERT INTO editorial (id, nombre)
VALUES (2,'Reverté');
INSERT INTO editorial (id, nombre)
VALUES (3,'McGraw-Hill');
INSERT INTO editorial (id, nombre)
VALUES (4,'MIR');

--insertamos valores en la tabla libro
INSERT INTO libro(  id , titulo , editorial )
VALUES (515,'Ecuaciones diferenciales para ingenieros y científicos',1);
INSERT INTO libro(  id , titulo , editorial )
VALUES (540,'Química',2);
INSERT INTO libro(  id , titulo , editorial )
VALUES (530,'Física',3);
INSERT INTO libro(  id , titulo , editorial )
VALUES (519,'Estadística',3);
INSERT INTO libro(  id , titulo , editorial )
VALUES (512,'Algebra Lineal',4);

--insertamos valores en la tabla autor
INSERT INTO autor(  id , nombre)
VALUES (1,'Lambe C.G');
INSERT INTO autor(  id , nombre)
VALUES (2,'Tranter C.J');
INSERT INTO autor(  id , nombre)
VALUES (3,'Christen');
INSERT INTO autor(  id , nombre)
VALUES (4,'Hans Rudolf');
INSERT INTO autor(  id , nombre)
VALUES (5,'Serway');
INSERT INTO autor(  id , nombre)
VALUES (6,'Raymond A');
INSERT INTO autor(  id , nombre)
VALUES (7,'Murray Spiegel');
INSERT INTO autor(  id , nombre)
VALUES (8,'Voevodin');
INSERT INTO autor(  id , nombre)
VALUES (9,'Valentín V');

--insertamos valores en la tabla lector
INSERT INTO lector(  id , nombre)
VALUES (1,'Pérez');
INSERT INTO lector( id , nombre)
VALUES (2,'Gómez');
INSERT INTO lector( id , nombre)
VALUES (3,'Juan');
INSERT INTO lector( id , nombre)
VALUES (4,'Ortega');
INSERT INTO lector( id , nombre)
VALUES (5,'Pereira');
INSERT INTO lector( id , nombre)
VALUES (6,'Margarita');
INSERT INTO lector( id , nombre)
VALUES (7,'García');
INSERT INTO lector( id , nombre)
VALUES (8,'Contreras');
INSERT INTO lector( id , nombre)
VALUES (9,'Rosa');
INSERT INTO lector( id , nombre)
VALUES (10,'López');
INSERT INTO lector( id , nombre)
VALUES (11,'Molina');
INSERT INTO lector( id , nombre)
VALUES (12,'Ana');

--insertamos valores en la tabla-relacion libro_autor
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (1,515,1);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (2,515,2);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (3,540,3);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (4,540,4);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (5,530,5);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (6,530,6);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (7,519,7);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (8,512,8);
INSERT INTO libro_autor(  id , codigo_libro, id_autor)
VALUES (9,512,9);

--insertamos valores en la tabla-relacion libro_lector
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (1,515,1,'2019-09-15');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (2,515,2,'2019-09-15');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (3,515,3,'2019-09-15');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (4,540,4,'2019-08-23');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (5,540,5,'2019-08-23');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (6,540,6,'2019-08-23');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (7,530,7,'2019-09-24');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (8,530,8,'2019-09-24');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (9,530,9,'2019-09-24');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (10,519,10,'2019-09-18');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (11,519,11,'2019-09-18');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (12,519,12,'2019-09-18');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (13,512,1,'2019-09-17');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (14,512,2,'2019-09-17');
INSERT INTO libro_lector( id, id_libro, id_lector, fecha_dev )
VALUES (15,512,3,'2019-09-17');