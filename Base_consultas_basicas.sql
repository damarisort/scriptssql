CREATE DATABASE BASE_1;
use BASE_1;

CREATE TABLE Producto(
	id int not null unique,
    nombre varchar(20) unique not null,  
    tamanio varchar(7)  not null,
    fecha_caducidad date not null, 
    precio numeric(4, 2) not null,
    primary key(id)
);

INSERT INTO Producto(id, nombre, tamanio, fecha_caducidad, precio)
VALUE(1, "Coca-cola", "Mediano", "2024-12-30", 20.99);

INSERT INTO Producto (id, nombre, tamanio, fecha_caducidad, precio) VALUES
(2, 'Leche', '1L', '2025-06-30', 1.99),
(3, 'Arroz', '500g', '2024-12-01', 0.89),
(4, 'Aceite', '1L', '2026-02-15', 3.49),
(5, 'Azúcar', '1kg', '2025-09-10', 1.29),
(6, 'Harina', '1kg', '2026-05-20', 1.19),
(7, 'Sal', '500g', '2025-01-15', 0.59),
(8, 'Pasta', '400g', '2025-07-05', 1.29),
(9, 'Tomates', '250g', '2024-12-20', 0.99),
(10, 'Frijoles', '500g', '2025-08-10', 1.49),
(11, 'Cereal', '300g', '2026-03-25', 2.59);

--  comentario 
/*
		comentario multilinea
*/
-- obtener todos los datos de la tabla
select * 
	from Producto;

-- obtener solo un campo
select fecha_caducidad
	from Producto;
    
-- obtener 2 o mas campos de la tabla producto
select nombre, precio
	from Producto;

-- obtener todos los productos que no sobrepasen los 5.99
select *
	from Producto 
		where precio <= 5.99;
        
-- obtener todos los productos que tengan una 'o' en su nombre
select *
	from Producto 
		where nombre like '%o%';

select * 
	from Producto 
		where fecha_caducidad <= "2025-01-01" and nombre = "Arroz";

-- Selecciona todos los productos.
select  nombre
	from Producto;
-- Selecciona solo el nombre y el precio de los productos.
select nombre, precio 
	from Producto;

-- Selecciona los productos cuyo precio sea mayor a 2.00.
select * 
from Producto
		where precio >=  2.00;

-- Selecciona los productos cuya fecha de caducidad sea posterior al 1 de enero de 2025.
select *
from Producto
where fecha_caducidad >= "2025-01-01";

-- Selecciona los productos cuyo tamaño sea '1L'.
select *
from Producto
where tamanio = "1L";

-- Selecciona los productos cuyo nombre contiene la palabra 'Aceite'.
select * 
from Producto
where nombre like "%Aceite%";

-- Selecciona los productos cuyo nombre comienza con la letra 'A'.
select *
from Producto
where nombre like 'A%';

-- Selecciona los productos cuyo precio esté entre 1.00 y 2.00.
select *
from Producto
where precio BETWEEN "1.00" and "2.00";

-- Selecciona los productos cuya fecha de caducidad sea en 2025.
select *
from Producto 
-- where fecha_caducidad like "2025%";
where year(fecha_caducidad) = 2025;

-- Selecciona los productos cuyo nombre sea 'Arroz'.
select *
from Producto
where nombre = "Arroz";

-- Selecciona los productos cuyo tamaño sea mayor que '500g'.
select *
from Producto
where tamanio >= "500g";

-- Selecciona los productos cuyo nombre contiene la letra 'o'.
select *
from Producto
where nombre like '%o%';

-- Selecciona los productos cuyo precio sea menor o igual a 1.50.
select *
from Producto
where precio <= "1.50";

-- Selecciona los productos cuyo nombre no sea 'Azúcar'.
select *
from Producto
where nombre <> "Azucar";

-- Selecciona los productos cuya fecha de caducidad sea antes del 1 de enero de 2026.
select *
from Producto
where fecha_caducidad <= "2026-01-01";

-- Selecciona los productos cuyo tamaño sea exactamente '1kg'.
select *
from Producto
where tamanio = "1kg";

-- Selecciona los productos cuyo precio sea exactamente 1.29.
select *
from Producto
where precio = "1.29";

-- Selecciona los productos que caducan después del 31 de diciembre de 2024 y cuyo precio sea mayor a 1.50.
select *
from Producto
where fecha_caducidad > "2024-12-31" and precio > "1.50";

-- Selecciona los productos cuyo nombre termine en 'a'.
select *
from Producto
where nombre like '%a';













