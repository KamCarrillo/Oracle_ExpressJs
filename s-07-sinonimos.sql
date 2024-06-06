-- Conectando como admin
conn cc_proy_admin/cc

-- Creando sinónimos públicos
CREATE PUBLIC SYNONYM centro_operaciones FOR cc_proy_admin.centro_operaciones;
CREATE PUBLIC SYNONYM empleado FOR cc_proy_admin.empleado;
CREATE PUBLIC SYNONYM pedido FOR cc_proy_admin.pedido;
CREATE PUBLIC SYNONYM cliente FOR cc_proy_admin.cliente;

-- Otorgando permisos de lectura
GRANT SELECT ON cc_proy_admin.centro_operaciones TO cc_proy_invitado;    
GRANT SELECT ON cc_proy_admin.empleado TO cc_proy_invitado;
GRANT SELECT ON cc_proy_admin.pedido TO cc_proy_invitado;
GRANT SELECT ON cc_proy_admin.cliente TO cc_proy_invitado;

-- Conectando como invitado
conn cc_proy_invitado/cc

-- Creando sinónimos
CREATE SYNONYM inv_centro_operaciones FOR cc_proy_admin.centro_operaciones;
CREATE SYNONYM inv_empleado FOR cc_proy_admin.empleado;
CREATE SYNONYM inv_pedido FOR cc_proy_admin.pedido;

-- Conectando de nuevo como admin
conn cc_proy_admin/cc

-- Creación de código PL/SQL
DECLARE
    v_sql VARCHAR2(4000);
BEGIN
    FOR rec IN (SELECT table_name FROM user_tables) LOOP
        v_sql := 'CREATE SYNONYM CC_' || rec.table_name || ' FOR cc_proy_admin.' || rec.table_name;
        EXECUTE IMMEDIATE v_sql;
    END LOOP;
END;
/

-- Creación de Sinónimos Públicos:

-- Se crean sinónimos públicos para las tablas CENTRO_OPERACIONES, FARMACIA, y PEDIDO para que otros usuarios puedan acceder a ellas fácilmente.
-- Otorgar Permisos de Lectura:

-- El usuario admin otorga permisos de lectura al usuario invitado en las tablas mencionadas.
-- Creación de Sinónimos por el Usuario Invitado:

-- El usuario invitado crea sinónimos que apuntan a las tablas a las que se le ha dado acceso.
-- Creación de Sinónimos Privados con Prefijo:

-- Un bloque PL/SQL anónimo itera sobre todas las tablas del esquema y crea sinónimos con el prefijo CC_, 
-- donde C y H representan las iniciales de los apellidos.