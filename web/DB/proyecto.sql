CREATE DATABASE proyecto;
USE proyecto;
-- TABLAS  ya esta arreglado

CREATE TABLE USUARIO(
    Codigo_U varchar(10) not null,
    Nombres_U varchar(50) not null,
    Apellidos_U varchar(50) not null,
    Id_U varchar(30) not null,
    Clave_U varchar(20) not null,
    Tipo_U varchar(15) not null,
    Estado_U char(3) default 'INH',
    
    constraint PK_Codigo_U primary key (Codigo_U),
    constraint U_Id_U unique (Id_U)
);

INSERT INTO USUARIO VALUES ('U0001','KEMELY FRANCIS','CASTILLO CACCIRE','kemely','kemely','ADMINISTRADOR','HAB'),
('U0002','NICOLAS JOSHUA','RANILLA CASTILLO','nico','nico','USUARIO','HAB'),
('U0003','KAROL','RODRIGUEZ PEREZ','karol','2018','USUARIO','HAB'),
('U0004','DAVID LUIS','NORIEGA BELTRAN','luisito','luisito','USUARIO','HAB'),
('U0005','DIANA','TONE MONTEZ','dia','diana','CLIENTE','HAB'),
('U0006','FERNANDA','HERRERA SANCHEZ','fer','1234','CLIENTE','HAB'),
('U0007','ANA ROSA','APAZA MACHACA','ana','ana','CLIENTE','HAB'),
('U0008','PAUL DONNY','VARGAS MEDINA','paul104','paul','CLIENTE','HAB');



CREATE TABLE CLASE_PRODUCTO(
    Codigo_CP varchar(10) not null,
    Nombre_CP varchar(30) not null,
    Estado_CP char(3) default 'HAB',
    
    constraint PK_Codigo_CP primary key (Codigo_CP)
);

INSERT INTO CLASE_PRODUCTO VALUES ('CP0001','Teclado sintetizador profesional','HAB'),('CP0002','Melodica ','HAB'),('CP0003','Teclado','HAB'),
('CP0004','Piano Digital','HAB');


CREATE TABLE MARCA_PRODUCTO(
    Codigo_MP varchar(10) not null,
    Nombre_MP varchar(30) not null,
    Estado_MP char(3) default 'HAB',
    
    constraint PK_Codigo_MP primary key (Codigo_MP)
);

INSERT INTO MARCA_PRODUCTO VALUES ('MP0001','BEHRINGER ','HAB'),('MP0002','HOHNER','HAB'),('MP0003','ANGEL','HAB'),
('MP0004','KORG','HAB'),('MP0005','SAMSON','HAB'),('MP0006','CASIO','HAB'),
('MP0007','BALDASSARE','HAB');


CREATE TABLE PRODUCTO(
    Codigo_P varchar(10) not null,
    Codigo_CP varchar(10) not null,
    Codigo_MP varchar(10) not null,
    Descripcion_P varchar(100) not null,
    Precio_P decimal(10,2) not null,
    Cantidad decimal(6,2) default '0.00',
    Imagen_P varchar(100) null,
    Estado_P char(3) default 'HAB',
    
    constraint PK_Codigo_P primary key (Codigo_P),
    constraint FK_Codigo_CP foreign key (Codigo_CP) references CLASE_PRODUCTO(Codigo_CP),
    constraint FK_Codigo_MP foreign key (Codigo_MP) references MARCA_PRODUCTO(Codigo_MP)
);

