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


# _Diagrama Entidad Relacion MySQL_

![DER_SQL](DER_SuperMerx_SQL.png)


# <u>LISTADO DE TABLAS</u>

Detallo a continuación cada tabla conformada por su PK, FK y además una breve reseña de cada una.

1. <span style="color: pink;"><u>Producto</u></span>: Representa los productos disponibles para la venta. Contiene información detallada sobre cada producto.  
   *Atributos:*  
   - ✔ *ID_Producto* (PK)  
   - ✔ Producto  
   - ✔ Producto completo  
   - ✔ Costo  
   - ✔ ID_categoria (FK)  
   - ✔ ID_marca (FK)
   - ✔ ID_Promo (FK)  

2. <span style="color: pink;"><u>Marcas</u></span>: Esta tabla contiene información sobre la marca de los productos.  
   *Atributos:*  
   - ✔ *ID_marca* (PK)  
   - ✔ Nombre_Marca
   - ✔ ID_Proveedor (FK)  

3. <span style="color: pink;"><u>Categoría</u></span>: Agrupa los productos en categorías generales.  
   *Atributos:*  
   - ✔ *ID_Categoria* (PK)  
   - ✔ Categoría  
   - ✔ Abreviatura  

4. <span style="color: pink;"><u>Subcategoría</u></span>: Agrupa los productos en categorías específicas.  
   *Atributos:*  
   - ✔ *ID_Sub* (PK)  
   - ✔ Subcategoría
   - ✔ ID_Categoria (FK)  

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
   - ✔ Cantidad
   - ✔ Precio   
   - ✔ ID_Producto (FK)
   - ✔ ID_Metodo (FK)  
   - ✔ ID_Factura (FK)
   - ✔ ID_Cliente (FK)
   - ✔ ID_Empleado (FK)

10. <span style="color: pink;"><u>Promociones</u></span>: Esta tabla contiene información sobre las promociones aplicadas a los productos, en un periodo especifico.  
   *Atributos:*  
   - ✔ *ID_Promo* (PK)
   - ✔ Nombre
   - ✔ Descripcion   
   - ✔ Fecha_inicio
   - ✔ Fecha_fin  
   - ✔ Descuento
   - ✔ ID_Producto

11. <span style="color: pink;"><u>Pedidos</u></span>: Esta tabla contiene almacena información sobre los pedidos realizados por los clientes.  
   *Atributos:*  
   - ✔ *ID_Pedido* (PK)
   - ✔ Fecha
   - ✔ ID_Cliente   
   - ✔ Total
   - ✔ Estado  
   - ✔ Metodo_Pago
   - ✔ ID_Logistica (FK)
   - ✔ ID_Empleado (FK) 

12. <span style="color: pink;"><u>Logistica</u></span>: Esta tabla contiene contiene información sobre el manejo logístico de los pedidos.  
   *Atributos:*  
   - ✔ *ID_Logistica* (PK)
   - ✔ ID_Pedido
   - ✔ Fecha_salida  
   - ✔ Fecha_llegada
   - ✔ Transportista  
   - ✔ Numero_guia
   - ✔ Estado
   - ✔ Observaciones

13. <span style="color: pink;"><u>Clientes</u></span>: Esta tabla almacena información sobre los clientes.  
   *Atributos:*  
   - ✔ *ID_Cliente* (PK)
   - ✔ Nombre
   - ✔ Apellido  
   - ✔ Email
   - ✔ Telefono  
   - ✔ Direccion
   - ✔ Fecha_nacimiento

14. <span style="color: pink;"><u>Proveedores</u></span>: Esta tabla contiene información sobre los proveedores.  
   *Atributos:*  
   - ✔ *ID_Proveedor* (PK)
   - ✔ Nombre_empresa
   - ✔ Direccion  
   - ✔ Pagina_web
   - ✔ Contacto  
   - ✔ Telefono
   - ✔ Email

