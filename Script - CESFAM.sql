DROP TABLE Baja CASCADE CONSTRAINTS ;

DROP TABLE Carnet_Familiar CASCADE CONSTRAINTS ;

DROP TABLE Comuna CASCADE CONSTRAINTS ;

DROP TABLE Detalle_Baja CASCADE CONSTRAINTS ;

DROP TABLE Detalle_Medicamento CASCADE CONSTRAINTS ;

DROP TABLE Detalle_Partida CASCADE CONSTRAINTS ;

DROP TABLE Detalle_reserva CASCADE CONSTRAINTS ;

DROP TABLE Errores CASCADE CONSTRAINTS ;

DROP TABLE Estado_reserva CASCADE CONSTRAINTS ;

DROP TABLE Funcionario CASCADE CONSTRAINTS ;

DROP TABLE Medicamento CASCADE CONSTRAINTS ;

DROP TABLE Medico CASCADE CONSTRAINTS ;

DROP TABLE Mensajeria CASCADE CONSTRAINTS ;

DROP TABLE Paciente CASCADE CONSTRAINTS ;

DROP TABLE Partida CASCADE CONSTRAINTS ;

DROP TABLE Perfil CASCADE CONSTRAINTS ;

DROP TABLE Persona CASCADE CONSTRAINTS ;

DROP TABLE Receta CASCADE CONSTRAINTS ;

DROP TABLE Reserva CASCADE CONSTRAINTS ;

DROP TABLE Tutor CASCADE CONSTRAINTS ;

DROP TABLE Usuario CASCADE CONSTRAINTS ;

DROP SEQUENCE sq_perfil;
DROP SEQUENCE sq_usuario;
--SECCION DE CREACION
CREATE SEQUENCE sq_perfil START WITH 1;
CREATE SEQUENCE sq_usuario START WITH 1;

CREATE TABLE Baja
  (
    id_baja            INTEGER NOT NULL ,
    fecha_baja         DATE NOT NULL ,
    motivo_baja        VARCHAR2 (255) NOT NULL ,
    observaciones_baja VARCHAR2 (255) ,
    estado_baja        INTEGER NOT NULL
  ) ;
ALTER TABLE Baja ADD CONSTRAINT Baja_PK PRIMARY KEY ( id_baja ) ;


