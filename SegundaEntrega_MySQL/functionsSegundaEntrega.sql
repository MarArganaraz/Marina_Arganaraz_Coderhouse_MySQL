-- Creacion de Funcion para Calcular Monto Total por Producto
DELIMITER //

CREATE FUNCTION CalcularMontoTotalPorProducto(p_ID_Producto INT)
RETURNS DECIMAL(15, 2)
DETERMINISTIC
BEGIN
    DECLARE monto_total DECIMAL(15, 2);

    SELECT SUM(Cantidad * Precio) INTO monto_total
    FROM Ventas
    WHERE ID_Producto = p_ID_Producto;

    RETURN IFNULL(monto_total, 0);
END; //

DELIMITER ;

-- Verificamos si funciona con el ID_Producto =1 e ID_Producto = 5
SELECT CalcularMontoTotalPorProducto(1) AS Monto_Total;
SELECT CalcularMontoTotalPorProducto(5) AS Monto_Total;


-- Creacion de Contador de cantidad de ventas en rango de fechas
DELIMITER //

CREATE FUNCTION ContarVentasPorFecha(p_FechaInicio DATE, p_FechaFin DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_ventas INT;

    SELECT COUNT(*) INTO total_ventas
    FROM Facturas f
    JOIN Ventas v ON f.ID_Factura = v.ID_Factura
    WHERE f.Fecha BETWEEN p_FechaInicio AND p_FechaFin;

    RETURN total_ventas;
END; //

DELIMITER ;

-- Verificamos con el rango del Año 2024
SELECT ContarVentasPorFecha('2024-01-01', '2024-12-31') AS Total_Ventas;

-- Realizamos la prueba en el Año 2023, sera 0 ya que las ventas se situaron todas en el 2024
SELECT ContarVentasPorFecha('2023-01-01', '2023-12-31') AS Total_Ventas;



