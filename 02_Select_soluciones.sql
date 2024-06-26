1. Selecciona todos los nombres de categorías.

SELECT category_name FROM categories;

2. Selecciona los nombres de las categorías cuyo category_id sea mayor a 2.

SELECT category_name FROM categories WHERE category_id > 2;

3. Selecciona los nombres de las categorías que tengan la palabra "food" en su descripción.

SELECT category_name FROM categories WHERE category_name LIKE '%food%';

4. Selecciona todos los nombres de las compañías de clientes.

SELECT company_name FROM customers;

5. Selecciona los nombres de las compañías de clientes en la ciudad de Londres.

SELECT company_name, city FROM customers WHERE city = 'London';

6. Selecciona todos los empleados cuyo apellido sea "Davolio".

SELECT first_name, last_name FROM employees WHERE last_name = 'Davolio';

7. Selecciona los nombres de los empleados que se han contratado después de 1993.

SELECT first_name, last_name FROM employees WHERE hire_date > '1993-12-31';

8. Selecciona los nombres y apellidos de empleados ordenados por su fecha de nacimiento.

SELECT first_name, last_name, birth_date FROM employees ORDER BY birth_date;

9. Selecciona los nombres de los productos que tienen un precio mayor a 20.

SELECT product_name, unit_price FROM products WHERE unit_price > 20;

10. Selecciona los nombres de los productos que están descontinuados.
SELECT product_name, discontinued FROM products WHERE discontinued = 1;

11.Selecciona los nombres de los productos que tienen más de 50 unidades en stock.
SELECT product_name, units_in_stock FROM products WHERE units_in_stock > 50;

12.Selecciona los nombres de los proveedores ubicados en Alemania.
SELECT company_name, country FROM suppliers WHERE country = 'Germany';

13. Selecciona los nombres de los proveedores cuyo nombre de contacto sea "Ian".
SELECT company_name, contact_name FROM suppliers WHERE contact_name LIKE '%Ian%';

14. Selecciona todos los detalles de las órdenes realizadas en el año 1996.
SELECT * FROM orders WHERE order_date BETWEEN '1996-01-01' AND '1996-12-31';

15. Selecciona las órdenes cuyo flete (freight) sea mayor a 100.
SELECT * FROM orders WHERE freight > 100;

16. Selecciona los nombres de las compañías que enviaron órdenes usando el método de envío con ship_via igual a 2.
SELECT ship_name, ship_via FROM orders WHERE ship_via = 2;

17.Selecciona las órdenes enviadas a Brasil ordenadas por la fecha de envío.
SELECT * FROM orders WHERE ship_country = 'Brazil' ORDER BY shipped_date;

18. Selecciona las regiones cuyo region_id sea menor a 3.
SELECT * FROM region WHERE region_id < 3;

19. Selecciona las regiones cuyo nombre contenga "East".
SELECT * FROM region WHERE region_description LIKE '%East%';

20.Selecciona las categorías ordenadas por category_name en orden descendente.
SELECT * FROM categories ORDER BY category_name DESC;

21.Selecciona todos los territorios ubicados en la región con region_id 1.
SELECT * FROM territories WHERE region_id = 1;

22.Selecciona los nombres de los territorios que contengan "Bosto" en su descripción.
SELECT territory_description FROM territories WHERE territory_description LIKE '%Bosto%';

23. Selecciona las categorías que no tienen descripción (description es NULL).
SELECT * FROM categories WHERE description IS NULL;

24. Selecciona los empleados que reportan a otro empleado (reports_to no es NULL).
SELECT * FROM employees WHERE reports_to IS NOT NULL;

25. Selecciona los nombres de clientes que tengan fax registrado.
SELECT company_name FROM customers WHERE fax IS NOT NULL;

26. Selecciona los nombres de los clientes ordenados por company_name en orden ascendente.
SELECT company_name FROM customers ORDER BY company_name ASC;

27. Selecciona los detalles de todas las órdenes que tengan un descuento aplicado.
SELECT * FROM order_details WHERE discount > 0;

28. Selecciona los productos cuyo category_id sea 3.
SELECT product_name FROM products WHERE category_id = 3;

29. Selecciona las órdenes cuya fecha de envío es nula (no han sido enviadas).
SELECT * FROM orders WHERE shipped_date IS NULL;

30. Selecciona los empleados que nacieron en 1960.
SELECT * FROM employees WHERE birth_date BETWEEN '1960-01-01' AND '1960-12-31';

Selecciona los nombres de los proveedores cuyo número de teléfono contenga "123".

sql

SELECT company_name FROM suppliers WHERE phone LIKE '%123%';

Selecciona los productos cuyo units_on_order sea mayor a 0.

sql

SELECT product_name FROM products WHERE units_on_order > 0;

Selecciona los productos cuyo precio sea menor a 10 y que no estén descontinuados.

sql

SELECT product_name FROM products WHERE unit_price < 10 AND discontinued = 0;

Selecciona las órdenes cuyo flete sea mayor a 50 y menor a 100.

SELECT * FROM orders WHERE freight BETWEEN 50 AND 100;

Selecciona los empleados que viven en "Seattle".

sql

SELECT first_name, last_name FROM employees WHERE city = 'Seattle';

Selecciona los clientes de la región "WA".

sql

SELECT company_name FROM customers WHERE region = 'WA';

Selecciona los nombres de los clientes que tienen un nombre de contacto que empiece con "A".

sql

SELECT company_name FROM customers WHERE contact_name LIKE 'A%';

Selecciona los nombres de los clientes que tienen una dirección registrada.

sql

SELECT company_name FROM customers WHERE address IS NOT NULL;

Selecciona los nombres de las compañías navieras que tienen un número de teléfono registrado.

sql

SELECT company_name FROM shippers WHERE phone IS NOT NULL;

Selecciona los detalles de las órdenes que tienen un product_id igual a 1.

sql

SELECT * FROM order_details WHERE product_id = 1;

Selecciona los nombres de las compañías navieras ordenadas por company_name en orden descendente.

sql

SELECT company_name FROM shippers ORDER BY company_name DESC;

Selecciona los productos que están en la categoría 2 y tienen un precio mayor a 15.

sql

SELECT product_name FROM products WHERE category_id = 2 AND unit_price > 15;

Selecciona los detalles de las órdenes que tienen una cantidad (quantity) mayor a 10.

sql

SELECT * FROM order_details WHERE quantity > 10;

Selecciona los nombres de los empleados que tienen una extensión telefónica registrada.

sql

SELECT first_name, last_name FROM employees WHERE extension IS NOT NULL;

Selecciona los detalles de las órdenes que tienen un descuento menor a 0.05.

sql

SELECT * FROM order_details WHERE discount < 0.05;

Selecciona los productos cuyo reorder_level sea mayor a 20.

sql

SELECT product_name FROM products WHERE reorder_level > 20;

Selecciona los nombres de los proveedores que tienen una página de inicio registrada.

sql

SELECT company_name FROM suppliers WHERE homepage IS NOT NULL;

Selecciona los empleados cuyo título de cortesía sea "Dr.".

sql

SELECT first_name, last_name FROM employees WHERE title_of_courtesy = 'Dr.';

Selecciona los detalles de las órdenes que tienen un order_id mayor a 10250.
SELECT * FROM order_details WHERE order_id > 10250;

Selecciona los nombres de los territorios que tienen una descripción de territorio que empieza con "Boston".

SELECT territory_description FROM territories WHERE territory_description LIKE 'Boston%';