--@Autor(es): Carrillo Castañeda Santiago Augusto Kam
--            Chong Hernandez Samuel
--@Fecha creacion:  05/06/2024
--@Descripcion:     Inserciones

-- Conectando como cc_proy_admin
conn cc_proy_admin/cc
-- Inserción de datos de prueba y carga inicial utilizando secuencias y PL/SQL
DECLARE
       v_farmacia_id NUMBER;
       v_almacen_id NUMBER;
       v_oficina_id NUMBER;

       v_empleado_id NUMBER;
       v_cliente_id NUMBER;
       v_pedido_id NUMBER;
       v_medicamento_id NUMBER;
       v_lista_medicamentos_nombres_id NUMBER;
       v_medicamento_presentacion_id NUMBER;
       v_farmacia_inventario_id NUMBER;
BEGIN
       -- Insertando Datos Centro_Operaciones-Farmacia 1 id = 1
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina) 
              values (centro_operaciones_seq.nextval, 'FI597490803227', '80 Lakeland Street', '41.420018', '128.200789', 3538831002, 1, 0, 0)
       RETURNING centro_operaciones_id INTO v_farmacia_id;

       -- Insertando Empleados para Farmacia 1
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Maëlyss', 'Cuming', 'Laister', TO_DATE('11/10/2022', 'DD/MM/YYYY'), 'CULM960711');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Lài', 'Berre', 'Gatecliffe', TO_DATE('31/03/2022', 'DD/MM/YYYY'), 'BEGL980905');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Maëlann', 'Speariett', 'Habden', TO_DATE('09/02/2022', 'DD/MM/YYYY'), 'SPHM990826');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Marie-hélène', 'Kildale', 'Braunton', TO_DATE('16/02/2020', 'DD/MM/YYYY'), 'KIBM940601');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Joséphine', 'Aysik', 'Soppitt', TO_DATE('27/04/2023', 'DD/MM/YYYY'), 'AYSJ980701');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Simplifiés', 'Rupke', 'Clemmey', TO_DATE('16/04/2021', 'DD/MM/YYYY'), 'RUCS940518');

       insert into farmacia (centro_operaciones_id, rfc_fiscal, direccion_web, gerente_id) 
       values (v_farmacia_id, 'KSM670923P1Q', 'http://prnewswire.com', 1);
       

       -- Insertando Datos Centro_Operaciones-Farmacia 2 id = 2
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina) 
       values (centro_operaciones_seq.nextval, 'CH942865R5VBUIQY', '8558 Center Park', '50.8105808', '27.3166945', 5494352679, 1, 0, 0)
       RETURNING centro_operaciones_id INTO v_farmacia_id;


       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Joséphine', 'Avrahamoff', 'Wiggam', TO_DATE('28/10/2021', 'DD/MM/YYYY'), 'AVWJ940512');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Ophélie', 'Mantz', 'Brown', TO_DATE('05/03/2022', 'DD/MM/YYYY'), 'MABO001210');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Anaé', 'Throssell', 'Hugland', TO_DATE('24/06/2021', 'DD/MM/YYYY'), 'THHA970322');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Marie-noël', 'McVrone', 'Greson', TO_DATE('19/05/2023', 'DD/MM/YYYY'), 'MCGM990115');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Yú', 'Prosch', 'Oates', TO_DATE('11/08/2023', 'DD/MM/YYYY'), 'PROY001028');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Andréa', 'Olivi', 'Smallpiece', TO_DATE('07/01/2020', 'DD/MM/YYYY'), 'OLSA030209');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_farmacia_id, 'Garçon', 'Essery', 'Ceney', TO_DATE('08/05/2020', 'DD/MM/YYYY'), 'ESCG030310');
       
       -- Insertando Datos Farmacia id = 2
       insert into farmacia (centro_operaciones_id, rfc_fiscal, direccion_web, gerente_id) 
       values (v_farmacia_id,'VYN580419X5W', 'http://yolasite.com', 8);



       -- Insertando Datos Almacen que funciona como Farmacia id = 3
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina) 
       values (centro_operaciones_seq.nextval, 'SI4274397909307', '7233 Kim Lane', '-6.633333', '-78.20078', 4967851336, 1, 1, 0)
       RETURNING centro_operaciones_id INTO v_almacen_id;

       insert into almacen (centro_operaciones_id, almacen_contingencia_id, documento, tipo) 
       values (v_almacen_id, null, empty_blob(), 'C');

       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Loïca', 'Quilliam', 'Kunc', TO_DATE('19/08/2020', 'DD/MM/YYYY'), 'QUKL030717');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Zhì', 'Assiter', 'Barense', TO_DATE('03/06/2022', 'DD/MM/YYYY'), 'ASBZ990529');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Andrée', 'Pashen', 'Graffin', TO_DATE('28/04/2019', 'DD/MM/YYYY'), 'PAGA950716');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Ráo', 'Syce', 'Klarzynski', TO_DATE('26/06/2020', 'DD/MM/YYYY'), 'SYKR941207');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Mårten', 'Dace', 'Boik', TO_DATE('26/10/2021', 'DD/MM/YYYY'), 'DABM021227');


       -- Insertando Datos Almacen 1 id = 4
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina)
       values (centro_operaciones_seq.nextval, 'AD498529SO6CVBFD', '5 Lighthouse Bay Circle', '-24.7762704', '25.4141193', 8734591878, 0, 1, 0)
       RETURNING centro_operaciones_id INTO v_almacen_id;
       
       insert into almacen (centro_operaciones_id, almacen_contingencia_id, documento, tipo) 
       values (v_almacen_id, null, empty_blob() , 'M');

       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Céline', 'Castell', 'Jiricka', TO_DATE('07/04/2022', 'DD/MM/YYYY'), 'CAJC970726');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Néhémie', 'Stears', 'Olliar', TO_DATE('29/08/2021', 'DD/MM/YYYY'), 'STON980119');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Inès', 'Darinton', 'Rigardeau', TO_DATE('05/08/2020', 'DD/MM/YYYY'), 'DARI981221');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Lauréna', 'Cortin', 'Padmore', TO_DATE('06/12/2023', 'DD/MM/YYYY'), 'COPL950904');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Annotés', 'Tilburn', 'Nancarrow', TO_DATE('12/03/2020', 'DD/MM/YYYY'), 'TINA011001');

       -- Insertando Datos Almacen 2 id = 5
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina) 
              values (centro_operaciones_seq.nextval, 'MC44693115DSOX7R', '5 Summit Circle', '39.706618', '21.6288728', 2718012028, 0, 1, 0)
       RETURNING centro_operaciones_id INTO v_almacen_id;
       
       insert into almacen (centro_operaciones_id, almacen_contingencia_id, documento, tipo) 
              values (v_almacen_id, v_almacen_id-1, empty_blob(), 'D');      --Checar v_almacen-1

       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Clare', 'Vasse', 'Symers', TO_DATE('30/06/2019', 'DD/MM/YYYY'), 'VASC940219');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Clayton', 'Maly', 'Vynarde', TO_DATE('21/02/2024', 'DD/MM/YYYY'), 'MAVC881023');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Noll', 'McLeod', 'Burcombe', TO_DATE('26/04/2024', 'DD/MM/YYYY'), 'MCBN941221');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Garth', 'Neesam', 'Coulthard', TO_DATE('15/12/2022', 'DD/MM/YYYY'), 'NECG921031');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Jason', 'Mountfort', 'Klinck', TO_DATE('17/09/2018', 'DD/MM/YYYY'), 'MOKJ910325');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Monti', 'Snelgrove', 'Frangello', TO_DATE('03/05/2019', 'DD/MM/YYYY'), 'SNFM871126');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Franzen', 'Rolley', 'Nelthrop', TO_DATE('12/01/2022', 'DD/MM/YYYY'), 'RONF981102');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Agustin', 'Hellier', 'Bulmer', TO_DATE('26/02/2024', 'DD/MM/YYYY'), 'HEBA960626');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Issiah', 'Postans', 'Kerbler', TO_DATE('20/11/2022', 'DD/MM/YYYY'), 'POKI940411');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Zed', 'Shillingford', 'De Andisie', TO_DATE('09/07/2022', 'DD/MM/YYYY'), 'SHDZ961010');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Conrade', 'Merrall', 'Huband', TO_DATE('12/02/2023', 'DD/MM/YYYY'), 'MEHC990911');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Sigmund', 'Torbard', 'Chomley', TO_DATE('10/03/2019', 'DD/MM/YYYY'), 'TOCS900104');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Rafaellle', 'Aynsley', 'Lanfranchi', TO_DATE('09/07/2019', 'DD/MM/YYYY'), 'AYLR970915');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Joseph', 'Bierman', 'Corradini', TO_DATE('10/09/2023', 'DD/MM/YYYY'), 'BICJ900911');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Patty', 'Durante', 'Weaben', TO_DATE('14/03/2021', 'DD/MM/YYYY'), 'DUWP920417');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Willie', 'Lyfield', 'Lezemore', TO_DATE('07/03/2020', 'DD/MM/YYYY'), 'LYLW951222');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
       values (empleado_seq.nextval, v_almacen_id, 'Thatch', 'Monteath', 'Beggin', TO_DATE('30/12/2021', 'DD/MM/YYYY'), 'MOBT01030');


       -- Insertando Datos Oficina 1 id = 6
       insert into centro_operaciones (centro_operaciones_id, clave, direccion, latitud, longitud, num_telefono, es_farmacia, es_almacen, es_oficina) 
              values (centro_operaciones_seq.nextval, 'GB80PNGQ58577531', '01991 Pearson Lane', '30.0118752', '-95.4463322', 9362914895, 0, 0, 1)
       RETURNING centro_operaciones_id INTO v_oficina_id;
       
       insert into oficina (centro_operaciones_id, clave_presupuestal, nombre_oficina, num_telefonico_call_center) 
              values (v_oficina_id, '04-250-67890-002-01-20', 'Borrego Milkvetch', '4283475554');


       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Michele', 'Gerson', 'Adamov', TO_DATE('22/03/2022','dd/mm/yyyy'), 'GEAM930719');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Bren', 'Priest', 'Trigg', TO_DATE('26/06/2021','dd/mm/yyyy'), 'PRTB870119');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Muffin', 'Doniso', 'Kira', TO_DATE( '18/10/2021','dd/mm/yyyy'), 'DOKM970518');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Reinhold', 'Duckerin', 'Jansky', TO_DATE( '02/08/2018','dd/mm/yyyy'), 'DUJR000926');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Hamlen', 'Oxteby', 'Stithe', TO_DATE('05/04/2020','dd/mm/yyyy') ,'OXSH860518');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Cull', 'Bridgwater', 'Hassett', TO_DATE('31/10/2019','dd/mm/yyyy'), 'BRHC860331');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Ariel', 'Wandrey', 'Awty', TO_DATE( '18/11/2023','dd/mm/yyyy'), 'WAAA950419');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Webb', 'Holywell', 'Cownden', TO_DATE( '05/08/2018','dd/mm/yyyy'), 'HOCW941225');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Phil', 'Fry', 'Surplice', TO_DATE( '05/07/2019','dd/mm/yyyy'), 'FRSP961118');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Ichabod', 'Pomeroy', 'McLarty', TO_DATE( '13/09/2023','dd/mm/yyyy'), 'POMI930705');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Ado', 'Gahagan', 'Rosenblad', TO_DATE('19/06/2020','dd/mm/yyyy'), 'GARA010316');
       insert into empleado (empleado_id, centro_operaciones_id, nombre, apellido_paterno, apellido_materno, fecha_ingreso, RFC) 
              values (empleado_seq.nextval, v_oficina_id, 'Gallagher', 'Rowes', 'Belchamp', TO_DATE( '24/02/2023','dd/mm/yyyy'), 'ROBG920514');
