USE GD2C2022
GO

-- DROP FUNCIONES ------------------------------------------------------------

-- DROP DE VIEWS ----------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD.BI_V_') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD.BI_V_
  GO

-- DROP TABLAS DIMENSIONALES ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD.BI_FECHA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_FECHA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_PROVINCIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_PROVINCIA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_RANGO_ETARIO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_RANGO_ETARIO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_CANAL_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_CANAL_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MEDIO_PAGO_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_MEDIO_PAGO_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MEDIO_PAGO_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_MEDIO_PAGO_COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_CATEGORIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_CATEGORIA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_PRODUCTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_PRODUCTO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_TIPO_DESCUENTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_TIPO_DESCUENTO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_TIPO_ENVIO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_TIPO_ENVIO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_CLIENTE') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_CLIENTE
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_PROVEEDOR') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_PROVEEDOR
  GO


-- DROP TABLAS DE HECHOS ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD.BI_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.BI_COMPRA
  GO

-- DROP PROCEDURES DE MIGRACION DE TABLAS DIMENSIONALES ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_FECHA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_FECHA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_PROVINCIA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_PROVINCIA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_LLENAR_RANGO_ETARIO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_LLENAR_RANGO_ETARIO 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_CANAL_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_CANAL_VENTA
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_COMPRA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_COMPRA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_VENTA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_CATEGORIA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_CATEGORIA
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_PRODUCTO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_PRODUCTO 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_TIPO_DESCUENTO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_TIPO_DESCUENTO
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_ENVIO_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_ENVIO_VENTA
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_CLIENTE') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_CLIENTE
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_PROVEEDOR') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_PROVEEDOR
GO

-- DROP PROCEDURES DE MIGRACION DE TABLAS DE HECHOS ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_VENTA
GO

IF OBJECT_ID('SE_APRUEBA_GDD.BI_MIGRAR_COMPRA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.BI_MIGRAR_COMPRA
GO

-- DROP ESQUEMA

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'SE_APRUEBA_GDD')
    DROP SCHEMA SE_APRUEBA_GDD
GO


-- CREACION ESQUEMA

CREATE SCHEMA SE_APRUEBA_GDD -- Después de authorization vá la contraseña

GO

-- CREACIÓN TABLAS DIMENSIONALES


create table SE_APRUEBA_GDD.BI_FECHA (
    FECHA_ID decimal(19,0),
    FECHA_AÑO decimal(19,0),
	FECHA_MES decimal(19,0),
	PRIMARY KEY (FECHA_ID)
);


create table SE_APRUEBA_GDD.BI_PROVINCIA (
	PROVINCIA_ID decimal(19,0) identity(1,1),
	PROVINCIA_NOMBRE nvarchar(255),
	PRIMARY KEY (PROVINCIA_ID) 
);


create table SE_APRUEBA_GDD.BI_RANGO_ETARIO (
    RANGO_ID decimal(19,0) identity(1,1),
    RANGO_EDAD_INI decimal(19,0),
    RANGO_EDAD_FIN decimal(19,0),
    PRIMARY KEY (RANGO_ID) 
);

create table SE_APRUEBA_GDD.BI_CANAL_VENTA (
	CANAL_VENTA_ID decimal(19, 0) identity(1,1),
	CANAL_VENTA_TIPO nvarchar(2255),
	CANAL_VENTA_COSTO decimal(18,2),
	PRIMARY KEY (CANAL_VENTA_ID)
);

create table SE_APRUEBA_GDD.BI_MEDIO_PAGO_COMPRA (
	MEDIO_PAGO_ID decimal(19, 0) identity(1,1),
	MEDIO_PAGO_TIPO nvarchar(255),
	PRIMARY KEY (MEDIO_PAGO_ID)
)

create table SE_APRUEBA_GDD.BI_MEDIO_PAGO_VENTA (
	MEDIO_PAGO_ID decimal(19,0) identity(1,1),
	MEDIO_PAGO_TIPO nvarchar(255),
	MEDIO_PAGO_COSTO decimal(18,2),
	MEDIO_PAGO_DESCUENTO decimal(18, 2),
	PRIMARY KEY (MEDIO_PAGO_ID)
);

create table SE_APRUEBA_GDD.BI_CATEGORIA (
	CATEGORIA_ID decimal(19,0) identity(1,1),
	CATEGORIA_DESCRIPCION nvarchar(50),
	PRIMARY KEY (CATEGORIA_ID)
);