INSERT INTO PRODUCTO VALUES ('P0001','CP0001','MP0001',' Teclado sintetizador profesional Behringer Deepmind6',1399.90,0.00,'1.jpg','HAB'),
('P0002','CP0001','MP0001','Teclado sintetizador profesional Behringer',20.00,0.00,'2.jpg','HAB'),
('P0003','CP0002','MP0002','Melodica hohner student 32 negro',399.90,0.00,'3.jpg','HAB'),
('P0004','CP0002','MP0003','Melodica Angel am-32k3 (32 teclas)',27.00,0.00,'4.jpg','HAB'),
('P0005','CP0002','MP0002','Melodica hohner  Airboard 32 remaster',230.90,0.00,'5.jpg','HAB'),
('P0006','CP0002','MP0002','Melodica hohner  Airboard ',30.00,0.00,'6.jpg','HAB'),
('P0007','CP0001','MP0004','Teclado workstation profesional korg kross2-61 mb',1600.00,0.00,'7.jpg','HAB'),
('P0008','CP0001','MP0004','Teclado sintetizador profesional korg microkorg mk-1s',220.00,0.00,'8.jpg','HAB'),
('P0009','CP0003','MP0005','Teclado controlador midi-usb samson graphite 49',2700.00,0.00,'9.jpg','HAB'),
('P0010','CP0002','MP0002','Melodica hohner superforce 37',67.41,0.00,'10.jpg','HAB'),
('P0011','CP0002','MP0002','Melodica hohner student 26',46.71,0.00,'11.jpg','HAB'),
('P0012','CP0003','MP0006','Teclado personal CTK-240',335.00,0.00,'12.jpg','HAB'),
('P0013','CP0003','MP0006','Teclado CTK-7200',1415.00,0.00,'13.jpg','HAB'),
('P0014','CP0003','MP0006','Teclado CTK-6250K2, con fuente de poder',1145.00,0.00,'14.jpg','HAB'),
('P0015','CP0004','MP0006','Piano digital CDP-230BK, color negro',1900.00,0.00,'15.jpg','HAB'),
('P0016','CP0004','MP0006','Piano digital CDP-230SR, color gris',1900.00,0.00,'16.jpg','HAB'),
('P0017','CP0004','MP0006','Piano digital CDP-130SR, color gris',1680.00,0.00,'17.jpg','HAB'),
('P0018','CP0004','MP0006','Piano digital CDP-130BK, color negro ',1680.00,0.00,'18.jpg','HAB'),
('P0019','CP0003','MP0006','Teclado WK-240 con fuente de poder ',900.00,0.00,'19.jpg','HAB'),
('P0020','CP0003','MP0006','Teclado SA-46 ',138.00,0.00,'20.jpg','HAB'),
('P0021','CP0004','MP0006','Piano digital PX-160, color negro (BK) ',2500.00,0.00,'21.jpg','HAB'),
('P0022','CP0001','MP0004','Teclado sintetizador profesional korg monologue blue',299.01,0.00,'22.jpg','HAB'),
('P0023','CP0003','MP0004','Teclado de acompañamiento sin altavoces korg pa4x-76',3499.00,0.00,'23.jpg','HAB'),
('P0024','CP0001','MP0004','Teclado sintetizador profesional korg microkorg',3999.90,0.00,'24.jpg','HAB'),
('P0025','CP0002','MP0002','Melodica hohner student 32 roja',55.89,0.00,'25.jpg','HAB'),
('P0026','CP0003','MP0006','Teclado SA-77',175.00,0.00,'26.jpg','HAB'),
('P0027','CP0004','MP0006','Piano digital PX-360M, color negro (BK) ',3690.00,0.00,'27.jpg','HAB'),
('P0028','CP0004','MP0006','Piano digital PX-160, color blanco (WH)',2200.00,0.00,'28.jpg','HAB'),
('P0029','CP0003','MP0007','Teclado personal de goma PN37',115.00,0.00,'29.jpg','HAB'),
('P0030','CP0003','MP0006','Arranger MZX-500K2',370.00,0.00,'30.jpg','HAB');

CREATE TABLE VENTA(
    Codigo_V varchar(20) not null,
    Codigo_U varchar(10) not null,
    Total decimal(10,2) not null,
    Fecha datetime default current_timestamp,

    constraint PK_Codigo_V primary key (Codigo_V),
    constraint FK_Codigo_U foreign key (Codigo_U) references USUARIO (Codigo_U)
);

