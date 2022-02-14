insert into apl_user1.estados(descripcion, tipo) values('Activo', 'Usuario');
insert into apl_user1.estados(descripcion, tipo) values('Inactivo', 'Usuario');
insert into apl_user1.estados(descripcion, tipo) values('Disponible', 'Producto');
insert into apl_user1.estados(descripcion, tipo) values('No disponible', 'Producto');

insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr1', 'usuario1', 'uno', 1);
insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr2', 'usuario2', 'dos', 1);
insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr3', 'usuario3', 'tres', 2);

insert into apl_user1.productos(nombre, id_estado) values('silla', 3);
insert into apl_user1.productos(nombre, id_estado) values('mesa', 3);
insert into apl_user1.productos(nombre, id_estado) values('cuadro', 3);
insert into apl_user1.productos(nombre, id_estado) values('escritorio', 3);
insert into apl_user1.productos(nombre, id_estado) values('armario', 3);
insert into apl_user1.productos(nombre, id_estado) values('cama', 4);
insert into apl_user1.productos(nombre, id_estado) values('lampara', 4);

insert into apl_user1.inventarios(id_producto, precio, cantidad) values(1, 10000.000, 7);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(2, 30000.000, 2);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(3, 10000.000, 13);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(4, 75000.000, 17);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(5, 81500.000, 5);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(6, 111000.000, 0);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(7, 23000.000, 0);


drop table apl_user1.inventarios;
drop table apl_user1.lista_deseos
drop table apl_user1.productos;
drop table apl_user1.usuarios;
drop table apl_user1.estados;
drop table apl_user1.lista_deseos;
drop table apl_user1.historico_lista_deseos;


CALL apl_user1.reinicio_secuencia('apl_user1.iseq_productos');
CALL apl_user1.reinicio_secuencia('apl_user1.iseq_usuarios');
CALL apl_user1.reinicio_secuencia('apl_user1.iseq_estados');
CALL apl_user1.reinicio_secuencia('iseq_lista_deseos');
