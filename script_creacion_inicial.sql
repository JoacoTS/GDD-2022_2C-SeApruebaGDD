USE GD2C2022
GO

------DROPS TABLAS

IF OBJECT_ID('SE_APRUEBA_GDD.PROD_X_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.PROD_X_COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.DESCUENTO_COMPRA_X_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.DESCUENTO_COMPRA_X_COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.DESCUENTO_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.DESCUENTO_COMPRA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.PROVEEDOR') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.PROVEEDOR
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.PROD_X_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.PROD_X_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.VARIANTE') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.VARIANTE
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.TIPO_VARIANTE') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.TIPO_VARIANTE
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.PRODUCTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.PRODUCTO
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.MATERIAL') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.MATERIAL
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CATEGORIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.CATEGORIA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.MARCA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.MARCA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CUPON_X_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.CUPON_X_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CUPON') IS NOT NULL
	DROP TABLE SE_APRUEBA_GDD.CUPON
  GO

IF OBJECT_ID('SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.DESCUENTO_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.DESCUENTO_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.ENVIO_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.ENVIO_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.MEDIO_PAGO_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CANAL_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.CANAL_VENTA
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CLIENTE') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.CLIENTE
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.UBICACION') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.UBICACION
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.CODIGO_POSTAL') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.CODIGO_POSTAL
 GO

IF OBJECT_ID('SE_APRUEBA_GDD.PROVINCIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD.PROVINCIA
 GO

-----DROPS PROCEDURES

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_provincias') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_provincias 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_codigo_postal') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_codigo_postal 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_ubicacion') IS NOT NULL
	DROP PROCEDURE  SE_APRUEBA_GDD.migrar_ubicacion
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_clientes') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_clientes 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_canal_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_canal_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_medio_pago_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_medio_pago_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_envio_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_envio_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_descuento_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_descuento_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_descuento_venta_x_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_descuento_venta_x_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_cupon') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_cupon 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_cupon_x_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_cupon_x_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_marca') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_marca 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_categoria') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_categoria
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_material') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_material 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_producto') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_producto 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_tipo_variante') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_tipo_variante
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_variante_x_producto') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_variante_x_producto 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_variante') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_variante 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_proveedores') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_proveedores 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_medio_pago_compra') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_medio_pago_compra 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_compra') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_compra 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_prod_x_venta') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_prod_x_venta 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_prod_x_compra') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_prod_x_compra 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_descuento_compra') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_descuento_compra 
GO

IF OBJECT_ID('SE_APRUEBA_GDD.migrar_descuento_compra_x_compra') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD.migrar_descuento_compra_x_compra 
GO

-----DROP ESQUEMA

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'SE_APRUEBA_GDD')
    DROP SCHEMA SE_APRUEBA_GDD
GO


--CREACION ESQUEMA

CREATE SCHEMA SE_APRUEBA_GDD -- Después de authorization vá la contraseña

GO

--CREACION DE TABLAS
--Luego de la creacion de la tabla, se crea el indice para dicha tabla

create table SE_APRUEBA_GDD.PROVINCIA (
	PROVINCIA_CODIGO decimal(19,0) identity(1,1),
	PROVINCIA_NOMBRE nvarchar(255),
	PRIMARY KEY (PROVINCIA_CODIGO) 
);

create unique index PROVINCIA_INDEX
on SE_APRUEBA_GDD.PROVINCIA(PROVINCIA_CODIGO);

create table SE_APRUEBA_GDD.CODIGO_POSTAL (
	CODIGO_POSTAL decimal(19,0),
	PROVINCIA_ID decimal(19,0),
	PRIMARY KEY (CODIGO_POSTAL),
	FOREIGN KEY (PROVINCIA_ID) REFERENCES SE_APRUEBA_GDD.PROVINCIA(PROVINCIA_CODIGO)
);

create unique index CODIGO_POSTAL_INDEX
on SE_APRUEBA_GDD.CODIGO_POSTAL(CODIGO_POSTAL);

create table SE_APRUEBA_GDD.UBICACION (
	UBICACION_ID decimal(19,0) identity(1,1),
	UBICACION_LOCALIDAD nvarchar(255),
	UBICACION_CODIGO_POSTAL decimal(19,0),
	PRIMARY KEY (UBICACION_ID),
	FOREIGN KEY (UBICACION_CODIGO_POSTAL) REFERENCES SE_APRUEBA_GDD.CODIGO_POSTAL(CODIGO_POSTAL)
);

create unique index UBICACION_INDEX
on SE_APRUEBA_GDD.UBICACION(UBICACION_ID);

create table SE_APRUEBA_GDD.CLIENTE (
	CLIENTE_ID decimal(19, 0) identity(1,1),
	CLIENTE_UBICACION decimal(19, 0),
	CLIENTE_NOMBRE nvarchar(255),
	CLIENTE_APELLIDO nvarchar(255),
	CLIENTE_DNI decimal(18, 0),
	CLIENTE_DIRECCION nvarchar(255),
	CLIENTE_TELEFONO decimal(18,0),
	CLIENTE_MAIL nvarchar(255),
	CLIENTE_FECHA_NAC date,
	PRIMARY KEY (CLIENTE_ID),
	FOREIGN KEY (CLIENTE_UBICACION) REFERENCES SE_APRUEBA_GDD.UBICACION(UBICACION_ID)
);

create unique index CLIENTE_INDEX
on SE_APRUEBA_GDD.CLIENTE(CLIENTE_ID);

