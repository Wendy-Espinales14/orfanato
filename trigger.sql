/* TRIGGERS Si un niño ha tenido 2 calificaciones*/

Create or replace function negacion_de_paseo () returns trigger as $negacion_de_paseo$
declare 
contador_notas_regulares int;
limite_notas_regulares int;
begin 
select count(*) into contador_notas_regulares
from actividades where (calificacion=new.calificacion) and 
(id_niño=new.id_niño);
select max_regulares into limite_notas_regulares from actividades;
if( contador_notas_regulares>=limite_notas_regulares) then 

raise exception 'no se le permite ir de paseo debido a que tiene 2 o 
mas notas regulares, mejorar sus calificaciones :D!';
end if;
return new;
end;
$negacion_de_paseo$
language plpgsql;
create trigger negacion_de_paseo before insert on actividades for each row 
execute procedure negacion_de_paseo ();
