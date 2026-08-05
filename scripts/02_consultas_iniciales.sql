Use CarlosCisterna

select * from Clientes 
select * from productos
select * from vendedores
select * from ventas

select * from ventas where fecha_venta = '20260805' and id_vendedor = 5 

select * from ventas where  id_vendedor = 5 or id_vendedor = 2 and total > 10000

select * from ventas where descripcion is not null and total > 1000