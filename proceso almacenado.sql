CREATE OR REPLACE FUNCTION DEVOLVER_TIOS
		(IN PV_OPCION character varying(25), 
		 OUT nombre_niño character varying(25),
		 OUT apellidos_niño character varying(25),
		 OUT nombres character varying(25),
		 OUT apellidos character varying(25)
		) 
		 RETURNS setof record AS
$BODY$
BEGIN 
	IF PV_OPCION ='juaquin' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='juaquin';
end if;

IF PV_OPCION ='cristina' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='cristina';
end if;

IF PV_OPCION ='paula' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='paula';
end if;

IF PV_OPCION ='diego' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='diego';
end if;

IF PV_OPCION ='julian' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño=tios_as.id_niño
where niños_del_orfanato.nombre_niño='julian';
end if;

IF PV_OPCION ='vicente' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='vicente';
end if;

IF PV_OPCION ='teresa' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='teresa';
end if;

IF PV_OPCION ='ana belen' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='paula';
end if;
IF PV_OPCION ='jorge' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='jorge';
end if;

IF PV_OPCION ='irene' THEN 
	return query select 
niños_del_orfanato.nombre_niño  as nombre_niño,
 niños_del_orfanato.apellidos_niño as apellido_niño,
tios_as.nombres   as nombre_tio_as,
tios_as.apellidos as apellido_tio
from tios_as
inner join niños_del_orfanato on niños_del_orfanato.id_niño= tios_as.id_niño
where niños_del_orfanato.nombre_niño='irene';
end if;
return;
END;
$BODY$

language 'plpgsql';

select *from public.devolver_tios('teresa');
/*
select *from public.devolver_tios('cristina');
select *from public.devolver_tios('paula');
select *from public.devolver_tios('diego');
select *from public.devolver_tios('julian');
select *from public.devolver_tios('vicente');
select *from public.devolver_tios('ana belen');
select *from public.devolver_tios('jorge');
select *from public.devolver_tios('irene');
select *from public.devolver_tios('juaquin'); */
