USE supermerx;

-- Creacion de vista "vw_productos_mas_vendidos"
CREATE VIEW supermerx.vw_productos_mas_vendidos AS
SELECT p.Producto,
SUM(v.cantidad) AS Total_Cantidad_Vendida
FROM Ventas v
JOIN Producto p ON v.ID_Producto = p.ID_Producto
GROUP BY p.ID_Producto
ORDER BY Total_Cantidad_Vendida DESC;

-- Consulta de vista "vw_productos_mas_vendidos"
SELECT * FROM vw_productos_mas_vendidos;

-- Creacion de vista "vw_detalle_ventas"
CREATE VIEW supermerx.vw_detalle_ventas AS
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

-- Creacion de vista "vw_productos_promociones"
CREATE VIEW vw_productos_promociones AS
 SELECT 
 P.ID_Producto,
 P.Producto,
 P.Costo,
 PR.nombre AS Promocion,
 PR.descripcion AS Descripcion_Promo,
 PR.fecha_inicio,
 PR.fecha_fin,
 PR.descuento
 FROM 
 Producto P
 LEFT JOIN 
 Promociones PR ON P.ID_Promo = PR.ID_Promo
 WHERE 
 PR.fecha_inicio <= CURDATE() AND PR.fecha_fin >= CURDATE();
 
 -- Consulta de vista "vw_productos_promociones"
SELECT * FROM vw_productos_promociones;

-- Creacion de vista "vw_ventas_detalladas"
CREATE VIEW vw_ventas_detalladas AS
 SELECT 
 V.ID_Ventas,
 V.Cantidad,
 V.Precio,
 P.Producto AS Nombre_Producto,
 C.nombre AS Nombre_Cliente,
 C.apellido AS Apellido_Cliente,
 E.nombre AS Nombre_Empleado,
 E.apellido AS Apellido_Empleado,
 M.Metodo_Pago AS Metodo
 FROM 
 Ventas V
 INNER JOIN 
 Producto P ON V.ID_Producto = P.ID_Producto
 LEFT JOIN 
 Clientes C ON V.ID_Cliente = C.ID_Cliente
 LEFT JOIN 
 Empleados E ON V.ID_Empleado = E.ID_Empleado
 LEFT JOIN 
 MetodoPago M ON V.ID_Metodo = M.ID_Metodo;
 
 -- Consulta de vista "vw_ventas_detalladas"
SELECT * FROM vw_ventas_detalladas;

-- Creacion de vista "vw_pedidos_logistica"
CREATE VIEW vw_pedidos_logistica AS
 SELECT 
 P.ID_Pedido,
 P.fecha AS Fecha_Pedido,
 P.total AS Total_Pedido,
 P.estado AS Estado_Pedido,
 L.fecha_salida,
 L.fecha_llegada,
 L.transportista,
 L.numero_guia,
 L.estado AS Estado_Logistica,
 C.nombre AS Nombre_Cliente,
 C.apellido AS Apellido_Cliente
 FROM 
 Pedidos P
 LEFT JOIN 
 Logistica L ON P.ID_Logistica = L.ID_Logistica
 LEFT JOIN 
 Clientes C ON P.ID_Cliente = C.ID_Cliente;

 -- Consulta de vista "vw_pedidos_logistica"
SELECT * FROM vw_pedidos_logistica