create table SE_APRUEBA_GDD.CANAL_VENTA (
	CANAL_VENTA_ID decimal(19, 0) identity(1,1),
	CANAL_VENTA_TIPO nvarchar(2255),
	CANAL_VENTA_COSTO decimal(18,2),
	PRIMARY KEY (CANAL_VENTA_ID)
);

create unique index CANAL_VENTA_INDEX
on SE_APRUEBA_GDD.CANAL_VENTA(CANAL_VENTA_ID);

create table SE_APRUEBA_GDD.MEDIO_PAGO_VENTA (
	MEDIO_PAGO_ID decimal(19,0) identity(1,1),
	MEDIO_PAGO_TIPO nvarchar(255),
	MEDIO_PAGO_COSTO decimal(18,2),
	MEDIO_PAGO_DESCUENTO decimal(18, 2),
	PRIMARY KEY (MEDIO_PAGO_ID)
);

create unique index MEDIO_PAGO_VENTA_INDEX
on SE_APRUEBA_GDD.MEDIO_PAGO_VENTA(MEDIO_PAGO_ID);

create table SE_APRUEBA_GDD.ENVIO_VENTA (
	ENVIO_VENTA_ID decimal(19,0) identity(1,1),
	ENVIO_VENTA_TIPO nvarchar(255),
	ENVIO_VENTA_UBICACION decimal(19,0),
	ENVIO_VENTA_PRECIO decimal(18,2),
	PRIMARY KEY (ENVIO_VENTA_ID),
	FOREIGN KEY (ENVIO_VENTA_UBICACION) REFERENCES SE_APRUEBA_GDD.UBICACION(UBICACION_ID)
);

create unique index ENVIO_VENTA_INDEX
on SE_APRUEBA_GDD.ENVIO_VENTA(ENVIO_VENTA_ID);

create table SE_APRUEBA_GDD.VENTA (
	VENTA_ID decimal(19,0),
	VENTA_FECHA date,
	VENTA_CLIENTE decimal(19,0),
	VENTA_CANAL decimal(19,0),
	VENTA_MEDIO_PAGO decimal(19,0),
	VENTA_ENVIO decimal(19,0),
	VENTA_TOTAL decimal(18,2),
	PRIMARY KEY (VENTA_ID),
	FOREIGN KEY (VENTA_CLIENTE) REFERENCES SE_APRUEBA_GDD.CLIENTE(CLIENTE_ID),
	FOREIGN KEY (VENTA_CANAL) REFERENCES SE_APRUEBA_GDD.CANAL_VENTA(CANAL_VENTA_ID),
	FOREIGN KEY (VENTA_MEDIO_PAGO) REFERENCES SE_APRUEBA_GDD.MEDIO_PAGO_VENTA(MEDIO_PAGO_ID),
	FOREIGN KEY (VENTA_ENVIO) REFERENCES SE_APRUEBA_GDD.ENVIO_VENTA(ENVIO_VENTA_ID)
);

create unique index VENTA_INDEX
on SE_APRUEBA_GDD.VENTA(VENTA_ID);

create table SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA (
	DESCUENTO_X_VENTA_ID decimal(19,0) identity(1,1),
	VENTA_ID decimal(19, 0),
	DESCUENTO_VENTA_IMPORTE decimal(18,2),
	PRIMARY KEY (DESCUENTO_X_VENTA_ID),
	FOREIGN KEY (VENTA_ID) REFERENCES SE_APRUEBA_GDD.VENTA(VENTA_ID)
);

create unique index DESCUENTO_VENTA_X_VENTA_INDEX
on SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA(DESCUENTO_X_VENTA_ID);

create table SE_APRUEBA_GDD.CUPON (
	CUPON_CODIGO nvarchar(255),
	FECHA_DESDE date,
	FECHA_HASTA date,
	CUPON_TIPO nvarchar(50),
	CUPON_VALOR decimal(18,2),
	PRIMARY KEY (CUPON_CODIGO)
);

create unique index CUPON_INDEX
on SE_APRUEBA_GDD.CUPON(CUPON_CODIGO);

create table SE_APRUEBA_GDD.CUPON_X_VENTA (
	CUPON_CODIGO_VENTA nvarchar(255) not null,
	VENTA_ID_CUPON decimal(19,0) not null,
	CUPON_IMPORTE decimal(18,2),
	FOREIGN KEY (CUPON_CODIGO_VENTA) REFERENCES SE_APRUEBA_GDD.CUPON(CUPON_CODIGO),
	FOREIGN KEY (VENTA_ID_CUPON) REFERENCES SE_APRUEBA_GDD.VENTA(VENTA_ID)
);

create table SE_APRUEBA_GDD.MARCA (
	MARCA_ID decimal(19, 0) identity(1,1),
	MARCA_DESCRIPCION nvarchar(50),
	PRIMARY KEY (MARCA_ID)
);

create unique index MARCA_INDEX
on SE_APRUEBA_GDD.MARCA(MARCA_ID);

create table SE_APRUEBA_GDD.CATEGORIA (
	CATEGORIA_ID decimal(19,0) identity(1,1),
	CATEGORIA_DESCRIPCION nvarchar(50),
	PRIMARY KEY (CATEGORIA_ID)
);

create unique index CATEGORIA_INDEX
on SE_APRUEBA_GDD.CATEGORIA(CATEGORIA_ID);

create table SE_APRUEBA_GDD.MATERIAL (
	MATERIAL_ID decimal(19,0) identity(1,1),
	MATERIAL_DESCRIPCION nvarchar(50),
	PRIMARY KEY (MATERIAL_ID)
);

create unique index MATERIAL_INDEX
on SE_APRUEBA_GDD.MATERIAL(MATERIAL_ID);

