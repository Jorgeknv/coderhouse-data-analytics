-- Curso: Data Analytics
-- Módulo 3 - Tema 2: Diseño de esquemas con DDL
-- Ejercicio: modulo3_unidad2_diseno.sql
-- Motor utilizado: PostgreSQL 
-- Herramienta utilizada: DBeaver

-- Tabla de Clientes
-- Esta tabla almacena información básica de los clientes.
create table clientes (
	-- INT porque el identificador del cliente es un número entero.
	-- PRIMARY KEY porque cada cliente debe tener un identificador único.
	id_cliente int primary key,
	-- VARCHAR(100) porque el nombre es texto de longitud limitada.
    -- NOT NULL porque todo cliente debería tener un nombre registrado.
	nombre varchar(100) not null,
	-- TEXT porque la biografía o notas pueden ser textos largos y variables.
	perfil_bio text,
	-- DATE porque solo se necesita guardar la fecha de registro, sin hora.
	fecha_registro date not null
);

-- Tabla de Productos
-- Esta tabla almacena información básica de los productos disponibles.
create table productos (
	-- INTEGER porque el identificador del producto es un número entero.
    -- PRIMARY KEY porque cada producto debe tener un identificador único.
	id_producto int primary key,
	-- VARCHAR(255) porque la descripción es texto con una longitud máxima razonable.
	descripcion varchar(255) not null,
	-- NUMERIC(10,2) porque el precio es un importe exacto:
    -- hasta 10 dígitos en total y 2 decimales.
    -- Se usa NUMERIC/DECIMAL y no FLOAT porque el dinero requiere precisión.
	precio numeric(10,2) not null check (precio >= 0),
	-- BOOLEAN porque esta columna solo representa dos estados:
    -- TRUE = producto activo / a la venta.
    -- FALSE = producto inactivo / no disponible.
    -- DEFAULT TRUE porque normalmente un producto nuevo se registra como activo.
	esta_activo boolean not null default true
);
