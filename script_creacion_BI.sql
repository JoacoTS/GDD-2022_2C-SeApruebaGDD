USE GD2C2022
GO

-- DROP FUNCIONES ------------------------------------------------------------

-- DROP DE VIEWS ----------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_V_GANANCIAS_CANAL_VENTA') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD_BI.BI_V_GANANCIAS_CANAL_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_V_PROD_MAYOR_RENT') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD_BI.BI_V_PROD_MAYOR_RENT
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_V_CATEGORIAS_RANGO_ETARIO') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD_BI.BI_V_CATEGORIAS_RANGO_ETARIO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_V_PROMEDIO_AUMENTO_PROVEEDOR') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD_BI.BI_V_PROMEDIO_AUMENTO_PROVEEDOR
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_V_MAYOR_REPOSICION_POR_MES') IS NOT NULL
  DROP VIEW SE_APRUEBA_GDD_BI.BI_V_MAYOR_REPOSICION_POR_MES
  GO

-- DROP PROCEDURES DE MIGRACION DE TABLAS DE HECHOS ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_VENTA
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_COMPRA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_COMPRA
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_DESCUENTO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_DESCUENTO
GO

-- DROP TABLAS DIMENSIONALES ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_FECHA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_FECHA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_PROVINCIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_PROVINCIA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_CANAL_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_CANAL_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_CATEGORIA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_CATEGORIA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_PRODUCTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_PRODUCTO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_TIPO_ENVIO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_TIPO_ENVIO
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_CLIENTE') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_CLIENTE
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_PROVEEDOR') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_PROVEEDOR
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO
  GO

-- DROP TABLAS DE HECHOS ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_VENTA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_VENTA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_COMPRA') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_COMPRA
  GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_DESCUENTO') IS NOT NULL
  DROP TABLE SE_APRUEBA_GDD_BI.BI_DESCUENTO
  GO

-- DROP PROCEDURES DE MIGRACION DE TABLAS DIMENSIONALES ---------------------------------------------------------------

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_FECHA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_FECHA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVINCIA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVINCIA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_LLENAR_RANGO_ETARIO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_LLENAR_RANGO_ETARIO 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_CANAL_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_CANAL_VENTA
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_COMPRA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_COMPRA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_VENTA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_VENTA 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_CATEGORIA') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_CATEGORIA
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_PRODUCTO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_PRODUCTO 
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_ENVIO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_ENVIO
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_CLIENTE') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_CLIENTE
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVEEDOR') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVEEDOR
GO

IF OBJECT_ID('SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_DESCUENTO') IS NOT NULL
	DROP PROCEDURE SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_DESCUENTO
GO


-- DROP ESQUEMA

IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'SE_APRUEBA_GDD_BI')
    DROP SCHEMA SE_APRUEBA_GDD_BI
GO


-- CREACION ESQUEMA

CREATE SCHEMA SE_APRUEBA_GDD_BI
GO

-- CREACIÓN TABLAS DIMENSIONALES


create table SE_APRUEBA_GDD_BI.BI_FECHA (
    FECHA_ID decimal(19,0) identity(1,1),
    FECHA_AÑO decimal(19,0),
	FECHA_MES decimal(19,0),
	PRIMARY KEY (FECHA_ID)
);


create table SE_APRUEBA_GDD_BI.BI_PROVINCIA (
	PROVINCIA_ID decimal(19,0),
	PROVINCIA_NOMBRE nvarchar(255),
	PRIMARY KEY (PROVINCIA_ID) 
);


create table SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO (
    RANGO_ID decimal(19,0) identity(1,1),
    RANGO_EDAD_INI decimal(19,0),
    RANGO_EDAD_FIN decimal(19,0),
    PRIMARY KEY (RANGO_ID) 
);

create table SE_APRUEBA_GDD_BI.BI_CANAL_VENTA (
	CANAL_VENTA_ID decimal(19, 0),
	CANAL_VENTA_TIPO nvarchar(2255),
	CANAL_VENTA_COSTO decimal(18,2),
	PRIMARY KEY (CANAL_VENTA_ID)
);

