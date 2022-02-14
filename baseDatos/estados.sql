CREATE SEQUENCE apl_user1.iseq_estados INCREMENT BY 1 MINVALUE 0 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER ;

CREATE TABLE apl_user1.estados(
	id NUMBER(18,0) DEFAULT apl_user1.iseq_estados.nextval,
	fecha_registro DATE DEFAULT SYSDATE NOT NULL ENABLE,
	fecha_ultima_actualizacion DATE DEFAULT SYSDATE NOT NULL ENABLE,
	descripcion VARCHAR2(50) NOT NULL,
	tipo VARCHAR2(50) NOT NULL,
	CONSTRAINT PK_estados PRIMARY KEY (id)

); 

insert into apl_user1.estados(id, descripcion, tipo) values(0, 'Sin usar', 'n/a');