create table SE_APRUEBA_GDD.BI_PRODUCTO (
	PRODUCTO_ID nvarchar(50),
	PRODUCTO_DESCRIPCION nvarchar(50),
	PRODUCTO_NOMBRE nvarchar(50),
	PRODUCTO_CATEGORIA decimal(19,0),
	PRIMARY KEY (PRODUCTO_ID),
	FOREIGN KEY (PRODUCTO_CATEGORIA) REFERENCES SE_APRUEBA_GDD.CATEGORIA(CATEGORIA_ID)
);

/* TODO: Crear tabla tipo descuento

create table SE_APRUEBA_GDD.BI_TIPO_DESCUENTO ();

*/

create table SE_APRUEBA_GDD.BI_ENVIO_VENTA (
	ENVIO_VENTA_ID decimal(19,0) identity(1,1),
	ENVIO_VENTA_TIPO nvarchar(255),
	ENVIO_VENTA_PRECIO decimal(18,2),
	PRIMARY KEY (ENVIO_VENTA_ID)
);

create table SE_APRUEBA_GDD.BI_CLIENTE (
	CLIENTE_ID decimal(19, 0) identity(1,1),
	CLIENTE_NOMBRE nvarchar(255),
	CLIENTE_APELLIDO nvarchar(255),
	CLIENTE_DNI decimal(18, 0),
	CLIENTE_DIRECCION nvarchar(255),
	CLIENTE_TELEFONO decimal(18,0),
	CLIENTE_MAIL nvarchar(255),
	CLIENTE_FECHA_NAC date,
	PRIMARY KEY (CLIENTE_ID)
);

create table SE_APRUEBA_GDD.BI_PROVEEDOR (
	PROVEEDOR_CUIT nvarchar(50),
	PROVEEDOR_RAZON_SOCIAL nvarchar(50),
	PROVEEDOR_DOMICILIO nvarchar(50),
	PROVEEDOR_MAIL nvarchar(50),
	PRIMARY KEY (PROVEEDOR_CUIT)
);

-- CREACIÓN TABLAS HECHOS

create table SE_APRUEBA_GDD.BI_VENTA (
    FECHA_ID decimal(19,0),
    CLIENTE_ID decimal(19, 0),
    RANGO_ID decimal(19,0),
    MEDIO_PAGO_ID decimal(19,0),
    CANAL_VENTA_ID decimal(19, 0),
    PROVINCIA_ID decimal(19,0),
    PRODUCTO_ID nvarchar(50),


);

create table SE_APRUEBA_GDD.BI_COMPRA (
    FECHA_ID decimal(19,0),
    PROVEEDOR_CUIT decimal(19, 0),
    MEDIO_PAGO_ID decimal(19,0),
    CANAL_VENTA_ID decimal(19, 0),
    PROVINCIA_ID decimal(19,0),
    PRODUCTO_ID nvarchar(50),

);

--  CREACIÓN DE PROCEDURES DE TABLAS DIMENSIONALES

create procedure SE_APRUEBA_GDD.BI_MIGRAR_FECHA as
begin
	-- TODO
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_PROVINCIA as -- ver lo de identity a ver si lo traemos o lo generamos de nuevo
begin
	insert into SE_APRUEBA_GDD.BI_PROVINCIA(PROVINCIA_ID PROVINCIA_NOMBRE)
    select * from SE_APRUEBA_GDD.PROVINCIA
    order by PROVINCIA_CODIGO
end
go

create procedure SE_APRUEBA_GDD.BI_LLENAR_RANGO_ETARIO as
begin
	insert into SE_APRUEBA_GDD.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (0,25)
    insert into SE_APRUEBA_GDD.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (25,35)
    insert into SE_APRUEBA_GDD.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (35,55)
    insert into SE_APRUEBA_GDD.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (55,null)
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_CANAL_VENTA as
begin
	insert into SE_APRUEBA_GDD.BI_CANAL_VENTA(CANAL_VENTA_ID, CANAL_VENTA_TIPO, CANAL_VENTA_COSTO)
    select * from SE_APRUEBA_GDD.CANAL_VENTA
end
go


create procedure SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_COMPRA as
begin
	insert into SE_APRUEBA_GDD.BI_MEDIO_PAGO_COMPRA(MEDIO_PAGO_ID, MEDIO_PAGO_TIPO)
    select * from SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA
end
go


create procedure SE_APRUEBA_GDD.BI_MIGRAR_MEDIO_PAGO_VENTA as
begin
	insert into SE_APRUEBA_GDD.BI_MEDIO_PAGO_VENTA(MEDIO_PAGO_ID, MEDIO_PAGO_TIPO, MEDIO_PAGO_COSTO, MEDIO_PAGO_DESCUENTO)
    select * from SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_CATEGORIA as
