# Proyecto de Base de Datos en Oracle SQLDeveloper

Este proyecto contiene diversos scripts SQL para la creación, gestión y manipulación de una base de datos en Oracle SQLDeveloper. A continuación, se describen los archivos incluidos y su propósito.

## Archivos y Descripción

### 1. `create_tables.sql`
Este script contiene las sentencias SQL para la creación de las tablas de la base de datos. Define las estructuras de las tablas, sus columnas, y las restricciones (como claves primarias y foráneas).

**Contenido:**
- Definición de tablas `Libros`, `Autores`, `Usuarios`, `Préstamos`, `Categorías`, y `Multas`.
- Restricciones de integridad referencial.

### 2. `inserts.sql`
Este script incluye las sentencias SQL necesarias para insertar datos iniciales en las tablas creadas. Estos datos son esenciales para probar las consultas y las operaciones de la base de datos.

**Contenido:**
- Inserciones en tablas `Autores`, `Categorías`, `Libros`, `Usuarios`, `Préstamos`, y `Multas`.

### 3. `selects.sql`
Este archivo contiene consultas SQL básicas para recuperar datos de las tablas. Incluye sentencias `SELECT` que demuestran cómo acceder y visualizar la información almacenada.

**Contenido:**
- Consultas de selección simples para todas las tablas.
- Ejemplos de consultas con condiciones (`WHERE`).

### 4. `consultas.sql`
Este archivo contiene consultas SQL más complejas, incluyendo subconsultas (subselects) y consultas que involucran múltiples tablas (joins).

**Contenido:**
- Subselects para encontrar datos específicos basados en condiciones.
- Joins para combinar datos de múltiples tablas y obtener información integrada.

### 5. `bloques_y_procedimientos.sql`
Incluye ejemplos de bloques PL/SQL y procedimientos almacenados (stored procedures). Estos scripts muestran cómo encapsular lógica en bloques que pueden ser ejecutados en la base de datos.

**Contenido:**
- Bloques PL/SQL para mostrar información de las tablas.
- Procedimientos almacenados para operaciones comunes (por ejemplo, insertar un nuevo libro).

### 6. `cursores.sql`
Este archivo contiene ejemplos de cursores en PL/SQL. Los cursores permiten iterar sobre conjuntos de resultados de una consulta y procesar cada fila individualmente.

**Contenido:**
- Cursores para listar libros de un autor específico.
- Cursores para listar préstamos de un usuario específico.

### 7. `triggers.sql`
Contiene triggers que se ejecutan automáticamente en respuesta a eventos en la base de datos (por ejemplo, inserciones, actualizaciones, o eliminaciones).

**Contenido:**
- Triggers para registrar la fecha de creación de un libro.
- Triggers para actualizar la cantidad de libros prestados.

### 8. `multitabla.sql`
Este script incluye consultas que operan sobre múltiples tablas, demostrando el uso de joins y otras técnicas para obtener y manipular datos relacionados.

**Contenido:**
- Consultas complejas que involucran múltiples tablas para obtener informes detallados.

### 9. `procedimientos.sql`
Archivo dedicado a procedimientos almacenados en PL/SQL. Los procedimientos son similares a las funciones y permiten ejecutar bloques de código que pueden aceptar parámetros y devolver valores.

**Contenido:**
- Procedimientos para insertar datos, actualizar registros, y otras operaciones CRUD (Create, Read, Update, Delete).

## Cómo Utilizar Estos Scripts

1. **Crear Tablas:** Ejecuta `create_tables.sql` para crear todas las tablas necesarias en la base de datos.
2. **Insertar Datos:** Ejecuta `inserts.sql` para poblar las tablas con datos iniciales.
3. **Consultas Básicas:** Utiliza `selects.sql` para realizar consultas básicas y verificar que los datos se han insertado correctamente.
4. **Consultas Complejas:** Ejecuta `consultas.sql` y `multitabla.sql` para explorar datos más complejos y relaciones entre tablas.
5. **PL/SQL Bloques y Procedimientos:** Usa `bloques_y_procedimientos.sql` y `procedimientos.sql` para operaciones avanzadas y automatización de tareas.
6. **Cursores y Triggers:** Añade lógica adicional y validaciones automáticas con `cursores.sql` y `triggers.sql`.




