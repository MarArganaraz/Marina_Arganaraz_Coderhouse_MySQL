USE SuperMerx;

-- Inserción de datos en la BD
INSERT INTO supermerx.categoria (Categoria, Abreviatura)
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
    
INSERT INTO supermerx.subcategoria (Subcategoria, Id_Categoria) VALUES
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
    
    INSERT INTO supermerx.marca (Nombre_Marca) VALUES
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
    
    INSERT INTO supermerx.tipocompra (Tipo) VALUES
    ('En Linea'),
    ('Fisica');
    
    INSERT INTO supermerx.dispositivo (Nombre_Dis) VALUES
    ('Telefono Movil'),
    ('PC'),
    ('Tablet');
    
    INSERT INTO supermerx.metodopago (Metodo_Pago) VALUES 
    ('Transferencia'),
    ('Debito'),
    ('Efectivo'),
    ('Credito');
    
    INSERT INTO supermerx.producto (Producto, Producto_Completo, Costo, ID_Categoria, ID_Marca) VALUES           
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
    ('Detergente', 'Detergente con Aloe Vera Magistral x 300 ml', 1620.00,7,13),      
    ('Desinfectante', 'Desinfectante Lavanda Cif x 5 lt', 7100.00,7,14), 
    ('Shampoo Liso Perfecto', 'Shampoo Liso Perfecto Elvive x 340 ml', 1960.00,8,15),   
    ('Acondicionador Keratina Plus', 'Acondicionador Keratina Plus Dove x 400 ml', 2800.00,8,16),   
    ('Perfume Mujer', 'Perfume Chanel Mujer Citrico x 100 ml', 25600.00,9,17),       
    ('Rubor en Polvo', 'Rubor en Polvo Dior Beauty x und', 87000.00,9,18),  
    ('Alimento para Perros', 'Alimento para Perros Purina x kg', 2900.00,10,19),
    ('Alimento para Gatos', 'Alimento para Gatos Whiskas x kg', 3600.00,10,20);
    
INSERT INTO supermerx.facturas (Fecha, Hora, ID_Producto, ID_Tipo,ID_Dis) VALUES
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

INSERT INTO supermerx.ventas (Cantidad, Precio, ID_Producto, ID_Metodo, ID_Factura) VALUES
(3, 2000.00, 1, 1, 1),
(2, 1800.00 ,2, 2, 2),
(5, 6500.00, 3, 2, 3),
(3, 4600.00, 4, 1, 4),
(2, 1600.00, 5, 2, 5),
(4, 1345.00, 6, 2, 6),
(2, 4000.00, 7, 2, 7),
(1, 4300.00, 8, 3, 8),
(5, 2600.00, 9, 3, 9),
(8, 2500.00, 10, 4, 10),
(10, 1600.00, 11, 4, 11),
(6, 1650.00, 12, 4, 12),
(3, 2100.00, 13, 2, 13),
(3, 7900.00, 14, 4, 14),
(2, 2950.00, 15, 1, 15),
(2, 3400.00, 16, 2, 16),
(1, 31400.00, 17, 4, 17),
(1, 92000.00, 18, 4, 18),
(5, 3015.00, 19, 2, 19),
(7, 4800.00, 20, 2, 20);

INSERT INTO supermerx.clientes (Nombre, Apellido, Email, Telefono, Direccion, Fecha_Nacimiento) VALUES
('Lorenzo', 'Ramirez', 'lorenr@gmail.com', 3415275220, 'San Luis 1260', '1988-05-23'),
('Paula', 'Robledo', 'pau1992@gmail.com', 3415741235, 'Presidente Roca 629', '2000-12-07'),
('Antonela', 'Gimenez', 'antitopg@hotmail.com', 3416998547, 'San Martin 5124', '1995-07-18'),
('Florencia', 'Lopez', 'lopezf@hotmail.com', 3412003697, 'Virasoro 1100', '1985-02-10'),
('Mauro', 'Sanchez', 'mms@gmail.com', 3413637585, 'Sarmiento 3300', '1992-10-29'),
('Ciro', 'Ruiz', 'ciroian@outlook.com', 3416587110, 'Corrientes 1924', '1997-10-09'),
('Juan', 'Pereyra', 'jpereyra@gmail.com', 3415741025, 'Buenos Aires 2315', '1983-01-25'),
('Marina', 'Miguelez', 'marmi@outlook.com', 3416985510, 'Cerrito 120', '2001-03-19'),
('Simon', 'Benitez', 'simbe19@hotmail.com', 3416417289, 'Galvez 1921', '1999-04-19'),
('Julieta', 'Cabral', 'jucabral12@gmail.com', 3412667840, 'Paraguay 40', '2003-12-15');

