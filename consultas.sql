/*consulta1*/
select  
tios_as.id_tios as id_tios,
(tios_as.nombres ||' '||tios_as.apellidos) as nombre_tios,
tios_as.n_año as año,
count (niños_del_orfanato) as numero_de_niños
from  niños_del_orfanato
inner join tios_as on tios_as.id_tios = niños_del_orfanato.id_niño
GROUP BY tios_as.nombres , niños_del_orfanato.id_niño,tios_as.id_tios, tios_as.n_año, tios_as.apellidos
order by id_tios

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
from tipo_orfandad
GROUP BY tipos_orfandad.nombre ;
/* consulta 4*/
select 
actividades.nombre_actividad as nombre,
actividades.year_año_actividad as año_actividad,
actividades.calificacion as tipo_calificacion,
count(actividades.calificacion) as calificacion

from actividades
group by actividades.calificacion, actividades.year_año_actividad, actividades.nombre_actividad
