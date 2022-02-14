CREATE SEQUENCE apl_user1.iseq_historico_lista_deseos INCREMENT BY 1 MINVALUE 0 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER ;

CREATE TABLE apl_user1.historico_lista_deseos(
    id NUMBER(18, 0) DEFAULT apl_user1.iseq_historico_lista_deseos.nextval,
	fecha_registro DATE DEFAULT SYSDATE NOT NULL ENABLE,
	id_usuario NUMBER(18,0) NOT NULL,
	id_producto NUMBER(18,0) NOT NULL,
	accion VARCHAR2(50) NOT NULL,
	
	CONSTRAINT PK_historico_lista_deseos PRIMARY KEY (id)
	
);

insert into apl_user1.historico_lista_deseos(id_usuario, id_producto, accion) values(0, 0, 'n/a');
