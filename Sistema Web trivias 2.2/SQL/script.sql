CREATE TABLE Alternativa (
       Id_Alternativa       INTEGER NOT NULL auto_increment PRIMARY KEY,
       Nombre               VARCHAR(200) NULL,
       Status               VARCHAR(20) NULL
);




CREATE TABLE Alumno (
       Id_Alumno            INTEGER NOT NULL auto_increment PRIMARY KEY,
       Nombre               VARCHAR(200) NULL,
       Correo               VARCHAR(200) NULL,
       Nivel                VARCHAR(20) NULL
);





CREATE TABLE Alumno_Trivia (
       Id_trivia            INTEGER NOT NULL ,
       Id_Alumno            INTEGER NOT NULL
);


ALTER TABLE Alumno_Trivia
       ADD  ( PRIMARY KEY (Id_trivia, Id_Alumno) ) ;


CREATE TABLE Categoria (      
       Nombre_Categoria     VARCHAR(200) NULL PRIMARY KEY
);





CREATE TABLE Pregunta (
       Id_Pregunta          INTEGER NOT NULL auto_increment PRIMARY KEY,
       Titulo               VARCHAR(200) NULL,
       Question             VARCHAR(200) NULL,
       Descripcion          VARCHAR(300) NULL
);




CREATE TABLE Pregunta_Alternativa (
       Id_Pregunta          INTEGER NOT NULL,
       Id_Alternativa       INTEGER NOT NULL
);


ALTER TABLE Pregunta_Alternativa
       ADD  ( PRIMARY KEY (Id_Pregunta, Id_Alternativa) ) ;


CREATE TABLE Trivia (
       Id_trivia            INTEGER NOT NULL auto_increment PRIMARY KEY,
       Nombre               VARCHAR(200) NULL,
       Descripcion          VARCHAR(300) NULL,
       FechaDeCreacion      VARCHAR(20) NULL,
       Id_Categoria         INTEGER NULL
);




CREATE TABLE Trivia_Pregunta (
       Id_trivia            INTEGER NOT NULL,
       Id_Pregunta          INTEGER NOT NULL
);


ALTER TABLE Trivia_Pregunta
       ADD  ( PRIMARY KEY (Id_trivia, Id_Pregunta) ) ;


DROP TABLE IF EXISTS usuario $$
CREATE TABLE usuario
(
 Id_Usuario INT auto_increment PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 contrasenia VARCHAR(64) NOT NULL,
 email VARCHAR(45),
 telefono INT,

)
$$

DROP TABLE IF EXISTS profesor $$
CREATE TABLE profesor
(  
 id_profesor INT NOT NULL AUTO_INCREMENT,
 id_usuario INT NOT NULL,
 PRIMARY KEY (id_profesor),
 FOREIGN KEY (id_usuario) REFERENCES usuario (rut),
 UNIQUE KEY id_usuario (id_usuario)
)
$$

drop TABLE IF EXISTS Profesor_Trivia $$
CREATE TABLE Profesor_Trivia
(
 id_profesor INT NOT NULL,
 id_trivia INT NOT NULL,
 PRIMARY KEY (id_profesor, id_trivia),
 FOREIGN KEY (id_trivia) REFERENCES trivia (id_trivia),
 FOREIGN KEY (id_profesor) REFERENCES Profesor (id_profesor)
 
)
$$


CREATE TABLE Usuario_Pregunta (
       Id_Pregunta          INTEGER NOT NULL,
       rut           INTEGER NOT NULL
);


ALTER TABLE Usuario_Pregunta
       ADD  ( PRIMARY KEY (Id_Pregunta, rut) ) ;


ALTER TABLE Alumno_Trivia
       ADD  ( FOREIGN KEY (Id_Alumno)
                             REFERENCES Alumno ) ;


ALTER TABLE Alumno_Trivia
       ADD  ( FOREIGN KEY (Id_trivia)
                             REFERENCES Trivia ) ;


ALTER TABLE Pregunta_Alternativa
       ADD  ( FOREIGN KEY (Id_Alternativa)
                             REFERENCES Alternativa ) ;


ALTER TABLE Pregunta_Alternativa
       ADD  ( FOREIGN KEY (Id_Pregunta)
                             REFERENCES Pregunta ) ;


ALTER TABLE Trivia
       ADD  ( FOREIGN KEY (Id_Categoria)
                             REFERENCES Categoria ) ;


ALTER TABLE Trivia_Pregunta
       ADD  ( FOREIGN KEY (Id_Pregunta)
                             REFERENCES Pregunta ) ;


ALTER TABLE Trivia_Pregunta
       ADD  ( FOREIGN KEY (Id_trivia)
                             REFERENCES Trivia ) ;


ALTER TABLE Usuario_Pregunta
       ADD  ( FOREIGN KEY (Id_Pregunta)
                             REFERENCES Pregunta ) ;


ALTER TABLE Usuario_Pregunta
       ADD  ( FOREIGN KEY (rut)
                             REFERENCES rut ) ;