create table SE_APRUEBA_GDD.PRODUCTO (
	PRODUCTO_ID nvarchar(50),
	PRODUCTO_DESCRIPCION nvarchar(50),
	PRODUCTO_NOMBRE nvarchar(50),
	PRODUCTO_MARCA decimal(19,0),
	PRODUCTO_CATEGORIA decimal(19,0),
	PRODUCTO_MATERIAL decimal(19,0),
	PRIMARY KEY (PRODUCTO_ID),
	FOREIGN KEY (PRODUCTO_MARCA) REFERENCES SE_APRUEBA_GDD.MARCA(MARCA_ID),
	FOREIGN KEY (PRODUCTO_CATEGORIA) REFERENCES SE_APRUEBA_GDD.CATEGORIA(CATEGORIA_ID),
	FOREIGN KEY (PRODUCTO_MATERIAL) REFERENCES SE_APRUEBA_GDD.MATERIAL(MATERIAL_ID)
);

create unique index PRODUCTO_INDEX
on SE_APRUEBA_GDD.PRODUCTO(PRODUCTO_ID);

create table SE_APRUEBA_GDD.TIPO_VARIANTE (
	TIPO_VARIANTE_ID decimal(4) identity(1,1),
	TIPO_VARIANTE_DETALLE nvarchar(50),
	PRIMARY KEY (TIPO_VARIANTE_ID)
);

create unique index TIPO_VARIANTE_INDEX
on SE_APRUEBA_GDD.TIPO_VARIANTE(TIPO_VARIANTE_ID);

create table SE_APRUEBA_GDD.VARIANTE (
	VARIANTE_ID decimal(19,0) identity(1,1),
	VARIANTE_TIPO_VAR_ID decimal(4),
	VARIANTE_DETALLE nvarchar(50),
	PRIMARY KEY (VARIANTE_ID),
	FOREIGN KEY (VARIANTE_TIPO_VAR_ID) REFERENCES SE_APRUEBA_GDD.TIPO_VARIANTE(TIPO_VARIANTE_ID)
);

create unique index VARIANTE_INDEX
on SE_APRUEBA_GDD.VARIANTE(VARIANTE_ID);

create table SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO (
	VARIANTE_X_PRODUCTO_ID nvarchar(50),
	VARIANTE_ID decimal(19,0),
	PRODUCTO_ID nvarchar(50),
	VARIANTE_X_PRODUCTO_STOCK decimal(19,0),
	VARIANTE_X_PRODUCTO_PRECIO_COMPRA decimal(18, 2),
	VARIANTE_X_PRODUCTO_PRECIO_VENTA decimal(18, 2),
	PRIMARY KEY (VARIANTE_X_PRODUCTO_ID),
	FOREIGN KEY (VARIANTE_ID) REFERENCES SE_APRUEBA_GDD.VARIANTE(VARIANTE_ID),
	FOREIGN KEY (PRODUCTO_ID) REFERENCES SE_APRUEBA_GDD.PRODUCTO(PRODUCTO_ID)
);

create unique index VARIANTE_X_PRODUCTO_INDEX
on SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO(VARIANTE_X_PRODUCTO_ID);

create table SE_APRUEBA_GDD.PROD_X_VENTA (
	VARIANTE_X_PRODUCTO_ID nvarchar(50) not null,
	VENTA_ID decimal(19, 0) not null,
	VENTA_PRODUCTO_CANTIDAD decimal(18,0),
	VENTA_PRECIO_TOTAL decimal(18,2),
	FOREIGN KEY (VARIANTE_X_PRODUCTO_ID) REFERENCES SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO(VARIANTE_X_PRODUCTO_ID),
	FOREIGN KEY (VENTA_ID) REFERENCES SE_APRUEBA_GDD.VENTA(VENTA_ID)
);

create table SE_APRUEBA_GDD.PROVEEDOR (
	PROVEEDOR_CUIT nvarchar(50),
	PROVEEDOR_RAZON_SOCIAL nvarchar(50),
	PROVEEDOR_DOMICILIO nvarchar(50),
	PROVEEDOR_MAIL nvarchar(50),
	UBICACION_PROVEEDOR decimal(19,0),
	PRIMARY KEY (PROVEEDOR_CUIT)
);

create unique index PROVEEDOR_INDEX
on SE_APRUEBA_GDD.PROVEEDOR(PROVEEDOR_CUIT);

create table SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA (
	MEDIO_PAGO_ID decimal(19, 0) identity(1,1),
	MEDIO_PAGO_TIPO nvarchar(255),
	PRIMARY KEY (MEDIO_PAGO_ID)
)

create unique index MEDIO_PAGO_COMPRA_INDEX
on SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA(MEDIO_PAGO_ID);

create table SE_APRUEBA_GDD.DESCUENTO_COMPRA (
	DESCUENTO_COMPRA_CODIGO decimal(19,0),
	DESCUENTO_COMPRA_VALOR decimal(18, 2),
	PRIMARY KEY (DESCUENTO_COMPRA_CODIGO)
);

create unique index DESCUENTO_COMPRA_INDEX
on SE_APRUEBA_GDD.DESCUENTO_COMPRA(DESCUENTO_COMPRA_CODIGO);

create table SE_APRUEBA_GDD.COMPRA (
	COMPRA_NUMERO decimal(19, 0),
	COMPRA_PROVEEDOR nvarchar(50),
	COMPRA_MEDIO_PAGO decimal(19,0),
	COMPRA_TOTAL decimal(18,2),
	COMPRA_FECHA date,
	PRIMARY KEY (COMPRA_NUMERO),
	FOREIGN KEY (COMPRA_PROVEEDOR) REFERENCES SE_APRUEBA_GDD.PROVEEDOR(PROVEEDOR_CUIT),
	FOREIGN KEY (COMPRA_MEDIO_PAGO) REFERENCES SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA(MEDIO_PAGO_ID)
);

