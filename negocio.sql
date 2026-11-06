create database negocio;
use negocio;
 create table if not exists inventario(
     id_prod int primary key auto_increment,
     nombre_prod varchar(100) not null,
     categoria varchar(50),
     cantidad int not null,
     precio decimal(10,2),
     proveedor varchar(100));
INSERT INTO inventario
     (nombre_prod, categoria, cantidad, precio, proveedor)
     values
     ('Laptop HP', 'Electronica', 10, 12500.00, 'HP'),
     ('Mouse Logitech', 'Accesorios', 25, 350.00, 'Logitech'),
     ('Teclado Gamer', 'Accesorios', 15, 850.00, 'Redragon'),
     ('Monitor Samsung', 'Electronica', 8, 4200.00, 'Samsung'),
     ('Impresora Epson', 'Impresoras', 5, 3100.00, 'Epson'),
     ('Memoria USB', 'Almacenamiento', 40, 150.00, 'Kingston'),
     ('Disco Duro', 'Almacenamiento', 12, 1200.00, 'Seagate'),
     ('Audifonos', 'Accesorios', 20, 600.00, 'Sony'),
     ('Tablet Lenovo', 'Electronica', 7, 5500.00, 'Lenovo'),
     ('Webcam', 'Accesorios', 18, 450.00, 'Logitech');
select * from inventario;
CREATE USER 'empleado'@'localhost'
     IDENTIFIED BY 'Empleado123';
CREATE USER 'administrador'@'localhost'
     IDENTIFIED BY 'Admin123';
 GRANT SELECT
     ON negocio.Inventario
     to 'empleado'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE
     ON negocio.inventario
     to 'administrador'@'localhost';
show grants for 'empleado'@'localhost';
show grants for 'administrador'@'localhost';
revoke select
     on negocio.inventario
     from 'empleado'@'localhost';
revoke delete
     on negocio.inventario
     from 'administrador'@'localhost';
show grants for 'empleado'@'localhost';
show grants for 'administrador'@'localhost';
create user 'edgar.emp' identified by 'edgar369';
GRANT SELECT, INSERT, UPDATE, DELETE
          ON negocio.inventario
          to 'edgar.emp';
-- Rev.Calif 100