create table SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA (
	MEDIO_PAGO_ID decimal(19, 0),
	MEDIO_PAGO_TIPO nvarchar(255),
	PRIMARY KEY (MEDIO_PAGO_ID)
)

create table SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA (
	MEDIO_PAGO_ID decimal(19,0),
	MEDIO_PAGO_TIPO nvarchar(255),
	MEDIO_PAGO_COSTO decimal(18,2),
	MEDIO_PAGO_DESCUENTO decimal(18, 2),
	PRIMARY KEY (MEDIO_PAGO_ID)
);

create table SE_APRUEBA_GDD_BI.BI_CATEGORIA (
	CATEGORIA_ID decimal(19,0),
	CATEGORIA_DESCRIPCION nvarchar(50),
	PRIMARY KEY (CATEGORIA_ID)
);

create table SE_APRUEBA_GDD_BI.BI_PRODUCTO (
	PRODUCTO_ID nvarchar(50),
	PRODUCTO_DESCRIPCION nvarchar(50),
	PRODUCTO_NOMBRE nvarchar(50),
	PRIMARY KEY (PRODUCTO_ID),
);


create table SE_APRUEBA_GDD_BI.BI_TIPO_ENVIO (
	TIPO_ENVIO_ID decimal(19, 0) IDENTITY (1,1),
    TIPO_ENVIO_DESCRIPCON nvarchar(255),
	PRIMARY KEY (TIPO_ENVIO_ID)
);

create table SE_APRUEBA_GDD_BI.BI_CLIENTE (
	CLIENTE_ID decimal(19, 0),
	CLIENTE_NOMBRE nvarchar(255),
	CLIENTE_APELLIDO nvarchar(255),
	CLIENTE_DNI decimal(18, 0),
	CLIENTE_DIRECCION nvarchar(255),
	CLIENTE_TELEFONO decimal(18,0),
	CLIENTE_MAIL nvarchar(255),
	CLIENTE_FECHA_NAC date,
	PRIMARY KEY (CLIENTE_ID)
);

create table SE_APRUEBA_GDD_BI.BI_PROVEEDOR (
	PROVEEDOR_CUIT nvarchar(50),
	PROVEEDOR_RAZON_SOCIAL nvarchar(50),
	PROVEEDOR_DOMICILIO nvarchar(50),
	PROVEEDOR_MAIL nvarchar(50),
	PRIMARY KEY (PROVEEDOR_CUIT)
);

create table SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO (
	TIPO_DESCUENTO_ID decimal(19,0) identity(1,1),
	TIPO_DESCUENTO_DESCRIPCION nvarchar(50),
	PRIMARY KEY (TIPO_DESCUENTO_ID)
);


-- CREACIÓN TABLAS HECHOS

create table SE_APRUEBA_GDD_BI.BI_VENTA (
    FECHA_ID decimal(19,0),
    CLIENTE_ID decimal(19, 0),
    RANGO_ID decimal(19,0),
    MEDIO_PAGO_ID decimal(19,0),
    CANAL_VENTA_ID decimal(19, 0),
    TIPO_ENVIO_ID decimal(19, 0),
    ENVIO_VENTA_PRECIO decimal(18,2),
    PROVINCIA_ID decimal(19,0),
    PRODUCTO_ID nvarchar(50),
    CATEGORIA_ID decimal(19,0),
    CANTIDAD decimal(18,0),
    PRECIO decimal(18,2)
);