create unique index COMPRA_INDEX
on SE_APRUEBA_GDD.COMPRA(COMPRA_NUMERO);

create table SE_APRUEBA_GDD.DESCUENTO_COMPRA_X_COMPRA (
	DESCUENTO_COMP_CODIGO decimal(19,0) not null,
	COMP_CODIGO decimal(19,0) not null,
	FOREIGN KEY (DESCUENTO_COMP_CODIGO) REFERENCES SE_APRUEBA_GDD.DESCUENTO_COMPRA(DESCUENTO_COMPRA_CODIGO),
	FOREIGN KEY (COMP_CODIGO) REFERENCES SE_APRUEBA_GDD.COMPRA(COMPRA_NUMERO)
);

create table SE_APRUEBA_GDD.PROD_X_COMPRA (
	PROD_COMPRA_NUMERO decimal(19, 0),
	VARIANTE_X_PRODUCTO_ID nvarchar(50),
	COMPRA_PRODUCTO_CANTIDAD decimal(18,0),
	COMPRA_TOTAL decimal(18,2),
	FOREIGN KEY (PROD_COMPRA_NUMERO) REFERENCES SE_APRUEBA_GDD.COMPRA(COMPRA_NUMERO),
	FOREIGN KEY (VARIANTE_X_PRODUCTO_ID) REFERENCES SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO(VARIANTE_X_PRODUCTO_ID)
);
GO

--  CREACIÓN DE PROCEDURES (INSERTS)

CREATE PROCEDURE SE_APRUEBA_GDD.migrar_provincias 
AS
BEGIN
	INSERT INTO SE_APRUEBA_GDD.PROVINCIA
	(PROVINCIA_NOMBRE)
	SELECT PROVEEDOR_PROVINCIA
	FROM GD2C2022.gd_esquema.Maestra
	WHERE PROVEEDOR_PROVINCIA IS NOT NULL
	GROUP BY PROVEEDOR_PROVINCIA
	union
	select CLIENTE_PROVINCIA
	from GD2C2022.gd_esquema.Maestra
	WHERE CLIENTE_PROVINCIA IS NOT NULL
	GROUP BY CLIENTE_PROVINCIA
END
GO

CREATE PROCEDURE SE_APRUEBA_GDD.migrar_codigo_postal 
AS
BEGIN
	INSERT INTO SE_APRUEBA_GDD.CODIGO_POSTAL
	(CODIGO_POSTAL, PROVINCIA_ID)
	select CLIENTE_CODIGO_POSTAL,
	case when cliente_provincia is not null
	then
	(
		select PROVINCIA_CODIGO
			from SE_APRUEBA_GDD.PROVINCIA
			where CLIENTE_PROVINCIA = PROVINCIA_NOMBRE
			group by PROVINCIA_CODIGO
	)
	else null end
	from GD2C2022.gd_esquema.Maestra
	where CLIENTE_CODIGO_POSTAL is not null
	group by CLIENTE_CODIGO_POSTAL, CLIENTE_PROVINCIA
	

	insert into SE_APRUEBA_GDD.CODIGO_POSTAL
	(CODIGO_POSTAL, PROVINCIA_ID)
	select PROVEEDOR_CODIGO_POSTAL,
	(
		select PROVINCIA_CODIGO
			from SE_APRUEBA_GDD.PROVINCIA
			where
				PROVEEDOR_PROVINCIA = PROVINCIA_NOMBRE
			group by PROVINCIA_CODIGO
	)
	from GD2C2022.gd_esquema.Maestra
	where
		PROVEEDOR_CODIGO_POSTAL is not null 
		and
		PROVEEDOR_CODIGO_POSTAL not in (select CODIGO_POSTAL from SE_APRUEBA_GDD.CODIGO_POSTAL)
	group by PROVEEDOR_CODIGO_POSTAL, PROVEEDOR_PROVINCIA

END
GO

create procedure SE_APRUEBA_GDD.migrar_ubicacion as
begin
	insert into SE_APRUEBA_GDD.UBICACION
	(UBICACION_CODIGO_POSTAL, UBICACION_LOCALIDAD)
	select
		(select CODIGO_POSTAL from SE_APRUEBA_GDD.CODIGO_POSTAL
		where CLIENTE_CODIGO_POSTAL = CODIGO_POSTAL),
		CLIENTE_LOCALIDAD
	from GD2C2022.gd_esquema.Maestra
	where CLIENTE_LOCALIDAD is not null
	group by CLIENTE_CODIGO_POSTAL, CLIENTE_LOCALIDAD

	insert into SE_APRUEBA_GDD.UBICACION
	(UBICACION_CODIGO_POSTAL, UBICACION_LOCALIDAD)
	select 
	(
		select CODIGO_POSTAL
			from SE_APRUEBA_GDD.CODIGO_POSTAL
			where PROVEEDOR_CODIGO_POSTAL = CODIGO_POSTAL
	),
	PROVEEDOR_LOCALIDAD
	from GD2C2022.gd_esquema.Maestra
	where
		PROVEEDOR_LOCALIDAD not in (select UBICACION_LOCALIDAD from SE_APRUEBA_GDD.UBICACION) 
		and
		PROVEEDOR_CODIGO_POSTAL not in (select CODIGO_POSTAL from SE_APRUEBA_GDD.CODIGO_POSTAL)
	group by PROVEEDOR_CODIGO_POSTAL, PROVEEDOR_LOCALIDAD

