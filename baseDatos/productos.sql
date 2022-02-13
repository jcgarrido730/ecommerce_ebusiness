CREATE SEQUENCE apl_user1.iseq_productos INCREMENT BY 1 MINVALUE 0 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER ;

CREATE TABLE apl_user1.productos(
	id NUMBER(18, 0) DEFAULT apl_user1.iseq_productos.nextval,
	feha_registro DATE DEFAULT SYSDATE,
	nombre VARCHAR2(50) NOT NULL,
	id_estado NUMBER(18,0) NOT NULL,
	
	CONSTRAINT PK_productos PRIMARY KEY (id),
	
	CONSTRAINT FK_productos_estados FOREIGN KEY(id_estado)
	REFERENCES apl_user1.estados (id) ENABLE

);
