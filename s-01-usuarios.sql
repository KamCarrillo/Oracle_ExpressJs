--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  28/05/2024
--@Descripcion:     Creacion de roles y usuarios admin e invitado


connect sys/M1n1C00p3r850 as sysdba

declare
	cursor cur_usuarios is
		select username from dba_users where username like 'cc_proy%';
	cursor cur_roles is
		select role from dba_roles where role like 'rol_%';
begin
	for r in cur_usuarios loop
		execute immediate 'drop user '||r.username||' cascade';
	end loop;
	
	for r in cur_roles loop
		execute immediate 'drop role '||r.role;
	end loop;
end;
/
drop user cc_proy_admin cascade;
drop user cc_proy_invitado cascade;
drop role rol_admin;
drop role rol_invitado;

Prompt creando usuario cc_proy_admin
create user cc_proy_admin identified by cc quota unlimited on users;

Prompt creando usuario cc_proy_invitado;
create user cc_proy_invitado identified by cc quota 100m on users;

Prompt creando rol_admin
create role rol_admin;
grant create session, create table, create procedure, create view, create sequence, create trigger,
    create synonym, create public synonym, create user,
    alter user, drop any table, alter any table, select any table, insert any table, update any table, 
    delete any table
    to rol_admin;

Prompt creando rol_invitado
create role rol_invitado;
grant create session to rol_invitado;

Prompt asignando roles...
grant rol_admin to cc_proy_admin;

grant rol_invitado to cc_proy_invitado;

Prompt Usuarios creados...