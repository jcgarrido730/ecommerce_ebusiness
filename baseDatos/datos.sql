insert into apl_user1.estados(descripcion, tipo) values('Activo', 'Usuario');
insert into apl_user1.estados(descripcion, tipo) values('Inactivo', 'Usuario');
insert into apl_user1.estados(descripcion, tipo) values('Disponible', 'Producto');
insert into apl_user1.estados(descripcion, tipo) values('No disponible', 'Producto');

insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr1', 'usuario1', 'uno', 0);
insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr2', 'usuario2', 'dos', 0);
insert into apl_user1.usuarios(codigo, nombres, apellidos, id_estado) values('usr3', 'usuario3', 'tres', 1);

insert into apl_user1.productos(nombre, id_estado) values('silla', 2);
insert into apl_user1.productos(nombre, id_estado) values('mesa', 2);
insert into apl_user1.productos(nombre, id_estado) values('cuadro', 2);
insert into apl_user1.productos(nombre, id_estado) values('escritorio', 2);
insert into apl_user1.productos(nombre, id_estado) values('armario', 2);
insert into apl_user1.productos(nombre, id_estado) values('cama', 3);
insert into apl_user1.productos(nombre, id_estado) values('lampara', 3);

insert into apl_user1.inventarios(id_producto, precio, cantidad) values(1, 10000.000, 7);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(2, 30000.000, 2);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(3, 10000.000, 13);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(4, 75000.000, 17);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(6, 81500.000, 5);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(7, 111000.000, 0);
insert into apl_user1.inventarios(id_producto, precio, cantidad) values(0, 23000.000, 0);