INSERT INTO VENTA VALUES ('V0001','U0002',2669.62,'2015-12-07 10:17:12'),('V0002','U0003',1780.00,'2015-12-07 10:50:04'),('V0003','U0004',1763.93,'2015-12-15 13:18:04');

CREATE TABLE DETALLE_VENTA(
    Codigo_V varchar(20) not null,
    Codigo_P varchar(10) not null,
    Precio decimal(10,2) not null,
    Cantidad decimal(10,2) not null,
    Descuento decimal(10,2) not null,
    SubTotal decimal(10,2) not null,
    
    constraint FK_Codigo_V foreign key (Codigo_V) references VENTA(Codigo_V),
    constraint FK_Codigo_P foreign key (Codigo_P) references PRODUCTO(Codigo_P)
);



-- BUSCAR

CREATE PROCEDURE BUSCAR_PRODUCTO_CODIGO(IN CCodigo_P varchar(10))
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP, MP.Nombre_MP, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Codigo_P = CCodigo_P and P.Estado_P = 'HAB' ORDER BY cp.Nombre_CP ASC;
END;

-- PROCESOS DE ELIMINAR 

create procedure ELIMINAR_CLASE_PRODUCTO(
    IN CCodigo_CP VARCHAR(10)
)
begin
    update CLASE_PRODUCTO set Estado_CP='INH' where Codigo_CP=UPPER(CCodigo_CP);
end;

CREATE PROCEDURE ELIMINAR_DETALLE_VENTA(
    IN CCodigo_V VARCHAR(10)
)
BEGIN
    DELETE FROM DETALLE_VENTA WHERE Codigo_V = CCodigo_V;
END;

create procedure ELIMINAR_MARCA_PRODUCTO(
    IN CCodigo_MP VARCHAR(10)
)
begin
    update MARCA_PRODUCTO set Estado_MP='INH' where Codigo_MP=CCodigo_MP;
end;

create procedure ELIMINAR_PRODUCTO(
    IN CCodigo_P VARCHAR(10)
)
begin
    update PRODUCTO set Estado_P='INH' where Codigo_P=CCodigo_P;
end;

create procedure ELIMINAR_USUARIO(
    IN CCodigo_U VARCHAR(10)
)
begin
    update USUARIO set Estado_U='INH' where Codigo_U=CCodigo_U;
end;

CREATE PROCEDURE ELIMINAR_VENTA(
    IN CCodigo_V VARCHAR(10)
)
BEGIN
    DELETE FROM DETALLE_VENTA WHERE DETALLE_VENTA.Codigo_V=CCodigo_V;
    DELETE FROM VENTA WHERE VENTA.Codigo_V=CCodigo_V;
END;

-- LOGUEAR

CREATE PROCEDURE LOGEAR_USUARIO(
    IN IId_U VARCHAR(30)
)
BEGIN
    select Codigo_U,Id_U,Clave_U,Estado_U from USUARIO
    where Id_U = IId_U;
end;

-- MODIFICAR

create procedure MODIFICAR_CLASE_PRODUCTO(
    IN CCodigo_CP VARCHAR(10), 
    IN NNombre_CP VARCHAR(30)
)
begin
    update CLASE_PRODUCTO set Nombre_CP=UPPER(NNombre_CP) where Codigo_CP=UPPER(CCodigo_CP);
end;

create procedure MODIFICAR_CLAVE_USUARIO(
    IN CCodigo_U VARCHAR(10),
    IN CClave_U VARCHAR(20)
)
begin
    update USUARIO set Clave_U=CClave_U where Codigo_U=CCodigo_U;
end;

create procedure MODIFICAR_MARCA_PRODUCTO(
    IN CCodigo_MP VARCHAR(10), 
    IN NNombre_MP VARCHAR(30)
)
begin
    update MARCA_PRODUCTO set Nombre_MP=UPPER(NNombre_MP) where Codigo_MP=CCodigo_MP;