end
go

create procedure SE_APRUEBA_GDD.migrar_clientes as
begin
	insert into SE_APRUEBA_GDD.CLIENTE
	(CLIENTE_UBICACION,
	CLIENTE_NOMBRE,
	CLIENTE_APELLIDO,
	CLIENTE_DNI,
	CLIENTE_DIRECCION,
	CLIENTE_TELEFONO,
	CLIENTE_MAIL,
	CLIENTE_FECHA_NAC)
	select
		case when CLIENTE_CODIGO_POSTAL is not null or CLIENTE_LOCALIDAD is not null
		then
		(select UBICACION_ID from SE_APRUEBA_GDD.UBICACION
		where CLIENTE_CODIGO_POSTAL = UBICACION_CODIGO_POSTAL and CLIENTE_LOCALIDAD = UBICACION_LOCALIDAD)
		else null end,
		CLIENTE_NOMBRE,
		CLIENTE_APELLIDO,
		CLIENTE_DNI,
		CLIENTE_DIRECCION,
		CLIENTE_TELEFONO,
		CLIENTE_MAIL,
		CLIENTE_FECHA_NAC
	from GD2C2022.gd_esquema.Maestra
	where CLIENTE_NOMBRE is not null or CLIENTE_APELLIDO is not null or CLIENTE_DNI is not null
	group by
		CLIENTE_CODIGO_POSTAL,
		CLIENTE_LOCALIDAD,
		CLIENTE_NOMBRE,
		CLIENTE_APELLIDO,
		CLIENTE_DNI,
		CLIENTE_DIRECCION,
		CLIENTE_TELEFONO,
		CLIENTE_MAIL,
		CLIENTE_FECHA_NAC
end
go

create procedure SE_APRUEBA_GDD.migrar_canal_venta as
begin
	insert into SE_APRUEBA_GDD.CANAL_VENTA
	(CANAL_VENTA_TIPO, CANAL_VENTA_COSTO)
	select
		VENTA_CANAL,
		VENTA_CANAL_COSTO
	from GD2C2022.gd_esquema.Maestra
	where VENTA_CANAL is not null
	group by VENTA_CANAL, VENTA_CANAL_COSTO

end
go

create procedure SE_APRUEBA_GDD.migrar_medio_pago_venta as
begin
	insert into SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
	(MEDIO_PAGO_TIPO, MEDIO_PAGO_COSTO, MEDIO_PAGO_DESCUENTO)
	select
		VENTA_MEDIO_PAGO,
		VENTA_MEDIO_PAGO_COSTO,
		case when VENTA_MEDIO_PAGO in (select VENTA_DESCUENTO_CONCEPTO from gd_esquema.Maestra group by VENTA_DESCUENTO_CONCEPTO)
		then (select round(avg(VENTA_DESCUENTO_IMPORTE/VENTA_TOTAL), 2) from gd_esquema.Maestra m2 where m2.VENTA_DESCUENTO_CONCEPTO = m1.VENTA_MEDIO_PAGO group by VENTA_DESCUENTO_CONCEPTO)
		else 0 end
	from GD2C2022.gd_esquema.Maestra m1
	where VENTA_MEDIO_PAGO is not null
	group by VENTA_MEDIO_PAGO, VENTA_MEDIO_PAGO_COSTO
end
go

create procedure SE_APRUEBA_GDD.migrar_envio_venta as
begin
	insert into SE_APRUEBA_GDD.ENVIO_VENTA
	(ENVIO_VENTA_TIPO, ENVIO_VENTA_UBICACION, ENVIO_VENTA_PRECIO)
	select
		VENTA_MEDIO_ENVIO,
		(select
			UBICACION_ID
			from SE_APRUEBA_GDD.UBICACION
			where CLIENTE_LOCALIDAD = UBICACION_LOCALIDAD and CLIENTE_CODIGO_POSTAL = UBICACION_CODIGO_POSTAL
		),
		VENTA_ENVIO_PRECIO
	from gd_esquema.Maestra
	where VENTA_MEDIO_ENVIO is not null
	group by VENTA_MEDIO_ENVIO, VENTA_ENVIO_PRECIO, CLIENTE_CODIGO_POSTAL, CLIENTE_LOCALIDAD
end
go


create procedure SE_APRUEBA_GDD.migrar_venta as
begin
	insert into SE_APRUEBA_GDD.VENTA
	(VENTA_ID, VENTA_FECHA, VENTA_CLIENTE, VENTA_ENVIO, VENTA_CANAL, VENTA_MEDIO_PAGO, VENTA_TOTAL)
	select
		m1.VENTA_CODIGO,
		m1.VENTA_FECHA,
		(select
			CLIENTE_ID
		from SE_APRUEBA_GDD.CLIENTE c1
		where 
			(m1.CLIENTE_APELLIDO = c1.CLIENTE_APELLIDO and 
			m1.CLIENTE_NOMBRE = c1.CLIENTE_NOMBRE) and
			m1.CLIENTE_DNI = c1.CLIENTE_DNI),
		(select
			ENVIO_VENTA_ID 
			from SE_APRUEBA_GDD.ENVIO_VENTA join SE_APRUEBA_GDD.UBICACION
			on ENVIO_VENTA_UBICACION = UBICACION_ID
			where m1.CLIENTE_LOCALIDAD = UBICACION_LOCALIDAD and m1.CLIENTE_CODIGO_POSTAL = UBICACION_CODIGO_POSTAL and VENTA_MEDIO_ENVIO = ENVIO_VENTA_TIPO
			group by ENVIO_VENTA_ID),
		(select
			CANAL_VENTA_ID
			from SE_APRUEBA_GDD.CANAL_VENTA
			where m1.VENTA_CANAL = CANAL_VENTA_TIPO and m1.VENTA_CANAL_COSTO = CANAL_VENTA_COSTO),
		(select
			MEDIO_PAGO_ID
			from SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
			where m1.VENTA_MEDIO_PAGO = MEDIO_PAGO_TIPO),
		m1.VENTA_TOTAL
	from gd_esquema.Maestra m1
	where VENTA_CODIGO is not null
	group by
		VENTA_CODIGO,
		VENTA_FECHA,
		CLIENTE_APELLIDO,
		CLIENTE_NOMBRE,
		CLIENTE_DNI,
		CLIENTE_LOCALIDAD,
		CLIENTE_CODIGO_POSTAL,
		VENTA_CANAL,
		VENTA_MEDIO_ENVIO,
		VENTA_CANAL_COSTO,
		VENTA_MEDIO_PAGO,
		VENTA_MEDIO_PAGO_COSTO,
		VENTA_TOTAL
