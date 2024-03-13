USE SENA
GO
Create table ROLES
(
id_rol int identity(1,1) primary key
)
Create table PRODUCTOS
(
id_prod int identity(1,1) primary key,
nom_prod nvarchar(500),
desc_prod nvarchar(500),
marca_prod nvarchar(500),
val_prod float,
)
Create table INVENTARIO
(
id_item int identity(1,1) primary key
)
Create table VENTA
(
id_venta int identity(1,1) primary key
)
Create table PRODUCTOS_VENDIDOS
(
id_producto int identity(1,1) primary key
)
Create table USUARIOS
(
id_usuario int identity(1,1) primary key,
nom_usuario nvarchar(500),
cod_usuario nvarchar(100),
email_usuario nvarchar(500),
cont_usuario nvarchar(500),
direccion_usuario nvarchar(500),
tel_usuario nvarchar(500),
rol_usuario int,
)

Create table CARRITO
(
id_carrito int identity(1,1) primary key
)