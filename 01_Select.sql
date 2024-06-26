--Obtener informacion de una tabla todas las filas y todas las columnas
Select * from products;

--Obtener todas la categorias
Select * from categories;

--Obtener todas las ordenes
Select * from orders;

--Obtener los productos con las columnas de id, nombre, precio
Select product_id, product_name, unit_price from products;

--Obtener de las ordenes el id, las fechas
Select order_id,order_date, required_date,shipped_date from orders;

--Obtener los productos cuya categoria sea 3
Select product_id,product_name,category_id from products 
where category_id=3;

--Obtener los productos cuyo precio sea mayor a 50
Select product_id,product_name,category_id,unit_price from products 
where unit_price>50;

--Obtener los productos cuyo precio sea menor a 25
Select product_id,product_name,category_id,unit_price from products 
where unit_price<25;

--Obtener los productos cuya categoría es 5, 7,2 
Select product_id,product_name,category_id,unit_price from products 
where category_id in (5,7,2); 

--Obtener los productos cuya provedor sea 3,5,10 
Select product_id,product_name,category_id,unit_price from products 
where supplier_id in (3,5,10); 

--Obtener los productos cuya precio esté entre 5 y 10 
Select product_id,product_name,category_id,unit_price from products 
where unit_price between 5 and 10; 

--Obtener los productos cuyas categorias esten entre 3 y 8
Select product_id,product_name,category_id,unit_price from products 
where category_id between 3 and 8; 

--Obtener los productos ordenados por nombre
Select product_id,product_name,category_id,unit_price from products 
order by product_name; 

--Obtener los productos ordenados por precio de forma descendente
Select product_id,product_name,category_id,unit_price 
from products 
order by unit_price desc; 

--Obtener los productos que comiencen por A
Select product_id,product_name,category_id,unit_price 
from products 
where product_name like 'A%';

select * from customers;
--Obtener la clave del cliente cuando sus dos posiciones comiencen por 
--AN
Select * from customers
where customer_id like 'AN___';

--Nombres de productos que contengan w
select * from products
where product_name like '%w%';

--Nombres de productos cuya segunda letra sea o
select * from products
where product_name like '_o%';








