/*creacion de tablas */
create table niños_del_orfanato(

	id_niño integer primary key,
	id_mesada integer,
	id_padres_biologicos integer,
	id_institucion integer,
	cedula integer ,
	nombre_niño varchar (25),
	apellidos varchar (25),
	fecha_nacimiento date,
	lugar_nacimiento varchar (25),
	fecha_ingreso_orfanato date		
);
create table padres_biologicos(
    id_padres_biologicos integer primary key,
	cedula_pb integer,
	cedula_mb integer,
	nombres_pb varchar (25),
	apellidos_pb varchar (25),
	fecha_nacimiento date,
	nombres_mb varchar (25),
	apellidos_mb varchar (25),
	fecha_nacimiento_mb date,
	telefono_pb integer,
	telefono_mb integer,
	direccion varchar 	
);
create table colaboradores (
 id_colaboradores integer primary key, 
	id_niño integer,
	nombres varchar (25),
	apellidos varchar (25),
	cedula_identidad integer, 
	tipo_donacion text
);
create table mesada(
 id_mesada integer primary key,
	monto integer
);
create table tipos_orfandad (
id_tipo_orfandad integer primary key,
	id_niños integer,
	nombre varchar (25)
);
create table actividades (
id_actividades integer primary key,
	id_niño integer,
	nombre_actividad varchar (25),
        year_año_actividad integer,
	calificacion varchar (25)
);
create table tios_as (
id_tios_as integer primary key,
	nombres varchar (25),
	apellidos varchar (25),
	cedula integer,
	direccion varchar (25),
	telefono integer,
        cantidad_huerfanos integer,
	fecha_inicio date 
);
create table instituciones_educativas (
id_institucion integer primary key,
	nombre varchar (25)
);
create table historial_años_aprobados(
id_historial integer primary key,
	id_institucion integer,
	n_años_aprobados integer,
        estado_academico varchar (25)
);
create table historial_citatorios(
id_citatorios integer primary key,
	id_institucion integer,
	numero_citatorios integer 
);
create table niños_adoptados (
id_niños_adoptados integer primary key,
	id_padres_adoptivos integer,
	nombres varchar (25),
	apellidos varchar (25),
	fecha_nacimiento date 
);
create table padres_adoptivos (
id_padre_adoptivos integer primary key,
	cedula_pa integer,
	cedula_ma integer,
	nombre_pa varchar (25),
	apellido_pa varchar (25),
	nombre_ma varchar (25),
	apellido_ma varchar (25),
	telefono_pa integer,
	telefono_ma integer,
	direccion varchar (25),
	ocupacion_pa varchar (25),
	ocupacion_ma varchar (25),
	estado_economico varchar (25),
	estado_vivienda varchar (25)
);

create table niños_no_adoptados(
id_niños_no_adoptados integer primary key,
	id_padres_bilogicos integer,
	nombre varchar(25),
	apellidos varchar(25),
	fecha_nacimiento integer
);

/*llaves foraneas */
alter table niños_del_orfanato
add constraint FK_niños_orfanato_RELATIONS_mesada foreign key (id_mesada)
references mesada (id_mesada)
on delete restrict on update restrict;

alter table niños_del_orfanato
add constraint FK_niños_orfanato_RELATIONS_padres_bilogicos foreign key (id_padres_biologicos)
references padres_biologicos (id_padres_biologicos)
on delete restrict on update restrict;

alter table niños_del_orfanato 
add constraint FK_niños_orfanato_RELATIONS_instituciones_educativas foreign key (id_institucion)
references instituciones_educativas (id_institucion)
on delete restrict on update restrict;

alter table niños_del_orfanato
add constraint FK_niños_orfanato_RELATIONS_tios_as foreign key (id_tios_as)
references tios_as (id_tios_as)
on delete restrict on update restrict;

alter table niños_adoptados
add constraint FK_niños_adoptados_RELATIONS_padres_adoptivos foreign key (id_padres_adoptivos)
references padres_adoptivos (id_padre_adoptivos)
on delete restrict on update restrict;

alter table niños_no_adoptados
add constraint FK_niños_noadop_RELATIONS_padres_biologicos foreign key (id_padres_bilogicos)
references padres_biologicos (id_padres_biologicos)
on delete restrict on update restrict;

alter table colaboradores 
add constraint FK_colaboradores_RELATIONS_niños_del_orfanato foreign key (id_niño)
references niños_del_orfanato (id_niño)
on delete restrict on update restrict;