end
go

create procedure SE_APRUEBA_GDD.migrar_cupon as
begin
	insert into SE_APRUEBA_GDD.CUPON
	(CUPON_CODIGO, FECHA_DESDE, FECHA_HASTA, CUPON_TIPO, CUPON_VALOR)
	select
		VENTA_CUPON_CODIGO,
		VENTA_CUPON_FECHA_DESDE,
		VENTA_CUPON_FECHA_HASTA,
		VENTA_CUPON_TIPO,
		VENTA_CUPON_VALOR
	from gd_esquema.Maestra
	where VENTA_CUPON_CODIGO is not null
	group by
		VENTA_CUPON_CODIGO,
		VENTA_CUPON_FECHA_DESDE,
		VENTA_CUPON_FECHA_HASTA,
		VENTA_CUPON_TIPO,
		VENTA_CUPON_VALOR
end
go

create procedure SE_APRUEBA_GDD.migrar_cupon_x_venta as
begin
	insert into SE_APRUEBA_GDD.CUPON_X_VENTA
	(CUPON_CODIGO_VENTA, VENTA_ID_CUPON, CUPON_IMPORTE)
	select
		VENTA_CUPON_CODIGO,
		VENTA_CODIGO,
		VENTA_CUPON_IMPORTE
	from gd_esquema.Maestra
	where VENTA_CUPON_CODIGO is not null
	group by
		VENTA_CUPON_CODIGO,
		VENTA_CODIGO,
		VENTA_CUPON_IMPORTE
end
go


create procedure SE_APRUEBA_GDD.migrar_marca as
begin
	insert into SE_APRUEBA_GDD.MARCA
	(MARCA_DESCRIPCION)
	select
		PRODUCTO_MARCA
	from gd_esquema.Maestra
	where PRODUCTO_MARCA is not null
	group by PRODUCTO_MARCA
end
go

create procedure SE_APRUEBA_GDD.migrar_categoria as
begin
	insert into SE_APRUEBA_GDD.CATEGORIA
	(CATEGORIA_DESCRIPCION)
	select
		PRODUCTO_CATEGORIA
	from gd_esquema.Maestra
	where PRODUCTO_CATEGORIA is not null
	group by PRODUCTO_CATEGORIA
end
go

create procedure SE_APRUEBA_GDD.migrar_material as
begin
	insert into SE_APRUEBA_GDD.MATERIAL
	(MATERIAL_DESCRIPCION)
	select
		PRODUCTO_MATERIAL
	from gd_esquema.Maestra
	where PRODUCTO_MATERIAL is not null
	group by PRODUCTO_MATERIAL
end
go

create procedure SE_APRUEBA_GDD.migrar_producto as
begin
	insert into SE_APRUEBA_GDD.PRODUCTO
	(PRODUCTO_ID, PRODUCTO_DESCRIPCION, PRODUCTO_NOMBRE, PRODUCTO_MARCA, PRODUCTO_CATEGORIA, PRODUCTO_MATERIAL)
	select
		PRODUCTO_CODIGO,
		PRODUCTO_DESCRIPCION,
		PRODUCTO_NOMBRE,
		(select
			MARCA_ID 
			from SE_APRUEBA_GDD.MARCA
			where PRODUCTO_MARCA = MARCA_DESCRIPCION),
		(select
			CATEGORIA_ID 
			from SE_APRUEBA_GDD.CATEGORIA
			where PRODUCTO_CATEGORIA = CATEGORIA_DESCRIPCION),
		(select
			MATERIAL_ID 
			from SE_APRUEBA_GDD.MATERIAL
			where PRODUCTO_MATERIAL = MATERIAL_DESCRIPCION)
	from gd_esquema.Maestra
	where PRODUCTO_CODIGO is not null
	group by
		PRODUCTO_CODIGO,
		PRODUCTO_DESCRIPCION,
		PRODUCTO_NOMBRE,
		PRODUCTO_MARCA,
		PRODUCTO_CATEGORIA,
		PRODUCTO_MATERIAL
end
go

create procedure SE_APRUEBA_GDD.migrar_tipo_variante as
begin
	insert into SE_APRUEBA_GDD.TIPO_VARIANTE
	(TIPO_VARIANTE_DETALLE)
	select
		PRODUCTO_TIPO_VARIANTE
	from gd_esquema.Maestra
	where PRODUCTO_TIPO_VARIANTE is not null
	group by PRODUCTO_TIPO_VARIANTE
end
go