END;   
/

DECLARE
       v_farmacia_id NUMBER;
       v_almacen_id NUMBER;
       v_oficina_id NUMBER;

       v_empleado_id NUMBER;
       v_cliente_id NUMBER;
       v_pedido_id NUMBER;
       v_medicamento_id NUMBER;
       v_lista_medicamentos_nombres_id NUMBER;
       v_medicamento_presentacion_id NUMBER;
       v_farmacia_inventario_id NUMBER;
BEGIN
-- Insertando Medicamentos
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 10);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES(presentacion_seq.nextval, 20);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 30);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 40);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 50);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 100);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 250);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 500);
       INSERT INTO PRESENTACION (presentacion_id, cantidad)
       VALUES (presentacion_seq.nextval, 750);

       --Paracetamol
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
       values (medicamento_seq.nextval, 'paracetamol', 'analgesico y antipiretico')
       RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
       values(lista_medicamentos_nombres_seq.nextval, 'Acetaminofén', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
       values(lista_medicamentos_nombres_seq.nextval, 'Acetilaminofenol', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
       values (inventario_farmacia_seq.nextval, 108, 1 ,v_medicamento_presentacion_id)
       RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
       insert into evento (fecha, evento_id, empleado_id, tipo) 
       values (TO_DATE('22/02/2020', 'DD/MM/YYYY'), evento_seq.nextval, 1, 'ENTRADA');
       
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 9, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
       values (inventario_farmacia_seq.nextval, 112, 2 ,v_medicamento_presentacion_id)
       RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
       insert into evento (fecha, evento_id, empleado_id, tipo) 
       values (TO_DATE('25/05/2021', 'DD/MM/YYYY'), evento_seq.nextval, 9, 'SALIDA');
       
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
       values (inventario_farmacia_seq.nextval, 205, 2 ,v_medicamento_presentacion_id)
       RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
       insert into evento (fecha, evento_id, empleado_id, tipo) 
       values (TO_DATE('19/05/2024', 'DD/MM/YYYY'), evento_seq.nextval, 11, 'ENTRADA');
       
       
       --Ibuprofeno
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
       values (medicamento_seq.nextval, 'ibuprofeno', 'antiinflamatorio no esteroideo')
       RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
       values(lista_medicamentos_nombres_seq.nextval, 'Propionato de isobutileno', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
       values(lista_medicamentos_nombres_seq.nextval, 'ácido isobutilfenil propiónico', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 4, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
       values (inventario_farmacia_seq.nextval, 256, 1 ,v_medicamento_presentacion_id)
       RETURNING farmacia_inventario_id into v_farmacia_inventario_id;
       
       --Evento
       insert into evento (fecha, evento_id, empleado_id, tipo) 
       values (TO_DATE('27/10/2020', 'DD/MM/YYYY'), evento_seq.nextval, 4, 'SALIDA');

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
       values (inventario_farmacia_seq.nextval, 238, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
       values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
       RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 138, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 267, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 9, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 278, 2 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('10/11/2022', 'DD/MM/YYYY'), evento_seq.nextval, 12, 'SALIDA');
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 137, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 163, 2 ,v_medicamento_presentacion_id);

       --Amoxicilina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'amoxicilina', 'antibiotico penicilina')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Ácido 6-aminopenicilánico', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 148, 1 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;
              
              --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('13/05/2020', 'DD/MM/YYYY'), evento_seq.nextval,5, 'SALIDA');

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 264, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 214, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 9, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 123, 1 ,v_medicamento_presentacion_id);

       --Loratadina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'loratadina', 'antihistaminico')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Desloratadina', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Fexofenadina', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 225, 1 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

              --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('29/12/2024', 'DD/MM/YYYY'), evento_seq.nextval, 2, 'ENTRADA');
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 294, 2 ,v_medicamento_presentacion_id);      

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 173, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 240, 1 ,v_medicamento_presentacion_id);


       --Metformina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'metformina', 'tratamiento de diabetes tipo 2')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Dimetilbiguanida', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Glucophage', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Pioglitazona', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 176, 1 ,v_medicamento_presentacion_id);
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 3, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 219, 2 ,v_medicamento_presentacion_id);
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 179, 2 ,v_medicamento_presentacion_id);
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 123, 2 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('29/12/2024', 'DD/MM/YYYY'), evento_seq.nextval, 10, 'ENTRADA');
       
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 238, 3 ,v_medicamento_presentacion_id);

       --Omeprazol
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'omeprazol', 'inhibidor de la bomba de protones')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Losec', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Prilosec', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Zegerid', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 226, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 4, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 251, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 170, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 150, 2 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

              --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('13/02/2021', 'DD/MM/YYYY'), evento_seq.nextval, 10, 'ENTRADA');


       --Atenolol
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'atenolol', 'beta bloqueador')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Tenormin', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 243, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 4, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 244, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 222, 3 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 174, 2 ,v_medicamento_presentacion_id);

       --Simvastatina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'simvastatina', 'reductor de colesterol')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Zocor', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 258, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 258, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 260, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 260, 1 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

       --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('15/10/2024', 'DD/MM/YYYY'), evento_seq.nextval, 2,  'ENTRADA');

       --Ciprofloxacino
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'ciprofloxacino', 'antibiotico quinolona')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Cipro', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Ciprobay', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Ciproxin', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 256, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 229, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 9, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 160, 2 ,v_medicamento_presentacion_id);


       --Diazepam
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'diazepam', 'ansiolitico y sedante')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Valium', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Apaurin', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 108, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 108, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 236, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 190, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 190, 3 ,v_medicamento_presentacion_id);


       --Diclofenaco
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'diclofenaco', 'antiinflamatorio no esteroideo')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Voltaren', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Cataflam', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 197, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 181, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 181, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 9, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 217, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 101, 2 ,v_medicamento_presentacion_id);

       --Clopidogrel
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'clopidogrel', 'inhibidor de la agregacion plaquetaria')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Plavix', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Iscover', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 154, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 202, 3 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 176, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 275, 2 ,v_medicamento_presentacion_id)
              RETURNING farmacia_inventario_id into v_farmacia_inventario_id;

              --Evento
              insert into evento (fecha, evento_id, empleado_id, tipo) 
              values (TO_DATE('03/03/2023', 'DD/MM/YYYY'), evento_seq.nextval, 10, 'SALIDA');

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 210, 3 ,v_medicamento_presentacion_id);

       --Furosemida
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'furosemida', 'diuretico de asa')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Lasix', v_medicamento_id);
       
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 3, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 204, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 272, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 299, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 2 ,v_medicamento_presentacion_id);


       --Levotiroxina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'levotiroxina', 'tratamiento de hipotiroidismo')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Euthyrox', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Levaxin', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 218, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 160, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 105, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 221, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 3 ,v_medicamento_presentacion_id);
              

       --Metronizadol
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'metronidazol', 'antibiotico y antiparasitario')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Flagyl', v_medicamento_id);
              
       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 229, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 128, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 296, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 148, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 283, 3 ,v_medicamento_presentacion_id);


       --Warfarina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'warfarina', 'anticoagulante')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Coumadin', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Warf', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 255, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 133, 2,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 185, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 252, 1,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 237, 3,v_medicamento_presentacion_id);

       --Enalapril
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'enalapril', 'inhibidor de la eca')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Vasotec', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Renitec', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 282, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 187, 2,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 285, 3,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 1,v_medicamento_presentacion_id);

       --Amlodipino
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'amlodipino', 'antihipertensivo')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Norvasc', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Amlodipina', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 280, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 271, 2,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 287, 3,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 3, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 184, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 146, 3,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 202, 2 ,v_medicamento_presentacion_id);

       --Doxiciclina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'doxiciclina', 'antibiotico tetraciclina')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Vibramicina', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Doxycycline', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 176, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 275, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 210, 3 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 204, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 272, 2 ,v_medicamento_presentacion_id);
              

       --Tramadol
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'tramadol', 'analgésico opioide')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Ultram', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Tramal', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 299, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 3 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 218, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 160, 1 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 105, 2 ,v_medicamento_presentacion_id);


       --Clonazepam
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'clonazepam', 'ansiolítico')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Klonopin', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Rivotril', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 1, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 221, 3 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 192, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 229, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 3, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 128, 1 ,v_medicamento_presentacion_id);

       --Cetirizina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'cetirizina', 'antihistamínico')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Zyrtec', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Reactine', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 296, 1 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 148, 2 ,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 283, 2 ,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id)        
              values (inventario_farmacia_seq.nextval, 255, 1,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 133, 3,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 185, 1,v_medicamento_presentacion_id);


       --Montelukast
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'montelukast', 'antagonista del receptor de leucotrieno')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Singulair', v_medicamento_id)
              RETURNING lista_medicamentos_nombres_id INTO v_lista_medicamentos_nombres_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 252, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 237, 2,v_medicamento_presentacion_id);

       --Carbamazepina       
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'carbamazepina', 'antiepiléptico')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Tegretol', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Carbatrol', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 2, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 282, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 187, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 3,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 4, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 285, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 291, 2,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 280, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 271, 2,v_medicamento_presentacion_id);


       --Fluticasona
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'fluticasona', 'corticosteroide inhalado')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Flovent', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Flixotide', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 5, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 287, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 184, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 146, 3,v_medicamento_presentacion_id);


       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 145, 3,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 255, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 214, 1,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 7, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 188, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 227, 3,v_medicamento_presentacion_id);


       --Insulina glargina
       insert into medicamento (medicamento_id, sustancia_activa, descripcion) 
              values (medicamento_seq.nextval, 'insulina glargina', 'análogo de la insulina de acción prolongada')
              RETURNING medicamento_id INTO v_medicamento_id;
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Lantus', v_medicamento_id);
       insert into lista_medicamentos_nombres(lista_medicamentos_nombres_id, nombre, medicamento_id)
              values(lista_medicamentos_nombres_seq.nextval, 'Toujeo', v_medicamento_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 4, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 120, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 102, 1,v_medicamento_presentacion_id);

       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 6, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 213, 3,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 260, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 258, 1,v_medicamento_presentacion_id);


       insert into medicamento_presentacion (medicamento_presentacion_id, presentacion_id, medicamento_id) 
              values (medicamento_presentacion_seq.nextval, 8, v_medicamento_id)
              RETURNING medicamento_presentacion_id INTO v_medicamento_presentacion_id;
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 145, 1,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 255, 2,v_medicamento_presentacion_id);
       insert into inventario_farmacia (farmacia_inventario_id, unidades, centro_operaciones_id, medicamento_presentacion_id) 
              values (inventario_farmacia_seq.nextval, 214, 3,v_medicamento_presentacion_id);
