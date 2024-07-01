--Select 
Select employee_id,first_name as nombre, last_name as apellido, reports_to as
 jefe from employees;
 
 --Columnas calculadas 
 Select employee_id as empleadoId, 
 concat(first_name,' ',last_name ) as nombre_completo,
 reports_to as jefe
 from employees;
 
 --Mostrar un 10% de incremento al precio de todos los producto
 Select product_id, product_name, unit_price*1.1 as precio_incrementado
 from products;
 
 --Filtros - where
 Select product_id, product_name, unit_price 
 from products
 where unit_price > 50;
 
 Select product_id, product_name, unit_price 
 from products
 where unit_price between 30 and 50
 order by unit_price desc;
 
 --Obtener las ordenes de los empleados 1,5,6
 Select order_id, employee_id, order_date
 from orders
 where employee_id in (1,5,6);
 
 --Obtener los empleados cuyo nombre comience con N
 Select employee_id, first_name
 from employees
 where first_name like 'N%' or first_name like 'n%';
 
 --funciones de agregacion - operaciones de resumen
 --contar las ordenes 
 Select count(*) as contador
 from orders
 --contar las ordenes por empleados
 Select employee_id, count(order_id) as contador
 from orders
 group by employee_id
 order by contador desc
 
 --Obtener los ids y nombres de las tablas de Categorias y Productos
 Select product_id, product_name, p.category_id, category_name
 from products as p
 inner join 
 Categories C
 on p.category_id = c.category_id
 
 --Obtener las ordenes su id, empleado id y su nombre completo
 Select order_id, o.employee_id, concat(first_name,' ',last_name) as nombre_completo
 from employees e
 inner join orders o
 on e.employee_id = o.employee_id
 
 
 
 
 
 
 
 
