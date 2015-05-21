--CREAMOS PRIMERO UNA SECUENCIA PARA QUE TODOS LOS ID SEAN INCREMENTABLES 
CREATE SEQUENCE AUTO_INCREMENT --nombre de la secuencia
START WITH 1 --la secuencia empieza por 1
INCREMENT BY 1 --se incrementa de uno en uno
NOMAXVALUE; --no tiene valor maximo


--Tabla de cuentas de usuarios
create table Cuenta_Usuario(
Id_Cuenta NUMBER PRIMARY KEY,
Nombre VARCHAR2 (50),
Apellido VARCHAR2 (50),
Identificación VARCHAR2 (10) UNIQUE,
Tel_Cel VARCHAR2 (10),
Contraseña VARCHAR2 (10),
Estado VARCHAR2 (20)
);

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_Cuenta_Usuario
  BEFORE INSERT ON Cuenta_Usuario
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT.nextval INTO :new.Id_Cuenta FROM dual;
  END
;

/****************************************************/
DROP TRIGGER Trig_Quejas
--Tabla de quejas
create table Quejas(
Id_Queja NUMBER PRIMARY KEY,
Nombre VARCHAR2 (50),
Apellido VARCHAR2 (50),
Identificación VARCHAR2 (10) UNIQUE,
N_Ficha VARCHAR2 (6),
Tipo_Queja VARCHAR2 (20),
Descripcion VARCHAR2 (100),
Especialidad VARCHAR2 (20),
Evidencia BLOB 
);

DROP TABLE Quejas

--Para que la secuencia se haga automaticamente se crea un tigger
CREATE TRIGGER Trig_Quejas
  BEFORE INSERT ON Quejas
  FOR EACH ROW
  BEGIN
    SELECT AUTO_INCREMENT.nextval INTO :new.Id_Queja FROM dual;
  END
;


SELECT * FROM QUEJAS

/****************************************************/



