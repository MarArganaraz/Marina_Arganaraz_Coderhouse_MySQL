-- Creacion de SP ConsultarVentasPorCategoria

DELIMITER //

CREATE PROCEDURE ConsultarVentasPorCategoria(
    IN p_FechaInicio DATE,
    IN p_FechaFin DATE
)
BEGIN
    SELECT 
        c.Categoria,
        SUM(v.Cantidad * v.Precio) AS Monto_Total_Vendido,
        SUM(v.Cantidad) AS Cantidad_Total_Vendida
    FROM Ventas v
    INNER JOIN Producto p ON v.ID_Producto = p.ID_Producto
    INNER JOIN Categoria c ON p.ID_Categoria = c.ID_Categoria
    INNER JOIN Facturas f ON v.ID_Factura = f.ID_Factura
    WHERE f.Fecha BETWEEN p_FechaInicio AND p_FechaFin
    GROUP BY c.Categoria
    ORDER BY Monto_Total_Vendido DESC;
END; //

DELIMITER ;

-- Verificamos con la fecha que comprende todo el año 2024
CALL ConsultarVentasPorCategoria('2024-01-01', '2024-12-31');


-- Creacion de SP ActualizarPrecioProducto
DELIMITER //

CREATE PROCEDURE ActualizarPrecioProducto(
    IN p_ID_Producto INT,
    IN p_PercentajeAjuste DECIMAL(5,2)  -- Porcentaje de ajuste (positivo o negativo)
)
BEGIN
    DECLARE v_PrecioActual DECIMAL(10,2);
    
    -- Obtener el precio actual del producto
    SELECT Costo INTO v_PrecioActual
    FROM merx.Producto
    WHERE ID_Producto = p_ID_Producto;
    
    -- Calcular el nuevo precio basado en el porcentaje de ajuste
    SET v_PrecioActual = v_PrecioActual + (v_PrecioActual * p_PercentajeAjuste / 100);
    
    -- Actualizar el precio en la base de datos
    UPDATE merx.Producto
    SET Costo = v_PrecioActual
    WHERE ID_Producto = p_ID_Producto;
    
    -- Confirmar que el precio ha sido actualizado
    SELECT 'Precio actualizado exitosamente' AS Mensaje;
END; //

DELIMITER ;

-- Realizamos el aumento de un producto en un 10 %
CALL ActualizarPrecioProducto(1, 10);

-- Realizamos la rebaja de un producto en un 5%
CALL ActualizarPrecioProducto(2, -5);