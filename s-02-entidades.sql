--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  28/05/2024
--@Descripcion:     Creacion tablas del modelo relacional

Prompt Conectando como cc_proy_admin
conn cc_proy_admin/cc
Prompt Creando Centro_Operaciones
CREATE TABLE CENTRO_OPERACIONES (
    centro_operaciones_id number(10,0) primary key,
    clave varchar2(26) not null,
    direccion varchar2(255) not null,
    latitud varchar2(11) not null,
    longitud varchar2(12) not null,
    num_telefono varchar2(13) not null,
    es_farmacia number(1) not null,
    es_almacen number(1) not null,
    es_oficina number(1) not null
);

Prompt Creando Empleado
CREATE TABLE EMPLEADO(
    empleado_id number(10,0) primary key,
    centro_operaciones_id number(10,0) not null,
    nombre varchar2(60) not null,
    apellido_paterno varchar2(60) not null,
    apellido_materno varchar2(60) not null,
    fecha_ingreso date default sysdate null,
    RFC char(13) not null,
    CONSTRAINT empleado_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
    REFERENCES CENTRO_OPERACIONES(centro_operaciones_id)
);

Prompt Creando Farmacia
CREATE TABLE FARMACIA(
    centro_operaciones_id number(10,0) not null,
    rfc_fiscal varchar2(13) not null,
    direccion_web varchar2(255) not null,
    gerente_id number(10,0) not null CONSTRAINT farmacia_gerente_id_uk UNIQUE,
    CONSTRAINT farmacia_rfc_fiscal_chk check ((length(rfc_fiscal) <= 13) and (length(rfc_fiscal) >= 12)),
    CONSTRAINT farmacia_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
        REFERENCES centro_operaciones(centro_operaciones_id),
    CONSTRAINT farmacia_gerente_id_fk FOREIGN KEY(gerente_id)
        REFERENCES empleado(empleado_id),
    CONSTRAINT farmacia_pk PRIMARY KEY(centro_operaciones_id)
);

Prompt Creando Oficina
CREATE TABLE OFICINA(
    centro_operaciones_id number(10,0) not null,
    clave_presupuestal varchar2(26) not null,
    nombre_oficina varchar2(60) not null,
    num_telefonico_call_center varchar2(13) not null,
    CONSTRAINT oficina_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
        REFERENCES centro_operaciones(centro_operaciones_id),
    CONSTRAINT oficina_pk PRIMARY KEY(centro_operaciones_id)
);

Prompt Creando Almacen
CREATE TABLE ALMACEN(
    centro_operaciones_id number(10,0) not null,
    almacen_contingencia_id number(10,0) null,
    documento blob not null,
    tipo char(1) not null,
    CONSTRAINT almacen_tipo_chk CHECK (tipo in ('M', 'D','C')),
    CONSTRAINT almacen_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
        REFERENCES centro_operaciones(centro_operaciones_id),
    CONSTRAINT almacen_pk PRIMARY KEY(centro_operaciones_id),
    CONSTRAINT almacen_almacen_contingencia_id_fk FOREIGN KEY(almacen_contingencia_id)
        REFERENCES almacen(centro_operaciones_id)
);

Prompt Creando Medicamento
CREATE TABLE MEDICAMENTO(
    medicamento_id number(10,0) primary key,
    sustancia_activa varchar2(255) not null,
    descripcion varchar2(150) not null
);

Prompt Creando Lista_Medicamentos_Nombres
CREATE TABLE LISTA_MEDICAMENTOS_NOMBRES(
    lista_medicamentos_nombres_id number(10,0) primary key,
    nombre varchar2(100) not null,
    medicamento_id number(10,0) not null,
    CONSTRAINT lista_medicamentos_nombres_medicamento_id_fk FOREIGN KEY(medicamento_id)
        REFERENCES medicamento(medicamento_id)
);

Prompt Creando Presentacion
CREATE TABLE PRESENTACION(
    presentacion_id number(10,0) primary key,
    cantidad number(5,0)
);

Prompt Creando Medicamento_Presentacion
CREATE TABLE MEDICAMENTO_PRESENTACION(
    medicamento_presentacion_id number(10,0) not null,
    medicamento_id number(10,0) not null,
    presentacion_id number(10,0) not null,
    CONSTRAINT medicamento_presentacion_pk PRIMARY KEY(medicamento_presentacion_id),
    CONSTRAINT medicamento_presentacion_medicamento_id_fk FOREIGN KEY(medicamento_id)
        REFERENCES medicamento(medicamento_id),
    CONSTRAINT medicamento_presentacion_presentacion_id_fk FOREIGN KEY(presentacion_id)
        REFERENCES presentacion(presentacion_id)
);

Prompt Creando Inventario_Farmacia
CREATE TABLE INVENTARIO_FARMACIA(
    farmacia_inventario_id number(10,0) primary key,
    unidades number(3,0) not null,
    medicamento_presentacion_id number(10,0) not null,
    centro_operaciones_id number(10,0) not null,
    CONSTRAINT inventario_farmacia_medicamento_presentacion_id_fk FOREIGN KEY(medicamento_presentacion_id)
        REFERENCES medicamento_presentacion(medicamento_presentacion_id),
    CONSTRAINT inventario_farmacia_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
        REFERENCES centro_operaciones(centro_operaciones_id)
);

