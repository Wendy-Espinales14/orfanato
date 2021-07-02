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