-- Consulta de libros con nombre de autor
select L.título, A.nombre, A.apellido
from libros L
join autores A on L.id_autor = A.id_autor;

-- Consulta de prestamos con información de libros y usuarios
select P.fecha_prestamo, P.fecha_devolucion, L.título, U.nombre, U.apellido
from prestamos P
join libros L on P.id_libro = L.id_libro
join usuarios U on P.id_usuario = U.id_usuario;

-- Consulta de multas con información de usuarios
select M.monto, M.fecha_multa, U.nombre, U.apellido
from multas M
join usuarios U on M.id_usuario = U.id_usuario;

-- Consulta de libros y sus categorias
select L.título, C.nombre_categoria
from libros L
join categorias C on L.id_categoria = C.id_categoria;

-- Consulta de libros y autores de una categoría específica
select L.título, A.nombre, A.apellido
from libros L
join autores A on L.id_autor = A.id_autor
join categorias C on L.id_categoria = C.id_categoria
where C.nombre_categoria = 'Fantasía';

-- Consulta de usuarios y sus prestamos
select U.nombre, U.apellido, P.fecha_prestamo, P.fecha_devolucion
from usuarios U
join prestamos P on U.id_usuario = P.id_usuario;

-- Consulta de usuarios y sus multas
select U.nombre, U.apellido, M.monto, M.fecha_multa
from usuarios U
join multas M on U.id_usuario = M.id_usuario;

-- Consulta de libros prestados con información de usuarios
select L.título, U.nombre, U.apellido
from libros L
join prestamos P on L.id_libro = P.id_libro
join usuarios U on P.id_usuario = U.id_usuario;

-- Consulta de autores con sus libros
select A.nombre, A.apellido, L.título
from autores A
join libros L on A.id_autor = L.id_autor;

-- Consulta de usuarios con número de prestamos
select U.nombre, U.apellido, COUNT(P.id_prestamo) AS numero_prestamos
from usuarios U
join prestamos P on U.id_usuario = P.id_usuario
group by U.nombre, U.apellido;

-- seleccionar todos los libros escritos por 'leo tolstoy'
select * from libros
where id_autor = (select id_autor from autores where nombre = 'leo' and apellido = 'tolstoy');

-- seleccionar todos los usuarios que tienen multas
select * from usuarios
where id_usuario in (select id_usuario from multas);

-- seleccionar todos los libros prestados por 'juan perez'
select * from libros
where id_libro in (select id_libro from prestamos where id_usuario = (select id_usuario from usuarios where nombre = 'juan' and apellido = 'perez'));

-- seleccionar todos los libros con el nombre del autor
select l.id_libro, l.titulo, a.nombre, a.apellido
from libros l
join autores a on l.id_autor = a.id_autor;

-- seleccionar todas las multas con el nombre del usuario
select m.id_multa, m.monto, u.nombre, u.apellido
from multas m
join usuarios u on m.id_usuario = u.id_usuario;

-- seleccionar todos los préstamos con el título del libro y el nombre del usuario
select p.id_prestamo, l.titulo, u.nombre, u.apellido, p.fecha_prestamo, p.fecha_devolucion
from prestamos p
join libros l on p.id_libro = l.id_libro
join usuarios u on p.id_usuario = u.id_usuario;