alter table actividades 
add constraint FK_colaboradores_RELATIONS_niños_del_orfanato foreign key (id_niño)
references niños_del_orfanato (id_niño)
on delete restrict on update restrict;

alter table tipos_orfandad
add constraint FK_tipos_orfandad_RELATIONS_niños_del_orfanato foreign key (id_niños)
references niños_del_orfanato (id_niño)
on delete restrict on update restrict;

alter table historial_años_aprobados
add constraint FK_historial_aprobados_RELATIONS_instituciones_educativas foreign key (id_institucion)
references instituciones_educativas (id_institucion)
on delete restrict on update restrict;

alter table historial_citatorios
add constraint FK_historial_citatorio_RELATIONS_instituciones_educativas foreign key (id_institucion)
references instituciones_educativas (id_institucion)
on delete restrict on update restrict;
/*insertar datos */
/*insertar mesada*/
insert into mesada values (1,1200);
insert into mesada values (2,4000);
insert into mesada values (3,4000);
insert into mesada values (4,4000);
insert into mesada values (5,4000);
insert into mesada values (6,4000);
insert into mesada values (7,4000);
insert into mesada values (8,4000);
insert into mesada values (9,4000);
insert into mesada values (10,4000);
/*padres biologicos */
insert into padres_biologicos values (1,344567,234567,'martin','cesto',
'1989/02/14','camila','palma','1990/06/15',0978571,09273940,'las colinas');
insert into padres_biologicos values (2,749568,224666,'carlos','cevallos',
'1988/09/04','amelia','cantos','1989/03/15',0778671,09475940,'los geranios');
insert into padres_biologicos values (3,324267,134937,'leandro','cabeza',
'1989/09/11','catalina','estrujillo','1991/07/15',0938271,08213940,'leonidas proaño');
insert into padres_biologicos values (4,444444,444944,'pablo','cornejo',
'1999/02/14','kelly','palma','1999/06/15',222222,092222,'las palmas');
insert into padres_biologicos values (5,555555,558555,'manuel','garcia',
'1989/06/17','dolores','jimenez','1980/03/15',0970573,09490940,'barrio santana');
insert into padres_biologicos values (6,666666,666667,'jesus','fernandez',
'1983/03/14','maria','navarro','1990/06/15',0970501,09383740,'quito');
insert into padres_biologicos values (7,777767,963277,'david','perez',
'1989/02/14','antonia','rodriguez','1990/06/15',0978534,09278942,'selva alegre');
insert into padres_biologicos values (8,888885,888457,'ana','ruiz',
'1988/02/14','camila','palma','1991/06/15',0978571,09273940,'cuenca');
insert into padres_biologicos values (9,999997,896445,'angel','lopez',
'1989/06/01','josefa','gonzalez','1990/02/05',0370571,09773541,'pastaza');
insert into padres_biologicos values (10,104557,232087,'javier','cedeño',
'1989/02/14','francisca','moreno','1990/06/15',0908770,09174949,'montecristi');

/*insertar tios(as)*/
insert into tios_as values (1,'encarnacion','rubio','365974','calle 13-manta',0936825,'2007/04/12',2010,10,1);
insert into tios_as values (2,'laura','alfaro','364972','leonidas proaño',0834625,'2000/05/10',2003,5,2);
insert into tios_as values (3,'cristina','molina','320974','el carmen',0936825,'2001/07/19',2005,15,3);
insert into tios_as values (4,'juana','romero','365544','los bajos',0936825,'2007/05/08',2008,9,4);
insert into tios_as values (5,'luis','muñoz','325674','flavio alfaro',0936825,'2003/06/14',2004,7,5);
insert into tios_as values (6,'alberto','lozano','365373','guayas',0936825,'2008/04/02',2009,13,6);
insert into tios_as values (7,'rosario','castillo','325073','amaguaña',0936825,'2010/07/22',2014,20,7);
insert into tios_as values (8,'pilar','serrano','315914','ambato',0936825,'2007/09/11',2011,12,8);
insert into tios_as values (9,'francisco','saez','364972','san lorenzo',0936825,'2007/10/24',2013,5,9);
insert into tios_as values (10,'lucia','hernandez','335874','cuba',0936825,'1999/04/02',2000,30,10);

