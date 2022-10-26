
CREATE PROCEDURE migrar_provincias 
AS
BEGIN
	INSERT INTO PROVINCIA
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

CREATE PROCEDURE migrar_codigo_postal 
AS
BEGIN
	INSERT INTO CODIGO_POSTAL
	(CODIGO_POSTAL, PROVINCIA_ID)
	select CLIENTE_CODIGO_POSTAL,
	case when cliente_provincia is not null
	then
	(
		select PROVINCIA_CODIGO
			from SE_APRUEBA_GDD.dbo.PROVINCIA
			where CLIENTE_PROVINCIA = PROVINCIA_NOMBRE
			group by PROVINCIA_CODIGO
	)
	else null end
	from GD2C2022.gd_esquema.Maestra
	where CLIENTE_CODIGO_POSTAL is not null
	group by CLIENTE_CODIGO_POSTAL, CLIENTE_PROVINCIA
	

	insert into CODIGO_POSTAL
	select PROVEEDOR_CODIGO_POSTAL,
	(
		select PROVINCIA_CODIGO
			from SE_APRUEBA_GDD.dbo.PROVINCIA
			where
				PROVEEDOR_PROVINCIA = PROVINCIA_NOMBRE
			group by PROVINCIA_CODIGO
	)
	from GD2C2022.gd_esquema.Maestra
	where
		PROVEEDOR_CODIGO_POSTAL is not null 
		and
		PROVEEDOR_CODIGO_POSTAL not in (select CODIGO_POSTAL from SE_APRUEBA_GDD.dbo.CODIGO_POSTAL)
	group by PROVEEDOR_CODIGO_POSTAL, PROVEEDOR_PROVINCIA

END
GO

create procedure migrar_ubicacion as
begin
	insert into UBICACION
	(UBICACION_CODIGO_POSTAL, UBICACION_LOCALIDAD)
	select
		(select CODIGO_POSTAL from CODIGO_POSTAL
		where CLIENTE_CODIGO_POSTAL = CODIGO_POSTAL),
		CLIENTE_LOCALIDAD
	from GD2C2022.gd_esquema.Maestra
	where CLIENTE_LOCALIDAD is not null
	group by CLIENTE_CODIGO_POSTAL, CLIENTE_LOCALIDAD

	insert into UBICACION
	select 
	(
		select CODIGO_POSTAL
			from SE_APRUEBA_GDD.dbo.CODIGO_POSTAL
			where PROVEEDOR_CODIGO_POSTAL = CODIGO_POSTAL
	),
	PROVEEDOR_LOCALIDAD
	from GD2C2022.gd_esquema.Maestra
	where
		PROVEEDOR_LOCALIDAD is not null 
		and
		PROVEEDOR_CODIGO_POSTAL not in (select CODIGO_POSTAL from SE_APRUEBA_GDD.dbo.CODIGO_POSTAL)
	group by PROVEEDOR_CODIGO_POSTAL, PROVEEDOR_LOCALIDAD

end
go

create procedure migrar_clientes as
begin
	insert into CLIENTE
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
		(select UBICACION_ID from UBICACION
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

create procedure migrar_canal_venta as
begin
	insert into CANAL_VENTA
	(CANAL_VENTA_TIPO, CANAL_VENTA_COSTO)
	select
		VENTA_CANAL,
		VENTA_CANAL_COSTO
	from GD2C2022.gd_esquema.Maestra
	where VENTA_CANAL is not null
	group by VENTA_CANAL, VENTA_CANAL_COSTO

end
go

create procedure migrar_medio_pago_venta as
begin
	insert into MEDIO_PAGO_VENTA
	(MEDIO_PAGO_TIPO, MEDIO_PAGO_COSTO, MEDIO_PAGO_DESCUENTO)
	select
		VENTA_MEDIO_PAGO,
		VENTA_MEDIO_PAGO_COSTO,
		round(avg(VENTA_DESCUENTO_IMPORTE/VENTA_TOTAL) ,2)
	from GD2C2022.gd_esquema.Maestra
	where VENTA_MEDIO_PAGO = VENTA_DESCUENTO_CONCEPTO
	group by VENTA_MEDIO_PAGO, VENTA_MEDIO_PAGO_COSTO
end
go