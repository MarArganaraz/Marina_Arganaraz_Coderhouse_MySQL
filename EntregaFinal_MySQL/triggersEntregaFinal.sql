-- Trigger "trg_actualizar_inventario"
-- Agregamos columna Inventario a la tabla Producto suponiendo que tenemos 120 unidades de cada uno de los productos
ALTER TABLE Producto ADD Inventario INT DEFAULT 120;

-- Creacion del trigger
DELIMITER //

CREATE TRIGGER trg_actualizar_inventario
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
  UPDATE Producto
  SET Inventario = Inventario - NEW.Cantidad
  WHERE ID_Producto = NEW.ID_Producto;
END; //

DELIMITER ;

-- Verificacion de Trigger "trg_actualizar_inventario"
-- Visualizamos inicialmente el stock previo de un producto especifico
SELECT Producto, Inventario 
FROM Producto 
WHERE ID_Producto = 1;

-- Insertamos una venta de ese mismo producto
INSERT INTO Ventas (Cantidad, ID_Producto, ID_Metodo, ID_Factura, Precio) 
VALUES (5, 1, 1, 1, 2000.00);

-- Luego verificamos el stock disminuyo en 5 unidades ejecutando el SELECT anterior nuevamente
SELECT Producto, Inventario 
FROM Producto 
WHERE ID_Producto = 1;

---------------------------------------------------------------------------------------------------
-- Trigger "trg_alerta_venta_sospechosa"
-- Creamos la tabla AlertasVentas, tabla en la cual se volcara la informacion que recopile el Trigger
CREATE TABLE AlertasVentas (
    ID_Alerta INT NOT NULL AUTO_INCREMENT,
    ID_Venta INT,
    Producto VARCHAR(255),
    Cantidad INT,
    Precio DECIMAL(10, 2),
    Monto_Total DECIMAL(15, 2),
    Fecha_Alerta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID_Alerta)
);

-- Creacion del trigger que inserta el dato en la tabla "AlertasVentas" si la cantidad es mayor a 10
DELIMITER //

CREATE TRIGGER trg_alerta_venta_sospechosa
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    DECLARE nombre_producto VARCHAR(255);
    DECLARE monto_total DECIMAL(15, 2);
    
    -- Obtenemos el nombre del producto
    SELECT Producto INTO nombre_producto 
    FROM Producto 
    WHERE ID_Producto = NEW.ID_Producto;

    -- Calculamos el monto total de la venta
    SET monto_total = NEW.Cantidad * NEW.Precio;
    
    -- Verificamos si excede en 10 unidades la cantidad 
    IF NEW.Cantidad > 10 THEN
        INSERT INTO AlertasVentas (ID_Venta, Producto, Cantidad, Precio, Monto_Total)
        VALUES (NEW.ID_Ventas, nombre_producto, NEW.Cantidad, NEW.Precio, monto_total);
    END IF;
END; //

DELIMITER ;

-- Verificamos el correcto funcionamiento simulando una venta que exceda en 5 unidades
INSERT INTO Ventas (Cantidad, ID_Producto, ID_Metodo, ID_Factura, Precio)
VALUES (15, 2, 1, 1, 1500.00);

-- Validamos si el INSERT se genero correctamente realizando un Select a la nueva Tabla de Alertas
SELECT * FROM AlertasVentas;

-- Otra forma de validar puede ser insertando una venta con menor cantidad al umbral determinado y veremos que no se insertara
-- ningun registro en la tabla