15. <span style="color: pink;"><u>Empleados</u></span>: Esta tabla contiene información sobre los empleados.  
   *Atributos:*  
   - ✔ *ID_Empleado* (PK)
   - ✔ Nombre
   - ✔ Apellido  
   - ✔ DNI
   - ✔ Fecha_nacimiento  
   - ✔ Email
   - ✔ Telefono
   - ✔ Fecha_contratacion
   - ✔ Cargo
   - ✔ Departamento


# <u>LISTADO DE COLUMNA DE CADA TABLA</u>  

A continuación, se hará mención de las columnas que posee cada tabla junto con su tipo de campo y clave:

<table>
  <tr>
    <th rowspan="8">PRODUCTO</th>
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
    <td>Costo</td>
    <td>DECIMAL (10,2)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Categoría</td>
    <td>INT</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Marca</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Promo</td>
    <td>INT</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="7">FACTURAS</th>
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
    <td>ID_Producto</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Tipo</td>
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
    <th rowspan="9">VENTAS</th>
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
    <td>Cantidad</td>
    <td>INT / NOT NULL</td>
    <td>-</td>
  </tr>
    <tr>
    <td>Precio</td>
    <td>DECIMAL (10,2)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Producto</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Metodo</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Factura</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Cliente</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Empleado</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="3">TIPOCOMPRA</th>
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
    <th rowspan="4">MARCA</th>
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
  <tr>
    <td>ID_Proveedor</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="4">CATEGORIA</th>
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
</table>


<table>
  <tr>
    <th rowspan="4">SUBCATEGORIA</th>
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
  <tr>
    <td>ID_Categoria</td>
    <td>INT / NOT NULL</td>
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


<table>
  <tr>
    <th rowspan="8">PROMOCIONES</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Promo</td>
    <td>INT / NOT NULL / AUTO_INCREMENT </td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Descripcion</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_inicio</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_fin</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Descuento</td>
    <td>DECIMAL (10,2) / NOT NULL</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Producto</td>
    <td>INT / NOT NULL</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="9">PEDIDOS</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Pedido</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Fecha</td>
    <td>Date</td>
    <td>-</td>
  </tr>
    <tr>
    <td>ID_Cliente</td>
    <td>INT</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Total</td>
    <td>DECIMAL (10,2)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Estado</td>
    <td>ENUM</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Metodo_Pago</td>
    <td>ENUM</td>
    <td>-</td>
  </tr>
  <tr>
    <td>ID_Logistica</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
  <tr>
    <td>ID_Empleado</td>
    <td>INT / NOT NULL</td>
    <td>FK</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="9">LOGISTICA</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Logistica</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>ID_Pedido</td>
    <td>INT</td>
    <td>-</td>
  </tr>
    <tr>
    <td>Fecha_salida</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_llegada</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Transportista</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Numero_guia</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Estado</td>
    <td>ENUM</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Observaciones</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="8">CLIENTES</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Cliente</td>
    <td>INT / NOT NULL / AUTO_INCREMENT </td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Apellido</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Email</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Telefono</td>
    <td>VARCHAR (30)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Direccion</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_nacimiento</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="10">PROVEEDORES</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Proveedor</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre_empresa</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
    <tr>
    <td>Direccion</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Pagina_web</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Contacto</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Telefono</td>
    <td>VARCHAR (30)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Email</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Banco</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Cuenta_bancaria</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
</table>


<table>
  <tr>
    <th rowspan="11">EMPLEADOS</th>
    <th>Campo</th>
    <th>Tipo de Campo</th>
    <th>Tipo de Clave</th>
  </tr>
  <tr>
    <td>ID_Empleado</td>
    <td>INT / NOT NULL / AUTO_INCREMENT</td>
    <td>PK</td>
  </tr>
  <tr>
    <td>Nombre</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
    <tr>
    <td>Apellido</td>
    <td>VARCHAR (100)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>DNI</td>
    <td>VARCHAR (20)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_nacimiento</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Email</td>
    <td>VARCHAR (255)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Telefono</td>
    <td>VARCHAR (30)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Fecha_contratacion</td>
    <td>DATE</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Cargo</td>
    <td>VARCHAR (30)</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Departamento</td>
    <td>VARCHAR (50)</td>
    <td>-</td>
  </tr>
</table>






---