INSERT INTO supermerx.empleados (Nombre, Apellido, DNI, Fecha_Nacimiento, Email, Telefono, Fecha_Contratacion, Cargo, Departamento) VALUES
('Antonio', 'Perez', 33107556, '1987-12-10', 'antuan@gmail.com', 3415223741, '2012-07-15', 'Vendedor Digital', 'Ventas'),
('Laura', 'Gonzalez', 37851420, '1992-02-23', 'gonzalau@hotmail.com', 3416201475, '2012-03-12', 'Vendedor Digital', 'Ventas'),
('Martin', 'Linares', 34625875, '1989-01-12', 'martin1208@outlook.com', 3412663012, '2012-01-10', 'Esp.Marketing Digital', 'Marketing'),
('Claudia', 'Maplero', 32225600, '1986-09-21', 'mapleroc@hotmail.com', 3415502017, '2012-01-10', 'Reclutador', 'Recursos Humanos'),
('Pedro', 'Tomasetti', 36741201, '1993-04-03', 'pedrotomasetti@outlook.com', 3413698475, '2013-01-05', 'Reclutador', 'Recursos Humanos'),
('Martina', 'Guidoni', 31236991, '1985-11-20', 'marti1985@hotmail.com', 3416698710, '2013-01-20', 'Atencion al Cliente', 'Ventas'),
('Fernando', 'Amarello', 33850726, '1987-05-11', 'feramarello@outlook.com', 3412104532, '2013-01-20', 'Atencion al Cliente', 'Ventas'),
('Emilia', 'Lorenzetti', 37629003, '1991-10-09', 'emi91@gmail.com', 3415297891, '2012-01-10', 'Cajera', 'Ventas'),
('Bruno', 'Fosco', 31840347, '1984-03-22', 'foscosa@hotmail.com', 3413448854, '2013-01-10', 'Transportista', 'Operaciones'),
('Angeles', 'Fernandez', 35871069, '1989-08-03', 'angiefer@hotmail.com', 3415302798, '2012-01-10', 'Cajera', 'Ventas'),
('Ciro', 'Martinez', 37458216, '1992-06-07', 'ciro92@hotmail.com', 3416212763, '2013-02-14', 'Vendedor Digital', 'Ventas'),
('Natalia', 'Yansen', 34965820, '1990-07-30', 'natygy@gmail.com', 3413324718, '2013-01-20', 'Cajera', 'Ventas'),
('German', 'Diaz', 38221997, '1993-04-19', 'diazg@outlook.com', 3413205203, '2013-01-30', 'Cajero', 'Ventas'),
('Delfina', 'Garcia', 38425667, '1994-12-07', 'delfi01@gmail.com', 3412884750, '2015-02-01', 'Cajera', 'Ventas'),
('Julian', 'Benitez', 38100631, '1994-10-29', 'juliben@hotmail.com', 3413114966, '2015-02-01', 'Cajero', 'Ventas');

-- DATOS NUEVOS 
 INSERT INTO supermerx.categoria (categoria, Abreviatura) VALUES
 ('Golosinas', 'GOL');

INSERT INTO supermerx.subcategoria (Subcategoria, ID_Categoria) VALUES
('Confiteria', 11),
('Pasteleria', 4),
('Vinos y Espumantes', 6);

INSERT INTO supermerx.marca (Nombre_Marca) VALUES
('Georgalos'),
('Fantoche'),
('Sidra 1888'),
('La Farruca'),
('Bonafide');

INSERT INTO supermerx.producto (Producto, Producto_Completo, Costo, ID_Categoria, ID_Marca) VALUES
('Mantecol', 'Mantecol Clasico Georgalos x 26 gr', 6820.00, 11, 21),
('Turron', 'Turron de Mani con Chocolate Georgalos x 90 gr', 990.00, 11, 21),
('Budin', 'Budin Marmolado Fantoche x 220 gr', 860.00, 4, 22),
('Pan Dulce', 'Pan Dulce con Chips de Chocolate Fantoche x 400 gr', 2400.00, 4, 22),
('Sidra 1888', 'Botella Sidra 1888 x 750 ml', 5200.00, 6, 23),
('Anana Fizz', 'Anana Fizz La Farruca Botella x 710 ml', 2815.00, 6, 24),
('Sidra', 'Sidra La Farruca Botella x 710 ml', 2300.00, 6, 24),
('Sidra Sin Alcohol', 'Sidra Sin Alcohol La Farruca Botella x 710 ml', 2600.00, 6, 24),
('Garrapiñada', 'Garrapiñada Bonafide x 100 gr', 900.00, 11, 25),
('Pionono', 'Pionono Dulce Bonafide x 180 gr', 1925.00, 4, 25);

