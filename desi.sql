create table autores (
    id_autor int primary key,
    nombre varchar2(100),
    apellido varchar2(100)
);

create table categorias (
    id_categoria int primary key,
    nombre_categoria varchar(100)
);

create table libros (
    id_libro int primary key,
    titulo varchar2(255),
    fecha_publicacion date,
    id_autor int,
    id_categoria int,
    foreign key (id_autor) references autores(id_autor),
    foreign key (id_categoria) references categorias(id_categoria)
);

create table usuarios (
    id_usuario int primary key,
    nombre varchar2(100),
    apellido varchar2(100),
    email varchar2(100)
);

create table prestamos (
    id_prestamo int primary key,
    id_libro int,
    id_usuario int,
    fecha_prestamo date,
    fecha_devolucion date,
    foreign key (id_libro) references libros(id_libro),
    foreign key (id_usuario) references usuarios(id_usuario)
);

create table multas (
    id_multa int primary key,
    id_usuario int,
    monto decimal(10, 2),
    fecha_multa date,
    foreign key (id_usuario) references usuarios(id_usuario)
);

-- Insertar datos en autores
INSERT INTO autores (id_autor, nombre, apellido) VALUES (3, 'Isabel', 'Allende');
INSERT INTO autores (id_autor, nombre, apellido) VALUES (4, 'George', 'Orwell');

-- Insertar datos en categorias
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (3, 'Ciencia Ficción');
INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (4, 'Poesía');

-- Insertar datos en libros
INSERT INTO libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) VALUES (3, 'La Casa de los Espíritus', TO_DATE('1982-01-01', 'YYYY-MM-DD'), 3, 3);
INSERT INTO libros (id_libro, titulo, fecha_publicacion, id_autor, id_categoria) VALUES (4, '1984', TO_DATE('1949-06-08', 'YYYY-MM-DD'), 4, 3);

-- Insertar datos en usuarios
INSERT INTO usuarios (id_usuario, nombre, apellido, email) VALUES (3, 'Carlos', 'Lopez', 'carlos.lopez@example.com');
INSERT INTO usuarios (id_usuario, nombre, apellido, email) VALUES (4, 'Ana', 'Martinez', 'ana.martinez@example.com');

-- Insertar datos en prestamos
INSERT INTO prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) VALUES (3, 3, 3, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-06-15', 'YYYY-MM-DD'));
INSERT INTO prestamos (id_prestamo, id_libro, id_usuario, fecha_prestamo, fecha_devolucion) VALUES (4, 4, 4, TO_DATE('2023-06-02', 'YYYY-MM-DD'), TO_DATE('2023-06-16', 'YYYY-MM-DD'));

-- Insertar datos en multas
INSERT INTO multas (id_multa, id_usuario, monto, fecha_multa) VALUES (3, 3, 60.00, TO_DATE('2023-06-20', 'YYYY-MM-DD'));
INSERT INTO multas (id_multa, id_usuario, monto, fecha_multa) VALUES (4, 4, 40.00, TO_DATE('2023-06-21', 'YYYY-MM-DD'));


select * from autores;
select * from categorias;
select * from usuarios;
select * from libros;
select * from multas;
select * from prestamos;