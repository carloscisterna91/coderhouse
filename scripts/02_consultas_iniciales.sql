Use CarlosCisterna

select * from Clientes 
select * from productos
select * from vendedores
select * from ventas

select id_vendedor, SUM(total)importe from ventas group by id_vendedor order by importe desc