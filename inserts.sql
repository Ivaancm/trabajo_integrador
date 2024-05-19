-- Insertar datos en autores
insert into autores (id_autor, nombre, apellido) values (3, 'Isabel', 'Allende');
insert into autores (id_autor, nombre, apellido) values (4, 'George', 'Orwell');

-- Insertar datos en categorias
insert into categorias (id_categoria, nombre_categoria) values (3, 'Ciencia Ficción');
insert into categorias (id_categoria, nombre_categoria) values (4, 'Poesía');

-- Insertar datos en libros
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (3, 'La Casa de los Espíritus', TO_DATE('1982-01-01', 'YYYY-MM-DD'), 3, 3);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (4, '1984', TO_DATE('1949-06-08', 'YYYY-MM-DD'), 4, 3);

-- Insertar datos en usuarios
insert into usuarios (id_usuario, nombre, apellido, email) values (3, 'Carlos', 'Lopez', 'carlos.lopez@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (4, 'Ana', 'Martinez', 'ana.martinez@example.com');

-- Insertar datos en prestamos
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (3, 3, 3, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-06-15', 'YYYY-MM-DD'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (4, 4, 4, TO_DATE('2023-06-02', 'YYYY-MM-DD'), TO_DATE('2023-06-16', 'YYYY-MM-DD'));

-- Insertar datos en multas
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (3, 3, 60.00, TO_DATE('2023-06-20', 'YYYY-MM-DD'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (4, 4, 40.00, TO_DATE('2023-06-21', 'YYYY-MM-DD'));