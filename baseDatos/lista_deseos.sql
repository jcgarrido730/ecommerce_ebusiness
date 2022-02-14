CREATE SEQUENCE apl_user1.iseq_lista_deseos INCREMENT BY 1 MINVALUE 0 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER ;

CREATE TABLE apl_user1.lista_deseos(
	id NUMBER(18, 0) DEFAULT apl_user1.iseq_lista_deseos.nextval,
	fecha_registro  DATE DEFAULT SYSDATE NOT NULL ENABLE,
	fecha_ultima_actualizacion DATE DEFAULT SYSDATE NOT NULL ENABLE,
	id_usuario NUMBER(18,0) NOT NULL,
	id_producto NUMBER(18,0) NOT NULL,
	disponible NUMBER(1,0) NOT NULL,
	
	CONSTRAINT PK_lista_deseos PRIMARY KEY (id),
	
	CONSTRAINT FK_lista_deseos_productos FOREIGN KEY (id_producto)
	REFERENCES apl_user1.productos (id) ENABLE,
	
	CONSTRAINT FK_lista_deseos_usuarios FOREIGN KEY(id_usuario)
	REFERENCES apl_user1.usuarios (id) ENABLE
);

insert into apl_user1.lista_deseos(id, id_usuario, id_producto, disponible) values (0, 0, 0, 0);
