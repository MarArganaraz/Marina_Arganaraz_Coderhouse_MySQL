# Análisis de Base de Datos de Supermercado

### _Introducción_

En el presente trabajo se analiza una base de datos extensa que abarca diez años de transacciones realizadas en un supermercado, desde 2010 hasta 2020. Este período incluye una variedad de ciclos económicos, cambios en los patrones de consumo y eventos significativos a nivel global, como la pandemia de COVID-19. La base de datos proporciona un registro detallado de las compras de los clientes, incluyendo información sobre productos, cantidades, precios y fechas de las transacciones.

### _Objetivo_

El objetivo principal de este análisis es explorar y extraer información significativa de los datos históricos para identificar tendencias y patrones de consumo a lo largo del tiempo. Se busca comprender cómo las variables externas e internas han influido en los comportamientos de compra, así como evaluar el impacto de eventos específicos en las mismas. Esto nos permitirá optimizar el negocio aprovechando datos recopilados durante una década de transacciones comerciales además se pueden tomar mejores decisiones sobre la oferta de productos, la gestión del inventario y las estrategias de marketing. El análisis de datos históricos puede proporcionar una perspectiva valiosa sobre cómo adaptarse a futuros cambios en el mercado y mejorar la competitividad del supermercado.

### _Alcance_

El análisis está dirigido principalmente a:

1. *_Gerente del Supermercado_*: Proporciona información clave para la toma de decisiones estratégicas sobre la gestión del inventario, la planificación de promociones y la adaptación de la oferta de productos según las tendencias del mercado.
2. *_Analistas de Datos_*: Ofrece datos y perspectivas útiles para la elaboración de recomendaciones basadas en análisis cuantitativos, así como para la formulación de estrategias comerciales y de marketing.

### _Nivel de Aplicación_

- *_Táctico_*: En el corto plazo, los resultados pueden aplicarse para ajustar estrategias promocionales y optimizar la gestión del inventario en función de los patrones de compra identificados.
- *Estratégico*: En el largo plazo, el análisis proporciona una visión integral de las tendencias del mercado y los cambios en los hábitos de consumo, permitiendo a los gerentes planificar a futuro, adaptar las estrategias de negocio y mejorar la competitividad del supermercado en un entorno en constante cambio.


# _Diagrama Entidad Relacion Lucidchart_

![DER](DER_Merx_Lucidchart.PNG)

# _Diagrama Entidad Relacion MySQL_

![DER_SQL](DER_Merx_SQL.PNG)


# <u>LISTADO DE TABLAS</u>

Detallo a continuación cada tabla conformada por su PK, FK y además una breve reseña de cada una.

1. <span style="color: pink;"><u>Producto</u></span>: Representa los productos disponibles para la venta. Contiene información detallada sobre cada producto.  
   *Atributos:*  
   - ✔ *ID_Producto* (PK)  
   - ✔ Producto  
   - ✔ Producto completo  
   - ✔ Etiqueta  
   - ✔ ID_categoria (FK)  
   - ✔ ID_marca (FK)  
   - ✔ Precio  
   - ✔ Costo  

2. <span style="color: pink;"><u>Marcas</u></span>: Esta tabla contiene información sobre la marca de los productos.  
   *Atributos:*  
   - ✔ *ID_marca* (PK)  
   - ✔ Nombre_Marca  

3. <span style="color: pink;"><u>Categoría</u></span>: Agrupa los productos en categorías generales.  
   *Atributos:*  
   - ✔ *ID_Categoria* (PK)  
   - ✔ Categoría  
   - ✔ Abreviatura  
   - ✔ ID_Sub (FK)  

4. <span style="color: pink;"><u>Subcategoría</u></span>: Agrupa los productos en categorías específicas.  
   *Atributos:*  
   - ✔ *ID_Sub* (PK)  
   - ✔ Subcategoría  

5. <span style="color: pink;"><u>Tipo de compra</u></span>: Detalla si la compra fue realizada de manera física en el supermercado o en línea desde la página web.  
   *Atributos:*  
   - ✔ *ID_tipo* (PK)  
   - ✔ Tipo  

6. <span style="color: pink;"><u>Método de pago</u></span>: Indica las metodologías que utilizó el cliente para realizar sus compras (Transferencia, Débito, Crédito, Efectivo, QR).  
   *Atributos:*  
   - ✔ *ID_Metodo* (PK)  
   - ✔ Metodo_Pago  