create table SE_APRUEBA_GDD_BI.BI_COMPRA (
    FECHA_ID decimal(19,0),
    PROVEEDOR_CUIT nvarchar(50),
    MEDIO_PAGO_ID decimal(19,0),
    PROVINCIA_ID decimal(19,0),
    PRODUCTO_ID nvarchar(50),
    CANTIDAD decimal(18,0),
    PRECIO decimal(18,2),
	FOREIGN KEY (FECHA_ID) REFERENCES SE_APRUEBA_GDD_BI.BI_FECHA(FECHA_ID),
	FOREIGN KEY (PROVEEDOR_CUIT) REFERENCES SE_APRUEBA_GDD_BI.BI_PROVEEDOR(PROVEEDOR_CUIT),
	FOREIGN KEY (MEDIO_PAGO_ID) REFERENCES SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA(MEDIO_PAGO_ID),
	FOREIGN KEY (PROVINCIA_ID) REFERENCES SE_APRUEBA_GDD_BI.BI_PROVINCIA(PROVINCIA_ID)
);
go

create table SE_APRUEBA_GDD_BI.BI_DESCUENTO (
    FECHA_ID decimal(19,0),
    MEDIO_PAGO_ID decimal(19,0),
    CANAL_VENTA_ID decimal(19, 0),
    TIPO_DESCUENTO decimal(19, 0),
    MONTO decimal(18, 2)
);
go
--  CREACIÓN DE PROCEDURES DE TABLAS DIMENSIONALES

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_FECHA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_FECHA
	(FECHA_MES, FECHA_AÑO)
	select
		month(VENTA_FECHA),
		year(VENTA_FECHA)
	from
		SE_APRUEBA_GDD.VENTA
	union
	select
		month(COMPRA_FECHA),
		year(COMPRA_FECHA)
	from
		SE_APRUEBA_GDD.COMPRA
	group by
		month(COMPRA_FECHA),
		year(COMPRA_FECHA)
	order by
		2, 1
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVINCIA as -- ver lo de identity a ver si lo traemos o lo generamos de nuevo
begin
	insert into SE_APRUEBA_GDD_BI.BI_PROVINCIA(PROVINCIA_ID, PROVINCIA_NOMBRE)
    select * from SE_APRUEBA_GDD.PROVINCIA
    order by PROVINCIA_CODIGO
end
go

create procedure SE_APRUEBA_GDD_BI.BI_LLENAR_RANGO_ETARIO as
begin
	insert into SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (0,25)
    insert into SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (26,35)
    insert into SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (36,55)
    insert into SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO(RANGO_EDAD_INI, RANGO_EDAD_FIN) values (56,null)
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_CANAL_VENTA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_CANAL_VENTA(CANAL_VENTA_ID, CANAL_VENTA_TIPO, CANAL_VENTA_COSTO)
    select * from SE_APRUEBA_GDD.CANAL_VENTA
end
go


create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_COMPRA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA(MEDIO_PAGO_ID, MEDIO_PAGO_TIPO)
    select * from SE_APRUEBA_GDD.MEDIO_PAGO_COMPRA
end
go


create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_VENTA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA(MEDIO_PAGO_ID, MEDIO_PAGO_TIPO, MEDIO_PAGO_COSTO, MEDIO_PAGO_DESCUENTO)
    select * from SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_CATEGORIA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_CATEGORIA(CATEGORIA_ID, CATEGORIA_DESCRIPCION)
    select * from SE_APRUEBA_GDD.CATEGORIA
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_PRODUCTO as
begin
	insert into SE_APRUEBA_GDD_BI.BI_PRODUCTO(PRODUCTO_ID, PRODUCTO_DESCRIPCION, PRODUCTO_NOMBRE)
    select 
        PRODUCTO_ID, 
        PRODUCTO_DESCRIPCION, 
        PRODUCTO_NOMBRE
    from SE_APRUEBA_GDD.PRODUCTO
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_ENVIO as
begin
	insert into SE_APRUEBA_GDD_BI.BI_TIPO_ENVIO(TIPO_ENVIO_DESCRIPCON)
    select 
        ENVIO_VENTA_TIPO
    from SE_APRUEBA_GDD.ENVIO_VENTA
    group by ENVIO_VENTA_TIPO
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_CLIENTE as
begin
	insert into SE_APRUEBA_GDD_BI.BI_CLIENTE(CLIENTE_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DNI, CLIENTE_DIRECCION, CLIENTE_TELEFONO, CLIENTE_MAIL, CLIENTE_FECHA_NAC)
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

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVEEDOR as
begin
	insert into SE_APRUEBA_GDD_BI.BI_PROVEEDOR(PROVEEDOR_CUIT, PROVEEDOR_RAZON_SOCIAL, PROVEEDOR_DOMICILIO, PROVEEDOR_MAIL)
    select 
        PROVEEDOR_CUIT, 
        PROVEEDOR_RAZON_SOCIAL, 
        PROVEEDOR_DOMICILIO, 
        PROVEEDOR_MAIL
    from SE_APRUEBA_GDD.PROVEEDOR
