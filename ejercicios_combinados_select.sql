use Northwind;
--Ejercicios con el join
--OBTENER EL NUMERO DE ORDEN, EL ID EMPLEADO, NOMBRE Y APELLIDO
--DE LAS TABLAS DE ORDENES Y EMPLEADOS
SELECT ORDER_ID as orden_id, 
       E.EMPLOYEE_ID as empleado_id, 
       FIRST_NAME as nombre, 
       LAST_NAME as apellido
FROM Employees  E
     INNER JOIN ORDERS  O 
	 ON E.Employee_ID = O.Employee_ID;

--OBTENER EL PRODUCTID, PRODUCTNAME, SUPPLIERID, COMPANYNAME
--DE LAS TABLAS DE PRODUCTOS Y PROVEEDORES (SUPPLIERS)

SELECT product_id, 
       product_name, 
       p.supplier_id, 
       company_name
FROM products AS P
     INNER JOIN Suppliers AS S 
	 ON p.Supplier_ID = s.Supplier_ID;

--OBTENER LOS DATOS DEL DETALLE DE ORDENES CON EL NOMBRE DEL PRODUCTO
--DE LAS TABLAS DE DETALLE DE ORDENES Y DE PRODUCTOS
SELECT ORDER_ID, 
       OD.PRODUCT_ID, 
       PRODUCT_NAME, 
       OD.UNIT_PRICE, 
       QUANTITY, 
       DISCOUNT
FROM PRODUCTS AS P
     INNER JOIN  order_details as OD 
	 ON P.Product_ID = OD.Product_ID;
	 
--OBTENER DE LAS ORDENES EL ID, SHIPPERID, NOMBRE DE LA COMPAÑÍA DE ENVIO (SHIPPERS)
SELECT Order_ID, 
       Shipper_ID, 
       Company_Name
FROM Shippers S
     INNER JOIN Orders O 
	 ON S.Shipper_ID = O.Ship_Via;

--Obtener el número de orden, país de envío (shipCountry)
--y el nombre del empleado
--de la tabla ordenes y empleados
--Queremos que salga el Nombre y Apellido del Empleado en una sola columna.
SELECT o.Order_ID, 
       o.Ship_Country, 
       concat(First_Name,' ', Last_Name) AS nombreCompleto
FROM employees AS e
     INNER JOIN orders AS o ON e.Employee_ID = o.Employee_ID;
	 
--CONTAR EL NUMERO DE ORDENES POR EMPLEADO OBTENIENDO EL ID EMPLEADO Y EL NOMBRE COMPLETO
--DE LAS TABLAS DE ORDENES Y DE EMPLEADOS
--join y group by / columna calculada
SELECT E.Employee_ID, concat(E.First_Name,' ',E.Last_Name) AS NOMBRE_COMPLETO, 
COUNT(o.Order_ID) AS CANTIDAD_ORDENES
FROM Employees E
INNER JOIN ORDERS O
ON E.Employee_ID = O.Employee_ID
GROUP BY E.Employee_ID, concat(E.First_Name,' ', E.Last_Name);

--OBTENER LA SUMA DE LA CANTIDAD VENDIDA Y EL PRECIO PROMEDIO POR NOMBRE DE PRODUCTO
--DE LA TABLA DE ORDERS DETAILS Y PRODUCTS
SELECT Product_Name, AVG(OD.UNIT_PRICE) PRECIO_PROMEDIO, 
SUM(QUANTITY) CANTIDAD_VENDIDA
FROM PRODUCTS P
INNER JOIN order_details OD
ON P.Product_ID = OD.Product_ID
GROUP BY Product_Name
order by product_name

--OBTENER LAS VENTAS (UNITPRICE * QUANTITY) POR CLIENTE 
--DE LAS TABLAS ORDER DETAILS, ORDERS
SELECT O.Customer_ID, SUM(OD.UNIT_PRICE * OD.QUANTITY) AS VENTAS
FROM ORDERS O
INNER JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
GROUP BY O.Customer_ID
order by o.customer_id

