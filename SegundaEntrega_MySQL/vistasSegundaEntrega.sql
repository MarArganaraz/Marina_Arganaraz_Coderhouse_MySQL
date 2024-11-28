USE merx;

-- Creacion de vista "vw_productos_mas_vendidos"
CREATE VIEW merx.vw_productos_mas_vendidos AS
SELECT p.Producto,
SUM(v.cantidad) AS Total_Cantidad_Vendida
FROM Ventas v
JOIN Producto p ON v.ID_Producto = p.ID_Producto
GROUP BY p.ID_Producto
ORDER BY Total_Cantidad_Vendida DESC;

-- Consulta de vista "vw_productos_mas_vendidos"
SELECT * FROM vw_productos_mas_vendidos;

-- Creacion de vista "vw_detalle_ventas"
CREATE VIEW merx.vw_detalle_ventas AS
 SELECT 
 f.Fecha,
 f.Hora,
 p.Producto,
 c.Categoria,
 m.Nombre_Marca,
 v.Cantidad,
 v.Precio,
 v.Cantidad * v.Precio AS Monto_Total,
 mp.Metodo_Pago
 FROM merx.facturas f
 INNER JOIN ventas v ON f.ID_Factura = v.ID_Factura
 INNER JOIN producto p ON v.ID_Producto = p.ID_Producto
 INNER JOIN categoria c ON p.ID_Categoria = c.ID_Categoria
 INNER JOIN marca m ON p.ID_Marca = m.ID_Marca
 INNER JOIN metodopago mp ON v.ID_Metodo = mp.ID_Metodo;
 
 -- Consulta de vista "vw_detalle_ventas"
SELECT * FROM vw_detalle_ventas;