end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_DESCUENTO as
begin
	insert into SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO(TIPO_DESCUENTO_DESCRIPCION) values ('Otros')
  insert into SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO(TIPO_DESCUENTO_DESCRIPCION) values ('Cupon')
  insert into SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO(TIPO_DESCUENTO_DESCRIPCION)
    select MEDIO_PAGO_TIPO
    from SE_APRUEBA_GDD.MEDIO_PAGO_VENTA
    where MEDIO_PAGO_DESCUENTO > 0
    group by MEDIO_PAGO_TIPO
end
go


--  CREACIÓN DE PROCEDURES DE TABLAS DE HECHOS
go
create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_VENTA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_VENTA (FECHA_ID, CLIENTE_ID, RANGO_ID, MEDIO_PAGO_ID, CANAL_VENTA_ID, TIPO_ENVIO_ID, ENVIO_VENTA_PRECIO, PROVINCIA_ID, PRODUCTO_ID, CATEGORIA_ID, CANTIDAD, PRECIO)
  select
    FECHA_ID,
    CLIENTE_ID,
    (select
      RANGO_ID
    from BI_RANGO_ETARIO
    where (year(getdate()) - year(c.CLIENTE_FECHA_NAC) + case when month(getdate()) > month(c.CLIENTE_FECHA_NAC) 
                                                          then 0 
                                                          else -1 end) 
                                                          between RANGO_EDAD_INI and isnull(RANGO_EDAD_FIN, 999)),
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    (select
    TIPO_ENVIO_ID
    from BI_TIPO_ENVIO
    where ENVIO_VENTA_TIPO = TIPO_ENVIO_DESCRIPCON ),
    ENVIO_VENTA_PRECIO,
    (select
      PROVINCIA_ID
    from SE_APRUEBA_GDD.CLIENTE c2 join SE_APRUEBA_GDD.UBICACION u on c2.CLIENTE_UBICACION = u.UBICACION_ID
    join SE_APRUEBA_GDD.CODIGO_POSTAL cp on cp.CODIGO_POSTAL = u.UBICACION_CODIGO_POSTAL
    where c2.CLIENTE_ID = c.CLIENTE_ID),
    p.PRODUCTO_ID,
    CATEGORIA_ID,
    sum(pv.VENTA_PRODUCTO_CANTIDAD),
    sum(VENTA_PRECIO_TOTAL)
  from SE_APRUEBA_GDD.VENTA v join BI_FECHA f on year(v.VENTA_FECHA) = f.FECHA_AÑO and month(v.VENTA_FECHA) = f.FECHA_MES
  join SE_APRUEBA_GDD.ENVIO_VENTA on ENVIO_VENTA_ID = v.VENTA_ENVIO
  join BI_CLIENTE c on v.VENTA_CLIENTE = c.CLIENTE_ID
  join BI_MEDIO_PAGO_VENTA mp on v.VENTA_MEDIO_PAGO = mp.MEDIO_PAGO_ID
  join BI_CANAL_VENTA cv on v.VENTA_CANAL = cv.CANAL_VENTA_ID
  join SE_APRUEBA_GDD.PROD_X_VENTA pv on v.VENTA_ID = pv.VENTA_ID
  join SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO vp on pv.VARIANTE_X_PRODUCTO_ID = vp.VARIANTE_X_PRODUCTO_ID
  join SE_APRUEBA_GDD.PRODUCTO p on p.PRODUCTO_ID = vp.PRODUCTO_ID
  join SE_APRUEBA_GDD.CATEGORIA cat on cat.CATEGORIA_ID = p.PRODUCTO_CATEGORIA
  group by  v.VENTA_ID, FECHA_ID, CLIENTE_ID, CLIENTE_FECHA_NAC, VENTA_ENVIO, ENVIO_VENTA_TIPO, ENVIO_VENTA_PRECIO, MEDIO_PAGO_ID, CANAL_VENTA_ID, p.PRODUCTO_ID, CATEGORIA_ID