# <u>INSERCION Y ACTUALIZACION DE DATOS</u>

Con el fin de finalizar con el proceso de aprendisaje y corresponder a la entrega final del curso de SQL, se avanzo con la insercion y la actualizacion de datos en la Base de datos creada en la anterior entrega, junto con la reestructuracion de tablas, para validar el correcto funcionamiento tanto de las relaciones entre las tablas, la creacion de Vistas, Triggers, Funciones y Store Procedures. 
Para no hacer de este documento algo muy extenso se pueden consultar los distintos INSERT y UPDATE en el archivo "insert_update_EntregaFinal.sql" en la carpeta "EntregaFinal_MySQL".

---
# <u>Vistas</u>

Se crearon 5 vistas:
- *vw_detalle_ventas*: Analisis detallado de cada venta tomando los datos mas importantes de cada tabla y asi tener una vision mas segmentada sin necesidad de tener que pasar por cada una de ellas para relevarlo
- *vw_productos_mas_vendidos*: Lista de productos mas vendidos ordenados de mayor a menor, con el total de ventas especifico.
- *vw_productos_promociones*: Ayuda a identificar los productos con promociones activas y detalles relevantes de estas promociones.
- *vw_ventas_detalladas*: Ofrece un resumen comprensible de cada venta, vinculando productos, clientes y empleados.
- *vw_pedidos_logistica*: Integra la información de los pedidos con el seguimiento logístico, útil para monitorear el estado de entrega y gestión.

## vw_detalle_ventas
- *Objetivo*
  
Obtener un informe mas detallado sobre Ventas en Gral, Analisis de tendencias y que esto ayude en tomas de decisiones mas acertadas.

- *Ventajas*
  
Lo principal es conseguir la informacion necesaria para obtener lo mencionado anteriormente sin la necesidad de generar consultas que impliquen tablas multiples.

- *Creacion y tablas que la componen*
  
Uniones: Utilizamos INNER JOIN para relacionar las tablas "Facturas", "Ventas", "Producto", "Categoria", "Marca" y "Metodopago" basadas en las claves foráneas correspondientes.

Campos seleccionados: Se seleccionan los campos relevantes de cada tabla para obtener la información detallada de cada venta (Fecha, Hora, Producto, Categoria, Nombre_Marca, Cantidad, Precio y Metodo_Pago).

Cálculo del monto total: Se calcula el monto total de cada venta multiplicando la cantidad por el precio unitario ({Cantidad * Precio} y se muestra como "Monto_Total").

## vw_productos_mas_vendidos
- *Objetivo*
  
Ayudar a confeccionar reportes de Analisis de ventas y Marketing, ademas de mejorar las tomas de decisiones sobre promociones a lanzar, y un pilar importante para la gestion de Stock.

- *Ventaja*
  
Rapido acceso a la informacion, ademas de gestion mas eficiente y eficaz del inventario de productos.

- *Creacion y tablas que la componen*
  
Uniones: Se realiza un JOIN entre las tablas "Ventas" y "Producto" utilizando "ID_Producto" como clave

Campos seleccionados: Se selecciona el campo producto de la tabla "Producto"

Cálculo de Cantidad total vendida: Se calcula la cantidad total vendida X productos sumando la cantidad vendida de cada uno de la tabla "Ventas" ({sum(cantidad)} y se muestra como "Total_Cantidad_Vendida"). Ademas se agrupa por ID_Producto y se ordena de forma descendiente por cantidad vendida.

## vw_productos_promociones
- *Objetivo*
  
Ayudar a identificar productos con promociones activas, mejorando el diseño de estrategias de marketing y decisiones de compra, además de incrementar la eficacia en campañas publicitarias.

- *Ventaja*
  
Permite acceso rápido a los detalles de promociones activas, facilitando la planificación estratégica y el análisis de impacto de las mismas.

- *Creacion y tablas que la componen*
  
Uniones: Se realiza un LEFT JOIN entre las tablas "Producto" y "Promociones" utilizando "ID_Promo" como clave.

Campos seleccionados: Se seleccionan los campos Producto, Costo de la tabla "Producto" y los campos nombre, descripcion, fecha_inicio, fecha_fin, y descuento de la tabla "Promociones".