/*institucion*/
insert into instituciones_educativas values (1,'unidad educativa manabi');
insert into instituciones_educativas values (2,'UE eloy alfaro');
insert into instituciones_educativas values (3,'UE 24 de mayo');
insert into instituciones_educativas values (4,'UE lev vicosky');
insert into instituciones_educativas values (5,'UE olga mesa');
insert into instituciones_educativas values (6,'UE cristo rey');
insert into instituciones_educativas values (7,'UE isacc newton');
insert into instituciones_educativas values (8,'CIB cochapamba ');
insert into instituciones_educativas values (9,'UE primero de agosto');
insert into instituciones_educativas values (10,'UE Genesis');
/*insertar niños del orfanato */
insert into niños_del_orfanato values (1,1,1,1,145820,'juaquin','cesto palma','2003/05/24','manta',
									  '2003/07/25');
insert into niños_del_orfanato values (2,2,2,2,195721,'cristina','cevallos cantos','2002/05/27','quito',
									  '2003/07/25',2);
insert into niños_del_orfanato values (3,3,3,3,143840,'paula','cabeza estrujillo','2003/04/14','portoviejo',
									  '2003/07/25',3);
insert into niños_del_orfanato values (4,4,4,4,145825,'diego','cornejo palma','2001/05/04','manta',
									  '2003/07/25',4);
insert into niños_del_orfanato values (5,5,5,5,145120,'julian','garcia jimenez','2000/05/08','manta',
									  '2003/07/25',5);
insert into niños_del_orfanato values (6,6,6,6,245820,'vicente','fernandez navarro','2001/03/24','portoviejo',
									  '2003/07/25',6);
insert into niños_del_orfanato values (7,7,7,7,142820,'teresa','perez rodriguez','2008/05/21','guayaquil',
									  '2003/07/25',7);
insert into niños_del_orfanato values (8,8,8,8,135820,'ana belen','ruiz palma','2005/09/22','montecristi',
									  '2003/07/25',8);
insert into niños_del_orfanato values (9,9,9,9,135920,'jorge','lopez gonzales','2003/10/23','jaramijo',
									  '2003/07/25',9);
insert into niños_del_orfanato values (10,10,10,10,175823,'irene','cedeño moreno','2007/04/24','rocafuerte',
									  '2003/07/25',10);
							
/*  insertar actividades */
insert into actividades values (1,1,'algebra',2010,'buena');
insert into actividades values (2,2,'artes',2011,'regular');
insert into actividades values (3,3,'matematicas',2019,'regular');
insert into actividades values (4,4,'lectura',2014,'regular');
insert into actividades values (5,5,'paseo',2015,'regular');
insert into actividades values (6,6,'escritura',2016,'regular');
insert into actividades values (7,7,'deportes',2018,'regular');
insert into actividades values (8,8,'cocina',2018,'regular');
insert into actividades values (9,9,'etica',2014,'regular');
insert into actividades values (10,10,'ciencias',2014,'regular');

/*colaboradores */
insert into colaboradores values (1,1,'vicente','calero',236856,'comida');
insert into colaboradores values (2,2,'beatriz','valero',226843,'dinero');
insert into colaboradores values (3,3,'ramon','rodenas',136854,'juguetes');
insert into colaboradores values (4,4,'raquel','alarcon',136232,'equipo deportivo');
insert into colaboradores values (5,5,'mario','arenas',234889,'libros');
insert into colaboradores values (6,6,'ivan','palacios',226456,'comida');
insert into colaboradores values (7,7,'jorge','collado',216450,'libros');
insert into colaboradores values (8,8,'ascension','ramirez',146816,'dinero');
insert into colaboradores values (9,9,'amparo','pardo',234800,'juguetes');
insert into colaboradores values (10,10,'jose miguel','cebrian',231859,'juguetes');

/*historial años aprobados*/

insert into historial_años_aprobados values (1,1,5,'estudiando');
insert into historial_años_aprobados values (2,2,4,'estudiando');
insert into historial_años_aprobados values (3,3,1,'estudiando');
insert into historial_años_aprobados values (4,4,7,'graduado');
insert into historial_años_aprobados values (5,5,6,'graduado');
insert into historial_años_aprobados values (6,6,5,'graduado');
insert into historial_años_aprobados values (7,7,4,'estudiando');
insert into historial_años_aprobados values (8,8,2,'graduado');
insert into historial_años_aprobados values (9,9,2,'estudiando');
insert into historial_años_aprobados values (10,10,3,'graduado');

/*historial citatorio*/
insert into historial_citatorios values (1,1,0);
insert into historial_citatorios values (2,2,5);
insert into historial_citatorios values (3,3,6);
insert into historial_citatorios values (4,4,2);
insert into historial_citatorios values (5,5,0);
insert into historial_citatorios values (6,6,3);
insert into historial_citatorios values (7,7,0);
insert into historial_citatorios values (8,8,3);
insert into historial_citatorios values (9,9,4);
insert into historial_citatorios values (10,10,0);