end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_COMPRA as
begin
	insert into SE_APRUEBA_GDD_BI.BI_COMPRA (FECHA_ID, PROVEEDOR_CUIT, MEDIO_PAGO_ID, PROVINCIA_ID, PRODUCTO_ID, CANTIDAD, PRECIO)
  select
    FECHA_ID,
    PROVEEDOR_CUIT,
    MEDIO_PAGO_ID,
    (select
      PROVINCIA_ID
    from SE_APRUEBA_GDD.PROVEEDOR p2 join SE_APRUEBA_GDD.UBICACION u on p2.UBICACION_PROVEEDOR = u.UBICACION_ID
    join SE_APRUEBA_GDD.CODIGO_POSTAL cp on cp.CODIGO_POSTAL = u.UBICACION_CODIGO_POSTAL
    where p2.PROVEEDOR_CUIT = p.PROVEEDOR_CUIT),
    pr.PRODUCTO_ID,
    sum(pc.COMPRA_PRODUCTO_CANTIDAD),
    sum(pc.COMPRA_TOTAL)
  from SE_APRUEBA_GDD.COMPRA c join SE_APRUEBA_GDD_BI.BI_FECHA f on year(c.COMPRA_FECHA) = f.FECHA_AÑO and month(c.COMPRA_FECHA) = f.FECHA_MES
  join SE_APRUEBA_GDD_BI.BI_PROVEEDOR p on c.COMPRA_PROVEEDOR = p.PROVEEDOR_CUIT
  join SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA mp on c.COMPRA_MEDIO_PAGO = mp.MEDIO_PAGO_ID
  join SE_APRUEBA_GDD.PROD_X_COMPRA pc on c.COMPRA_NUMERO = pc.PROD_COMPRA_NUMERO
  join SE_APRUEBA_GDD.VARIANTE_X_PRODUCTO vp on pc.VARIANTE_X_PRODUCTO_ID = vp.VARIANTE_X_PRODUCTO_ID
  join SE_APRUEBA_GDD.PRODUCTO pr on pr.PRODUCTO_ID = vp.PRODUCTO_ID
  join SE_APRUEBA_GDD.CATEGORIA cat on cat.CATEGORIA_ID = pr.PRODUCTO_CATEGORIA
  group by COMPRA_NUMERO, FECHA_ID, PROVEEDOR_CUIT, MEDIO_PAGO_ID, pr.PRODUCTO_ID, CATEGORIA_ID

end
go

