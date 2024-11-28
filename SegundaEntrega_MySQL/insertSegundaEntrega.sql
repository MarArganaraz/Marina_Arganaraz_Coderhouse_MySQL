USE merx;
-- Inserción de datos en la BD
INSERT INTO merx.categoria (Categoria, Abreviatura)
VALUES
    ('Frutas y Verduras', 'FYV'),
    ('Carnes', 'CAR'),
    ('Lácteos', 'LAC'),
    ('Panadería', 'PAN'),
    ('Congelados', 'CON'),
    ('Bebidas', 'BEB'),
    ('Limpieza', 'LIM'),
    ('Higiene Personal', 'HIP'),
    ('Perfumería', 'PER'),
    ('Mascotas', 'MAS');
    
INSERT INTO Subcategoria (Subcategoria, Id_Categoria) VALUES
    ('Frutas Cítricas',1),
    ('Verduras de Hoja',1),
    ('Carnes Rojas',2),
    ('Carnes Blancas',2),
    ('Lácteos Enteros',3),
    ('Lácteos Descremados',3),
    ('Pan Blanco',4),
    ('Pan Integral',4),
    ('Helados',5),
    ('Pizza',5),
    ('Bebidas Gaseosas',6),
    ('Jugos Naturales',6),
    ('Detergentes',7),
    ('Desinfectantes',7),
    ('Shampoo',8),
    ('Acondicionador',8),
    ('Perfumes',9),
    ('Maquillaje',9),
    ('Alimentos para Perros',10),
    ('Alimentos para Gatos',10);
    
    INSERT INTO merx.marca (Nombre_Marca) VALUES
    ('Arboral Citrus SA'),
    ('Cuisine & Co'),
    ('Discarlux'),
    ('Minerva Foods'),
    ('Tregar'),
    ('La Serenisima'),
    ('Bimbo'),
    ('Lactal'),
    ('La Montevideana'),
    ('Pizza Hut'),
    ('Coca-Cola'),
    ('Del Valle'),
    ('Magistral'),
    ('Cif'),
    ('Elvive'),
    ('Dove'),
    ('Chanel'),
    ('Dior Beauty'),
    ('Purina'),
    ('Whiskas');
    
    INSERT INTO merx.tipocompra (Tipo) VALUES
    ('En Linea'),
    ('Fisica');
    
    INSERT INTO merx.dispositivo (Nombre_Dis) VALUES
    ('Telefono Movil'),
    ('PC'),
    ('Tablet');
    
    INSERT INTO merx.metodopago (Metodo_Pago) VALUES 
    ('Transferencia'),
    ('Debito'),
    ('Efectivo'),
    ('Credito');
    
    INSERT INTO merx.producto (Producto, Producto_Completo, Costo, ID_Categoria, ID_Marca) VALUES           
    ('Citricos Varios', 'Citricos varios en rebanadas Arboral Citrus SA', 1790.50,1,1),       
    ('Verduras de hoja fresca', 'Verduras de hoja Cuisine & Co x atado', 1200.00,1,2),    
    ('Carne de Ternera', 'Carne Roja de Ternera Discarlux x kg', 4500.00,2,3),   
    ('Pollo', 'Carnes Blancas Pollo Minerva Foods x kg', 3900.00,2,4),            
    ('Yogurt Frutos Rojos', 'Yogurt Sabor Frutos Rojos Tregar x 190 ml', 1100.00,3,5), 
    ('Leche Descremada', 'Leche La Serenisima 0% Calorias x lt', 950.00,3,6),   
    ('Pan Blanco', 'Pan Blanco Bimbo Mediano x 460 gr', 3400.00,4,7),
    ('Pan de Salvado', 'Pan Integral Lactal x 360 gr', 3800.00,4,8),  
    ('Helados Cono', 'Helado Cono Sabor Frutilla y Americana La Montevideana x un', 1900.00,5,9),
    ('Pizza de Tomate', 'Pizza de Tomate x 2 und', 1800.00,5,10),      
    ('Gaseosa', 'Gaseosa Coca Cola x 500 ml', 950.00,6,11),           
    ('Jugo Natural', 'Jugo Natural Sabor Multifruta Del Valle x 946 ml', 1000.00,6,12),  
    ('Detergente', 'Detergente con Aloe Vera Magistral x 300 ml', 1620.00,7,13),       -- 2100
    ('Desinfectante', 'Desinfectante Lavanda Cif x 5 lt', 7100.00,7,14), -- 7900
    ('Shampoo Liso Perfecto', 'Shampoo Liso Perfecto Elvive x 340 ml', 1960.00,8,15),   -- 2950
    ('Acondicionador Keratina Plus', 'Acondicionador Keratina Plus Dove x 400 ml', 2800.00,8,16),    -- 3400
    ('Perfume Mujer', 'Perfume Chanel Mujer Citrico x 100 ml', 25600.00,9,17),       -- 31400
    ('Rubor en Polvo', 'Rubor en Polvo Dior Beauty x und', 87000.00,9,18),  -- 92000
    ('Alimento para Perros', 'Alimento para Perros Purina x kg', 2900.00,10,19),-- 3015
    ('Alimento para Gatos', 'Alimento para Gatos Whiskas x kg', 3600.00,10,20);  -- 4800
    
INSERT INTO merx.facturas (Fecha, Hora, ID_Producto, ID_Tipo,ID_Dis) VALUES
('2024-02-15', '10:32:05', 1, 2, 1),
('2024-05-08', '18:45:30', 2, 1, 2),
('2024-07-24', '12:38:05', 3, 2, 1),
('2024-10-29', '19:27:55', 4, 2, 1),
('2024-05-23', '09:36:25', 5, 2, 3),
('2024-02-10', '08:15:48', 6, 1, 2),
('2024-07-18', '14:39:02', 7, 1, 3),
('2024-12-07', '18:50:00', 8, 2, 1),
('2024-01-25', '17:42:23', 9, 2, 1),
('2024-11-24', '11:52:11', 10, 1, 2),
('2024-03-21', '12:01:56', 11, 2, 1),
('2024-06-10', '13:23:03', 12, 1, 2),
('2024-09-30', '20:53:01', 13, 1, 3),
('2024-04-03', '10:56:44', 14, 2, 1),
('2024-11-02', '15:44:14', 15, 2, 1),
('2024-08-12', '16:24:32', 16, 1, 2),
('2024-01-03', '10:29:32', 17, 1, 2),
('2024-11-20', '19:01:24', 18, 2, 1),
('2024-02-23', '16:35:02', 19, 1, 3),
('2024-03-04', '11:43:07', 20, 1, 2);

INSERT INTO merx.ventas (Cantidad, ID_Producto, ID_Metodo, ID_Factura, Precio) VALUES
(3,1,1,1,2000.00),
(2,2,2,2,1800.00),
(5,3,2,3,6500.00),
(3,4,1,4,4600.00),
(2,5,2,5,1600.00),
(4,6,2,6,1345.00),
(2,7,2,7,4000.00),
(1,8,3,8,4300.00),
(5,9,3,9,2600.00),
(8,10,4,10,2500.00),
(10,11,4,11,1600.00),
(6,12,4,12,1650.00),
(3,13,2,13,2100.00),
(3,14,4,14,7900.00),
(2,15,1,15,2950.00),
(2,16,2,16,3400.00),
(1,17,4,17,31400.00),
(1,18,4,18,92000.00),
(5,19,2,19,3015.00),
(7,20,2,20,4800.00);