create procedure SE_APRUEBA_GDD.migrar_variante as
begin
	insert into SE_APRUEBA_GDD.VARIANTE
	(VARIANTE_TIPO_VAR_ID, VARIANTE_DETALLE)
	select
		(select
			TIPO_VARIANTE_ID 
			from SE_APRUEBA_GDD.TIPO_VARIANTE
			where PRODUCTO_TIPO_VARIANTE = TIPO_VARIANTE_DETALLE),
		PRODUCTO_VARIANTE
	from gd_esquema.Maestra
	where PRODUCTO_TIPO_VARIANTE is not null
	group by
		PRODUCTO_TIPO_VARIANTE,
		PRODUCTO_VARIANTE
end
go

create procedure SE_APRUEBA_GDD.migrar_variante_x_producto as
begin
	insert into VARIANTE_X_PRODUCTO
	(VARIANTE_X_PRODUCTO_ID, VARIANTE_ID, PRODUCTO_ID, VARIANTE_X_PRODUCTO_PRECIO_COMPRA, VARIANTE_X_PRODUCTO_PRECIO_VENTA, VARIANTE_X_PRODUCTO_STOCK)
	select
		PRODUCTO_VARIANTE_CODIGO,
		(select
			VARIANTE_ID
		from SE_APRUEBA_GDD.VARIANTE
		where PRODUCTO_VARIANTE = VARIANTE_DETALLE),
		PRODUCTO_CODIGO,
		(select top 1
			COMPRA_PRODUCTO_PRECIO
		from gd_esquema.Maestra m2
		where m1.PRODUCTO_CODIGO = m2.PRODUCTO_CODIGO
		order by COMPRA_FECHA desc),
		(select top 1
			VENTA_PRODUCTO_PRECIO
		from gd_esquema.Maestra m3
		where m1.PRODUCTO_CODIGO = m3.PRODUCTO_CODIGO
		order by VENTA_FECHA desc),
		sum(COMPRA_PRODUCTO_CANTIDAD) - sum(VENTA_PRODUCTO_CANTIDAD)		
	from gd_esquema.Maestra m1
	where PRODUCTO_VARIANTE_CODIGO is not null
	group by
		PRODUCTO_CODIGO,
		PRODUCTO_VARIANTE_CODIGO,
		PRODUCTO_VARIANTE
end
go

create procedure SE_APRUEBA_GDD.migrar_proveedores as
begin
	insert into SE_APRUEBA_GDD.PROVEEDOR
	(PROVEEDOR_CUIT,
	PROVEEDOR_DOMICILIO,
	PROVEEDOR_MAIL,
	PROVEEDOR_RAZON_SOCIAL,
	UBICACION_PROVEEDOR)
	select
		PROVEEDOR_CUIT,
		PROVEEDOR_DOMICILIO,
		PROVEEDOR_MAIL,
		PROVEEDOR_RAZON_SOCIAL,
		case when PROVEEDOR_CODIGO_POSTAL is not null or PROVEEDOR_LOCALIDAD is not null
		then
		(select UBICACION_ID from SE_APRUEBA_GDD.UBICACION
		where PROVEEDOR_CODIGO_POSTAL = UBICACION_CODIGO_POSTAL and PROVEEDOR_LOCALIDAD = UBICACION_LOCALIDAD)
		else null end
	from GD2C2022.gd_esquema.Maestra
	where PROVEEDOR_CUIT is not null
	group by
		PROVEEDOR_CUIT,
		PROVEEDOR_DOMICILIO,
		PROVEEDOR_MAIL,
		PROVEEDOR_RAZON_SOCIAL,
		PROVEEDOR_CODIGO_POSTAL,
		PROVEEDOR_LOCALIDAD
end
go

create procedure SE_APRUEBA_GDD.migrar_medio_pago_compra as
begin
	insert into SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA
	(MEDIO_PAGO_TIPO)
	select
		COMPRA_MEDIO_PAGO
	from gd_esquema.Maestra
	where COMPRA_MEDIO_PAGO is not null
	group by COMPRA_MEDIO_PAGO
end
go

create procedure SE_APRUEBA_GDD.migrar_compra as
begin
	insert into SE_APRUEBA_GDD.COMPRA
	(COMPRA_NUMERO, COMPRA_PROVEEDOR, COMPRA_MEDIO_PAGO, COMPRA_FECHA, COMPRA_TOTAL)
	select
		COMPRA_NUMERO,
		(select PROVEEDOR_CUIT from PROVEEDOR p1
		where p1.PROVEEDOR_CUIT = m1.PROVEEDOR_CUIT),
		(select MEDIO_PAGO_ID from SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA
		where MEDIO_PAGO_TIPO = COMPRA_MEDIO_PAGO),
		COMPRA_FECHA,
		COMPRA_TOTAL
	from gd_esquema.Maestra m1
	where COMPRA_NUMERO is not null and PROVEEDOR_CUIT is not null
	group by
		COMPRA_NUMERO,
		PROVEEDOR_CUIT,
		COMPRA_MEDIO_PAGO,
		COMPRA_FECHA,
		COMPRA_TOTAL
end
go

create procedure SE_APRUEBA_GDD.migrar_prod_x_venta as
begin
	insert into SE_APRUEBA_GDD.PROD_X_VENTA
	(VENTA_ID, VARIANTE_X_PRODUCTO_ID, VENTA_PRODUCTO_CANTIDAD, VENTA_PRECIO_TOTAL)
	select
		VENTA_CODIGO,
		PRODUCTO_VARIANTE_CODIGO,
		VENTA_PRODUCTO_CANTIDAD,
		VENTA_PRODUCTO_PRECIO * VENTA_PRODUCTO_CANTIDAD
	from gd_esquema.Maestra
	where VENTA_CODIGO is not null and PRODUCTO_VARIANTE_CODIGO is not null
	group by
		VENTA_CODIGO,
		PRODUCTO_VARIANTE_CODIGO,
		VENTA_PRODUCTO_CANTIDAD,
		VENTA_PRODUCTO_PRECIO