create procedure SE_APRUEBA_GDD_BI.BI_MIGRAR_DESCUENTO as
begin
	insert into SE_APRUEBA_GDD_BI.BI_DESCUENTO (FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    TIPO_DESCUENTO,
    MONTO)
  select
    FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    (Select
    TIPO_DESCUENTO_ID
    from BI_TIPO_DESCUENTO
    where TIPO_DESCUENTO_DESCRIPCION = 'Otros'),
    sum(DESCUENTO_VENTA_IMPORTE)
  from SE_APRUEBA_GDD.VENTA v
  join SE_APRUEBA_GDD.DESCUENTO_VENTA_X_VENTA dv on v.VENTA_ID = dv.VENTA_ID
  join BI_FECHA f on year(v.VENTA_FECHA) = f.FECHA_AÑO and month(v.VENTA_FECHA) = f.FECHA_MES
  join BI_MEDIO_PAGO_VENTA mp on v.VENTA_MEDIO_PAGO = mp.MEDIO_PAGO_ID
  join BI_CANAL_VENTA cv on v.VENTA_CANAL = cv.CANAL_VENTA_ID
  group by FECHA_ID, MEDIO_PAGO_ID, CANAL_VENTA_ID

  insert into SE_APRUEBA_GDD_BI.BI_DESCUENTO (FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    TIPO_DESCUENTO,
    MONTO)
  select
    FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    (Select
    TIPO_DESCUENTO_ID
    from BI_TIPO_DESCUENTO
    where TIPO_DESCUENTO_DESCRIPCION = 'Cupon'),
    sum(CUPON_IMPORTE)
  from SE_APRUEBA_GDD.VENTA v
  join SE_APRUEBA_GDD.CUPON_X_VENTA cup on cup.VENTA_ID_CUPON = v.VENTA_ID
  join BI_FECHA f on year(v.VENTA_FECHA) = f.FECHA_AÑO and month(v.VENTA_FECHA) = f.FECHA_MES
  join BI_MEDIO_PAGO_VENTA mp on v.VENTA_MEDIO_PAGO = mp.MEDIO_PAGO_ID
  join BI_CANAL_VENTA cv on v.VENTA_CANAL = cv.CANAL_VENTA_ID
  group by FECHA_ID, MEDIO_PAGO_ID, CANAL_VENTA_ID

  insert into SE_APRUEBA_GDD_BI.BI_DESCUENTO (FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    TIPO_DESCUENTO,
    MONTO)
  select
    FECHA_ID,
    MEDIO_PAGO_ID,
    CANAL_VENTA_ID,
    (Select
    TIPO_DESCUENTO_ID
    from BI_TIPO_DESCUENTO
    where TIPO_DESCUENTO_DESCRIPCION = mp.MEDIO_PAGO_TIPO),
    sum(VENTA_TOTAL * MEDIO_PAGO_DESCUENTO)
  from SE_APRUEBA_GDD.VENTA v
  join BI_FECHA f on year(v.VENTA_FECHA) = f.FECHA_AÑO and month(v.VENTA_FECHA) = f.FECHA_MES
  join BI_MEDIO_PAGO_VENTA mp on v.VENTA_MEDIO_PAGO = mp.MEDIO_PAGO_ID
  join BI_CANAL_VENTA cv on v.VENTA_CANAL = cv.CANAL_VENTA_ID
  where MEDIO_PAGO_DESCUENTO > 0
  group by FECHA_ID, MEDIO_PAGO_ID, CANAL_VENTA_ID, MEDIO_PAGO_TIPO
end
go

------------------- EJECUCION DE PROCEDURES: MIGRACION -------------------
BEGIN TRANSACTION
BEGIN TRY
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_FECHA
    EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVINCIA
    EXECUTE SE_APRUEBA_GDD_BI.BI_LLENAR_RANGO_ETARIO 
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_CANAL_VENTA 
    EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_COMPRA 
    EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_MEDIO_PAGO_VENTA 
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_CATEGORIA
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_PRODUCTO
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_DESCUENTO
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_TIPO_ENVIO
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_CLIENTE
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_PROVEEDOR
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_VENTA
	EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_COMPRA
    EXECUTE SE_APRUEBA_GDD_BI.BI_MIGRAR_DESCUENTO

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
	THROW 50001, 'Error al migrar las tablas, verifique que las nuevas tablas se encuentren vacías o bien ejecute un DROP de todas las nuevas tablas y vuelva a intentarlo.',1;
END CATCH

IF (EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_FECHA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_PROVINCIA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_CANAL_VENTA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_COMPRA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_CATEGORIA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_PRODUCTO)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_TIPO_DESCUENTO)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_TIPO_ENVIO)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_CLIENTE)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_PROVEEDOR)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_VENTA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_COMPRA)
    AND EXISTS (SELECT 1 FROM SE_APRUEBA_GDD_BI.BI_DESCUENTO)
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
go


--  CREACIÓN DE VIEWS



