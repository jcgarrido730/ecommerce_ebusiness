CREATE TABLE apl_user1.inventarios(
	id_producto NUMBER(18,0) NOT NULL,
	fecha_ultima_actualizacion DATE DEFAULT SYSDATE,
	precio numeric(15, 3) NOT NULL,
	cantidad NUMBER(18,0) NOT NULL,
	
	CONSTRAINT PK_inventarios PRIMARY KEY (id_producto),
	
	CONSTRAINT FK_inventarios_productos FOREIGN KEY(id_producto)
	REFERENCES apl_user1.productos (id) ENABLE
	
);