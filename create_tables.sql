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