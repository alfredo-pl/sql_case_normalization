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
