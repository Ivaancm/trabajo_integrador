-- Consulta de todos los libros
select * from Libros;

-- Consulta de todos los autores
select * from Autores;

-- Consulta de todos los usuarios
select * from Usuarios;

-- Consulta de préstamos activos
select * from Préstamos where fecha_devolucion is null;

-- Consulta de multas
select * from Multas;