end
go

create procedure SE_APRUEBA_GDD.migrar_prod_x_compra as
begin
	insert into SE_APRUEBA_GDD.PROD_X_COMPRA
	(PROD_COMPRA_NUMERO, VARIANTE_X_PRODUCTO_ID, COMPRA_PRODUCTO_CANTIDAD, COMPRA_TOTAL)
	select
		COMPRA_NUMERO,
		PRODUCTO_VARIANTE_CODIGO,
		COMPRA_PRODUCTO_CANTIDAD,
		COMPRA_PRODUCTO_PRECIO * COMPRA_PRODUCTO_CANTIDAD
	from gd_esquema.Maestra
	where COMPRA_NUMERO is not null and PRODUCTO_VARIANTE_CODIGO is not null
	group by
		COMPRA_NUMERO,
		PRODUCTO_VARIANTE_CODIGO,
		COMPRA_PRODUCTO_CANTIDAD,
		COMPRA_PRODUCTO_PRECIO
end
go

create procedure SE_APRUEBA_GDD.migrar_descuento_compra as
begin
	insert into SE_APRUEBA_GDD.DESCUENTO_COMPRA
	(DESCUENTO_COMPRA_CODIGO, DESCUENTO_COMPRA_VALOR)
	select
		DESCUENTO_COMPRA_CODIGO,
		DESCUENTO_COMPRA_VALOR
	from gd_esquema.Maestra
	where DESCUENTO_COMPRA_CODIGO is not null
	group by DESCUENTO_COMPRA_CODIGO, DESCUENTO_COMPRA_VALOR
end
go

create procedure SE_APRUEBA_GDD.migrar_descuento_compra_x_compra as
begin
	insert into SE_APRUEBA_GDD.DESCUENTO_COMPRA_X_COMPRA
	(DESCUENTO_COMP_CODIGO, COMP_CODIGO)
	select
		DESCUENTO_COMPRA_CODIGO,
		COMPRA_NUMERO
	from gd_esquema.Maestra
	where DESCUENTO_COMPRA_CODIGO is not null and COMPRA_NUMERO is not null
	group by
		DESCUENTO_COMPRA_CODIGO,
		COMPRA_NUMERO	
end
go

create procedure SE_APRUEBA_GDD.migrar_descuento_venta_x_venta as
begin
	insert into SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA
	(VENTA_ID, DESCUENTO_VENTA_IMPORTE)
	select
		VENTA_CODIGO,
		VENTA_DESCUENTO_IMPORTE
	from gd_esquema.Maestra
	where VENTA_DESCUENTO_CONCEPTO = 'Otros' and VENTA_CODIGO is not null
	group by VENTA_CODIGO, VENTA_DESCUENTO_IMPORTE
end
go

------------------- EJECUCION DE PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY
	EXECUTE SE_APRUEBA_GDD.migrar_provincias
    EXECUTE SE_APRUEBA_GDD.migrar_codigo_postal
    EXECUTE SE_APRUEBA_GDD.migrar_ubicacion 
	EXECUTE SE_APRUEBA_GDD.migrar_clientes 
    EXECUTE SE_APRUEBA_GDD.migrar_canal_venta 
    EXECUTE SE_APRUEBA_GDD.migrar_medio_pago_venta 
	EXECUTE SE_APRUEBA_GDD.migrar_envio_venta
	EXECUTE SE_APRUEBA_GDD.migrar_venta
	EXECUTE SE_APRUEBA_GDD.migrar_descuento_venta_x_venta
	EXECUTE SE_APRUEBA_GDD.migrar_cupon
	EXECUTE SE_APRUEBA_GDD.migrar_cupon_x_venta
	EXECUTE SE_APRUEBA_GDD.migrar_marca
	EXECUTE SE_APRUEBA_GDD.migrar_categoria
	EXECUTE SE_APRUEBA_GDD.migrar_material
	EXECUTE SE_APRUEBA_GDD.migrar_producto
	EXECUTE SE_APRUEBA_GDD.migrar_tipo_variante
	EXECUTE SE_APRUEBA_GDD.migrar_variante
	EXECUTE SE_APRUEBA_GDD.migrar_variante_x_producto
	EXECUTE SE_APRUEBA_GDD.migrar_medio_pago_compra
	EXECUTE SE_APRUEBA_GDD.migrar_compra
	EXECUTE SE_APRUEBA_GDD.migrar_prod_x_venta
	EXECUTE SE_APRUEBA_GDD.migrar_prod_x_compra
	EXECUTE SE_APRUEBA_GDD.migrar_descuento_compra
	EXECUTE SE_APRUEBA_GDD.migrar_descuento_compra_x_compra
   -- ...


END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vacías o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

IF (EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.PROVINCIA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.CODIGO_POSTAL)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.UBICACION)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.CLIENTE)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.CANAL_VENTA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD.MEDIO_PAGO_VENTA)
	-- ...
	)
BEGIN
	PRINT 'Migracion Exitosa';
	COMMIT TRANSACTION;
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
	THROW 50002, 'Hubo un error al migrar en una o mas tablas. Todos los cambios fueron deshechos, ninguna tabla fue cargada en la base.',1;
END