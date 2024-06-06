--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  28/05/2024
--@Descripcion:     Creacion de indices para mejorar el desempeño de consultas

Prompt conectando con el usuario cc_proy_admin
conn cc_proy_admin/cc



-- 1. Índices Non Unique

-- Índice para el campo 'rfc_fiscal' de la tabla 'Farmacia'
CREATE INDEX farmacia_rfc_fiscal_ix ON farmacia(rfc_fiscal);

-- Índice para el campo 'email' de la tabla 'Cliente'
CREATE INDEX cliente_email_ix ON cliente(correo);

-- Índices para las llaves foráneas que participan en operaciones JOIN frecuentes

-- Índice para la llave foránea 'cliente_id' en la tabla 'Pedido'
CREATE INDEX pedido_cliente_id_ix ON pedido(cliente_id);

-- Índice para la llave foránea 'empleado_responsable_id' en la tabla 'Pedido'
CREATE INDEX pedido_empleado_responsable_id_ix ON pedido(empleado_responsable_id);

-- Índice para la llave foránea 'estado_pedido_id' en la tabla 'Pedido'
CREATE INDEX pedido_estado_pedido_id_ix ON pedido(estado_pedido_id);

-- Índice para la llave foránea 'medicamento_presentacion_id' en la tabla 'Inventario_Farmacia'
CREATE INDEX inventario_farmacia_medicamento_presentacion_id_ix ON Inventario_Farmacia(medicamento_presentacion_id);

-- Índice para la llave foránea 'centro_operaciones_id' en la tabla 'Inventario_Farmacia'
CREATE INDEX inventario_farmacia_centro_operaciones_id_ix ON Inventario_Farmacia(centro_operaciones_id);



-- 2. Índices Unique

-- Índice Unique para el campo 'RFC' de la tabla 'Cliente'
CREATE UNIQUE INDEX cliente_rfc_iuk ON Cliente(RFC);

-- 3. Índices compuestos tipo Unique

-- Índice Unique compuesto para la combinación de 'nombre' y 'fecha_ingreso' en la tabla 'Empleado'
CREATE UNIQUE INDEX empleado_nombre_fecha_ingreso_iuk ON Empleado(nombre, fecha_ingreso);

-- Índice Unique compuesto para la combinación de 'pedido_id' y 'medicamento_presentacion_id' en la tabla 'Detalle_Pedido'
CREATE UNIQUE INDEX detalle_pedido_pedido_medicamento_iuk ON Detalle_Pedido(pedido_id, medicamento_presentacion_id);


-- 4. Índices basados en funciones

-- Índice basado en función para convertir los nombres de los clientes a mayúsculas y mejorar la búsqueda
CREATE INDEX cliente_upper_nombre_iuk ON Cliente(UPPER(nombre));

-- Índice basado en función para convertir los RFC de los empleados a mayúsculas y mejorar la búsqueda
CREATE INDEX empleado_upper_rfc_iuk ON Empleado(UPPER(RFC));



-- Borrar después:
--Índices Non Unique:

--idx_farmacia_rfc_fiscal: Mejora las consultas basadas en el RFC fiscal de las farmacias.
--idx_cliente_email: Mejora las consultas basadas en el correo de los clientes.
--idx_pedido_cliente_id, idx_pedido_empleado_responsable_id, idx_pedido_estado_pedido_id: Mejoran las consultas que involucran joins frecuentes entre tablas.
--idx_inventario_farmacia_medicamento_presentacion_id, idx_inventario_farmacia_centro_operaciones_id: Mejoran las consultas que involucran joins frecuentes entre tablas.
--Índices Unique:

--unq_cliente_rfc: Asegura que el RFC de los clientes sea único.
--unq_cliente_correo: Asegura que el correo de los clientes sea único.
--unq_tarjeta_credito_num_tarjeta: Asegura que el número de tarjeta de crédito sea único.
--Índices compuestos tipo Unique:

--unq_empleado_nombre_fecha_ingreso: Asegura la unicidad combinada del nombre y la fecha de ingreso de los empleados.
--unq_detalle_pedido_pedido_medicamento: Asegura la unicidad combinada del pedido y medicamento en los detalles de los pedidos.
--Índices basados en funciones:

--idx_cliente_upper_nombre: Mejora las consultas que buscan clientes sin distinguir entre mayúsculas y minúsculas en sus nombres.
--idx_empleado_upper_rfc: Mejora las consultas que buscan empleados sin distinguir entre mayúsculas y minúsculas en sus RFC.