--Las ganancias mensuales de cada canal de venta.
--Se entiende por ganancias al total de las ventas, menos el total de las
--compras, menos los costos de transacción totales aplicados asociados los
--medios de pagos utilizados en las mismas.



create view SE_APRUEBA_GDD_BI.BI_V_GANANCIAS_CANAL_VENTA
as
  select  
      v.CANAL_VENTA_ID,
      CANAL_VENTA_TIPO,
      FECHA_MES,
      FECHA_AÑO,
	  sum(v.PRECIO) - sum(c.PRECIO) - sum(mp.MEDIO_PAGO_COSTO) ganancias          
      from SE_APRUEBA_GDD_BI.BI_VENTA v
      join SE_APRUEBA_GDD_BI.BI_CANAL_VENTA cv on v.CANAL_VENTA_ID = cv.CANAL_VENTA_ID
      join SE_APRUEBA_GDD_BI.BI_FECHA f on v.FECHA_ID = f.FECHA_ID
      join SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA mp on v.MEDIO_PAGO_ID = mp.MEDIO_PAGO_ID
	  join SE_APRUEBA_GDD_BI.BI_COMPRA c
	  on
		c.PRODUCTO_ID = v.PRODUCTO_ID
		and
		c.FECHA_ID = v.FECHA_ID
      group by  
		      v.CANAL_VENTA_ID,
			  CANAL_VENTA_TIPO,
			  FECHA_MES,
			  FECHA_AÑO,
			  mp.MEDIO_PAGO_COSTO,
			  v.CANTIDAD_VENTAS
go



--Los 5 productos con mayor rentabilidad anual, con sus respectivos %
--Se entiende por rentabilidad a los ingresos generados por el producto
--(ventas) durante el periodo menos la inversión realizada en el producto
--(compras) durante el periodo, todo esto sobre dichos ingresos.
--Valor expresado en porcentaje.
--Para simplificar, no es necesario tener en cuenta los descuentos aplicados.

create view SE_APRUEBA_GDD_BI.BI_V_PROD_MAYOR_RENT
as
	select top 5
		f.FECHA_AÑO,
		v.PRODUCTO_ID,
		p.PRODUCTO_DESCRIPCION,
		(sum(v.PRECIO) - sum(c.PRECIO)) * 100 / sum(v.PRECIO) rentabilidad
	from
		SE_APRUEBA_GDD_BI.BI_VENTA v
		join SE_APRUEBA_GDD_BI.BI_FECHA f on v.FECHA_ID = f.FECHA_ID
		join SE_APRUEBA_GDD_BI.BI_COMPRA c on v.PRODUCTO_ID = c.PRODUCTO_ID and c.FECHA_ID = v.FECHA_ID
		join SE_APRUEBA_GDD_BI.BI_PRODUCTO p on p.PRODUCTO_ID = v.PRODUCTO_ID
	group by
		f.FECHA_AÑO,
		v.PRODUCTO_ID,
		p.PRODUCTO_DESCRIPCION
	order by 4 desc
go



--Las 5 categorías de productos más vendidos por rango etario de clientes 
--por mes. 

create view SE_APRUEBA_GDD_BI.BI_V_CATEGORIAS_RANGO_ETARIO
as
	select
		f1.FECHA_AÑO,
		f1.FECHA_MES,
		v1.RANGO_ID,
		re.RANGO_EDAD_INI,
		re.RANGO_EDAD_FIN,
		c.CATEGORIA_DESCRIPCION
	from
		SE_APRUEBA_GDD_BI.BI_VENTA v1
		join SE_APRUEBA_GDD_BI.BI_FECHA f1 on v1.FECHA_ID = f1.FECHA_ID
		join SE_APRUEBA_GDD_BI.BI_RANGO_ETARIO re on v1.RANGO_ID = re.RANGO_ID
		join SE_APRUEBA_GDD_BI.BI_CATEGORIA c on c.CATEGORIA_ID = v1.CATEGORIA_ID
	where
		v1.CATEGORIA_ID in
		(select top 5 v2.CATEGORIA_ID
			from 
				SE_APRUEBA_GDD_BI.BI_VENTA v2
				join SE_APRUEBA_GDD_BI.BI_FECHA f2 on v2.FECHA_ID = f2.FECHA_ID
		where
			v1.RANGO_ID = v2.RANGO_ID
			and
			f1.FECHA_MES = f2.FECHA_MES
			and
			f1.FECHA_AÑO = f2.FECHA_AÑO
		group by
			v2.CATEGORIA_ID
		order by
			sum(v2.CANTIDAD) desc)
	group by
		f1.FECHA_AÑO,
		f1.FECHA_MES,
		v1.RANGO_ID,
		re.RANGO_EDAD_INI,
		re.RANGO_EDAD_FIN,
		c.CATEGORIA_DESCRIPCION
	order by f1.FECHA_AÑO, f1.FECHA_MES, RANGO_ID
