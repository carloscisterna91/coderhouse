Create database CarlosCisterna
Use CarlosCisterna

--gestion de ventas 

create table Clientes
( id int not null primary key identity (1,1)
 ,nombre varchar(50)
 ,apellido varchar (50)
 
)

insert into Clientes(nombre,apellido) 
values
('lionel', 'messi'),
('diego', 'maradona'),
('angel', 'di maria'),
('julian', 'alvarez'),
('enzo', 'fernandez')





Create table productos 
(id int not null primary key identity(1,1)
,producto varchar(50)
,unidades int
,precio money
)



insert into productos(producto,unidades,precio) 
values ('pelota',10,70000)
,('camiseta seleccion',10,150000)
,('short seleccion',20,50000)
,('botines',50,45000)
,('canilleras',15,10000)



create table vendedores(
	id_vendedores int not null primary key identity (1,1)
	,nombre varchar(50)
	,apellido varchar(50)
)

insert into vendedores (nombre,apellido) values 
('Carlos','Cisterna'),
('Mario','Patriarca'),
('Facundo','Patriarca'),
('Graciela','Cisterna'),
('Mariana','Rodriguez')


CREATE TABLE Ventas (
    id_venta int not null primary key identity(1,1),
    id_cliente int not null,
    id_producto int not null,
    id_vendedor int not null,
    fecha_venta date not null, 
    cantidad int not null,
    importe int not null,
    descripcion varchar(1000),
   
    total AS (cantidad * importe), 

  
    constraint fk_cliente foreign key (id_cliente) references clientes(id),
    constraint fk_productos foreign key (id_producto) references productos(id),
    constraint fk_vendedores foreign key (id_vendedor) references vendedores(id_vendedores)
)

insert into		Ventas  (id_cliente,id_producto,id_vendedor,fecha_venta,cantidad,importe,descripcion)	
				values  (1,1,1,'20260805',4,70000,null),
						(3,2,2,'20260805',2,150000,null),
						(4,3,4,'20260805',1,50000,null),
						(2,5,3,'20260805',4,10000,null),
						(5,4,5,'20260805',4,45000,null)