Filtro de promociones activas: Se filtran únicamente las promociones cuya fecha de inicio sea menor o igual a la fecha actual y cuya fecha de fin sea mayor o igual a la fecha actual.

## vw_ventas_detalladas
- *Objetivo*
  
Proporcionar un reporte completo de las ventas, incluyendo detalles de productos, clientes y empleados, para facilitar el análisis del desempeño comercial y optimizar la atención al cliente.

- *Ventaja*
  
Ofrece una visión integral y detallada de las ventas, ayudando en la toma de decisiones estratégicas y en la evaluación del rendimiento de empleados y productos.

- *Creacion y tablas que la componen*
  
Uniones: Se realiza un INNER JOIN entre "Ventas" y "Producto" utilizando "ID_Producto", un LEFT JOIN con las tablas "Clientes" y "Empleados" utilizando "ID_Cliente" e "ID_Empleado", respectivamente y Se incluye un LEFT JOIN adicional con "MetodoPago" utilizando "ID_Metodo".

Campos seleccionados: Se seleccionan los campos ID_Ventas, Cantidad, Precio de la tabla "Ventas", el campo Producto de la tabla "Producto", los campos Nombre y Apellido de la tabla "Clientes", los campos Nombre y Apellido de la tabla "Empleados" y el campo Metodo_Pago de la tabla "MetodoPago"

## vw_pedidos_logistica
- *Objetivo*
  
Facilitar el seguimiento de pedidos y su estado logístico, optimizando la planificación de entregas y la atención al cliente.

- *Ventaja*
  
Permite un acceso consolidado a los detalles de pedidos y su logística, mejorando la eficiencia en el seguimiento de entregas y la gestión de incidencias.
- *Creacion y tablas que la componen*
  
Uniones: Se realiza un LEFT JOIN entre "Pedidos" y "Logistica" utilizando "ID_Logistica" y Se realiza un LEFT JOIN con "Clientes" utilizando "ID_Cliente".

Campos seleccionados: Se seleccionan los campos ID_Pedido, Fecha, Total y Estado de la tabla "Pedidos", los campos Fecha_salida, Fecha_llegada, Transportista, Numero_guia, Estado y Observaciones de la tabla "Logistica" y los campos Nombre y Apellido de la tabla "Clientes"


##

*Script de creacion de vistas*: 'vistasEntregaFinal.sql'

---
# <u>Triggers</u>

Se crearon 2 triggers, ambos en la tabla "Ventas":
- *trg_actualizar_inventario*: Disminuye el inventario de un producto cada vez que se realice una venta.
- *trg_alerta_venta_sospechosa*: Detecta cantidades inusualmente altas de ventas de un producto y las registra en una tabla creada con este objetivo.

## trg_alerta_venta_sospechosa
- *Objetivo*
  
Revisar cada una de las ventas registradas, y de tener una cantidad inusual de venta de un producto, registrara la alerta para, de ser necesario, poder realizar una auditoria.

- *Ventajas*
  
Detecta ventas potencialmente erróneas o sospechosas y crea un mecanismo de control adicional para auditorías. 

- *Funcionamiento*
  
1. Obtiene el nombre del producto y calcula el monto total de la venta.
2. Evalúa si la cantidad supera lo usual (se determinaron 10 unidades).
3. Registra una alerta en la tabla "AlertasVentas" si la cantidad es sospechosamente alta.

- *Tablas utilizadas*

1. AlertasVentas
2. Ventas
3. Producto
   
## trg_actualizar_inventario
- *Objetivo*
  
Disminuye el inventario de un producto cada vez que se realice una venta, segun cantidad vendida.

- *Ventajas*
  
Proporciona coherencia en el control de inventario de los productos existentes. 

- *Funcionamiento*
  
Luego de registrada la venta, resta la cantidad vendida del producto requerido sobre la cantidad de stock existente en la columna "Inventario" de la tabla Producto (Esta ultima columna fue añadida para tanto la mejora de la base de datos como para la correcta implementacion del Trigger)

- *Tablas utilizadas*