Prompt Creando Evento
CREATE TABLE EVENTO(
    evento_id number(10,0) primary key,
    tipo varchar2(50) not null,
    fecha date default sysdate not null,
    empleado_id number(10,0) not null,
    CONSTRAINT evento_empleado_id_fk FOREIGN KEY(empleado_id)
        REFERENCES empleado(empleado_id)
);

Prompt Creando Evento_Medicamento
CREATE TABLE EVENTO_MEDICAMENTO(
    evento_id number(10,0) not null,
    centro_operaciones_id number(10,0) not null,
    medicamento_presentacion_id number(10,0) not null,
    unidades number(10,0) not null,
    CONSTRAINT evento_medicamento_evento_id_fk FOREIGN KEY(evento_id)
        REFERENCES evento(evento_id),
    CONSTRAINT evento_medicamento_centro_operaciones_id_fk FOREIGN KEY(centro_operaciones_id)
        REFERENCES centro_operaciones(centro_operaciones_id),
    CONSTRAINT evento_medicamento_medicamento_presentacion_id_fk FOREIGN KEY(medicamento_presentacion_id)
        REFERENCES medicamento_presentacion(medicamento_presentacion_id),
    CONSTRAINT evento_medicamento_pk primary key(evento_id, centro_operaciones_id)
);

Prompt Creando Cliente
CREATE TABLE CLIENTE(
    cliente_id number(10,0) not null,
    RFC char(18) not null,
    nombre varchar2(60) not null,
    apellido_paterno varchar2(60) not null,
    apellido_materno varchar2(60) null,
    correo varchar2(70) not null,
    num_telefono varchar2(10) not null,
    direccion_envio varchar2(255) not null,
    CURP char(18) null,
    CONSTRAINT cliente_pk PRIMARY KEY(cliente_id),
    CONSTRAINT cliente_num_telefono_chk CHECK (length(num_telefono) = 10)
);

Prompt Creando Tarjeta_Credito
CREATE TABLE TARJETA_CREDITO(
    cliente_id number(10,0) not null,
    num_tarjeta number(20,0) not null CONSTRAINT tarjeta_credito_num_tarjeta_uk UNIQUE,
    mes_expiracion char(2) not null,
    anio_expiracion char(2) not null,
    CONSTRAINT tarjeta_credito_pk PRIMARY KEY(cliente_id),
    CONSTRAINT tarjeta_credito_cliente_id_fk FOREIGN KEY(cliente_id) REFERENCES cliente(cliente_id)
);

Prompt Creando Estado_pedido
CREATE TABLE ESTADO_PEDIDO(
    estado_pedido_id number(10,0) not null,
    clave varchar2(40) not null,
    descripcion varchar2(255) not null,
    CONSTRAINT estado_pedido_pk PRIMARY KEY(estado_pedido_id),
    CONSTRAINT estado_pedido_chk CHECK 
        (clave in ('CAPTURADO', 'EN TRÁNSITO', 'ENTREGADO', 'DEVUELTO', 'CANCELADO'))
);

Prompt Creando Pedido
CREATE TABLE PEDIDO(
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
);


Prompt Historial_estado_pedido
CREATE TABLE HISTORIAL_ESTADO_PEDIDO(
    historial_estado_pedido_id number(10,0) not null,
    pedido_id number(10,0) not null,
    estado_pedido_id number(10,0) not null,
    fecha date default sysdate not null,
    CONSTRAINT historial_estado_pedido_pk PRIMARY KEY(historial_estado_pedido_id),
    CONSTRAINT historial_estado_pedido_pedido_id_fk FOREIGN KEY(pedido_id)
        REFERENCES pedido(pedido_id),
    CONSTRAINT historial_estado_pedido_estado_pedido_id_fk FOREIGN KEY(estado_pedido_id)
        REFERENCES estado_pedido(estado_pedido_id)
);

Prompt Creando Detalle_pedido
CREATE TABLE DETALLE_PEDIDO(
    detalle_pedido_id number(10,0) primary key,
    unidades_medicamento number(10,0) not null,
    pedido_id number(10,0) not null,
    medicamento_presentacion_id number(10,0) not null,
    farmacia_id number(10,0) not null,
    CONSTRAINT detalle_pedido_pedido_id_fk FOREIGN KEY(pedido_id)
        REFERENCES pedido(pedido_id),
    CONSTRAINT detalle_pedido_medicamento_presentacion_id_fk FOREIGN KEY(medicamento_presentacion_id)
        REFERENCES medicamento_presentacion(medicamento_presentacion_id),
    CONSTRAINT detalle_pedido_farmacia_id_fk FOREIGN KEY(farmacia_id)
        REFERENCES centro_operaciones(centro_operaciones_id)
);

Prompt Creando Ubicacion
CREATE TABLE UBICACION(
    ubicacion_id number(10,0) PRIMARY KEY,
    latitud varchar(20) not null,
    longitud varchar(20) not null
);

Prompt Creando Detalle_pedido_ubicacion
CREATE TABLE DETALLE_PEDIDO_UBICACION(
    detalle_pedido_ubicacion_id number(10,0) primary key,
    ubicacion_id number(10,0) not null,
    detalle_pedido_id number(10,0) not null,
    CONSTRAINT detalle_pedido_ubicacion_detalle_pedido_id_fk FOREIGN KEY(detalle_pedido_id)
        REFERENCES detalle_pedido(detalle_pedido_id),
    CONSTRAINT detalle_pedido_ubicacion_ubicacion_id_fk FOREIGN KEY(ubicacion_id)
        REFERENCES ubicacion(ubicacion_id)
);