INSERT INTO supermerx.proveedores (Nombre_Empresa, Direccion, Pagina_Web, Contacto, Telefono, Email, Banco, Cuenta_Bancaria) VALUES
('Arbolar Citrus S.A.', 'Ruta 307 Km 4 Santa Lucia Tucuman', 'arbolarsa.com.ar', 'Martin Juarez', 3816614662, 'contacto@arbolarsa.com.ar', 'Municipal', 1110007669027),
('Cuisine & Co', 'Patricias Mendocinas 1465 Mendoza', 'cuisine&co.com.ar', 'Lorena Diaz', 2615291263, 'contacto@cuisine&co.com.ar', 'Macro', 1110006747832),
('Discarlux', 'Domingo Iiria 2349 Gral Pico La Pampa', 'discarlux.com.ar', 'Manuel Figueroa', 23023123321, 'contacto@discarlux.com.ar', 'Supervielle', 1110005038939),
('Minerva Foods', 'Av. Bartolome Mitre 2540 Esquina Corrientes', 'minervafoods.com.ar', 'Anibal Rodriguez', 38325217089, 'contacto@minervafoods.com.ar', 'Santander', 1110004864280),
('Tregar', '9 de Julio 322 Gor Crespo Santa Fe', 'tregar.com.ar', 'Analia Suarez', 34986022900, 'contacto@garciahnos.com.ar', 'Macro', 1110002732244),
('La Serenisima', 'Alte. Brown 957 Gral Rodriguez Buenos Aires', 'laserenisima.com.ar', 'Andrea Richie', 02374859000, 'contacto@laserenisima.com.ar', 'Galicia', 1110001712170),
('Bimbo', '2768+J3 Rosario Santa Fe', 'bimbo.com.ar', 'Marie Martin', 1147759250, 'argentina@grupobimbo.com', 'Santander', 1110003546623),
('Lactal', 'Tierra del Fuego 2198 Villa Maria Cordoba', 'lactalsa.com', 'Lautaro Roldan', 3532192103, 'lactal@contacto.com.ar', 'Banco de la Nacion Argentina', 111000806210),
('La Montevideana', 'Velez Sarsfield 1163 Rosario Santa Fe', 'montevideanahelados.com.ar', 'Miguel Sach', 3415222700, 'contacto@monthelados.com', 'Municipal', 1110008326144),
('Pizza Hut', '1848 C. 9 La Plata Buenos Aires', 'pizzahut.com.ar', 'Jorge Insaurralde', 2213099876, 'contacto@pizzahut.com.ar', 'Macro', 1110005694404),
('Coca Cola', '253 Gral Paz San Isidro Buenos Aires', 'tienda.coca-cola.com.ar', 'Omar Monserrat', 1131217070, 'cocacolaentucasaar@coca_cola.com', 'Supervielle', 1110003908797),
('Del Valle', '253 Gral Paz San Isidro Buenos Aires', 'tienda.coca-cola.com.ar', 'Lorenzo Antunez', 1131217071, 'cocacolaentuasaar@coca_cola.com',' Supervielle', 1110003908797),
('Magistral', 'Av. Jose Manuel Estrada 6699 Mar del Plata Buenos Aires', 'magistral.ar', 'Nadia Oliva', 2236018310, 'contactanos@magistral.com.ar', 'Banco de la Nacion Argentina', 1110005859692),
('Cif', 'Grimaldi 1228 Olavarria Buenos Aires', 'cif.com.ar', 'Maribel Jukic', 22846609972, 'helpcenter@cif.com.ar', 'Galicia', 1110002007386),
('Elvive Loreal Paris', 'Emilio Mitre 799 Ciudad Autonoma de Buenos Aires', 'lorealparis.com.ar', 'Esteban Navarro', 08002225673, 'contacto_lorealparis@loreal.com', 'Macro', 1110005108233),
('Dove', 'Portela 3418 Ciudad Autonoma de Buenos Aires', 'dove.com.ar', 'Mateo Pissano', 08008886666, 'dove@sac-unilever.com.ar', 'Municipal', 1110006191822),
('Chanel', 'Yerbal 1065 Ciudad Autonoma de Buenos Aires', 'chanel.com.ar', 'Delfina Velazquez', 08003339721, 'contacto@chanel.com.ar', 'Supervielle', 1110000548841),
('Dior Beauty', 'Beruti 4449 Ciudad Autonoma de Buenos Aires', 'shop.dior.com.ar', 'Silvina Damy', 1132915136, 'contacto@dior.com.ar', 'Supervielle', 1110007487306),
('Purina', 'Jose Cortejarena 2000 Ciudad Autonoma de Buenos Aires', 'purina.com.ar', 'Franco Moran', 08009993747, 'servicios@ar.nestle.com', 'Macro', 1110009023563),
('Whiskas', 'Gutenberg 3700 Ciudad Autonoma de Buenos Aires', 'whiskas.com.ar', 'Santiago Gonzalez', 1120791230, 'contacto@whiskas.com.ar', 'Municipal', 1110000576023),
('Georgalos', 'Bomb Vol Rio Segundo Cordoba', 'georgalos.com.ar', 'Simon Luara', 357227013029, 'contacto@georgalos.com.ar', 'Galicia', 1110002150992),
('Fantoche', 'Av. Larrazabal 3307 Ciudad Autonoma de Buenos Aires', 'fantoche.com.ar', 'Carla Fahr', 1146380118, 'contacto@fantoche.com.ar', 'Macro', 1110009270506),
('1888', 'Los Cipreses 80 Allen Rio Negro', '1888saezbriones.com.ar', 'Andres Bertero', 2983921976, 'contacto@saezbriones.com.ar', 'Supervielle', 1110002069791),
('Bonafide', 'Av. Pueyrredon 1418 Recoleta Ciudad Autonoma de Buenos Aires', 'bonafide.com.ar', 'Lorenzo Nieto', 1161109574, '0800@bonafide.com.ar', 'Supervielle', 1110004519312),
('Farruca', 'Calle Austria Norte 1759 Troncos del Talar Buenos Aires', 'lafarruca.com.ar', 'Francisco Astrada', 1132204100, 'contacto@farruca.com.ar', 'Municipal', 1110000397734);

