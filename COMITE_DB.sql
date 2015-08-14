/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : Oracle
Source Server Version : 110200
Source Host           : :1521
Source Schema         : COMITE_DB

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2015-08-14 16:45:03
*/


-- ----------------------------
-- Table structure for CUENTA_USUARIO
-- ----------------------------
DROP TABLE "COMITE_DB"."CUENTA_USUARIO";
CREATE TABLE "COMITE_DB"."CUENTA_USUARIO" (
"ID_CUENTA" NUMBER NOT NULL ,
"NOMBRE" VARCHAR2(50 BYTE) NULL ,
"APELLIDO" VARCHAR2(50 BYTE) NULL ,
"IDENTIFICACIÓN" VARCHAR2(10 BYTE) NULL ,
"TEL_CEL" VARCHAR2(10 BYTE) NULL ,
"CONTRASEÑA" VARCHAR2(10 BYTE) NULL ,
"ESTADO" VARCHAR2(20 BYTE) NULL ,
"CORREO" VARCHAR2(200 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CUENTA_USUARIO
-- ----------------------------
INSERT INTO "COMITE_DB"."CUENTA_USUARIO" VALUES ('1', 'asdfghjk', 'asdfghj', '1234567', '1234567', '123', 'Habilitado', 'dfhxh@g.c');

-- ----------------------------
-- Table structure for FECHAS
-- ----------------------------
DROP TABLE "COMITE_DB"."FECHAS";
CREATE TABLE "COMITE_DB"."FECHAS" (
"ID_FECHAS" NUMBER NOT NULL ,
"FECHA_INICIO" VARCHAR2(20 BYTE) NULL ,
"FECHA_FIN" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of FECHAS
-- ----------------------------
INSERT INTO "COMITE_DB"."FECHAS" VALUES ('42', '08/15/2015', '08/16/2015');

-- ----------------------------
-- Table structure for PROGRAMAS
-- ----------------------------
DROP TABLE "COMITE_DB"."PROGRAMAS";
CREATE TABLE "COMITE_DB"."PROGRAMAS" (
"ID_PROGRAMA" NUMBER NOT NULL ,
"NOMBRE_PROGRAMA" VARCHAR2(200 BYTE) NULL ,
"ESTADO" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of PROGRAMAS
-- ----------------------------
INSERT INTO "COMITE_DB"."PROGRAMAS" VALUES ('1', 'Tecnologo Analisis y desarrollo de sistemas de formacon', 'Habilitado');
INSERT INTO "COMITE_DB"."PROGRAMAS" VALUES ('21', 'Tecnologo Recursos Humano', 'Habilitado');
INSERT INTO "COMITE_DB"."PROGRAMAS" VALUES ('41', 'Tecnologo ', 'Inhabilitado');

-- ----------------------------
-- Table structure for PROGRAMASTECNICO
-- ----------------------------
DROP TABLE "COMITE_DB"."PROGRAMASTECNICO";
CREATE TABLE "COMITE_DB"."PROGRAMASTECNICO" (
"ID_PROGRAMATEC" NUMBER NOT NULL ,
"NOMBRE_PROGRAMATEC" VARCHAR2(200 BYTE) NULL ,
"ESTADOTEC" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of PROGRAMASTECNICO
-- ----------------------------
INSERT INTO "COMITE_DB"."PROGRAMASTECNICO" VALUES ('1', 'Tecnico Sistemas', 'Habilitado');

-- ----------------------------
-- Table structure for QUEJAS
-- ----------------------------
DROP TABLE "COMITE_DB"."QUEJAS";
CREATE TABLE "COMITE_DB"."QUEJAS" (
"ID_QUEJA" NUMBER NOT NULL ,
"NOMBRE" VARCHAR2(50 BYTE) NULL ,
"APELLIDO" VARCHAR2(50 BYTE) NULL ,
"IDENTIFICACIÓN" VARCHAR2(10 BYTE) NULL ,
"N_FICHA" VARCHAR2(6 BYTE) NULL ,
"TIPO_QUEJA" VARCHAR2(20 BYTE) NULL ,
"DESCRIPCION" VARCHAR2(200 BYTE) NULL ,
"ESPECIALIDAD" VARCHAR2(200 BYTE) NULL ,
"EVIDENCIA" BLOB NULL ,
"ANOMALIA" VARCHAR2(20 BYTE) NULL ,
"FECHA" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QUEJAS
-- ----------------------------
INSERT INTO "COMITE_DB"."QUEJAS" VALUES ('5', 'Santiago', 'Zapata', '1001131452', '519649', 'Disiplinaria', 'Nose', 'Tecnologo Analisis y desarrollo de sistemas de formacon', null, 'Ver', '17/06/2015');

-- ----------------------------
-- Function structure for CUSTOM_AUTH
-- ----------------------------
CREATE OR REPLACE function "COMITE_DB"."CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;
/

-- ----------------------------
-- Function structure for CUSTOM_HASH
-- ----------------------------
CREATE OR REPLACE function "COMITE_DB"."CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'T24SGV54G4D7MZRSTZ6AX9LEQ5GA8W';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;
/

-- ----------------------------
-- Sequence structure for AUTO_INCREMENT_CUENTA
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."AUTO_INCREMENT_CUENTA";
CREATE SEQUENCE "COMITE_DB"."AUTO_INCREMENT_CUENTA"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTO_INCREMENT_FECHAS
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."AUTO_INCREMENT_FECHAS";
CREATE SEQUENCE "COMITE_DB"."AUTO_INCREMENT_FECHAS"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 61
 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTO_INCREMENT_PROGRAMAS
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."AUTO_INCREMENT_PROGRAMAS";
CREATE SEQUENCE "COMITE_DB"."AUTO_INCREMENT_PROGRAMAS"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 61
 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTO_INCREMENT_PROGRAMASTEC
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."AUTO_INCREMENT_PROGRAMASTEC";
CREATE SEQUENCE "COMITE_DB"."AUTO_INCREMENT_PROGRAMASTEC"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for AUTO_INCREMENT_QUEJAS
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."AUTO_INCREMENT_QUEJAS";
CREATE SEQUENCE "COMITE_DB"."AUTO_INCREMENT_QUEJAS"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 41
 CACHE 20;

-- ----------------------------
-- Sequence structure for DEMO_CUST_SEQ
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."DEMO_CUST_SEQ";
CREATE SEQUENCE "COMITE_DB"."DEMO_CUST_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for DEMO_ORD_SEQ
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."DEMO_ORD_SEQ";
CREATE SEQUENCE "COMITE_DB"."DEMO_ORD_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 11
 CACHE 20;

-- ----------------------------
-- Sequence structure for DEMO_ORDER_ITEMS_SEQ
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."DEMO_ORDER_ITEMS_SEQ";
CREATE SEQUENCE "COMITE_DB"."DEMO_ORDER_ITEMS_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 61
 CACHE 20;

-- ----------------------------
-- Sequence structure for DEMO_PROD_SEQ
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."DEMO_PROD_SEQ";
CREATE SEQUENCE "COMITE_DB"."DEMO_PROD_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for DEMO_USERS_SEQ
-- ----------------------------
DROP SEQUENCE "COMITE_DB"."DEMO_USERS_SEQ";
CREATE SEQUENCE "COMITE_DB"."DEMO_USERS_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Indexes structure for table CUENTA_USUARIO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table CUENTA_USUARIO
-- ----------------------------
CREATE OR REPLACE TRIGGER "COMITE_DB"."TRIG_CUENTA_USUARIO" BEFORE INSERT ON "COMITE_DB"."CUENTA_USUARIO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
    SELECT AUTO_INCREMENT_Cuenta.nextval INTO :new.Id_Cuenta FROM dual;
  END
;
-- ----------------------------
-- Uniques structure for table CUENTA_USUARIO
-- ----------------------------
ALTER TABLE "COMITE_DB"."CUENTA_USUARIO" ADD UNIQUE ("IDENTIFICACIÓN");

-- ----------------------------
-- Primary Key structure for table CUENTA_USUARIO
-- ----------------------------
ALTER TABLE "COMITE_DB"."CUENTA_USUARIO" ADD PRIMARY KEY ("ID_CUENTA");

-- ----------------------------
-- Indexes structure for table FECHAS
-- ----------------------------

-- ----------------------------
-- Triggers structure for table FECHAS
-- ----------------------------
CREATE OR REPLACE TRIGGER "COMITE_DB"."TRIG_FECHAS" BEFORE INSERT ON "COMITE_DB"."FECHAS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
    SELECT AUTO_INCREMENT_Fechas.nextval INTO :new.Id_Fechas FROM dual;
  END
;
-- ----------------------------
-- Primary Key structure for table FECHAS
-- ----------------------------
ALTER TABLE "COMITE_DB"."FECHAS" ADD PRIMARY KEY ("ID_FECHAS");

-- ----------------------------
-- Indexes structure for table PROGRAMAS
-- ----------------------------

-- ----------------------------
-- Triggers structure for table PROGRAMAS
-- ----------------------------
CREATE OR REPLACE TRIGGER "COMITE_DB"."TRIG_PROGRAMAS" BEFORE INSERT ON "COMITE_DB"."PROGRAMAS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
    SELECT AUTO_INCREMENT_Programas.nextval INTO :new.Id_Programa FROM dual;
  END
;
-- ----------------------------
-- Uniques structure for table PROGRAMAS
-- ----------------------------
ALTER TABLE "COMITE_DB"."PROGRAMAS" ADD UNIQUE ("NOMBRE_PROGRAMA");

-- ----------------------------
-- Primary Key structure for table PROGRAMAS
-- ----------------------------
ALTER TABLE "COMITE_DB"."PROGRAMAS" ADD PRIMARY KEY ("ID_PROGRAMA");

-- ----------------------------
-- Indexes structure for table PROGRAMASTECNICO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table PROGRAMASTECNICO
-- ----------------------------
CREATE OR REPLACE TRIGGER "COMITE_DB"."TRIG_PROGRAMASTECNICO" BEFORE INSERT ON "COMITE_DB"."PROGRAMASTECNICO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
    SELECT AUTO_INCREMENT_ProgramasTec.nextval INTO :new.Id_ProgramaTec FROM dual;
  END
;
-- ----------------------------
-- Uniques structure for table PROGRAMASTECNICO
-- ----------------------------
ALTER TABLE "COMITE_DB"."PROGRAMASTECNICO" ADD UNIQUE ("NOMBRE_PROGRAMATEC");

-- ----------------------------
-- Primary Key structure for table PROGRAMASTECNICO
-- ----------------------------
ALTER TABLE "COMITE_DB"."PROGRAMASTECNICO" ADD PRIMARY KEY ("ID_PROGRAMATEC");

-- ----------------------------
-- Indexes structure for table QUEJAS
-- ----------------------------

-- ----------------------------
-- Triggers structure for table QUEJAS
-- ----------------------------
CREATE OR REPLACE TRIGGER "COMITE_DB"."TRIG_QUEJAS" BEFORE INSERT ON "COMITE_DB"."QUEJAS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
    SELECT AUTO_INCREMENT_Quejas.nextval INTO :new.Id_Queja FROM dual;
  END
;
-- ----------------------------
-- Primary Key structure for table QUEJAS
-- ----------------------------
ALTER TABLE "COMITE_DB"."QUEJAS" ADD PRIMARY KEY ("ID_QUEJA");
