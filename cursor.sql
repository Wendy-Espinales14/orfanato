/* Muestre por cada huérfano cuanto a recibido y cuantos tíos a tenido
(juan a recibido 700 dólares y ha tenido 6 tíos y en cuantas actividades a participado  */
do $$
declare 
cantidad_tio int =0;
cantidad_actividades int=0;
num int;
num2 int;
almacenado record;
almacenado2 record;
cant_tio cursor for select *from tios_as, niños_del_orfanato
where tios_as.id_niño =niños_del_orfanato.id_niño and
niños_del_orfanato.id_niño=7;
cant_activi cursor for select *from mesada,actividades,niños_del_orfanato
where mesada.id_mesada = actividades.id_actividades and
actividades.id_niño=7;

begin
for num in cant_tio
loop cantidad_tio = cantidad_tio + count(num.id_niño);
end loop;

for num2 in cant_activi
loop cantidad_actividades= cantidad_actividades + count(num2.id_niño);
end loop;

open cant_tio;
open cant_activi;
fetch cant_tio into almacenado;
fetch cant_activi into almacenado2;
raise notice 'apellido: %,nombre: %, mesada: %, cantidad de tios:% ,cantidad de actividades:%', 
almacenado.apellidos_niño,
almacenado.nombre_niño,almacenado2.monto,cantidad_tio,cantidad_actividades;
end $$
language 'plpgsql';
