select COUNT(N.id_niño) total,  COUNT (S.id_niño) as si_adop,
COUNT (N.id_niño)-COUNT (S.id_niño) as No_adop
from niños_del_orfanato N LEFT join 
padres_adoptivos S on S.id_niño = N.id_niño
