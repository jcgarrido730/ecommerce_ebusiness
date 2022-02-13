CREATE SEQUENCE apl_user1.iseq_usuarios INCREMENT BY 1 MINVALUE 0 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER ;

CREATE TABLE apl_user1.usuarios(
	id NUMBER(18, 0) DEFAULT apl_user1.iseq_usuarios.nextval,
	fecha_registro DATE DEFAULT SYSDATE,
	codigo VARCHAR2(50) NOT NULL,
	nombres VARCHAR2(50) NOT NULL,
	apellidos VARCHAR2(50) NOT NULL,
	id_estado NUMBER(18,0) NOT NULL,
	
	CONSTRAINT PK_usuarios PRIMARY KEY (id),
	
	CONSTRAINT FK_usuarios_estados FOREIGN KEY(id_estado)
	REFERENCES apl_user1.estados (id) ENABLE
	
);