END;   
/

DECLARE
       v_farmacia_id NUMBER;
       v_almacen_id NUMBER;
       v_oficina_id NUMBER;

       v_empleado_id NUMBER;
       v_cliente_id NUMBER;
       v_pedido_id NUMBER;
       v_medicamento_id NUMBER;
       v_lista_medicamentos_nombres_id NUMBER;
       v_medicamento_presentacion_id NUMBER;
       v_farmacia_inventario_id NUMBER;
BEGIN
       -----Pedidos
       INSERT INTO ESTADO_PEDIDO (estado_pedido_id, clave, descripcion)
       VALUES (1, 'CAPTURADO', 'EL PEDIDO HA SIDO CAPTURADO');
       INSERT INTO ESTADO_PEDIDO (estado_pedido_id, clave, descripcion)
       VALUES (2, 'EN TRÁNSITO', 'EL PEDIDO ESTÁ EN TRÁNSITO');
       INSERT INTO ESTADO_PEDIDO (estado_pedido_id, clave, descripcion)
       VALUES (3, 'ENTREGADO', 'EL PEDIDO HA SIDO ENTREGADO');
       INSERT INTO ESTADO_PEDIDO (estado_pedido_id, clave, descripcion)
       VALUES (4, 'DEVUELTO', 'EL PEDIDO HA SIDO DEVUELTO');
       INSERT INTO ESTADO_PEDIDO (estado_pedido_id, clave, descripcion)
       VALUES (5, 'CANCELADO', 'EL PEDIDO HA SIDO CANCELADO');


