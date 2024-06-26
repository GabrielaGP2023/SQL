--Operaciones de Agregacion
--sum()
--min()
--max()
--avg()
--count()
select * from categories;
select count(*) from categories;
select count(category_name) from categories;

select * from employees;
select count(*) from employees;
select count(region) from employees;

select sum(units_in_stock) from products;

select avg(unit_price) from products;

select min(unit_price), max(unit_price), product_name from products;
