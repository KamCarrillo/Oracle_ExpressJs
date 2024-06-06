--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  28/05/2024
--@Descripcion:     Escenario tablas temporales. 
--@Caso: El contenido del pedido de cada usuario es almacenado en una tabla temporal hasta que el usuario decide realizarlo y
--       los datos son insertados en la tabla permanente. (Procedimiento almacenado)

Prompt Creando Pedido_temp
CREATE GLOBAL TEMPORARY TABLE PEDIDO_TEMP(
    pedido_id number(10,0) not null,
    ubicacion varchar2(255), 
    fecha_estatus date not null,
    fecha_pedido date default sysdate not null,
    folio varchar2(13) not null,
    importe number(10,2) not null,
    cliente_id number(10,0) not null,
    estado_pedido_id number(10,0) not null,
    empleado_responsable_id number(10,0) not null,
    CONSTRAINT pedido_pk PRIMARY KEY(pedido_id),
    CONSTRAINT pedido_cliente_id_fk FOREIGN KEY(cliente_id)
        REFERENCES cliente(cliente_id),
    CONSTRAINT pedido_empleado_responsable_id_fk FOREIGN KEY(empleado_responsable_id)
        REFERENCES empleado(empleado_id),
    CONSTRAINT pedido_estado_pedido_id_fk FOREIGN KEY(estado_pedido_id)
        REFERENCES estado_pedido(estado_pedido_id)
) ON COMMIT DELETE ROWS;