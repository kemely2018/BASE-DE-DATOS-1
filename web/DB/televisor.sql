# Host: localhost  (Version 5.5.5-10.1.32-MariaDB)
# Date: 2019-12-18 08:27:25
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "clase_producto"
#

DROP TABLE IF EXISTS `clase_producto`;
CREATE TABLE `clase_producto` (
  `Codigo_CP` varchar(10) NOT NULL,
  `Nombre_CP` varchar(30) NOT NULL,
  `Estado_CP` char(3) DEFAULT 'HAB',
  PRIMARY KEY (`Codigo_CP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "clase_producto"
#

INSERT INTO `clase_producto` VALUES ('CP0001','Televisor LED','HAB'),('CP0002','Televisor LCD','HAB'),('CP0003','Televisor SmartTV','HAB'),('CP0004','Televisor OLED','HAB'),('CP0005','Televisor QLED','HAB'),('CP0006','Televisor 4K','HAB'),('CP0007','Televisor 3D','HAB'),('CP0008','Televisor UH','HAB'),('CP0009','Televisor GLED','HAB'),('CP0010','Televisor HMT','HAB'),('CP0011','Televisor FEW','HAB'),('CP0012','Televisor DWO','HAB'),('CP0013','Televisor FQA','HAB'),('CP0014','Televisor CMC','HAB'),('CP0015','Televisor JMP','HAB');

#
# Structure for table "marca_producto"
#

DROP TABLE IF EXISTS `marca_producto`;
CREATE TABLE `marca_producto` (
  `Codigo_MP` varchar(10) NOT NULL,
  `Nombre_MP` varchar(30) NOT NULL,
  `Estado_MP` char(3) DEFAULT 'HAB',
  PRIMARY KEY (`Codigo_MP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "marca_producto"
#

INSERT INTO `marca_producto` VALUES ('MP0001','SAMSUNG','HAB'),('MP0002','SONY','HAB'),('MP0003','LG','HAB'),('MP0004','PANASONIC','HAB'),('MP0005','PHILIPS','HAB'),('MP0006','SHARP','HAB'),('MP0007','TOSHIBA','HAB'),('MP0008','SANYO','HAB'),('MP0009','DAEWOO','HAB'),('MP0010','PIONNER','HAB'),('MP0011','GRUNDIG','HAB'),('MP0012','BASICLINE','HAB'),('MP0013','NEVIR','HAB'),('MP0014','SOGO','HAB'),('MP0015','MAGNA','HAB');

#
# Structure for table "producto"
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `Codigo_P` varchar(10) NOT NULL,
  `Codigo_CP` varchar(10) NOT NULL,
  `Codigo_MP` varchar(10) NOT NULL,
  `Descripcion_P` varchar(100) NOT NULL,
  `Precio_P` decimal(10,2) NOT NULL,
  `Cantidad` decimal(6,2) DEFAULT '0.00',
  `Imagen_P` varchar(100) DEFAULT NULL,
  `Estado_P` char(3) DEFAULT 'HAB',
  PRIMARY KEY (`Codigo_P`),
  KEY `FK_Codigo_CP` (`Codigo_CP`),
  KEY `FK_Codigo_MP` (`Codigo_MP`),
  CONSTRAINT `FK_Codigo_CP` FOREIGN KEY (`Codigo_CP`) REFERENCES `clase_producto` (`Codigo_CP`),
  CONSTRAINT `FK_Codigo_MP` FOREIGN KEY (`Codigo_MP`) REFERENCES `marca_producto` (`Codigo_MP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES ('P0001','CP0001','MP0001','TV Samsung 50 Uhd 2019 Serie 7 ',1399.90,2.00,'1.jpg','HAB'),('P0002','CP0001','MP0002','TV Sony 75 Hdr Xbr-75x855f',2000.00,3.00,'2.jpg','HAB'),('P0003','CP0002','MP0003','TV 49 Lg 2019 Uhd Thinq Ai',1399.90,1.00,'3.jpg','HAB'),('P0004','CP0002','MP0004','TV Panasonic 50 ULTRA HD',1527.00,5.00,'4.jpg','HAB'),('P0005','CP0002','MP0005','TV Philips Uhd Con Ambilight',7230.90,3.00,'5.jpg','HAB'),('P0006','CP0002','MP0006','TV Sharp 46 Full Hd Modelo Lc-46sv502l',1530.00,4.00,'6.jpg','HAB'),('P0007','CP0001','MP0007','TV Toshiba 43lf621u19 43 Pulgadas',1600.00,5.00,'7.jpg','HAB'),('P0008','CP0001','MP0008','TV Sanyo 21 + Rack ',3220.00,9.00,'8.jpg','HAB'),('P0009','CP0003','MP0009','TV 55 Daewoo Super Slim T870 Plateado',2700.00,2.00,'9.jpg','HAB'),('P0010','CP0002','MP0010','TV 49 Pionner 2019 Uhd Thinq Ai Inteligencia Artificial',1567.41,3.00,'10.jpg','HAB'),('P0011','CP0002','MP0011','TV Grundig 32 VLE 4820 81,3 cm (32 INCH) HD Negro',8346.71,2.00,'11.jpg','HAB'),('P0012','CP0003','MP0012','TV Basic Line BL15720- Televisión, Pantalla 15 pulgadas ',1335.00,1.00,'12.jpg','HAB'),('P0013','CP0003','MP0013','TV Nevir NVR-7603-49-4K-N 49 INCH Ultra HD Negro',1415.00,5.00,'13.jpg','HAB'),('P0014','CP0003','MP0014','TV Sogo -SS-1955 48,3 cm (19 INCH) HD Negro',1145.00,2.00,'14.jpg','HAB'),('P0015','CP0004','MP0015','TV Magna 40F436B FULL HD TDT2 HD SATÉLITE Y MULTIMEDIA',1900.00,3.00,'15.jpg','HAB');

#
# Structure for table "usuario"
#

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `Codigo_U` varchar(10) NOT NULL,
  `Nombres_U` varchar(50) NOT NULL,
  `Apellidos_U` varchar(50) NOT NULL,
  `Id_U` varchar(30) NOT NULL,
  `Clave_U` varchar(20) NOT NULL,
  `Tipo_U` varchar(15) NOT NULL,
  `Estado_U` char(3) DEFAULT 'INH',
  PRIMARY KEY (`Codigo_U`),
  UNIQUE KEY `U_Id_U` (`Id_U`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES ('U0001','KEMELY FRANCIS','CASTILLO CACCIRE','Kemely456','kemely','ADMINISTRADOR','HAB'),('U0002','NICOLAS JOSHUA','RANILLA CASTILLO','        background-color:  #44','nico','CLIENTE','HAB'),('U0003','KAROL','RODRIGUEZ PEREZ','Karol1156','karol','CLIENTE','HAB'),('U0004','DAVID LUIS','NORIEGA BELTRAN','Luisito7545','luisito','CLIENTE','HAB'),('U0005','DIANA','TONE MONTEZ','Diana1222','Diana','CLIENTE','HAB'),('U0006','FERNANDA','HERRERA SANCHEZ','Fer123','fernanda','CLIENTE','HAB'),('U0007','ANA ROSA','APAZA MACHACA','Ana1160','ana','CLIENTE','HAB'),('U0008','PAUL DONNY','VARGAS MEDINA','Paul104','paul','CLIENTE','HAB'),('U0009','RAMON','CUYA MENDOZA','Ramon9999','ramon','CLIENTE','HAB'),('U0010','RAUL','CONDE CASAS','Raul1010','raul','CLIENTE','HAB'),('U0011','MARTA','CELIS CHIPANA','Marta1212','marta','CLIENTE','HAB'),('U0012','MARIA','CANAZA VARGAS','Maria1313','maria','CLIENTE','HAB'),('U0013','PAULA','CASO LOPEZ','Paula1414','paula','CLIENTE','HAB'),('U0014','ROCIO','CALERO OROPEZA','Rocio1515','rocio','CLIENTE','HAB'),('U0015','JULIAN','VARGAS CARRILLO','Julian1616','julian','CLIENTE','HAB');

#
# Structure for table "venta"
#

DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `Codigo_V` varchar(20) NOT NULL,
  `Codigo_U` varchar(10) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Codigo_V`),
  KEY `FK_Codigo_U` (`Codigo_U`),
  CONSTRAINT `FK_Codigo_U` FOREIGN KEY (`Codigo_U`) REFERENCES `usuario` (`Codigo_U`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "venta"
#

INSERT INTO `venta` VALUES ('V0001','U0008',1567.41,'2019-12-18 00:51:50'),('V0002','U0008',0.00,'2019-12-18 00:52:58'),('V0003','U0008',0.00,'2019-12-18 00:53:04'),('V0005','U0008',0.00,'2019-12-18 00:55:30'),('V0006','U0008',2799.80,'2019-12-18 00:55:46'),('V0007','U0008',1530.00,'2019-12-18 00:56:03'),('V0008','U0001',1399.90,'2019-12-18 07:47:35'),('V0009','U0015',16693.42,'2019-12-18 08:00:29');

#
# Structure for table "detalle_venta"
#

DROP TABLE IF EXISTS `detalle_venta`;
CREATE TABLE `detalle_venta` (
  `Codigo_V` varchar(20) NOT NULL,
  `Codigo_P` varchar(10) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `SubTotal` decimal(10,2) NOT NULL,
  KEY `FK_Codigo_V` (`Codigo_V`),
  KEY `FK_Codigo_P` (`Codigo_P`),
  CONSTRAINT `FK_Codigo_P` FOREIGN KEY (`Codigo_P`) REFERENCES `producto` (`Codigo_P`),
  CONSTRAINT `FK_Codigo_V` FOREIGN KEY (`Codigo_V`) REFERENCES `venta` (`Codigo_V`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "detalle_venta"
#

INSERT INTO `detalle_venta` VALUES ('V0006','P0003',1399.90,2.00,2799.80),('V0007','P0006',1530.00,1.00,1530.00),('V0008','P0003',1399.90,1.00,1399.90),('V0009','P0011',8346.71,2.00,16693.42);

#
# Procedure "BUSCAR_PRODUCTO_CODIGO"
#

DROP PROCEDURE IF EXISTS `BUSCAR_PRODUCTO_CODIGO`;
CREATE PROCEDURE `BUSCAR_PRODUCTO_CODIGO`(IN CCodigo_P varchar(10))
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP, MP.Nombre_MP, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Codigo_P = CCodigo_P and P.Estado_P = 'HAB' ORDER BY cp.Nombre_CP ASC;
END;

#
# Procedure "ELIMINAR_CLASE_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_CLASE_PRODUCTO`;
CREATE PROCEDURE `ELIMINAR_CLASE_PRODUCTO`(
    IN CCodigo_CP VARCHAR(10)
)
begin
    update CLASE_PRODUCTO set Estado_CP='INH' where Codigo_CP=UPPER(CCodigo_CP);
end;

#
# Procedure "ELIMINAR_DETALLE_VENTA"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_DETALLE_VENTA`;
CREATE PROCEDURE `ELIMINAR_DETALLE_VENTA`(
    IN CCodigo_V VARCHAR(10)
)
BEGIN
    DELETE FROM DETALLE_VENTA WHERE Codigo_V = CCodigo_V;
END;

#
# Procedure "ELIMINAR_MARCA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_MARCA_PRODUCTO`;
CREATE PROCEDURE `ELIMINAR_MARCA_PRODUCTO`(
    IN CCodigo_MP VARCHAR(10)
)
begin
    update MARCA_PRODUCTO set Estado_MP='INH' where Codigo_MP=CCodigo_MP;
end;

#
# Procedure "ELIMINAR_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_PRODUCTO`;
CREATE PROCEDURE `ELIMINAR_PRODUCTO`(
    IN CCodigo_P VARCHAR(10)
)
begin
    update PRODUCTO set Estado_P='INH' where Codigo_P=CCodigo_P;
end;

#
# Procedure "ELIMINAR_USUARIO"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_USUARIO`;
CREATE PROCEDURE `ELIMINAR_USUARIO`(
    IN CCodigo_U VARCHAR(10)
)
begin
    update USUARIO set Estado_U='INH' where Codigo_U=CCodigo_U;
end;

#
# Procedure "ELIMINAR_VENTA"
#

DROP PROCEDURE IF EXISTS `ELIMINAR_VENTA`;
CREATE PROCEDURE `ELIMINAR_VENTA`(
    IN CCodigo_V VARCHAR(10)
)
BEGIN
    DELETE FROM DETALLE_VENTA WHERE DETALLE_VENTA.Codigo_V=CCodigo_V;
    DELETE FROM VENTA WHERE VENTA.Codigo_V=CCodigo_V;
END;

#
# Procedure "LOGEAR_USUARIO"
#

DROP PROCEDURE IF EXISTS `LOGEAR_USUARIO`;
CREATE PROCEDURE `LOGEAR_USUARIO`(
    IN IId_U VARCHAR(30)
)
BEGIN
    select Codigo_U,Id_U,Clave_U,Estado_U from USUARIO
    where Id_U = IId_U;
end;

#
# Procedure "MODIFICAR_CLASE_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MODIFICAR_CLASE_PRODUCTO`;
CREATE PROCEDURE `MODIFICAR_CLASE_PRODUCTO`(
    IN CCodigo_CP VARCHAR(10), 
    IN NNombre_CP VARCHAR(30)
)
begin
    update CLASE_PRODUCTO set Nombre_CP=UPPER(NNombre_CP) where Codigo_CP=UPPER(CCodigo_CP);
end;

#
# Procedure "MODIFICAR_CLAVE_USUARIO"
#

DROP PROCEDURE IF EXISTS `MODIFICAR_CLAVE_USUARIO`;
CREATE PROCEDURE `MODIFICAR_CLAVE_USUARIO`(
    IN CCodigo_U VARCHAR(10),
    IN CClave_U VARCHAR(20)
)
begin
    update USUARIO set Clave_U=CClave_U where Codigo_U=CCodigo_U;
end;

#
# Procedure "MODIFICAR_MARCA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MODIFICAR_MARCA_PRODUCTO`;
CREATE PROCEDURE `MODIFICAR_MARCA_PRODUCTO`(
    IN CCodigo_MP VARCHAR(10), 
    IN NNombre_MP VARCHAR(30)
)
begin
    update MARCA_PRODUCTO set Nombre_MP=UPPER(NNombre_MP) where Codigo_MP=CCodigo_MP;
end;

#
# Procedure "MODIFICAR_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MODIFICAR_PRODUCTO`;
CREATE PROCEDURE `MODIFICAR_PRODUCTO`(
    IN CCodigo_P VARCHAR(10),
    IN NNombre_CP VARCHAR(30),
    IN NNombre_MP VARCHAR(30), 
    IN DDescripcion_P VARCHAR(50),
    IN PPrecio_P DECIMAL(6,2),
    IN IImagen_P VARCHAR(50)
)
begin
    declare CCodigo_CP varchar(10);
    declare CCodigo_MP varchar(10);
    
    set CCodigo_CP = (SELECT Codigo_CP FROM clase_producto where Nombre_CP = NNombre_CP);
    set CCodigo_MP = (SELECT Codigo_MP FROM marca_producto where Nombre_MP = NNombre_MP);

    update PRODUCTO set Codigo_CP=UPPER(CCodigo_CP), Codigo_MP=UPPER(CCodigo_MP), Descripcion_P=UPPER(DDescripcion_P), Precio_P=UPPER(PPrecio_P), Imagen_P=IImagen_P where Codigo_P=UPPER(CCodigo_P);
end;

#
# Procedure "MODIFICAR_USUARIO"
#

DROP PROCEDURE IF EXISTS `MODIFICAR_USUARIO`;
CREATE PROCEDURE `MODIFICAR_USUARIO`(
    IN CCodigo_U VARCHAR(10),
    IN NNombres_U VARCHAR(50),
    IN AApellidos_U VARCHAR(50)
  
)
begin
    update USUARIO set Nombres_U=UPPER(NNombres_U), Apellidos_U=UPPER(AApellidos_U) where Codigo_U=UPPER(CCodigo_U);
end;

#
# Procedure "MOSTRAR_CLASE_PRODUCTO_HABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CLASE_PRODUCTO_HABILITADOS`;
CREATE PROCEDURE `MOSTRAR_CLASE_PRODUCTO_HABILITADOS`()
BEGIN
    SELECT * FROM CLASE_PRODUCTO
    WHERE Estado_CP = 'HAB'
    ORDER BY Nombre_CP ASC;
END;

#
# Procedure "MOSTRAR_CLASE_PRODUCTO_INHABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CLASE_PRODUCTO_INHABILITADOS`;
CREATE PROCEDURE `MOSTRAR_CLASE_PRODUCTO_INHABILITADOS`()
BEGIN
    SELECT * FROM CLASE_PRODUCTO
    WHERE Estado_CP = 'INH'
    ORDER BY Nombre_CP ASC;
END;

#
# Procedure "MOSTRAR_CODIGO_CLASE_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CODIGO_CLASE_PRODUCTO`;
CREATE PROCEDURE `MOSTRAR_CODIGO_CLASE_PRODUCTO`()
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_CP) from CLASE_PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('CP000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('CP00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('CP0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('CP'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'CP0001');
    end if;
    
    SELECT MAX(CCodigo) AS Codigo_CP FROM CLASE_PRODUCTO;
END;

#
# Procedure "MOSTRAR_CODIGO_MARCA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CODIGO_MARCA_PRODUCTO`;
CREATE PROCEDURE `MOSTRAR_CODIGO_MARCA_PRODUCTO`()
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_MP) from MARCA_PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('MP000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('MP00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('MP0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('MP'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'MP0001');
    end if;
    
    SELECT MAX(CCodigo) AS Codigo_MP FROM MARCA_PRODUCTO;
END;

#
# Procedure "MOSTRAR_CODIGO_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CODIGO_PRODUCTO`;
CREATE PROCEDURE `MOSTRAR_CODIGO_PRODUCTO`()
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_P) from PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('P000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('P00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('P0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('P'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'P0001');
    end if;
    
    SELECT MAX(CCodigo) AS Codigo_P FROM PRODUCTO;
END;

#
# Procedure "MOSTRAR_CODIGO_USUARIO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CODIGO_USUARIO`;
CREATE PROCEDURE `MOSTRAR_CODIGO_USUARIO`()
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_U) from USUARIO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('U000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('U00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('U0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('U'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'U0001');
    end if;
    
    SELECT MAX(CCodigo) AS Codigo_U FROM USUARIO;
END;

#
# Procedure "MOSTRAR_CODIGO_VENTA"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_CODIGO_VENTA`;
CREATE PROCEDURE `MOSTRAR_CODIGO_VENTA`()
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_V) from VENTA);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('V000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('V00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('V0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('V'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'V0001');
    end if;
    
    SELECT MAX(CCodigo) AS Codigo_V FROM VENTA;
END;

#
# Procedure "MOSTRAR_DETALLE_VENTA_POR_CODIGO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_DETALLE_VENTA_POR_CODIGO`;
CREATE PROCEDURE `MOSTRAR_DETALLE_VENTA_POR_CODIGO`(IN CCodigo_V VARCHAR(10))
BEGIN
    SELECT dv.Codigo_V, CONCAT(c.Nombre_CP,' ',m.Nombre_MP,' - ',p.Descripcion_P) as Producto, dv.Precio, dv.Cantidad, dv.SubTotal
    FROM DETALLE_VENTA dv
    INNER JOIN PRODUCTO p ON p.Codigo_P = dv.Codigo_P
    INNER JOIN CLASE_PRODUCTO c ON c.Codigo_CP = p.Codigo_CP
    INNER JOIN MARCA_PRODUCTO m ON m.Codigo_MP = p.Codigo_MP
    WHERE dv.Codigo_V = CCodigo_V;
END;

#
# Procedure "MOSTRAR_MARCA_PRODUCTO_HABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_MARCA_PRODUCTO_HABILITADOS`;
CREATE PROCEDURE `MOSTRAR_MARCA_PRODUCTO_HABILITADOS`()
begin
    SELECT * FROM MARCA_PRODUCTO
    where Estado_MP = 'HAB'
    ORDER BY Nombre_MP ASC;
end;

#
# Procedure "MOSTRAR_MARCA_PRODUCTO_INHABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_MARCA_PRODUCTO_INHABILITADOS`;
CREATE PROCEDURE `MOSTRAR_MARCA_PRODUCTO_INHABILITADOS`()
begin
    SELECT * FROM MARCA_PRODUCTO
    where Estado_MP = 'INH'
    ORDER BY Nombre_MP ASC;
end;

#
# Procedure "MOSTRAR_PRODUCTOS_ELIMINADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_PRODUCTOS_ELIMINADOS`;
CREATE PROCEDURE `MOSTRAR_PRODUCTOS_ELIMINADOS`()
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP as Clase_P, MP.Nombre_MP as Marca_P, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Estado_P = 'INH' ORDER BY cp.Nombre_CP ASC;
END;

#
# Procedure "MOSTRAR_PRODUCTOS_HABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_PRODUCTOS_HABILITADOS`;
CREATE PROCEDURE `MOSTRAR_PRODUCTOS_HABILITADOS`()
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP as Clase_P, MP.Nombre_MP as Marca_P, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Estado_P = 'HAB' and CP.Estado_CP = 'HAB' and MP.Estado_MP = 'HAB' ORDER BY cp.Nombre_CP ASC;
END;

#
# Procedure "MOSTRAR_USUARIO_POR_CODIGO"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_USUARIO_POR_CODIGO`;
CREATE PROCEDURE `MOSTRAR_USUARIO_POR_CODIGO`(
    IN CCodigo_U VARCHAR(10)
)
begin
    select * from USUARIO
    where Codigo_U = CCodigo_U;
end;

#
# Procedure "MOSTRAR_USUARIOS_CLIENTES_HABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_USUARIOS_CLIENTES_HABILITADOS`;
CREATE PROCEDURE `MOSTRAR_USUARIOS_CLIENTES_HABILITADOS`()
begin
    select Codigo_U,Nombres_U,Id_U,Tipo_U,Estado_U from USUARIO
    where Tipo_U LIKE '%I%' and Estado_U = 'HAB'
    order by Nombres_U asc;
end;

#
# Procedure "MOSTRAR_USUARIOS_CLIENTES_INHABILITADOS"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_USUARIOS_CLIENTES_INHABILITADOS`;
CREATE PROCEDURE `MOSTRAR_USUARIOS_CLIENTES_INHABILITADOS`()
begin
    select Codigo_U,Nombres_U,Apellidos_U,Id_U,Tipo_U,Estado_U from USUARIO
    where Tipo_U LIKE '%I%' and Estado_U = 'INH'
    order by Nombres_U asc;
end;

#
# Procedure "MOSTRAR_VENTA"
#

DROP PROCEDURE IF EXISTS `MOSTRAR_VENTA`;
CREATE PROCEDURE `MOSTRAR_VENTA`()
BEGIN
    SELECT Codigo_V, USUARIO.Codigo_U, concat(USUARIO.Nombres_U,', ', USUARIO.Apellidos_U) AS Cliente, Total, DATE_FORMAT(Fecha,'%d/%m/%Y a las %H:%i:%s horas') AS Fecha  FROM VENTA
    INNER JOIN USUARIO ON USUARIO.Codigo_U = VENTA.Codigo_U 
    ORDER BY Fecha desc;
END;

#
# Procedure "RECUPERAR_CLASE_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `RECUPERAR_CLASE_PRODUCTO`;
CREATE PROCEDURE `RECUPERAR_CLASE_PRODUCTO`(
    IN CCodigo_CP VARCHAR(10)
)
begin
    update CLASE_PRODUCTO set Estado_CP='HAB' where Codigo_CP=UPPER(CCodigo_CP);
end;

#
# Procedure "RECUPERAR_MARCA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `RECUPERAR_MARCA_PRODUCTO`;
CREATE PROCEDURE `RECUPERAR_MARCA_PRODUCTO`(
    IN CCodigo_MP VARCHAR(10)
)
begin
    update MARCA_PRODUCTO set Estado_MP='HAB' where Codigo_MP=CCodigo_MP;
end;

#
# Procedure "RECUPERAR_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `RECUPERAR_PRODUCTO`;
CREATE PROCEDURE `RECUPERAR_PRODUCTO`(
    IN CCodigo_P VARCHAR(10)
)
begin
    update PRODUCTO set Estado_P='HAB' where Codigo_P=CCodigo_P;
end;

#
# Procedure "RECUPERAR_USUARIO"
#

DROP PROCEDURE IF EXISTS `RECUPERAR_USUARIO`;
CREATE PROCEDURE `RECUPERAR_USUARIO`(
    IN CCodigo_U VARCHAR(10)
)
begin
    update USUARIO set Estado_U='HAB' where Codigo_U=CCodigo_U;
end;

#
# Procedure "REGISTRAR_CLASE_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_CLASE_PRODUCTO`;
CREATE PROCEDURE `REGISTRAR_CLASE_PRODUCTO`(
    IN NNombre_CP VARCHAR(30)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_CP) from CLASE_PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('CP000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('CP00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('CP0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('CP'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'CP0001');
    end if;
    
    if not exists (select Codigo_CP,Nombre_CP,Estado_CP from CLASE_PRODUCTO where Codigo_CP=CCodigo or Nombre_CP=NNombre_CP and (Estado_CP='HAB' or Estado_CP='INH')) then
        insert into CLASE_PRODUCTO(Codigo_CP,Nombre_CP) values (UPPER(CCodigo) ,UPPER(NNombre_CP));
    end if;
END;

#
# Procedure "REGISTRAR_DETALLE_VENTA"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_DETALLE_VENTA`;
CREATE PROCEDURE `REGISTRAR_DETALLE_VENTA`(
    IN CCodigo_V VARCHAR(10),
    IN NNombre_P VARCHAR(100),
    IN PPrecio DECIMAL(10,2),
    IN CCantidad DECIMAL(10,2),
    IN SSubTotal DECIMAL(10,2)
)
BEGIN
    declare CCodigo_P varchar(10);
    
    set CCodigo_P = (SELECT Codigo_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE CONCAT(CP.Nombre_CP,' ',MP.Nombre_MP,' - ',P.Descripcion_P) = NNombre_P);
    
    INSERT INTO DETALLE_VENTA(Codigo_V, Codigo_P, Precio, Cantidad,  SubTotal) VALUES(UPPER(CCodigo_V),UPPER(CCodigo_P),PPrecio,CCantidad,SSubTotal);
END;

#
# Procedure "REGISTRAR_MARCA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_MARCA_PRODUCTO`;
CREATE PROCEDURE `REGISTRAR_MARCA_PRODUCTO`(
    IN NNombre_MP VARCHAR(30)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_MP) from MARCA_PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('MP000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('MP00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('MP0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('MP'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'MP0001');
    end if;
    
    if not exists (select Codigo_MP,Nombre_MP,Estado_MP from MARCA_PRODUCTO where Codigo_MP=CCodigo or Nombre_MP=NNombre_MP and (Estado_MP='HAB' or Estado_MP='INH')) then
        insert into MARCA_PRODUCTO(Codigo_MP,Nombre_MP) values (UPPER(CCodigo) ,UPPER(NNombre_MP));
    end if;
END;

#
# Procedure "REGISTRAR_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_PRODUCTO`;
CREATE PROCEDURE `REGISTRAR_PRODUCTO`(
    IN NNombre_CP VARCHAR(30), 
    IN NNombre_MP VARCHAR(30),
    IN DDescripcion_P VARCHAR(50),
    IN PPrecio_P DECIMAL(6,2),
    IN IImagen_P VARCHAR(50)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    declare CCodigo_CP varchar(30);
    declare CCodigo_MP varchar(30);
    
    set max = (select MAX(Codigo_P) from PRODUCTO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('P000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('P00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('P0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('P'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'P0001');
    end if;
    
    set CCodigo_CP = (SELECT Codigo_CP FROM clase_producto where Nombre_CP = NNombre_CP);
    set CCodigo_MP = (SELECT Codigo_MP FROM marca_producto where Nombre_MP = NNombre_MP);
    
    
    if not exists (select Codigo_P,Codigo_CP,Codigo_MP,Descripcion_P,Precio_P,Estado_P from PRODUCTO
    where Codigo_P=CCodigo or Codigo_CP=CCodigo_CP and Codigo_MP = CCodigo_MP and Descripcion_P = DDescripcion_P and Precio_P=PPrecio_P and (Estado_P='HAB' or Estado_P='INH')) then
        insert into PRODUCTO(Codigo_P, Codigo_CP, Codigo_MP, Descripcion_P, Precio_P, Imagen_P) values (UPPER(CCodigo) ,UPPER(CCodigo_CP), UPPER(CCodigo_MP), UPPER(DDescripcion_P), UPPER(PPrecio_P), IImagen_P);
    end if;
END;

#
# Procedure "REGISTRAR_USUARIO"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_USUARIO`;
CREATE PROCEDURE `REGISTRAR_USUARIO`(
    IN NNombres_U VARCHAR(50),
    IN AApellidos_U VARCHAR(50),
    IN IId_U VARCHAR(30),
    IN CClave_U VARCHAR(20),
    IN TTipo_U VARCHAR(15)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_U) from USUARIO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('U000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('U00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('U0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('U'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'U0001');
    end if;
    
    if not exists (select Id_U from USUARIO where Id_U = IId_U ) then
        insert into USUARIO(Codigo_U,Nombres_U,Apellidos_U,Id_U,Clave_U,Tipo_U,Estado_U) 
        values (UPPER(CCodigo),UPPER(NNombres_U),UPPER(AApellidos_U),IId_U,CClave_U,UPPER(TTipo_U),'HAB');
    end if;
END;

#
# Procedure "REGISTRAR_USUARIO_CLIENTE"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_USUARIO_CLIENTE`;
CREATE PROCEDURE `REGISTRAR_USUARIO_CLIENTE`(
    IN NNombres_U VARCHAR(50),
    IN AApellidos_U VARCHAR(50),
    IN IId_U VARCHAR(30),
    IN CClave_U VARCHAR(20)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    set max = (select MAX(Codigo_U) from USUARIO);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('U000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('U00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('U0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('U'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'U0001');
    end if;
    
    if not exists (select Id_U from USUARIO where Id_U = IId_U)  then
        insert into USUARIO(Codigo_U,Nombres_U,Apellidos_U,Id_U,Clave_U,Tipo_U,Estado_U) 
        values (UPPER(CCodigo),UPPER(NNombres_U),UPPER(AApellidos_U),IId_U,CClave_U,'CLIENTE','HAB');
    end if;
END;

#
# Procedure "REGISTRAR_VENTA"
#

DROP PROCEDURE IF EXISTS `REGISTRAR_VENTA`;
CREATE PROCEDURE `REGISTRAR_VENTA`(
    IN NNombre_U VARCHAR(100),
    IN TTotal DECIMAL(10,2)
)
BEGIN
    declare max varchar(10);
    declare num int;
    declare CCodigo varchar(10);
    
    declare CCodigo_U varchar(10);
    
    set max = (select MAX(Codigo_V) from VENTA);
    set num = (SELECT LTRIM(RIGHT(max,4)));
    if num>=1 and num <=8 then
        set num = num + 1;
        set CCodigo = (select concat('V000'  ,  CAST(num as CHAR)));
    elseif num>=9 and num <=98 then
        set num = num + 1;
        set CCodigo = (select concat('V00'  ,  CAST(num as CHAR)));
    elseif num>=99 and num <=998 then
        set num = num + 1;
        set CCodigo = (select concat('V0'  ,  CAST(num as CHAR)));
    elseif num>=999 and num <=9998 then
        set num = num + 1;
        set CCodigo = (select concat('V'  ,  CAST(num as CHAR)));
    else 
        set CCodigo=(select 'V0001');
    end if;
    
    set CCodigo_U = (SELECT Codigo_U FROM USUARIO WHERE concat(Nombres_U,', ',Apellidos_U)=NNombre_U);
    
    if not exists (select Codigo_V from VENTA where Codigo_V = CCodigo) then
        insert into VENTA(Codigo_V, Codigo_U, Total) values (UPPER(CCodigo), UPPER(CCodigo_U), TTotal);
    end if;
END;