-- Insertando Clientes
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Amabel', 'Fahy', 'Prys', 'aprys0@1und1.de', '5661236174', '564 Esch Trail', 'FAPA890815', 'FAPA890815QID');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Rey', 'Sotham', 'Seery', 'rseery1@elegantthemes.com', '4986364094', '963 Prairie Rose Trail', 'SOSR910317', 'SOSR910317QEY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Peter', 'Adamovitz', 'Foulkes', 'pfoulkes2@dropbox.com', '6161022782', '1 Thierer Crossing', 'ADFP901221', 'ADFP901221ROW');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Goddard', 'Borres', 'Ovendale', 'govendale3@ocn.ne.jp', '6723121151', '40845 Armistice Circle', 'BOOG771201', 'BOOG771201BAD');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Merla', 'Mowatt', 'Balmforth', 'mbalmforth4@blogger.com', '7325928412', '09 Fuller Alley', 'MOBM970302', 'MOBM970302IIP');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Robena', 'Angear', 'Vaud', 'rvaud5@si.edu', '1152655125', '49 Oneill Way', 'ANVR720106', 'ANVR720106LAP');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Maitilde', 'Domniney', 'Lundie', 'mlundie6@chronoengine.com', '4009702528', '46608 Northfield Parkway', 'DOLM800214', 'DOLM800214TAO');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Margeaux', 'Barron', 'Pakenham', 'mpakenham7@yandex.ru', '8349773010', '58 Warner Plaza', 'BAPM010507', 'BAPM010507NII');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval, 'Sada', 'Katt', 'Aspling', 'saspling8@oracle.com', '6269755512', '6 Artisan Pass', 'KAAS830927', 'KAAS830927ZII');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Guillermo', 'Brehaut', 'Skittrall', 'gskittrall9@harvard.edu', '6284250651', '31030 Farmco Crossing', 'BRSG900616', 'BRSG900616BAY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Vivienne', 'Gronow', 'Bohl', 'vbohla@unblog.fr', '6058292341', '35527 Thompson Crossing', 'GRBV940204', 'GRBV940204BIE');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Rea', 'Dran', 'Mechem', 'rmechemb@mashable.com', '9999920579', '9776 Packers Way', 'DRMR931017', 'DRMR931017WUC');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Clementia', 'Creegan', 'Robilliard', 'crobilliardc@salon.com', '6291245401', '6348 Everett Plaza', 'CRRC870525', 'CRRC870525NIH');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Darya', 'Grandisson', 'Mabbitt', 'dmabbittd@canalblog.com', '1379437517', '5 Veith Center', 'GRMD800405', 'GRMD800405FEA');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Otto', 'Dono', 'Cohen', 'ocohene@soundcloud.com', '5843973568', '937 Londonderry Park', 'DOCO900206', 'DOCO900206UAC');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Marvin', 'Moberley', 'Mulholland', 'mmulhollandf@ycombinator.com', '5849373293', '8 Canary Point', 'MOMM710126', 'MOMM710126JEH');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Stanwood', 'Casterton', 'Askie', 'saskieg@smh.com.au', '5011105884', '2 Farragut Hill', 'CAAS830125', 'CAAS830125UOB');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Maxy', 'Topp', 'Tyrone', 'mtyroneh@freewebs.com', '7119945931', '300 Lyons Center', 'TOTM720226', 'TOTM720226GAK');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Candy', 'Sanpere', 'Hawket', 'chawketi@sohu.com', '5793497760', '44 Mayfield Crossing', 'SAHC031018', 'SAHC031018KUM');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Thorpe', 'Bosworth', 'Ivamy', 'tivamyj@whitehouse.gov', '5882720163', '9175 Debs Avenue', 'BOIT860404', 'BOIT860404UAF');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Abner', 'MacDonell', 'Szachniewicz', 'aszachniewiczk@artisteer.com', '8136660289', '1 Bashford Terrace', 'MASA800425', 'MASA800425JAD');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Sheffield', 'O''Doogan', 'Isselee', 'sisseleel@xinhuanet.com', '2195250410', '9 Cambridge Crossing', 'O''IS980913', 'O''IS980913QOZ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Lucinda', 'Marin', 'Young', 'lyoungm@devhub.com', '2277260877', '5 Nelson Circle', 'MAYL900809', 'MAYL900809AEI');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Millard', 'Ostrich', 'Oxbie', 'moxbien@huffingtonpost.com', '7255840577', '6 Maple Wood Junction', 'OSOM040620', 'OSOM040620REC');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Britte', 'Gascar', 'Bellows', 'bbellowso@mapy.cz', '6758225030', '8435 Oakridge Court', 'GABB771104', 'GABB771104OUR');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Malcolm', 'Tomaselli', 'Elijahu', 'melijahup@imageshack.us', '5253646480', '27088 Johnson Circle', 'TOEM700818', 'TOEM700818BED');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Lory', 'Antushev', 'Roma', 'lromaq@apache.org', '3647140756', '276 Dovetail Circle', 'ANRL020816', 'ANRL020816FOR');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Barron', 'Overbury', 'Boteman', 'bbotemanr@reuters.com', '3776133847', '35 Gina Parkway', 'OVBB921002', 'OVBB921002ZOP');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Tobin', 'Dowgill', 'Skamell', 'tskamells@mac.com', '1658958935', '90965 Amoth Junction', 'DOST900403', 'DOST900403SID');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Lorrayne', 'Robertazzi', 'Riggulsford', 'lriggulsfordt@odnoklassniki.ru', '5671296569', '57 Canary Pass', 'RORL990717', 'RORL990717COJ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Pauly', 'Oldknow', 'Taw', 'ptawu@npr.org', '2773595451', '56028 Buhler Pass', 'OLTP820902', 'OLTP820902OIN');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Winona', 'Wallenger', 'Wyld', 'wwyldv@desdev.cn', '2734493066', '43190 Fallview Lane', 'WAWW840715', 'WAWW840715XAD');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Tomaso', 'Coombe', 'Poxton', 'tpoxtonw@si.edu', '1618747041', '8 Bay Road', 'COPT861222', 'COPT861222WOE');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Timotheus', 'Burrus', 'Pfeffel', 'tpfeffelx@ycombinator.com', '5838742249', '7325 Warner Place', 'BUPT851015', 'BUPT851015PEO');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Stearn', 'Wolvey', 'Scheu', 'sscheuy@eventbrite.com', '1074494706', '978 Muir Parkway', 'WOSS930826', 'WOSS930826ZEU');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Moritz', 'Boynton', 'McDarmid', 'mmcdarmidz@theatlantic.com', '9964107384', '7 Butternut Junction', 'BOMM860716', 'BOMM860716KAE');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Nannette', 'Faraker', 'Hackwell', 'nhackwell10@jugem.jp', '2324662190', '2 Del Mar Avenue', 'FAHN770204', 'FAHN770204KOJ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Trudey', 'Wesley', 'Woolaston', 'twoolaston11@google.com', '7335559566', '89432 Mitchell Way', 'WEWT900121', 'WEWT900121VUL');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Nobe', 'Fentem', 'Dignon', 'ndignon12@ibm.com', '2273379860', '692 Ronald Regan Trail', 'FEDN800505', 'FEDN800505AUH');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Amii', 'Harmer', 'Rosenschein', 'arosenschein13@hatena.ne.jp', '3068564743', '87 Cherokee Alley', 'HARA920902', 'HARA920902YAO');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Glyn', 'Mantram', 'Bruffell', 'gbruffell14@diigo.com', '2588513479', '1 Clemons Parkway', 'MABG931017', 'MABG931017SAK');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Georgeta', 'Acomb', 'Sandever', 'gsandever15@cdc.gov', '1721676016', '74063 Messerschmidt Circle', 'ACSG740110', 'ACSG740110OER');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Lesli', 'Boost', 'Manueli', 'lmanueli16@parallels.com', '8672107010', '762 Stoughton Terrace', 'BOML011119', 'BOML011119EOZ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Mitchell', 'Walkley', 'Goosnell', 'mgoosnell17@unc.edu', '3233451325', '84345 Pepper Wood Terrace', 'WAGM900110', 'WAGM900110WIZ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Nevile', 'Garber', 'Wadman', 'nwadman18@google.co.jp', '4045689502', '213 Harper Crossing', 'GAWN880712', 'GAWN880712EOW');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Kelly', 'Dooland', 'Avrasin', 'kavrasin19@hatena.ne.jp', '2494139277', '6691 Blaine Avenue', 'DOAK960609', 'DOAK960609VIC');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Donnajean', 'Glavis', 'O''Shiels', 'doshiels1a@omniture.com', '5761812803', '7658 Gateway Plaza', 'GLOD981110', 'GLOD981110GAB');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Debor', 'Padbery', 'Lindblom', 'dlindblom1b@nationalgeographic.com', '7487065408', '4268 Merrick Circle', 'PALD750327', 'PALD750327CEW');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Liane', 'Klesel', 'McTerry', 'lmcterry1c@mapy.cz', '2364472145', '84274 Lakewood Point', 'KLML961105', 'KLML961105OEQ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Ezra', 'Firmage', 'Skett', 'eskett1d@mtv.com', '9509437743', '913 Claremont Terrace', 'FISE721219', 'FISE721219WOI');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Lennard', 'Gibbeson', 'Blinde', 'lblinde1e@google.com.au', '8966483207', '87182 Scott Hill', 'GIBL780824', 'GIBL780824GIK');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Bertie', 'Gerrens', 'Gartell', 'bgartell1f@archive.org', '1569992711', '43986 Vernon Avenue', 'GEGB920530', 'GEGB920530IOP');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Mead', 'Drinan', 'Kinsell', 'mkinsell1g@irs.gov', '1074467168', '51 Warner Court', 'DRKM731025', 'DRKM731025MIO');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Ronnie', 'Stoggell', 'Woodward', 'rwoodward1h@gizmodo.com', '6784825539', '6 Old Gate Plaza', 'STWR990617', 'STWR990617FAY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Marie', 'Tomini', 'Raffles', 'mraffles1i@va.gov', '9568541358', '6196 Prentice Point', 'TORM711118', 'TORM711118BAC');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Ingrid', 'Ollerton', 'Skill', 'iskill1j@histats.com', '4022179790', '09 Arkansas Avenue', 'OLSI890902', 'OLSI890902RAU');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Grantley', 'Sighard', 'Gerholz', 'ggerholz1k@latimes.com', '8814244584', '41747 Redwing Crossing', 'SIGG010310', 'SIGG010310HEE');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Simonne', 'Seago', 'Brookton', 'sbrookton1l@drupal.org', '3339843435', '28119 Kings Road', 'SEBS751226', 'SEBS751226YAY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Naomi', 'Robillard', 'Gorvette', 'ngorvette1m@yellowpages.com', '5283974126', '7170 Tony Pass', 'ROGN030714', 'ROGN030714LAR');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Orly', 'Crosfeld', 'Cauldwell', 'ocauldwell1n@wikipedia.org', '5708926573', '34 Dixon Drive', 'CRCO850222', 'CRCO850222XOI');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Jard', 'Cuddehay', 'Storton', 'jstorton1o@amazon.co.uk', '5051457639', '1 Kim Terrace', 'CUSJ761024', 'CUSJ761024LIY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Delilah', 'Billes', 'Folliss', 'dfolliss1p@google.it', '8728617978', '556 Russell Crossing', 'BIFD910731', 'BIFD910731DOK');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Barbey', 'Schoroder', 'Shier', 'bshier1q@earthlink.net', '4983109466', '866 Lotheville Parkway', 'SCSB721205', 'SCSB721205CEX');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Aimee', 'Wybourne', 'Apple', 'aapple1r@unblog.fr', '1572499227', '3 Amoth Place', 'WYAA900403', 'WYAA900403XIQ');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Dougy', 'Tracey', 'Waleran', 'dwaleran1s@4shared.com', '9252718732', '6 Swallow Hill', 'TRWD881119', 'TRWD881119HUI');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Theressa', 'Dabney', 'Rainforth', 'trainforth1t@jugem.jp', '9321898207', '6313 Karstens Hill', 'DART010923', 'DART010923YIE');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Marwin', 'Darlington', 'Vickars', 'mvickars1u@businessinsider.com', '7601538913', '7 Kedzie Point', 'DAVM921102', 'DAVM921102HAY');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Torin', 'de Clerq', 'Cowsby', 'tcowsby1v@upenn.edu', '4888798836', '0485 Ilene Hill', 'DECT810908', 'DECT810908KAI');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Phillipe', 'Babington', 'Moorwood', 'pmoorwood1w@va.gov', '5636337811', '8993 Parkside Crossing', 'BAMP780819', 'BAMP780819AOS');
       insert into cliente (cliente_id, nombre, apellido_paterno, apellido_materno, correo, num_telefono, direccion_envio, RFC, CURP) 
              values (cliente_seq.nextval,  'Ariel', 'Seares', 'Verne', 'averne1x@japanpost.jp', '7786093026', '46834 Sunbrook Way', 'SEVA830829', 'SEVA830829SOL');

       -- Insertando Tarjetas Credito
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','26', 1, '3570514478082120');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('02','26', 2, '4041371375734');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','23', 3, '3538002808892484');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','30', 4, '5610018587349971');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','27', 5, '3539151524307274');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','30', 6, '4903483558881309953');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','25', 7, '5100142501706681');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','27', 8, '6379154754002397');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('02','28', 9, '378161328040815');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','24', 10, '30293219790529');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','24', 11, '3573440472725687');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('12','27', 12, '63049782331512529');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','26', 13, '4026129255028580');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','27', 14, '5100130142926214');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','29', 15, '3544321493200700');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','29', 16, '30213263178280');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','29', 17, '4017952882884');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','27', 18, '4913085741847791');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('01','24', 19, '491173883344056248');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('12','28', 20, '6762338878061968');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('05','27', 21, '6334248253354814');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','26', 22, '5345303827007718');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('05','26', 23, '6371557963819351');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','25', 24, '3566200914613316');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('09','23', 25, '3533361269680969');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','28', 26, '30206789661680');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('02','23', 27, '3581958858687544');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('09','23', 28, '5325971247263741');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','24', 29, '3554465894574507');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','28', 30, '3533978514346458');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','28', 31, '4041371071564');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('11','24', 32, '3546866364681576');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','26', 33, '3573584802515712');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','26', 34, '6374409594878694');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('01','26', 35, '3548188294032665');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','27', 36, '4508722293986764');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','30', 37, '63042916177090532');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('01','29', 38, '30170358325764');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','27', 39, '3536577712591472');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','24', 40, '3568626220485221');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('02','29', 41, '3576438660760240');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('05','26', 42, '3556065703656665');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','26', 43, '6373675941366754');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','25', 44, '3571025075481697');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','25', 45, '3570536450692519');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','29', 46, '3546809209564383');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','24', 47, '3561270495672358');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('05','27', 48, '30090650345841');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','23', 49, '3560513274405743');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('09','25', 50, '5002355319624818');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('10','28', 51, '3542245823530415');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('12','23', 52, '4936232744535873');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','29', 53, '4911425775338234683');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','29', 54, '5610217431772355647');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('05','28', 55, '5602225449202641');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('09','26', 56, '5211219453059859');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','30', 57, '3571487608275469');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('06','24', 58, '3580375596286581');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('12','28', 59, '4041591514674');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('02','27', 60, '4017959795403856');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','30', 61, '5512263443255835');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('08','24', 62, '3575805987710739');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('11','26', 63, '4405500511834923');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('09','24', 64, '5602242849733042');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','28', 65, '5602226505708141');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('07','27', 66, '348156164166861');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('04','29', 67, '30445646732454');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('01','27', 68, '3553951868890798');
       insert into tarjeta_credito (mes_expiracion, anio_expiracion, cliente_id, num_tarjeta) values ('03','26', 69, '372301710990583');


END;   
/

show errors