begin
	insert into SE_APRUEBA_GDD.BI_CATEGORIA(CATEGORIA_ID, CATEGORIA_DESCRIPCION)
    select * from SE_APRUEBA_GDD.CATEGORIA
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_PRODUCTO as
begin
	insert into SE_APRUEBA_GDD.BI_PRODUCTO(PRODUCTO_ID, PRODUCTO_DESCRIPCION, PRODUCTO_NOMBRE, PRODUCTO_CATEGORIA)
    select 
        PRODUCTO_ID, 
        PRODUCTO_DESCRIPCION, 
        PRODUCTO_NOMBRE, 
        PRODUCTO_CATEGORIA, 
    from SE_APRUEBA_GDD.PRODUCTO
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_TIPO_DESCUENTO as
begin
	-- TODO
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_ENVIO_VENTA as
begin
	insert into SE_APRUEBA_GDD.BI_ENVIO_VENTA(ENVIO_VENTA_ID, ENVIO_VENTA_TIPO, ENVIO_VENTA_PRECIO)
    select 
        ENVIO_VENTA_ID, 
        ENVIO_VENTA_TIPO, 
        ENVIO_VENTA_PRECIO
    from SE_APRUEBA_GDD.ENVIO_VENTA
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_CLIENTE as
begin
	insert into SE_APRUEBA_GDD.BI_CLIENTE(CLIENTE_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DNI, CLIENTE_DIRECCION, CLIENTE_TELEFONO, CLIENTE_MAIL, CLIENTE_FECHA_NAC)
    select 
        CLIENTE_ID, 
        CLIENTE_NOMBRE, 
        CLIENTE_APELLIDO, 
        CLIENTE_DNI, 
        CLIENTE_DIRECCION, 
        CLIENTE_TELEFONO, 
        CLIENTE_MAIL, 
        CLIENTE_FECHA_NAC
    from SE_APRUEBA_GDD.CLIENTE
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_PROVEEDOR as
begin
	insert into SE_APRUEBA_GDD.BI_PROVEEDOR(PROVEEDOR_CUIT, PROVEEDOR_RAZON_SOCIAL, PROVEEDOR_DOMICILIO, PROVEEDOR_MAIL)
    select 
        PROVEEDOR_CUIT, 
        PROVEEDOR_RAZON_SOCIAL, 
        PROVEEDOR_DOMICILIO, 
        PROVEEDOR_MAIL
    from SE_APRUEBA_GDD.PROVEEDOR
end
go

--  CREACIÓN DE PROCEDURES DE TABLAS DE HECHOS

create procedure SE_APRUEBA_GDD.BI_MIGRAR_VENTA as
begin
	-- TODO
end
go

create procedure SE_APRUEBA_GDD.BI_MIGRAR_COMPRA as
begin
	-- TODO
end
go


--  CREACIÓN DE VIEWS

/*

Las ganancias mensuales de cada canal de venta.
Se entiende por ganancias al total de las ventas, menos el total de las
compras, menos los costos de transacción totales aplicados asociados los
medios de pagos utilizados en las mismas.

*/

create view SE_APRUEBA_GDD.BI_V_GANANCIAS_CANAL_VENTA
as
    select  
        CANAL_VENTA_ID,
        CANAL_VENTA_TIPO,
        ((select
            sum(VENTA_TOTAL - CANAL_VENTA_COSTO - MEDIO_PAGO_COSTO)
        from BI_VENTA
        join BI_CANAL_VENTA on VENTA_CANAL = CANAL_VENTA_ID
        join BI_MEDIO_PAGO_VENTA on VENTA_MEDIO_PAGO = MEDIO_PAGO_ID
        where VENTA_CANAL = CANAL_VENTA_ID
        group by VENTA_CANAL)

        )

    from BI_CANAL_VENTA
go

/*

Los 5 productos con mayor rentabilidad anual, con sus respectivos %
Se entiende por rentabilidad a los ingresos generados por el producto
(ventas) durante el periodo menos la inversión realizada en el producto
(compras) durante el periodo, todo esto sobre dichos ingresos.
Valor expresado en porcentaje.
Para simplificar, no es necesario tener en cuenta los descuentos aplicados.

*/

create view SE_APRUEBA_GDD.BI_V_PROD_MAYOR_RENT
as
    select  
        PRODUCTO_ID,
        PRODUCTO_NOMBRE,
        PRODUCTO_DESCRIPCION,
        PRODUCTO_CATEGORIA,
        (select
            sum(VENTA_PRECIO_TOTAL) -- entiendo que hay q sumar la tabla prod x venta y no se si tambien la de variante
        from BI_VENTA
        where PRODUCTO_ID = venta
        group by
        )
        
        
    from BI_PRODUCTO
go