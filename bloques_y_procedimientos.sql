-- Bloque para mostrar todos los libros
begin
    for rec in (select * from libros) loop
        DBMS_OUTPUT.PUT_Line('Libro: ' || rec.título);
    end loop;
end;
/

-- Bloque para mostrar todos los autores
begin
    for rec in (select * from autores) loop
        DBMS_OUTPUT.PUT_Line('Autor: ' || rec.nombre || ' ' || rec.apellido);
    end loop;
end;
/

-- Bloque para mostrar usuarios con multas
begin
    for rec in (select U.nombre, U.apellido, M.monto
                from usuarios U
                join multas M ON U.id_usuario = M.id_usuario) loop
        DBMS_OUTPUT.PUT_Line('Usuario: ' || rec.nombre || ' ' || rec.apellido || ', Multa: ' || rec.monto);
    end loop;
end;
/

-- Bloque para mostrar libros prestados y sus usuarios
begin
    for rec in (select L.título, U.nombre, U.apellido
                from libros L
                join prestamos P ON L.id_libro = P.id_libro
                join usuarios U ON P.id_usuario = U.id_usuario) loop
        DBMS_OUTPUT.PUT_Line('Libro: ' || rec.título || ', Usuario: ' || rec.nombre || ' ' || rec.apellido);
    end loop;
end;
/

-- Bloque para mostrar categorías y sus libros
begin
    for rec in (select C.nombre_categoria, L.título
                from categorías C
                join libros L ON C.id_categoria = L.id_categoria) loop
        DBMS_OUTPUT.PUT_LinE('Categoría: ' || rec.nombre_categoria || ', Libro: ' || rec.título);
    end loop;
end;
/
