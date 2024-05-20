-- cursor para listar libros de un autor específico
declare
    cursor libros_autor IS
        select título from Libros where id_autor = 1;
    libro_título Libros.título%type;
begin
    open libros_autor;
    loop
        fetch libros_autor into libro_título;
        EXIT when libros_autor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Libro: ' || libro_título);
    end loop;
    close libros_autor;
end;
/

-- cursor para listar préstamos de un usuario específico
declare
    cursor prestamos_usuario IS
        select id_libro, fecha_prestamo, fecha_devolucion from Préstamos where id_usuario = 1;
    prestamo_record prestamos_usuario%ROWtype;
begin
    open prestamos_usuario;
    loop
        fetch prestamos_usuario into prestamo_record;
        EXIT when prestamos_usuario%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Préstamo: ' || prestamo_record.id_libro || ', Fecha: ' || prestamo_record.fecha_prestamo);
    end loop;
    close prestamos_usuario;
end;
/
