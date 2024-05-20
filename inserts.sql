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

-- insertar datos en autores
insert into autores (id_autor, nombre, apellido) values (5, 'leo', 'tolstoy');
insert into autores (id_autor, nombre, apellido) values (6, 'fyodor', 'dostoevsky');
insert into autores (id_autor, nombre, apellido) values (7, 'jane', 'austen');
insert into autores (id_autor, nombre, apellido) values (8, 'mark', 'twain');

-- insertar datos en categorias
insert into categorias (id_categoria, nombre_categoria) values (5, 'clásico');
insert into categorias (id_categoria, nombre_categoria) values (6, 'aventura');
insert into categorias (id_categoria, nombre_categoria) values (7, 'misterio');
insert into categorias (id_categoria, nombre_categoria) values (8, 'histórico');

-- insertar datos en libros
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (5, 'guerra y paz', to_date('1869-01-01', 'yyyy-mm-dd'), 5, 5);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (6, 'crimen y castigo', to_date('1866-01-01', 'yyyy-mm-dd'), 6, 5);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (7, 'orgullo y prejuicio', to_date('1813-01-28', 'yyyy-mm-dd'), 7, 5);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (8, 'las aventuras de tom sawyer', to_date('1876-01-01', 'yyyy-mm-dd'), 8, 6);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (9, 'anna karenina', to_date('1878-01-01', 'yyyy-mm-dd'), 5, 8);
insert into libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) values (10, 'el idiota', to_date('1869-01-01', 'yyyy-mm-dd'), 6, 5);

-- insertar datos en usuarios
insert into usuarios (id_usuario, nombre, apellido, email) values (5, 'luis', 'ramirez', 'luis.ramirez@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (6, 'clara', 'fernandez', 'clara.fernandez@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (7, 'pedro', 'gomez', 'pedro.gomez@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (8, 'laura', 'ruiz', 'laura.ruiz@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (9, 'sofia', 'martinez', 'sofia.martinez@example.com');
insert into usuarios (id_usuario, nombre, apellido, email) values (10, 'miguel', 'sanchez', 'miguel.sanchez@example.com');

-- insertar datos en prestamos
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (5, 5, 5, to_date('2023-06-10', 'yyyy-mm-dd'), to_date('2023-06-24', 'yyyy-mm-dd'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (6, 6, 6, to_date('2023-06-11', 'yyyy-mm-dd'), to_date('2023-06-25', 'yyyy-mm-dd'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (7, 7, 7, to_date('2023-06-12', 'yyyy-mm-dd'), to_date('2023-06-26', 'yyyy-mm-dd'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (8, 8, 8, to_date('2023-06-13', 'yyyy-mm-dd'), to_date('2023-06-27', 'yyyy-mm-dd'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (9, 9, 9, to_date('2023-06-14', 'yyyy-mm-dd'), to_date('2023-06-28', 'yyyy-mm-dd'));
insert into prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) values (10, 10, 10, to_date('2023-06-15', 'yyyy-mm-dd'), to_date('2023-06-29', 'yyyy-mm-dd'));

-- insertar datos en multas
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (5, 5, 70.00, to_date('2023-06-30', 'yyyy-mm-dd'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (6, 6, 80.00, to_date('2023-07-01', 'yyyy-mm-dd'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (7, 7, 90.00, to_date('2023-07-02', 'yyyy-mm-dd'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (8, 8, 100.00, to_date('2023-07-03', 'yyyy-mm-dd'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (9, 9, 110.00, to_date('2023-07-04', 'yyyy-mm-dd'));
insert into multas (id_multa, id_usuario, monto, fecha_multa) values (10, 10, 120.00, to_date('2023-07-05', 'yyyy-mm-dd'));