INSERT INTO supermerx.facturas (Fecha, Hora, ID_Producto, ID_Tipo, ID_Dis) VALUES
('2024-12-03', '18:25:39', 21, 1, 2),
('2024-12-20', '20:12:58', 22, 1, 1),
('2024-12-23', '16:27:19', 23, 1, 2),
('2024-12-07', '12:32:21', 24, 1, 3),
('2024-12-02', '20:58:52', 25, 1, 2),
('2024-12-03', '19:24:48', 26, 1, 1),
('2024-12-23', '13:29:47', 27, 1, 2),
('2024-12-24', '08:12:58', 28, 1, 2),
('2024-12-20', '11:01:26', 29, 1, 1),
('2024-12-24', '08:02:45', 30, 1, 1),
('2024-12-10', '14:06:21', 21, 1, 3),
('2024-12-11', '17:52:29', 22, 1, 3),
('2024-12-01', '12:00:01', 23, 1, 2),
('2024-12-21', '10:39:46', 24, 1, 1),
('2024-12-15', '21:00:49', 25, 1, 2),
('2024-12-20', '18:45:32', 26, 1, 2),
('2024-12-21', '19:33:54', 27, 1, 2),
('2024-12-24', '09:00:02', 29, 1, 1);

INSERT INTO supermerx.ventas (Cantidad, ID_Producto, ID_Metodo, ID_Factura, Precio) VALUES
(4, 21, 2, 21, 7625.00),
(4, 22, 1, 22, 1200.00),
(8, 23, 2, 23, 1180.00),
(5, 24, 2, 24, 3150.00),
(6, 25, 4, 25, 6430.00),
(4, 26, 2, 26, 3300.00),
(6, 27, 2, 27, 3000.00),
(2, 28, 1, 28, 3100.00),
(3, 29, 1, 29, 1100.00),
(2, 30, 2, 30, 2300.00),
(3, 21, 1, 31, 7625.00),
(2, 22, 1, 32, 1200.00),
(4, 23, 2, 33, 1180.00),
(4, 24, 2, 34, 3150.00),
(12, 25, 4, 35, 6430.00),
(6, 26, 4, 36, 3300.00),
(8, 27, 4, 37, 3000.00),
(2, 29, 1, 38, 1100.00);

-- ACTUALIZACION DE DATOS EN VENTAS

UPDATE supermerx.ventas 
SET ID_Cliente = '2' 
WHERE ID_Ventas = 1; 

UPDATE supermerx.ventas 
SET ID_Cliente = '10' 
WHERE ID_Ventas = 2;

UPDATE supermerx.ventas 
SET ID_Cliente = '4' 
WHERE ID_Ventas = 3;

UPDATE supermerx.ventas 
SET ID_Cliente = '1' 
WHERE ID_Ventas = 4;

UPDATE supermerx.ventas 
SET ID_Cliente = '9' 
WHERE ID_Ventas = 5;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 6;

