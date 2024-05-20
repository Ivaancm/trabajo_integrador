-- Procedimiento para insertar un nuevo libro
create or replace procedure insertarLibro (
    p_id_libro in Libros.id_libro%type,
    p_título in Libros.título%type,
    p_fecha_publicación in Libros.fecha_publicación%type,
    p_id_autor in Libros.id_autor%type,
    p_id_categoria in Libros.id_categoria%type
) IS
begin
    insert into Libros (id_libro, título, fecha_publicación, id_autor, id_categoria)
    values (p_id_libro, p_título, p_fecha_publicación, p_id_autor, p_id_categoria);
end;
/

-- crear un procedimiento para insertar una nueva multa
create or replace procedure insertar_multa(
    p_id_multa in multas.id_multa%type,
    p_id_usuario in multas.id_usuario%type,
    p_monto in multas.monto%type,
    p_fecha_multa in multas.fecha_multa%type
)
is
begin
    insert into multas (id_multa, id_usuario, monto, fecha_multa)
    values (p_id_multa, p_id_usuario, p_monto, p_fecha_multa);
end;
/

-- ejecutar el procedimiento para insertar una nueva multa
begin
    insertar_multa(11, 5, 130.00, to_date('2023-07-06', 'yyyy-mm-dd'));
end;
/