/*insertar padres adoptivos*/
insert into padres_adoptivos values (1,123456,432687,'jesus','benitez','eva','vivaldo'
		,0976543,0962751,'manta','ingeniero automotriz','contadora','muy bueno','bueno');
insert into padres_adoptivos values (2,113456,130687,'noel','blanco','rosario','duran'
		,0996593,0965755,'quito','ingeniero civil','odontologa','bueno','bueno');
insert into padres_adoptivos values (3,120456,231687,'hugo','sanzs','delia','montes'
		,0977543,0902701,'portoviejo','contador','profesora','muy bueno','muy bueno');
insert into padres_adoptivos values (4,123459,132647,'pascual','torres','aurora','vinces'
		,0978545,0932750,'manta','empresario','ama de casa','muy bueno','bueno');
insert into padres_adoptivos values (5,123455,402685,'felipe','abreu','lucinda','cruz'
		,0906040,0922721,'quevedo','medico cirujano','reumatologa','muy bueno','bueno');
insert into padres_adoptivos values (6,328456,133637,'marlon','ortiz','sandy','intriago'
		,0996523,0902730,'calceta','odontologo','ama de casa','muy bueno','bueno');
insert into padres_adoptivos values (7,133456,132282,'snaider','armijos','maholy','santana'
		,0946044,0932451,'san lorenzo','productor','actriz','muy bueno','muy bueno');
insert into padres_adoptivos values (8,123470,132288,'jackson','cantos','mayte','casanova'
		,0986583,0972758,'puerto lopez','arquitecto','ama de casa','muy bueno','bueno');
insert into padres_adoptivos values (9,173476,239697,'camilo','amaguaña','martha','palacios'
		,0971512,0952852,'rocafuerte','futbolista','ingeniera en sistemas','muy bueno','bueno');		
insert into padres_adoptivos values (10,120450,032080,'antonio','mendez','luisana','arrollo'
		,0934543,0978781,'el empalme','tecnologo','contadora','muy bueno','bueno');		
		
/*niños_adoptados*/
insert into niños_adoptados values (1,1,'jostin','mero','2005/07/12');
insert into niños_adoptados values (2,2,'annie','espimal','2006/03/02');
insert into niños_adoptados values (3,3,'anali','muentes','2004/07/21');
insert into niños_adoptados values (4,4,'javier','prado','2003/03/12');
insert into niños_adoptados values (5,5,'carlos','mero','2005/08/12');
insert into niños_adoptados values (6,6,'juan pablo','mero','2004/04/12');
insert into niños_adoptados values (7,7,'mar','mero','2008/10/12');
insert into niños_adoptados values (8,8,'luna','mero','2010/11/07');
insert into niños_adoptados values (9,9,'pablo','mero','2011/02/08');
insert into niños_adoptados values (10,10,'jefferson','mero','2009/12/12');

/*niños no adoptados */
insert into niños_no_adoptados values (1,1,'timoteo','garcia','2004/06/13');
insert into niños_no_adoptados values (2,2,'katty','gonzales','2003/04/03');
insert into niños_no_adoptados values (3,3,'jhonatan','cedeño','2005/03/23');
insert into niños_no_adoptados values (4,4,'cristrian','plua','2007/10/09');
insert into niños_no_adoptados values (5,5,'mishelle','delgado','2008/09/04');
insert into niños_no_adoptados values (6,6,'melanie','macias','2007/01/07');
insert into niños_no_adoptados values (7,7,'andres','mancilla','2009/02/11');
insert into niños_no_adoptados values (8,8,'cristal','ascanio','2010/11/12');
insert into niños_no_adoptados values (9,9,'naomi','perez','2011/10/14');
insert into niños_no_adoptados values (10,10,'stefania','reyes','2009/04/04');

/*tipos de orfandad*/
insert into tipos_orfandad values (1,1,'padres muertos');
insert into tipos_orfandad values (2,2,'padres presos');
insert into tipos_orfandad values (3,3,'prostitucion');
insert into tipos_orfandad values (4,4,'falta de recursos');
insert into tipos_orfandad values (5,5,'violencia familiar');
insert into tipos_orfandad values (6,6,'padres muertos');
insert into tipos_orfandad values (7,7,'padres muertos');
insert into tipos_orfandad values (8,8,'violencia familiar');
insert into tipos_orfandad values (9,9,'prostitucion');
insert into tipos_orfandad values (10,10,'prostitucion');
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
