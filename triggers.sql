-- Trigger para registrar fecha de creación de un libro
create or replace trigger BeforeInsertLibro
before insert on Libros
for EACH row
begin
    :NEW.fecha_creacion := sysdate;
end;
/

-- Trigger para actualizar cantidad de libros prestados
create or replace trigger AfterInsertPrestamo
after insert on Préstamos
for EACH row
begin
    update Libros set cantidad_prestados = cantidad_prestados + 1 where id_libro = :NEW.id_libro;
end;
/

-- crear un trigger para actualizar la fecha de devolución en préstamos
create or replace trigger trg_actualiza_fecha_devolucion
before insert on prestamos
for each row
begin
    :new.fecha_devolucion := :new.fecha_prestamo + 14;
end;
/
