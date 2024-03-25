/*
DROP DATABASE SENA
CREATE DATABASE SENA
*/
USE SENA
GO
Create table ROLES
(
id_rol int identity(1,1) primary key,
desc_rol nvarchar(100),
fec_creado datetime
)
Create table PRODUCTOS
(
id_producto  int identity(1,1) primary key,
nom_producto  nvarchar(max),
desc_producto  nvarchar(max),
marca_producto  nvarchar(500),
modelo_producto  nvarchar(500),
val_producto  float,
fec_creado datetime,
creado_por int,
img_url nvarchar(max)
)
Create table DESCUENTOS
(
id_descuento int identity(1,1) primary key,
desc_descuento nvarchar(MAX),
fec_creado datetime,
creado_por int,
val_desc float,
fec_ini datetime,
fec_fin datetime
)
Create table INVENTARIO
(
id_item int identity(1,1) primary key,
id_producto int FOREIGN KEY REFERENCES PRODUCTOS(id_producto),
fec_creado datetime,
creado_por int
)
Create table VENTA
(
id_venta int identity(1,1) primary key,
fec_venta datetime
)
Create table PRODUCTOS_VENDIDOS
(
id_item int identity(1,1) primary key,
id_venta int FOREIGN KEY REFERENCES VENTA(id_venta),
id_producto int FOREIGN KEY REFERENCES PRODUCTOS(id_producto),
id_descuento int FOREIGN KEY REFERENCES DESCUENTOS(id_descuento)
)
Create table USUARIOS
(
id_usuario int identity(1,1) primary key,
nom_usuario nvarchar(MAX),
cod_usuario int,
email_usuario nvarchar(max),
contraseña_usuario nvarchar(max),
direccion_usuario nvarchar(max),
tel_usuario nvarchar(100),
rol_usuario int FOREIGN KEY REFERENCES ROLES(id_rol),
)

Create table CARRITO
(
id_carrito int identity(1,1) primary key,
id_usuario int FOREIGN KEY REFERENCES USUARIOS(id_usuario)
)
Create table PRODUCTOS_CARRITO
(
id_item int identity(1,1) primary key,
id_carrito int FOREIGN KEY REFERENCES CARRITO(id_carrito),
id_producto int FOREIGN KEY REFERENCES PRODUCTOS(id_producto)
)