UPDATE supermerx.ventas 
SET ID_Cliente = '3' 
WHERE ID_Ventas = 7;

UPDATE supermerx.ventas 
SET ID_Cliente = '1' 
WHERE ID_Ventas = 8;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 9;

UPDATE supermerx.ventas 
SET ID_Cliente = '4' 
WHERE ID_Ventas = 10;

UPDATE supermerx.ventas 
SET ID_Cliente = '6' 
WHERE ID_Ventas = 11;

UPDATE supermerx.ventas 
SET ID_Cliente = '5' 
WHERE ID_Ventas = 12;

UPDATE supermerx.ventas 
SET ID_Cliente = '9' 
WHERE ID_Ventas = 13;

UPDATE supermerx.ventas 
SET ID_Cliente = '4' 
WHERE ID_Ventas = 14;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 15;

UPDATE supermerx.ventas 
SET ID_Cliente = '2' 
WHERE ID_Ventas = 16;

UPDATE supermerx.ventas 
SET ID_Cliente = '10' 
WHERE ID_Ventas = 17;

UPDATE supermerx.ventas 
SET ID_Cliente = '4' 
WHERE ID_Ventas = 18;

UPDATE supermerx.ventas 
SET ID_Cliente = '3' 
WHERE ID_Ventas = 19;

UPDATE supermerx.ventas 
SET ID_Cliente = '6' 
WHERE ID_Ventas = 20;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 21;

UPDATE supermerx.ventas 
SET ID_Cliente = '8' 
WHERE ID_Ventas = 22;

UPDATE supermerx.ventas 
SET ID_Cliente = '1' 
WHERE ID_Ventas = 23;

UPDATE supermerx.ventas 
SET ID_Cliente = '8' 
WHERE ID_Ventas = 24;

UPDATE supermerx.ventas 
SET ID_Cliente = '9' 
WHERE ID_Ventas = 25;

UPDATE supermerx.ventas 
SET ID_Cliente = '9' 
WHERE ID_Ventas = 26;

UPDATE supermerx.ventas 
SET ID_Cliente = '10' 
WHERE ID_Ventas = 27;

UPDATE supermerx.ventas 
SET ID_Cliente = '6' 
WHERE ID_Ventas = 28;

UPDATE supermerx.ventas 
SET ID_Cliente = '5' 
WHERE ID_Ventas = 29;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 30;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 31;

UPDATE supermerx.ventas 
SET ID_Cliente = '4' 
WHERE ID_Ventas = 32;

UPDATE supermerx.ventas 
SET ID_Cliente = '5' 
WHERE ID_Ventas = 33;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 34;

UPDATE supermerx.ventas 
SET ID_Cliente = '10' 
WHERE ID_Ventas = 35;

UPDATE supermerx.ventas 
SET ID_Cliente = '1' 
WHERE ID_Ventas = 36;

UPDATE supermerx.ventas 
SET ID_Cliente = '7' 
WHERE ID_Ventas = 37;

UPDATE supermerx.ventas 
SET ID_Cliente = '10' 
WHERE ID_Ventas = 38;

-- INSERCION DE DATOS
INSERT INTO supermerx.pedidos (Fecha, ID_Cliente, Total, Estado, Metodo_Pago) VALUES
('2024-05-08', 10, 3600.00, 'Entregado', 'Transferencia'),
('2024-02-10', 7, 5380.00, 'Entregado', 'Debito'),
('2024-07-18', 3, 8000.00, 'Entregado', 'Debito'),
('2024-11-24', 4, 20000.00, 'Entregado', 'Credito'),
('2024-06-10', 5, 9900.00, 'Entregado', 'Credito'),
('2024-09-30', 9, 6300.00, 'Entregado', 'Debito'),
('2024-08-12', 2, 6800.00, 'Entregado', 'Transferencia'),
('2024-01-03', 10, 31400.00, 'Entregado', 'Debito'),
('2024-02-23', 3, 15075.00, 'Entregado', 'Debito'),
('2024-03-04', 6, 33600.00, 'Entregado', 'Transferencia'),
('2024-12-03', 7, 30500.00, 'Entregado', 'Credito'),
('2024-12-20', 8, 4800.00, 'Enviado', 'Transferencia'),
('2024-12-23', 1, 9440.00, 'Pendiente', 'Debito'),
('2024-12-07', 8, 15750.00, 'Entregado', 'Debito'),
('2024-12-02', 9, 38580.00, 'Entregado', 'Credito'),
('2024-12-03', 9, 13200.00, 'Entregado', 'Transferencia'),
('2024-12-23', 10, 18000.00, 'Pendiente', 'Debito'),
('2024-12-24', 6, 6200.00, 'Pendiente', 'Transferencia'),
('2024-12-20', 5, 3300.00, 'Enviado', 'Debito'),
('2024-12-24', 7, 4600.00, 'Pendiente', 'Debito'),
('2024-12-10', 7, 22875.00, 'Entregado', 'Credito'),
('2024-12-11', 4, 2400.00, 'Entregado', 'Transferencia'),
('2024-12-01', 5, 4720.00, 'Entregado', 'Debito'),
('2024-12-21', 7, 12600.00, 'Enviado', 'Credito'),
('2024-12-15', 10, 77160.00, 'Entregado', 'Credito'),
('2024-12-20', 1, 19800.00, 'Enviado', 'Debito'),
('2024-12-21', 7, 24000.00, 'Enviado', 'Credito'),
('2024-12-24', 10, 2200.00, 'Pendiente', 'Transferencia');