CREATE TABLE Carnet_Familiar
  (
    id_familiar          NUMBER (5) NOT NULL ,
    sector_familiar      VARCHAR2 (10) NOT NULL ,
    Paciente_id_paciente INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Carnet_Familiar__IDX ON Carnet_Familiar
  (
    Paciente_id_paciente ASC
  )
  ;
ALTER TABLE Carnet_Familiar ADD CONSTRAINT Carnet_Familiar_PK PRIMARY KEY ( id_familiar ) ;


CREATE TABLE Comuna
  (
    id_comuna  NUMBER (3) NOT NULL ,
    nom_comuna VARCHAR2 (25) NOT NULL
  ) ;
ALTER TABLE Comuna ADD CONSTRAINT Comuna_PK PRIMARY KEY ( id_comuna ) ;


CREATE TABLE Detalle_Baja
  (
    Baja_id_baja           INTEGER NOT NULL ,
    Medicamento_id_remedio NUMBER (6) NOT NULL ,
    cantidad               INTEGER NOT NULL
  ) ;
ALTER TABLE Detalle_Baja ADD CONSTRAINT Detalle_Baja_PK PRIMARY KEY ( Baja_id_baja, Medicamento_id_remedio ) ;


CREATE TABLE Detalle_Medicamento
  (
    Receta_id_receta       INTEGER NOT NULL ,
    Medicamento_id_remedio NUMBER (6) NOT NULL ,
    cantidad               INTEGER NOT NULL
  ) ;
ALTER TABLE Detalle_Medicamento ADD CONSTRAINT Detalle_Medicamento_PK PRIMARY KEY ( Receta_id_receta, Medicamento_id_remedio ) ;


CREATE TABLE Detalle_Partida
  (
    Partida_id_partida     NUMBER (5) NOT NULL ,
    Medicamento_id_remedio NUMBER (6) NOT NULL ,
    cantidad               INTEGER NOT NULL
  ) ;
ALTER TABLE Detalle_Partida ADD CONSTRAINT Detalle_Partida_PK PRIMARY KEY ( Partida_id_partida, Medicamento_id_remedio ) ;


CREATE TABLE Detalle_reserva
  (
    Reserva_id_reserva     INTEGER NOT NULL ,
    Medicamento_id_remedio NUMBER (6) NOT NULL ,
    cantidad               INTEGER NOT NULL
  ) ;
ALTER TABLE Detalle_reserva ADD CONSTRAINT Detalle_reserva_PK PRIMARY KEY ( Reserva_id_reserva, Medicamento_id_remedio ) ;


CREATE TABLE Errores
  (
    id_error          VARCHAR2 (12) NOT NULL ,
    mensaje_error     VARCHAR2 (60) NOT NULL ,
    Mensajeria_id_msj NUMBER (5) NOT NULL
  ) ;
ALTER TABLE Errores ADD CONSTRAINT Errores_PK PRIMARY KEY ( id_error ) ;


CREATE TABLE Estado_reserva
  (
    id_estado          INTEGER NOT NULL ,
    descripcion_estado VARCHAR2 (50)
  ) ;
ALTER TABLE Estado_reserva ADD CONSTRAINT Estado_reserva_PK PRIMARY KEY ( id_estado ) ;


CREATE TABLE Funcionario
  (
    id_funcionario      INTEGER NOT NULL ,
    correo_funcionario  VARCHAR2 (50) ,
    tel_funcionario     VARCHAR2 (50) ,
    Persona_rut_persona VARCHAR2 (12) NOT NULL
  ) ;
CREATE UNIQUE INDEX Funcionario__IDX ON Funcionario
  (
    Persona_rut_persona ASC
  )
  ;
ALTER TABLE Funcionario ADD CONSTRAINT Funcionario_PK PRIMARY KEY ( id_funcionario ) ;


CREATE TABLE Medicamento
  (
    id_remedio             NUMBER (6) NOT NULL ,
    nombre_remedio         VARCHAR2 (25) NOT NULL ,
    descripcion_remedio    VARCHAR2 (100) NOT NULL ,
    fabricante_remedio     VARCHAR2 (25) NOT NULL ,
    tipo_remedio           VARCHAR2 (25) NOT NULL ,
    componentes_remedio    VARCHAR2 (80) NOT NULL ,
    contenido_remedio      VARCHAR2 (50) NOT NULL ,
    cantcontenido_remedio  NUMBER (3) NOT NULL ,
    unidadmedida_remedio   VARCHAR2 (15) NOT NULL ,
    gramaje_remedio        NUMBER (3,1) NOT NULL ,
    stockFisico_remedio    NUMBER (5) NOT NULL ,
    stockDiponible_remedio NUMBER (5) NOT NULL
  ) ;
ALTER TABLE Medicamento ADD CHECK ( contenido_remedio                      IN ('frasco', 'pastilla', 'sobre')) ;
ALTER TABLE Medicamento ADD CONSTRAINT medida CHECK ( unidadmedida_remedio IN ('gramos', 'miligramos', 'mililitros', 'unidades')) ;
ALTER TABLE Medicamento ADD CONSTRAINT Medicamento_PK PRIMARY KEY ( id_remedio ) ;


CREATE TABLE Medico
  (
    id_medico           INTEGER NOT NULL ,
    especialidad_medico VARCHAR2 (30) NOT NULL ,
    correo_medico       VARCHAR2 (50) ,
    tel_medico          VARCHAR2 (50) ,
    Persona_rut_persona VARCHAR2 (12) NOT NULL
  ) ;
CREATE UNIQUE INDEX Medico__IDX ON Medico
  (
    Persona_rut_persona ASC
  )
  ;
ALTER TABLE Medico ADD CONSTRAINT Medico_PK PRIMARY KEY ( id_medico ) ;


CREATE TABLE Mensajeria
  (
    id_msj               NUMBER (5) NOT NULL ,
    mensaje_msj          VARCHAR2 (300) NOT NULL ,
    fecha_msj            DATE NOT NULL ,
    asunto_msj           VARCHAR2 (25) NOT NULL ,
    Reserva_id_reserva   INTEGER NOT NULL ,
    Paciente_id_paciente INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Mensajeria__IDX ON Mensajeria
  (
    Reserva_id_reserva ASC
  )
  ;
ALTER TABLE Mensajeria ADD CONSTRAINT Mensajeria_PK PRIMARY KEY ( id_msj ) ;


CREATE TABLE Paciente
  (
    id_paciente         INTEGER NOT NULL ,
    email_paciente      VARCHAR2 (45) NOT NULL ,
    tel_paciente        VARCHAR2 (50) ,
    Persona_rut_persona VARCHAR2 (12) NOT NULL
  ) ;
CREATE UNIQUE INDEX Paciente__IDX ON Paciente
  (
    Persona_rut_persona ASC
  )
  ;
ALTER TABLE Paciente ADD CONSTRAINT Paciente_PK PRIMARY KEY ( id_paciente ) ;


CREATE TABLE Partida
  (
    id_partida                 NUMBER (5) NOT NULL ,
    fecha_partida              DATE NOT NULL ,
    tipo_partida               VARCHAR2 (25) NOT NULL ,
    estado_partida             INTEGER NOT NULL ,
    Funcionario_id_funcionario INTEGER NOT NULL ,
    Paciente_id_paciente       INTEGER ,
    Reserva_id_reserva         INTEGER ,
    Baja_id_baja               INTEGER
  ) ;
CREATE UNIQUE INDEX Partida__IDX ON Partida
  (
    Baja_id_baja ASC
  )
  ;
CREATE UNIQUE INDEX Partida__IDXv1 ON Partida
  (
    Reserva_id_reserva ASC
  )
  ;
ALTER TABLE Partida ADD CONSTRAINT Partida_PK PRIMARY KEY ( id_partida ) ;


CREATE TABLE Perfil
  (
    id_perfil  NUMBER (4) NOT NULL ,
    nom_perfil VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE Perfil ADD CONSTRAINT Perfil_PK PRIMARY KEY ( id_perfil ) ;


CREATE TABLE Persona
  (
    rut_persona       VARCHAR2 (12) NOT NULL ,
    nom_persona       VARCHAR2 (45) NOT NULL ,
    app_persona       VARCHAR2 (25) NOT NULL ,
    apm_persona       VARCHAR2 (25) ,
    fono_persona      VARCHAR2 (15) NOT NULL ,
    direccion_persona VARCHAR2 (80) NOT NULL ,
    fecnac_persona    DATE NOT NULL ,
    sexo_persona      VARCHAR2 (12) NOT NULL ,
    Comuna_id_comuna  NUMBER (3) NOT NULL
  ) ;
ALTER TABLE Persona ADD CONSTRAINT Persona_PK PRIMARY KEY ( rut_persona ) ;


CREATE TABLE Receta
  (
    id_receta            INTEGER NOT NULL ,
    frecuen_receta       VARCHAR2 (20) NOT NULL ,
    duracion_receta      VARCHAR2 (25) NOT NULL ,
    cantpastillas_receta NUMBER (3) NOT NULL ,
    fecemision_receta    DATE NOT NULL ,
    tipo_receta          VARCHAR2 (25) NOT NULL ,
    Medico_id_medico     INTEGER NOT NULL ,
    Paciente_id_paciente INTEGER NOT NULL,
	indicaciones VARCHAR2(100)
  ) ;
ALTER TABLE Receta ADD CONSTRAINT Receta_PK PRIMARY KEY ( id_receta ) ;


CREATE TABLE Reserva
  (
    id_reserva               INTEGER NOT NULL ,
    fecha_reserva            DATE NOT NULL ,
    Paciente_id_paciente     INTEGER NOT NULL ,
    Estado_reserva_id_estado INTEGER NOT NULL
  ) ;
ALTER TABLE Reserva ADD CONSTRAINT Reserva_PK PRIMARY KEY ( id_reserva ) ;


CREATE TABLE Tutor
  (
    rut_tutor            VARCHAR2 (12) NOT NULL ,
    nom_tutor            VARCHAR2 (45) NOT NULL ,
    app_tutor            VARCHAR2 (25) NOT NULL ,
    apm_tutor            VARCHAR2 (25) ,
    fecnac_tutor         DATE NOT NULL ,
    sexo_tutor           CHAR (1) NOT NULL ,
    Paciente_id_paciente INTEGER
  ) ;
ALTER TABLE Tutor ADD CONSTRAINT Tutor_PK PRIMARY KEY ( rut_tutor ) ;


CREATE TABLE Usuario
  (
    id_usuario          NUMBER (5) NOT NULL ,
    nom_usuario         VARCHAR2 (15) NOT NULL ,
    pass_usuario        VARCHAR2 (10) NOT NULL ,
    Perfil_id_perfil    NUMBER (4) NOT NULL ,
    Persona_rut_persona VARCHAR2 (12) NOT NULL
  ) ;
CREATE UNIQUE INDEX Usuario__IDX ON Usuario
  (
    Persona_rut_persona ASC
  )
  ;
ALTER TABLE Usuario ADD CONSTRAINT Usuario_PK PRIMARY KEY ( id_usuario ) ;


ALTER TABLE Carnet_Familiar ADD CONSTRAINT Carnet_Familiar_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Errores ADD CONSTRAINT Errores_Mensajeria_FK FOREIGN KEY ( Mensajeria_id_msj ) REFERENCES Mensajeria ( id_msj ) ;

ALTER TABLE Detalle_Baja ADD CONSTRAINT FK_ASS_1 FOREIGN KEY ( Baja_id_baja ) REFERENCES Baja ( id_baja ) ;

ALTER TABLE Detalle_Baja ADD CONSTRAINT FK_ASS_2 FOREIGN KEY ( Medicamento_id_remedio ) REFERENCES Medicamento ( id_remedio ) ;

ALTER TABLE Detalle_Medicamento ADD CONSTRAINT FK_ASS_3 FOREIGN KEY ( Receta_id_receta ) REFERENCES Receta ( id_receta ) ;

ALTER TABLE Detalle_Medicamento ADD CONSTRAINT FK_ASS_4 FOREIGN KEY ( Medicamento_id_remedio ) REFERENCES Medicamento ( id_remedio ) ;

ALTER TABLE Detalle_Partida ADD CONSTRAINT FK_ASS_5 FOREIGN KEY ( Partida_id_partida ) REFERENCES Partida ( id_partida ) ;

ALTER TABLE Detalle_Partida ADD CONSTRAINT FK_ASS_6 FOREIGN KEY ( Medicamento_id_remedio ) REFERENCES Medicamento ( id_remedio ) ;

ALTER TABLE Detalle_reserva ADD CONSTRAINT FK_ASS_7 FOREIGN KEY ( Reserva_id_reserva ) REFERENCES Reserva ( id_reserva ) ;

ALTER TABLE Detalle_reserva ADD CONSTRAINT FK_ASS_8 FOREIGN KEY ( Medicamento_id_remedio ) REFERENCES Medicamento ( id_remedio ) ;

ALTER TABLE Funcionario ADD CONSTRAINT Funcionario_Persona_FK FOREIGN KEY ( Persona_rut_persona ) REFERENCES Persona ( rut_persona ) ;

ALTER TABLE Medico ADD CONSTRAINT Medico_Persona_FK FOREIGN KEY ( Persona_rut_persona ) REFERENCES Persona ( rut_persona ) ;

ALTER TABLE Mensajeria ADD CONSTRAINT Mensajeria_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Mensajeria ADD CONSTRAINT Mensajeria_Reserva_FK FOREIGN KEY ( Reserva_id_reserva ) REFERENCES Reserva ( id_reserva ) ;

ALTER TABLE Paciente ADD CONSTRAINT Paciente_Persona_FK FOREIGN KEY ( Persona_rut_persona ) REFERENCES Persona ( rut_persona ) ;

ALTER TABLE Partida ADD CONSTRAINT Partida_Baja_FK FOREIGN KEY ( Baja_id_baja ) REFERENCES Baja ( id_baja ) ;

ALTER TABLE Partida ADD CONSTRAINT Partida_Funcionario_FK FOREIGN KEY ( Funcionario_id_funcionario ) REFERENCES Funcionario ( id_funcionario ) ;

ALTER TABLE Partida ADD CONSTRAINT Partida_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Partida ADD CONSTRAINT Partida_Reserva_FK FOREIGN KEY ( Reserva_id_reserva ) REFERENCES Reserva ( id_reserva ) ;

ALTER TABLE Persona ADD CONSTRAINT Persona_Comuna_FK FOREIGN KEY ( Comuna_id_comuna ) REFERENCES Comuna ( id_comuna ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Medico_FK FOREIGN KEY ( Medico_id_medico ) REFERENCES Medico ( id_medico ) ;

ALTER TABLE Receta ADD CONSTRAINT Receta_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Reserva ADD CONSTRAINT Reserva_Estado_reserva_FK FOREIGN KEY ( Estado_reserva_id_estado ) REFERENCES Estado_reserva ( id_estado ) ;

ALTER TABLE Reserva ADD CONSTRAINT Reserva_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Tutor ADD CONSTRAINT Tutor_Paciente_FK FOREIGN KEY ( Paciente_id_paciente ) REFERENCES Paciente ( id_paciente ) ;

ALTER TABLE Usuario ADD CONSTRAINT Usuario_Perfil_FK FOREIGN KEY ( Perfil_id_perfil ) REFERENCES Perfil ( id_perfil ) ;

ALTER TABLE Usuario ADD CONSTRAINT Usuario_Persona_FK FOREIGN KEY ( Persona_rut_persona ) REFERENCES Persona ( rut_persona ) ;

--SECCION PL/SQL

--MD5
create or replace
function encodemd5(v_str varchar2) return varchar2 is
 v_string varchar2(100);
 begin
 dbms_obfuscation_toolkit.md5(input_string => v_str,
 checksum_string => v_string);
 return(utl_raw.cast_to_raw(v_string));
end;
/
--SECCION DE INSERSION<<EJEMPLO>>
INSERT INTO Perfil VALUES(sq_perfil.nextVal, 'Funcionario');
INSERT INTO Perfil VALUES(sq_perfil.nextVal, 'Medico');
INSERT INTO Perfil VALUES(sq_perfil.nextVal, 'Administrador');

--INSERT INTO Usuario VALUES(sq_usuario.nextVal, 'c.contreras', encodemd5('Cesar111'), 1, '11111111-1');