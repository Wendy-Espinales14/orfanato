/*consulta1*/

select tios_as.nombres, tios_as.apellidos ,tios_as.n_año, 
tios_as.cantida_huerfanos from tios_as
order by tios_as.n_año
/*consulta 2*/
select 
instituciones_educativas.nombre as institucion,
count (historial_años_aprobados.estado_academico) as estado_academico
from historial_años_aprobados
inner join instituciones_educativas on instituciones_educativas.id_institucion =historial_años_aprobados.id_historial
where historial_años_aprobados.estado_academico='graduado'
GROUP BY instituciones_educativas.nombre;
/*consulta 3*/
select 
tipos_orfandad.nombre as id_tipo,
count (tipos_orfandad.nombre) as tipo_orfandad
from tipos_orfandad
GROUP BY tipos_orfandad.nombre;
/*consulta 4*/
select 
actividades.nombre_actividad as nombre,
actividades.year_año_actividad as año_actividad,
actividades.calificacion as tipo_calificacion,
count(actividades.calificacion) as calificacion

from actividades
group by actividades.calificacion, actividades.year_año_actividad, actividades.nombre_actividad