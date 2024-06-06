--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  05/05/2024
--@Descripcion:     Creacion de roles y usuarios admin e invitado

create or replace trigger existencia_producto
before insert or update on pedido