end;

create procedure MODIFICAR_PRODUCTO(
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

SELECT * FROM PRODUCTO;

create procedure MODIFICAR_USUARIO(
    IN CCodigo_U VARCHAR(10),
    IN NNombres_U VARCHAR(50),
    IN AApellidos_U VARCHAR(50)
  
)
begin
    update USUARIO set Nombres_U=UPPER(NNombres_U), Apellidos_U=UPPER(AApellidos_U) where Codigo_U=UPPER(CCodigo_U);
end;

-- MOSTRAR

CREATE PROCEDURE MOSTRAR_VENTA()
BEGIN
    SELECT Codigo_V, USUARIO.Codigo_U, concat(USUARIO.Nombres_U,', ', USUARIO.Apellidos_U) AS Cliente, Total, DATE_FORMAT(Fecha,'%d/%m/%Y a las %H:%i:%s horas') AS Fecha  FROM VENTA
    INNER JOIN USUARIO ON USUARIO.Codigo_U = VENTA.Codigo_U 
    ORDER BY Fecha desc;
END;
-- CALL MOSTRAR_VENTA();

CREATE PROCEDURE MOSTRAR_CODIGO_VENTA()
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


create procedure MOSTRAR_USUARIO_POR_CODIGO(
    IN CCodigo_U VARCHAR(10)
)
begin
    select * from USUARIO
    where Codigo_U = CCodigo_U;
end;

CREATE PROCEDURE MOSTRAR_USUARIOS_CLIENTES_HABILITADOS()
begin
    select Codigo_U,Nombres_U,Id_U,Tipo_U,Estado_U from USUARIO
    where Tipo_U LIKE '%I%' and Estado_U = 'HAB'
    order by Nombres_U asc;
end;


CREATE PROCEDURE MOSTRAR_USUARIOS_CLIENTES_INHABILITADOS()
begin
    select Codigo_U,Nombres_U,Apellidos_U,Id_U,Tipo_U,Estado_U from USUARIO
    where Tipo_U LIKE '%I%' and Estado_U = 'INH'
    order by Nombres_U asc;
end;

CREATE PROCEDURE MOSTRAR_CODIGO_USUARIO()
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



CREATE PROCEDURE MOSTRAR_PRODUCTOS_HABILITADOS()
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP as Clase_P, MP.Nombre_MP as Marca_P, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Estado_P = 'HAB' and CP.Estado_CP = 'HAB' and MP.Estado_MP = 'HAB' ORDER BY cp.Nombre_CP ASC;
END;

CREATE PROCEDURE MOSTRAR_PRODUCTOS_ELIMINADOS()
BEGIN
    SELECT P.Codigo_P, CP.Nombre_CP as Clase_P, MP.Nombre_MP as Marca_P, P.Descripcion_P, P.Precio_P, P.Imagen_P, P.Estado_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE P.Estado_P = 'INH' ORDER BY cp.Nombre_CP ASC;
END;

CREATE PROCEDURE MOSTRAR_CODIGO_PRODUCTO()
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


create procedure MOSTRAR_MARCA_PRODUCTO_HABILITADOS()
begin
    SELECT * FROM MARCA_PRODUCTO
    where Estado_MP = 'HAB'
    ORDER BY Nombre_MP ASC;
end ;

create procedure MOSTRAR_MARCA_PRODUCTO_INHABILITADOS()
begin
    SELECT * FROM MARCA_PRODUCTO
    where Estado_MP = 'INH'
    ORDER BY Nombre_MP ASC;
end;

CREATE PROCEDURE MOSTRAR_CODIGO_MARCA_PRODUCTO()
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





CREATE PROCEDURE MOSTRAR_DETALLE_VENTA_POR_CODIGO(IN CCodigo_V VARCHAR(10))
BEGIN
    SELECT dv.Codigo_V, CONCAT(c.Nombre_CP,' ',m.Nombre_MP,' - ',p.Descripcion_P) as Producto, dv.Precio, dv.Cantidad, dv.Descuento, dv.SubTotal
    FROM DETALLE_VENTA dv
    INNER JOIN PRODUCTO p ON p.Codigo_P = dv.Codigo_P
    INNER JOIN CLASE_PRODUCTO c ON c.Codigo_CP = p.Codigo_CP
    INNER JOIN MARCA_PRODUCTO m ON m.Codigo_MP = p.Codigo_MP
    WHERE dv.Codigo_V = CCodigo_V;
END;

CREATE PROCEDURE MOSTRAR_CLASE_PRODUCTO_HABILITADOS()
BEGIN
    SELECT * FROM CLASE_PRODUCTO
    WHERE Estado_CP = 'HAB'
    ORDER BY Nombre_CP ASC;
END;

CREATE PROCEDURE MOSTRAR_CLASE_PRODUCTO_INHABILITADOS()
BEGIN
    SELECT * FROM CLASE_PRODUCTO
    WHERE Estado_CP = 'INH'
    ORDER BY Nombre_CP ASC;
END;

CREATE PROCEDURE MOSTRAR_CODIGO_CLASE_PRODUCTO()
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




-- RECUPERAR

create procedure RECUPERAR_USUARIO(
    IN CCodigo_U VARCHAR(10)
)
begin
    update USUARIO set Estado_U='HAB' where Codigo_U=CCodigo_U;
end;

create procedure RECUPERAR_PRODUCTO(
    IN CCodigo_P VARCHAR(10)
)
begin
    update PRODUCTO set Estado_P='HAB' where Codigo_P=CCodigo_P;
end;

create procedure RECUPERAR_MARCA_PRODUCTO(
    IN CCodigo_MP VARCHAR(10)
)
begin
    update MARCA_PRODUCTO set Estado_MP='HAB' where Codigo_MP=CCodigo_MP;
end;

create procedure RECUPERAR_CLASE_PRODUCTO(
    IN CCodigo_CP VARCHAR(10)
)
begin
    update CLASE_PRODUCTO set Estado_CP='HAB' where Codigo_CP=UPPER(CCodigo_CP);
end;

-- REGISTRAR

CREATE PROCEDURE REGISTRAR_VENTA(
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


CREATE PROCEDURE REGISTRAR_USUARIO_CLIENTE(
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


CREATE PROCEDURE REGISTRAR_MARCA_PRODUCTO(
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



CREATE PROCEDURE REGISTRAR_DETALLE_VENTA(
    IN CCodigo_V VARCHAR(10),
    IN NNombre_P VARCHAR(100),
    IN PPrecio DECIMAL(10,2),
    IN CCantidad DECIMAL(10,2),
    IN DDescuento DECIMAL(10,2),
    IN SSubTotal DECIMAL(10,2)
)
BEGIN
    declare CCodigo_P varchar(10);
    
    set CCodigo_P = (SELECT Codigo_P FROM PRODUCTO P
    INNER JOIN clase_producto CP ON CP.Codigo_CP = P.Codigo_CP
    INNER JOIN marca_producto MP ON MP.Codigo_MP = P.Codigo_MP
    WHERE CONCAT(CP.Nombre_CP,' ',MP.Nombre_MP,' - ',P.Descripcion_P) = NNombre_P);
    
    INSERT INTO DETALLE_VENTA(Codigo_V, Codigo_P, Precio, Cantidad, Descuento, SubTotal) VALUES(UPPER(CCodigo_V),UPPER(CCodigo_P),PPrecio,CCantidad,DDescuento,SSubTotal);
END;


CREATE PROCEDURE REGISTRAR_CLASE_PRODUCTO(
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

SELECT * FROM CLASE_PRODUCTO;


CREATE PROCEDURE REGISTRAR_USUARIO(
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


CREATE PROCEDURE REGISTRAR_PRODUCTO(
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