1. Producto
2. Ventas

##

*Script de creacion de Triggers*: 'triggersEntregaFinal.sql'

---

# <u>Funciones</u>

Se crearon 2 funciones:
- *ContarVentasPorFecha*: Esta funcion recibe el "ID_Producto" y devuelve el monto total de las ventas generadas por ese producto.
- *CalcularMontoTotalPorProducto*: Esta funcion recibe un rango de fechas y devuelve el total de ventas en ese rango.

## CalcularMontoTotalPorProducto
- *Objetivo*
  
Obtener las ventas totales de un producto especifico.

- *Ventajas*
  
La precisa informacion de total de ventas de un producto de forma rapida y certera 

- *Funcionamiento*
  
1. Recibe el "ID_Producto" como entrada.
2. Suma el producto de (Cantidad * Precio) de todas las ventas de ese producto.
3. Devuelve como salida el resultado de la suma, obteniendo el valor "0" si el producto no tuvo ventas
- ✔ Ejemplo: <SELECT CalcularMontoTotalPorProducto(1) AS Monto_Total;>

- *Tablas utilizadas*

1. Producto
2. Ventas

## ContarVentasPorFecha
- *Objetivo*
  
Obtener las ventas totales en un rango de fechas determinado

- *Ventajas*
  
Rapida recoleccion de informacion de Ventas totales en un periodo deseado para, de ser necesario, poder ser comparado, por ejemplo, mismo periodo de otro año.

- *Funcionamiento*
  
1. Recibe "p_FechaInicio" y "p_FechaFin" como fechas de inicio y fin.
2. Devuelve el número total de registros de ventas vinculados a facturas dentro del rango especificado. Si no hubo ventas en el rango elegido devolvera "0"
- ✔ Ejemplo: <SELECT ContarVentasPorFecha('2024-01-01', '2024-12-31') AS Total_Ventas;>

- *Tablas utilizadas*

1. Ventas
2. Facturas

##

*Script de creacion de Funciones*: 'functionsEntregaFinal.sql'


---

# <u>Store Procedure</u>

Se crearon 2 SP:
- *ConsultarVentasPorCategoria*: Este store procedure devuelve las ventas agrupadas por categoría en un rango de fechas.
- *ActualizarPrecioProducto*: Este store procedure actualizará el precio de un producto segun porcentaje en función de su ID, la actualizacion puede hacerse en el aumento como en el descuento.

## ConsultarVentasPorCategoria
- *Objetivo*
  
Obtener las ventas totales agrupadas por categoria en un rango de fechas determinado.

- *Ventajas*
  
Proporciona una visión clara de las ventas por categoría en un período específico.

- *Funcionamiento*
  
1. Agrupa las ventas por categoría.
2. Filtra las ventas según el rango de fechas proporcionado.
3. Calcula el monto total vendido y la cantidad total vendida por categoría.
- ✔ Ejemplo: <CALL ConsultarVentasPorCategoria('2024-01-01', '2024-12-31');>

- *Tablas utilizadas*

1. Categoria
2. Ventas
3. Producto
4. Facturas

## ActualizarPrecioProducto
- *Objetivo*
  
Agilizar y disminuir errores en la actualizacion de precios de los productos.

- *Ventajas*
  
Se evita la carga manual y se disminuyen significativamente las posibilidades de cometer errores en la actualizacion de precios de los productos a vender.

- *Funcionamiento*
  
1. Se ingresa el "ID_Producto" y el porcentaje a actualizar del mismo. (Para descuentos el porcentaje debe ser un numero negativo)
2. Se consulta el precio actual del producto
3. Se calcula el nuevo precio aplicando el ajuste en porcentaje al precio actual.
4. Se realiza la actualización del precio en la tabla "Producto" usando el "UPDATE".
- ✔ Ejemplo Aumento: <CALL ActualizarPrecioProducto(1, 10);>
- ✔ Ejemplo Descuento: <CALL ActualizarPrecioProducto(2, -5);>

- *Tablas utilizadas*

1. Ventas
2. Producto

##

*Script de creacion de Funciones*: 'SPEntregaFinal.sql'

---



