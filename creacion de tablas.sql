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
	id_niños integer,
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

create table padres_adoptivos (
id_padre_adoptivos integer primary key,
	id_niños integer,
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

