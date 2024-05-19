-- Consulta de libros con nombre de autor
select L.título, A.nombre, A.apellido
from Libros L
join Autores A on L.id_autor = A.id_autor;

-- Consulta de préstamos con información de libros y usuarios
select P.fecha_prestamo, P.fecha_devolucion, L.título, U.nombre, U.apellido
from Préstamos P
join Libros L on P.id_libro = L.id_libro
join Usuarios U on P.id_usuario = U.id_usuario;

-- Consulta de multas con información de usuarios
select M.monto, M.fecha_multa, U.nombre, U.apellido
from Multas M
join Usuarios U on M.id_usuario = U.id_usuario;

-- Consulta de libros y sus categorías
select L.título, C.nombre_categoria
from Libros L
join Categorías C on L.id_categoria = C.id_categoria;

-- Consulta de libros y autores de una categoría específica
select L.título, A.nombre, A.apellido
from Libros L
join Autores A on L.id_autor = A.id_autor
join Categorías C on L.id_categoria = C.id_categoria
where C.nombre_categoria = 'Fantasía';

-- Consulta de usuarios y sus préstamos
select U.nombre, U.apellido, P.fecha_prestamo, P.fecha_devolucion
from Usuarios U
join Préstamos P on U.id_usuario = P.id_usuario;

-- Consulta de usuarios y sus multas
select U.nombre, U.apellido, M.monto, M.fecha_multa
from Usuarios U
join Multas M on U.id_usuario = M.id_usuario;

-- Consulta de libros prestados con información de usuarios
select L.título, U.nombre, U.apellido
from Libros L
join Préstamos P on L.id_libro = P.id_libro
join Usuarios U on P.id_usuario = U.id_usuario;

-- Consulta de autores con sus libros
select A.nombre, A.apellido, L.título
from Autores A
join Libros L on A.id_autor = L.id_autor;

-- Consulta de usuarios con número de préstamos
select U.nombre, U.apellido, COUNT(P.id_prestamo) AS numero_prestamos
from Usuarios U
join Préstamos P on U.id_usuario = P.id_usuario
group by U.nombre, U.apellido;