go



--Total de Ingresos por cada medio de pago por mes, descontando los costos 
--por medio de pago (en caso que aplique) y descuentos por medio de pago 
--(en caso que aplique) 

create view SE_APRUEBA_GDD_BI.BI_V_INGRESOS_X_MES_MEDIO_PAGO
as
	select
		f.FECHA_AÑO,
		f.FECHA_MES,
		sum(v.PRECIO) - sum(mp.MEDIO_PAGO_COSTO) - sum(d.MONTO)
	from
		SE_APRUEBA_GDD_BI.BI_VENTA v
		join SE_APRUEBA_GDD_BI.BI_MEDIO_PAGO_VENTA mp on mp.MEDIO_PAGO_ID = v.MEDIO_PAGO_ID
		join SE_APRUEBA_GDD_BI.BI_FECHA f on f.FECHA_ID = v.FECHA_ID
		left join SE_APRUEBA_GDD_BI.BI_DESCUENTO d on d.MEDIO_PAGO_ID = mp.MEDIO_PAGO_ID
	group by
		MEDIO_PAGO_ID

go


--Importe total en descuentos aplicados según su tipo de descuento, por 
--canal de venta, por mes. Se entiende por tipo de descuento como los 
--correspondientes a envío, medio de pago, cupones, etc) 

--TODO: igual al anterior


--Porcentaje de envíos realizados a cada Provincia por mes. El porcentaje 
--debe representar la cantidad de envíos realizados a cada provincia sobre 
--total de envío mensuales. 

--TODO: falta definir provincias


--Valor promedio de envío por Provincia por Medio De Envío anual.

--TODO: igual al anterior


--Aumento promedio de precios de cada proveedor anual. Para calcular este 
--indicador se debe tomar como referencia el máximo precio por año menos 
--el mínimo todo esto divido el mínimo precio del año. Teniendo en cuenta 
--que los precios siempre van en aumento.

create view SE_APRUEBA_GDD_BI.BI_V_PROMEDIO_AUMENTO_PROVEEDOR
as
	select
		c.PROVEEDOR_CUIT,
		f.FECHA_AÑO,
		--agregar producto ?
		(max(c.PRECIO) - min(c.PRECIO)) / min(c.PRECIO) promedio_aumento
	from
		SE_APRUEBA_GDD_BI.BI_COMPRA c
		join SE_APRUEBA_GDD_BI.BI_FECHA f on c.FECHA_ID = f.FECHA_ID
	group by
		c.PROVEEDOR_CUIT, f.FECHA_AÑO
go



--Los 3 productos con mayor cantidad de reposición por mes.


create view SE_APRUEBA_GDD_BI.BI_V_MAYOR_REPOSICION_POR_MES
as
	select top 3
		c.PRODUCTO_ID,
		sum(c.CANTIDAD) / count(distinct f.FECHA_ID) promedio_reposicion
	from
		SE_APRUEBA_GDD_BI.BI_COMPRA c
		join SE_APRUEBA_GDD_BI.BI_FECHA f on f.FECHA_ID = c.FECHA_ID
	group by
		c.PRODUCTO_ID
	order by
		sum(c.CANTIDAD) / count(distinct f.FECHA_ID) desc

