--Tabla de cuentas de usuarios
create table Cuenta_Usuario(
Id_Cuenta NUMBER PRIMARY KEY,
Nombre VARCHAR2 (50),
Apellido VARCHAR2 (50),
Identificación VARCHAR2 (10) UNIQUE,
Tel_Cel VARCHAR2 (10),
Contraseña VARCHAR2 (10),
Estado VARCHAR2 (20),
Correo VARCHAR2 (200)
);

--CREAMOS PRIMERO UNA SECUENCIA PARA QUE TODOS LOS ID SEAN INCREMENTABLES 
CREATE SEQUENCE AUTO_INCREMENT_Cuenta --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_Cuenta_Usuario
  BEFORE INSERT ON Cuenta_Usuario
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT_Cuenta.nextval INTO :new.Id_Cuenta FROM dual;
  END
;

/****************************************************/
DROP TABLE Quejas
DROP TRIGGER Trig_Quejas
DROP SEQUENCE AUTO_INCREMENT_Quejas

--Tabla de quejas
create table Quejas(
Id_Queja NUMBER PRIMARY KEY,
Nombre VARCHAR2 (50),
Apellido VARCHAR2 (50),
Identificación VARCHAR2 (10),
N_Ficha VARCHAR2 (6),
Tipo_Queja VARCHAR2 (20),
Descripcion VARCHAR2 (200),
Especialidad VARCHAR2 (200),
Evidencia BLOB 
);

--CREAMOS PRIMERO UNA SECUENCIA PARA QUE TODOS LOS ID SEAN INCREMENTABLES 
CREATE SEQUENCE AUTO_INCREMENT_Quejas --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_Quejas
  BEFORE INSERT ON Quejas
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT_Quejas.nextval INTO :new.Id_Queja FROM dual;
  END
;



/****************************************************/
DROP TABLE Programas
DROP TRIGGER Trig_Programas
DROP SEQUENCE AUTO_INCREMENT_Programas

--Tabla de Programas
create table Programas(
Id_Programa NUMBER PRIMARY KEY,
Nombre_Programa VARCHAR2 (200) UNIQUE
);

--CREAMOS PRIMERO UNA SECUENCIA PARA QUE TODOS LOS ID SEAN INCREMENTABLES 
CREATE SEQUENCE AUTO_INCREMENT_Programas --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_Programas
  BEFORE INSERT ON Programas
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT_Programas.nextval INTO :new.Id_Programa FROM dual;
  END
;

/****************************************************/
DROP TABLE ProgramasTecnico
DROP TRIGGER Trig_ProgramasTecnico
DROP SEQUENCE AUTO_INCREMENT_ProgramasTecnico

--Tabla de Programas
create table ProgramasTecnico(
Id_Programa NUMBER PRIMARY KEY,
Nombre_Programa VARCHAR2 (200) UNIQUE
);

--CREAMOS PRIMERO UNA SECUENCIA PARA QUE TODOS LOS ID SEAN INCREMENTABLES 
CREATE SEQUENCE AUTO_INCREMENT_ProgramasTecnico --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_ProgramasTecnico
  BEFORE INSERT ON Programas
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT_ProgramasTecnico.nextval INTO :new.Id_Programa FROM dual;
  END
;