7. <span style="color: pink;"><u>Dispositivos</u></span>: Indica los dispositivos utilizados para ejecutar el pago de cada compra (PC, Tablet, Celular).  
   *Atributos:*  
   - ✔ *ID_Dis* (PK)  
   - ✔ Nombre_Dis  

8. <span style="color: pink;"><u>Factura</u></span>: Registra la información de las facturas emitidas, incluyendo fecha y hora de cada transacción.  
   *Atributos:*  
   - ✔ *ID_Factura* (PK)  
   - ✔ Fecha  
   - ✔ Hora  
   - ✔ ID_Producto (FK)  
   - ✔ ID_tipo (FK)  
   - ✔ ID_Dis (FK)  

9. <span style="color: pink;"><u>Ventas</u></span>: Esta tabla registra las ventas realizadas, incluyendo la cantidad vendida y la información relevante sobre el producto y la transacción.  
   *Atributos:*  
   - ✔ *ID_Ventas* (PK)  
   - ✔ ID_Producto (FK)  
   - ✔ ID_Factura (FK)  
   - ✔ Cantidad 
   - ✔ ID_Metodo (FK)




# <u>LISTADO DE COLUMNA DE CADA TABLA</u>  

A continuación, se hará mención de las columnas que posee cada tabla junto con su tipo de campo y clave:

<table>
  <tr>
    <th rowspan="9">PRODUCTO</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Producto</td>
    <td>INT / NOT NULL / AUTO_INCREMENT </td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Producto</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Producto_Completo</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Etiqueta</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Categoría</td>
    <td>VARCHAR (20)</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Marca</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>Precio</td>
    <td>DECIMAL (10,2)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Costo</td>
    <td>DECIMAL (10,2)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="7">FACTURA</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Factura</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Fecha</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Hora</td>
    <td>TIME</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Tipo</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Producto</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Dis</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="6">VENTAS</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Ventas</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>ID_Producto</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Factura</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Metodo</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>Cantidad</td>
    <td>INT</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">TIPO</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Tipo</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Tipo</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">MARCA</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Marca</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre_Marca</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="5">CATEGORIA</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Categoria</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Categoría</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Abreviatura</td>
    <td>VARCHAR (10)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Sub</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">SUBCATEGORIA</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Sub</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Subcategoría</td>
    <td>VARCHAR (150)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">DISPOSITIVO</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Dis</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre_Dis</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">MÉTODO DE PAGO</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Metodo</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Metodo_Pago</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
</table>


# <u>INSERCION DE DATOS</u>
### _Introducción_
Con el fin de continuar con el proceso de aprendisaje y corresponder a la segunda entrega del curso de SQL, se avanzon con la insercion de datos en la Base de datos creada en la anterior entrega, para validar el correcto funcionamiento tanto de las relaciones entre las tablas y la creacion de Vistas, Triggers, Funciones y Store Procedures. 

### _INSERT en tabla "Categoria"_
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

### _INSERT en tabla "Subcategoria"_
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

### _INSERT en tabla "Marca"_
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

### _INSERT en tabla "Tipocompra"_
INSERT INTO merx.tipocompra (Tipo) VALUES
    ('En Linea'),
    ('Fisica');

### _INSERT en tabla "Dispositivo"_
INSERT INTO merx.dispositivo (Nombre_Dis) VALUES
    ('Telefono Movil'),
    ('PC'),
    ('Tablet');

### _INSERT en tabla "Metodopago"_
INSERT INTO merx.metodopago (Metodo_Pago) VALUES 
    ('Transferencia'),
    ('Debito'),
    ('Efectivo'),
    ('Credito');

### _INSERT en tabla "Producto"_
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
    ('Detergente', 'Detergente con Aloe Vera Magistral x 300 ml', 1620.00,7,13),
    ('Desinfectante', 'Desinfectante Lavanda Cif x 5 lt', 7100.00,7,14),
    ('Shampoo Liso Perfecto', 'Shampoo Liso Perfecto Elvive x 340 ml', 1960.00,8,15),
    ('Acondicionador Keratina Plus', 'Acondicionador Keratina Plus Dove x 400 ml', 2800.00,8,16),
    ('Perfume Mujer', 'Perfume Chanel Mujer Citrico x 100 ml', 25600.00,9,17),
    ('Rubor en Polvo', 'Rubor en Polvo Dior Beauty x und', 87000.00,9,18),
    ('Alimento para Perros', 'Alimento para Perros Purina x kg', 2900.00,10,19),
    ('Alimento para Gatos', 'Alimento para Gatos Whiskas x kg', 3600.00,10,20);

### _INSERT en tabla "Facturas"_
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

### _INSERT en tabla "Ventas"_
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
