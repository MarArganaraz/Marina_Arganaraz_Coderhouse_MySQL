DROP DATABASE IF EXISTS merx ;

CREATE DATABASE merx ; 

USE merx;

-- Tabla de Categorías
CREATE TABLE Categoria (ID_Categoria INT NOT NULL AUTO_INCREMENT,
Categoria VARCHAR(50),
Abreviatura VARCHAR(10),
primary key (ID_Categoria)
);

-- Tabla de Subcategorías
CREATE TABLE Subcategoria (
ID_Sub INT NOT NULL AUTO_INCREMENT,
Subcategoria VARCHAR (150),
primary key (ID_Sub)
);

-- Tabla de Marcas
CREATE TABLE Marca (
ID_Marca INT NOT NULL AUTO_INCREMENT,
Nombre_Marca VARCHAR (100),
primary key (ID_Marca)
);

-- Tabla de Productos
CREATE TABLE Producto (
ID_Producto INT NOT NULL AUTO_INCREMENT,
Producto VARCHAR(255),
Producto_Completo VARCHAR (255),
Etiqueta VARCHAR(100),
Precio DECIMAL(10,2),
Costo DECIMAL(10,2),
primary key (ID_Producto)
);

-- Tabla de Tipos de Compra
CREATE TABLE TipoCompra (
ID_Tipo INT NOT NULL AUTO_INCREMENT,
Tipo VARCHAR(50),
primary key (ID_Tipo)
);

-- Tabla de Métodos de Pago
CREATE TABLE MetodoPago (
ID_Metodo INT NOT NULL AUTO_INCREMENT,
Metodo_Pago VARCHAR(50),
primary key (ID_Metodo)
);

-- Tabla de Dispositivos
CREATE TABLE Dispositivo (
ID_Dis INT NOT NULL AUTO_INCREMENT,
Nombre_Dis VARCHAR(50),
primary key (ID_Dis)
);

-- Tabla de Ventas
CREATE TABLE Ventas (
ID_Ventas INT NOT NULL AUTO_INCREMENT,
Cantidad INT,
primary key (ID_Ventas)
);

-- Tabla de Facturas
CREATE TABLE Facturas (
ID_Factura INT NOT NULL AUTO_INCREMENT,
Fecha DATE,
Hora TIME,
primary key (ID_Factura)
);

-- FK
-- Tabla Categoria
ALTER TABLE Categoria
ADD ID_Sub INT,
ADD CONSTRAINT FK_Categoria_Subcategoria
FOREIGN KEY (ID_Sub) REFERENCES Subcategoria(ID_Sub);
	
-- Tabla Productos
ALTER TABLE Producto
ADD ID_Categoria INT,
ADD ID_Marca INT,
ADD constraint FK_Producto_Categoria
FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria),
ADD constraint FK_Producto_Marca
FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca);
	
-- Tabla de Ventas
ALTER TABLE Ventas
ADD ID_Producto INT,
ADD ID_Metodo INT,
ADD ID_Factura INT,
ADD constraint FK_Ventas_Producto
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
ADD constraint FK_Ventas_Metodo
FOREIGN KEY (ID_Metodo) REFERENCES MetodoPago(ID_Metodo),
ADD constraint FK_Ventas_Factura
FOREIGN KEY (ID_Factura) REFERENCES Facturas(ID_Factura);
	
-- Tabla Factura
ALTER TABLE Facturas
ADD ID_Producto INT,
ADD ID_Tipo INT,
ADD ID_Dis INT,
ADD constraint FK_Facturas_Producto
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto),
ADD constraint FK_Facturas_Tipo
FOREIGN KEY (ID_Tipo) REFERENCES TipoCompra(ID_Tipo),
ADD constraint FK_Facturas_Dispositivo
FOREIGN KEY (ID_Dis) REFERENCES Dispositivo(ID_Dis);
