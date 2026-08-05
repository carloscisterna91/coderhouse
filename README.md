🛒 Sistema de Gestión de Ventas - Base de Datos SQL
📝 Descripción
Este proyecto contiene el script de inicialización (DDL y DML) para una base de datos relacional en SQL Server llamada CarlosCisterna. El modelo está diseñado para gestionar y registrar las operaciones comerciales básicas de un negocio, conectando a los clientes, el inventario de productos y el equipo de vendedores a través de una tabla central de transacciones.

🗄️ Estructura del Modelo de Datos (Esquema)
El modelo consta de 4 tablas principales con sus respectivas relaciones (Foreign Keys) para garantizar la integridad referencial:

Clientes (Dimensión): Almacena el registro de los compradores.

Columnas: id (PK), nombre, apellido.

productos (Dimensión): Catálogo de artículos disponibles y sus precios de lista.

Columnas: id (PK), producto, unidades, precio.

vendedores (Dimensión): Equipo comercial autorizado para realizar las ventas.

Columnas: id_vendedores (PK), nombre, apellido.

Ventas (Tabla de Hechos/Fact): Tabla transaccional que registra cada operación.

Columnas: id_venta (PK), id_cliente (FK), id_producto (FK), id_vendedor (FK), fecha_venta, cantidad, importe, descripcion.

⚡ Columna Calculada: Incluye un campo automático total generado a partir de la fórmula (cantidad * importe).

🚀 Instalación y Uso
Para desplegar este modelo en tu entorno local (ej. SQL Server Management Studio):

Copia el script SQL provisto.

Ejecuta el primer bloque para crear la base de datos:

SQL
CREATE DATABASE CarlosCisterna;
USE CarlosCisterna;
Ejecuta el resto del script para crear las tablas, establecer las relaciones (Constraints) e insertar los datos de prueba iniciales (Data seeding).

📊 Consultas de Prueba Incluidas
El script también incluye una serie de consultas predefinidas para testear el filtrado de datos:

Consultas Generales: Vista completa de todas las tablas (Clientes, Productos, Vendedores y Ventas).

Filtros de Fecha y Vendedor: Búsqueda de transacciones realizadas en una fecha exacta (20260805) por un vendedor específico (ID: 5).

Filtros con Múltiples Condiciones (OR / AND): Búsqueda de ventas realizadas por los vendedores 2 o 5, cuyo importe total supere los $10.000.

Filtros por Nulos: Búsqueda de ventas que contengan observaciones en la columna descripción (IS NOT NULL).
