-- Actualizar título de un libro
update Libros set título = 'Cien Años de Soledad (Revised Edition)' where id_libro = 1;

-- Actualizar nombre de un autor
update Autores set nombre = 'Gabriel José' where id_autor = 1;

-- Actualizar email de un usuario
update Usuarios set email = 'juan.perez.updated@example.com' where id_usuario = 1;

-- Actualizar fecha de devolución de un préstamo
update Préstamos set fecha_devolucion = TO_DATE('2023-05-20', 'YYYY-MM-DD') where id_prestamo = 1;

-- Actualizar monto de una multa
update Multas set monto = 60.00 where id_multa = 1;