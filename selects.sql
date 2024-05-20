-- Subselect para encontrar libros de un autor específico
select * from Libros where id_autor = (select id_autor from Autores where nombre = 'Gabriel');

-- Subselect para encontrar préstamos de un usuario específico
select * from Préstamos where id_usuario = (select id_usuario from Usuarios where nombre = 'Juan');

-- Subselect para encontrar multas de un usuario específico
select * from Multas where id_usuario = (select id_usuario from Usuarios where nombre = 'Juan');

-- Subselect para encontrar libros en una categoría específica
select * from Libros where id_categoria = (select id_categoria from Categorías where nombre_categoria = 'Novela');

-- Subselect para encontrar usuarios con préstamos activos
select * from Usuarios where id_usuario in (select id_usuario from Préstamos where fecha_devolucion is null);

-- seleccionar todos los autores
select * from autores;

-- seleccionar todas las categorías
select * from categorias;

-- seleccionar todos los libros
select * from libros;

-- seleccionar todos los usuarios
select * from usuarios;

-- seleccionar todos los préstamos
select * from prestamos;

-- seleccionar todas las multas
select * from multas;