INSERT INTO supermerx.promociones (Nombre, Descripcion, Fecha_Inicio, Fecha_Fin, Descuento, ID_Producto) VALUES
('2x1 en budines', 'Lleva 2 budines y paga 1', '2024-12-01', '2024-12-20', 50, 23),
('Descuento en Vinos y Espumantes', '15% de descuento en Sidras 1888', '2024-12-01', '2024-12-31', 15, 25); 

INSERT INTO supermerx.logistica (ID_Pedido, fecha_salida, fecha_llegada, transportista, numero_guia, estado, observaciones) VALUES
(1, '2024-05-10', '2024-05-10', 'Bruno Fosco', 000458219, 'Entregado', 'Entregar de 9 a 13 horas'),
(2, '2024-02-12', '2024-02-12', 'Bruno Fosco', 000564321, 'Entregado', 'Sin Observaciones'),
(3, '2024-07-20', '2024-07-20', 'Bruno Fosco', 000587644, 'Entregado', 'Entregar de 9 a 13 horas'),
(4, '2024-11-26', '2024-12-26', 'Bruno Fosco', 000597631, 'Entregado', 'Entregar de 16 a 20 horas'),
(5, '2024-06-12', '2024-06-12', 'Bruno Fosco', 000589986, 'Entregado', 'Sin Observaciones'),
(6, '2024-10-02', '2024-10-02', 'Bruno Fosco', 000590087, 'Entregado', 'Entregar de 16 a 20 horas'),
(7, '2024-08-14', '2024-08-14', 'Bruno Fosco', 000598897, 'Entregado', 'Sin Observaciones'),
(8, '2024-01-05', '2024-01-05', 'Bruno Fosco', 000487003, 'Entregado', 'Recibe familiar Lucia Romero'),
(9, '2024-02-25', '2024-02-25', 'Bruno Fosco', 000487120, 'Entregado', 'Entregar de 16 a 20 horas'),
(10, '2024-03-06', '2024-03-06', 'Bruno Fosco', 000496000, 'Entregado', 'Sin Observaciones'),
(11, '2024-12-05', '2024-12-05', 'Bruno Fosco', 000600239, 'Entregado', 'Entregar de 9 a 13 horas'),
(12, '2024-12-22', '2024-12-22', 'Bruno Fosco', 000604321, 'En_Ruta', 'Sin Observaciones'),
(13, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000613452, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(14, '2024-12-09', '2024-12-09', 'Bruno Fosco', 000612347, 'Entregado', 'Sin Observaciones'),
(15, '2024-12-04', '2024-12-04', 'Bruno Fosco', 000623470, 'Entregado', 'Entregar de 16 a 20 horas'),
(16, '2024-12-05', '2024-12-05', 'Bruno Fosco', 000628805, 'Entregado', 'Entregar de 9 a 13 horas'),
(17, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000623399, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(18, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000630012, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(19, '2024-12-22', '2024-12-22', 'Bruno Fosco', 000634098, 'En_Ruta', 'Sin Observaciones'),
(20, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000634170, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(21, '2024-12-12', '2024-12-12', 'Bruno Fosco', 000634567, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(22, '2024-12-13', '2024-12-13', 'Bruno Fosco', 000607021, 'Entregado', 'Recibe familiar Lucas Pereyra'),
(23, '2024-12-03', '2024-12-03', 'Bruno Fosco', 000613098, 'Entregado', 'Sin Observaciones'),
(24, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000629950, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(25, '2024-12-17', '2024-12-17', 'Bruno Fosco', 000616542, 'Entregado', 'Entregar de 9 a 13 horas'),
(26, '2024-12-22', '2024-12-22', 'Bruno Fosco', 000645912, 'En_Ruta', 'Entregar de 16 a 20 horas'),
(27, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000634133, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios'),
(28, '2024-12-24', '2024-12-24', 'Bruno Fosco', 000645000, 'En_Ruta', 'Horario Navidad - Hasta las 14 horas envios');

-- ACTUALICACION DATOS EN PRODUCTO
UPDATE supermerx.producto 
SET ID_Promo = '1' 
WHERE ID_Producto = 23; 

UPDATE supermerx.producto 
SET ID_Promo = '2' 
WHERE ID_Producto = 25; 

-- ACTUALIZACION DE DATOS EN VENTAS
UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 2; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 6; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 7; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 10; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 12; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 13; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 16; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 17; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 19; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 20; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 21; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 22; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 23; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 24; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 25; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 26; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 27; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 28; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 29; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 30; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 31;

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 32; 

UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 33; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 34; 

UPDATE supermerx.ventas 
SET ID_Empleado = '11' 
WHERE ID_Ventas = 35; 

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 36; 

 UPDATE supermerx.ventas 
SET ID_Empleado = '1' 
WHERE ID_Ventas = 37;

UPDATE supermerx.ventas 
SET ID_Empleado = '2' 
WHERE ID_Ventas = 38;

UPDATE supermerx.ventas 
SET ID_Empleado = '10' 
WHERE ID_Ventas = 1;

UPDATE supermerx.ventas 
SET ID_Empleado = '8' 
WHERE ID_Ventas = 3;

UPDATE supermerx.ventas 
SET ID_Empleado = '15' 
WHERE ID_Ventas = 4;

UPDATE supermerx.ventas 
SET ID_Empleado = '12' 
WHERE ID_Ventas = 5;

UPDATE supermerx.ventas 
SET ID_Empleado = '14' 
WHERE ID_Ventas = 8;

UPDATE supermerx.ventas 
SET ID_Empleado = '13' 
WHERE ID_Ventas = 9;

UPDATE supermerx.ventas 
SET ID_Empleado = '8' 
WHERE ID_Ventas = 11;

UPDATE supermerx.ventas 
SET ID_Empleado = '12' 
WHERE ID_Ventas = 14;

UPDATE supermerx.ventas 
SET ID_Empleado = '14' 
WHERE ID_Ventas = 15;

UPDATE supermerx.ventas 
SET ID_Empleado = '10' 
WHERE ID_Ventas = 18;

-- ACTUALIZACION DE DATOS EN MARCA
UPDATE supermerx.marca 
SET ID_Proveedor = '1' 
WHERE ID_Marca = 1;

UPDATE supermerx.marca 
SET ID_Proveedor = '2' 
WHERE ID_Marca = 2;

UPDATE supermerx.marca 
SET ID_Proveedor = '3' 
WHERE ID_Marca = 3;

UPDATE supermerx.marca 
SET ID_Proveedor = '4' 
WHERE ID_Marca = 4;

UPDATE supermerx.marca 
SET ID_Proveedor = '5' 
WHERE ID_Marca = 5;

UPDATE supermerx.marca 
SET ID_Proveedor = '6' 
WHERE ID_Marca = 6;

UPDATE supermerx.marca 
SET ID_Proveedor = '7' 
WHERE ID_Marca = 7;

UPDATE supermerx.marca 
SET ID_Proveedor = '8' 
WHERE ID_Marca = 8;

UPDATE supermerx.marca 
SET ID_Proveedor = '9' 
WHERE ID_Marca = 9;

UPDATE supermerx.marca 
SET ID_Proveedor = '10' 
WHERE ID_Marca = 10;

UPDATE supermerx.marca 
SET ID_Proveedor = '11' 
WHERE ID_Marca = 11;

UPDATE supermerx.marca 
SET ID_Proveedor = '12' 
WHERE ID_Marca = 12;

UPDATE supermerx.marca 
SET ID_Proveedor = '13' 
WHERE ID_Marca = 13;

UPDATE supermerx.marca 
SET ID_Proveedor = '14' 
WHERE ID_Marca = 14;

UPDATE supermerx.marca 
SET ID_Proveedor = '15' 
WHERE ID_Marca = 15;

UPDATE supermerx.marca 
SET ID_Proveedor = '16' 
WHERE ID_Marca = 16;

UPDATE supermerx.marca 
SET ID_Proveedor = '17' 
WHERE ID_Marca = 17;

UPDATE supermerx.marca 
SET ID_Proveedor = '18' 
WHERE ID_Marca = 18;

UPDATE supermerx.marca 
SET ID_Proveedor = '19' 
WHERE ID_Marca = 19;

UPDATE supermerx.marca 
SET ID_Proveedor = '20' 
WHERE ID_Marca = 20;

UPDATE supermerx.marca 
SET ID_Proveedor = '21' 
WHERE ID_Marca = 21;

UPDATE supermerx.marca 
SET ID_Proveedor = '22' 
WHERE ID_Marca = 22;

UPDATE supermerx.marca 
SET ID_Proveedor = '23' 
WHERE ID_Marca = 23;

UPDATE supermerx.marca 
SET ID_Proveedor = '24' 
WHERE ID_Marca = 24;

UPDATE supermerx.marca 
SET ID_Proveedor = '25' 
WHERE ID_Marca = 25;

-- ACTUALIZACION DE DATOS DE TABLA PEDIDOS
UPDATE supermerx.pedidos 
SET ID_Logistica = '1' 
WHERE ID_Pedido = 1;

UPDATE supermerx.pedidos 
SET ID_Logistica = '2' 
WHERE ID_Pedido = 2;

UPDATE supermerx.pedidos 
SET ID_Logistica = '3' 
WHERE ID_Pedido = 3;

UPDATE supermerx.pedidos 
SET ID_Logistica = '4' 
WHERE ID_Pedido = 4;

UPDATE supermerx.pedidos 
SET ID_Logistica = '5' 
WHERE ID_Pedido = 5;

UPDATE supermerx.pedidos 
SET ID_Logistica = '6' 
WHERE ID_Pedido = 6;

UPDATE supermerx.pedidos 
SET ID_Logistica = '7' 
WHERE ID_Pedido = 7;

UPDATE supermerx.pedidos 
SET ID_Logistica = '8' 
WHERE ID_Pedido = 8;

UPDATE supermerx.pedidos 
SET ID_Logistica = '9' 
WHERE ID_Pedido = 9;

UPDATE supermerx.pedidos 
SET ID_Logistica = '10' 
WHERE ID_Pedido = 10;

UPDATE supermerx.pedidos 
SET ID_Logistica = '11' 
WHERE ID_Pedido = 11;

UPDATE supermerx.pedidos 
SET ID_Logistica = '12' 
WHERE ID_Pedido = 12;

UPDATE supermerx.pedidos 
SET ID_Logistica = '13' 
WHERE ID_Pedido = 13;

UPDATE supermerx.pedidos 
SET ID_Logistica = '14' 
WHERE ID_Pedido = 14;

UPDATE supermerx.pedidos 
SET ID_Logistica = '15' 
WHERE ID_Pedido = 15;

UPDATE supermerx.pedidos 
SET ID_Logistica = '16' 
WHERE ID_Pedido = 16;

UPDATE supermerx.pedidos 
SET ID_Logistica = '17' 
WHERE ID_Pedido = 17;

UPDATE supermerx.pedidos 
SET ID_Logistica = '18' 
WHERE ID_Pedido = 18;

UPDATE supermerx.pedidos 
SET ID_Logistica = '19' 
WHERE ID_Pedido = 19;

UPDATE supermerx.pedidos 
SET ID_Logistica = '20' 
WHERE ID_Pedido = 20;

UPDATE supermerx.pedidos 
SET ID_Logistica = '21' 
WHERE ID_Pedido = 21;

UPDATE supermerx.pedidos 
SET ID_Logistica = '22' 
WHERE ID_Pedido = 22;

UPDATE supermerx.pedidos 
SET ID_Logistica = '23' 
WHERE ID_Pedido = 23;

UPDATE supermerx.pedidos 
SET ID_Logistica = '24' 
WHERE ID_Pedido = 24;

UPDATE supermerx.pedidos 
SET ID_Logistica = '25' 
WHERE ID_Pedido = 25;

UPDATE supermerx.pedidos 
SET ID_Logistica = '26' 
WHERE ID_Pedido = 26;

UPDATE supermerx.pedidos 
SET ID_Logistica = '27' 
WHERE ID_Pedido = 27;

UPDATE supermerx.pedidos 
SET ID_Logistica = '28' 
WHERE ID_Pedido = 28;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 1;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 2;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 3;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 4;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 5;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 6;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 7;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 8;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 9;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 10;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 11;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 12;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 13;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 14;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 15;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 16;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 17;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 18;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 19;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 20;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 21;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 22;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 23;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 24;

UPDATE supermerx.pedidos 
SET ID_Empleado = '11' 
WHERE ID_Pedido = 25;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 26;

UPDATE supermerx.pedidos 
SET ID_Empleado = '1' 
WHERE ID_Pedido = 27;

UPDATE supermerx.pedidos 
SET ID_Empleado = '2' 
WHERE ID_Pedido = 28;