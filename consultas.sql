-- Consulta de todos los libros
select * from libros;

-- Consulta de todos los autores
select * from autores;

-- Consulta de todos los usuarios
select * from usuarios;

-- Consulta de préstamos activos
select * from prestamos where fecha_devolucion is null;

-- Consulta de multas
select * from multas;
