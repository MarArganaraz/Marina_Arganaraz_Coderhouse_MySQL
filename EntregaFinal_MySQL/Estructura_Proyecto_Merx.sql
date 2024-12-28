DROP DATABASE IF EXISTS SuperMerx;

CREATE DATABASE SuperMerx;
USE SuperMerx;

-- PRIMERA ENTREGA
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
Precio DECIMAL(10, 2),
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
-- Tabla SubCategoria
ALTER TABLE SubCategoria
ADD ID_Categoria INT,
ADD CONSTRAINT FK_Subcategoria_Categoria
FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria);

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

-- SEGUNDA ENTREGA Y PROYECTO FINAL

CREATE TABLE Clientes (
 ID_Cliente INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(100),
 apellido VARCHAR(100),
 email VARCHAR(255) UNIQUE,
 telefono VARCHAR(30),
 direccion VARCHAR(255),
 fecha_nacimiento DATE,
 PRIMARY KEY (ID_Cliente)
 );
 
 CREATE TABLE Empleados (
 ID_Empleado INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR (100),
 apellido VARCHAR(100),
 dni VARCHAR(20) UNIQUE NOT NULL,
 fecha_nacimiento DATE,
 email VARCHAR(255) UNIQUE,
 telefono VARCHAR(30),
 fecha_contratacion DATE,
 cargo VARCHAR(30),
 departamento VARCHAR(50),
 PRIMARY KEY (ID_Empleado)
 );
 
 CREATE TABLE Proveedores (
 ID_Proveedor INT NOT NULL AUTO_INCREMENT,
 nombre_empresa VARCHAR(100),
 direccion VARCHAR(255),
 pagina_web VARCHAR(255),
 contacto VARCHAR(100),
 telefono VARCHAR(30),
 email VARCHAR(255) UNIQUE,
 banco VARCHAR(50),
 cuenta_bancaria VARCHAR(50),
 PRIMARY KEY (ID_Proveedor)
 );
 
 CREATE TABLE Promociones (
 ID_Promo INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(100),
 descripcion VARCHAR(255),
 fecha_inicio DATE,
 fecha_fin DATE,
 descuento DECIMAL(10,2),
 ID_Producto INT,
 PRIMARY KEY (ID_Promo)
 );
 
 CREATE TABLE Pedidos (
 ID_Pedido INT NOT NULL AUTO_INCREMENT,
 fecha DATE NOT NULL,
 ID_Cliente INT,
 total DECIMAL(10,2),
 estado ENUM('pendiente', 'enviado', 'entregado', 'cancelado'),
 Metodo_Pago ENUM('efectivo', 'transferencia', 'credito', 'debito'),
 PRIMARY KEY (ID_Pedido)
 );
 
 CREATE TABLE Logistica (
 ID_Logistica INT NOT NULL AUTO_INCREMENT,
 ID_Pedido INT,
 fecha_salida DATE,
 fecha_llegada DATE,
 transportista VARCHAR(100),
 numero_guia VARCHAR(50),
 estado ENUM('en_ruta', 'entregado', 'cancelado'),
 observaciones VARCHAR(255),
 PRIMARY KEY (ID_Logistica)
 );
 
 ALTER TABLE supermerx.ventas
ADD COLUMN ID_Cliente INT;

-- CLAVES FK
ALTER TABLE Producto
ADD ID_Promo INT,
ADD CONSTRAINT FK_Producto_Promo
FOREIGN KEY (ID_Promo) REFERENCES Promociones(ID_Promo);

ALTER TABLE Pedidos
ADD ID_Logistica INT,
ADD ID_Empleado INT,
ADD CONSTRAINT FK_Pedidos_Logistica
FOREIGN KEY (ID_Logistica) REFERENCES Logistica(ID_Logistica),
ADD CONSTRAINT FK_Pedidos_Empleados
FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);

ALTER TABLE Marca
ADD ID_Proveedor INT,
ADD CONSTRAINT FK_Marca_Proveedores
FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor);

ALTER TABLE Ventas
ADD ID_Empleado INT,
ADD CONSTRAINT FK_Ventas_Empleado
FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);

ALTER TABLE Ventas
ADD CONSTRAINT FK_Ventas_Clientes
FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente);