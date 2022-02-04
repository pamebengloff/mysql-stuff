create table bitacora_activos(
/*aqui se guardarán los datos de update y delete*/

id INT(11) NOT NULL,
apellido_p varchar(45) NOT NULL,
apellido_m varchar(45) NOT NULL,
nombres varchar(45) NOT NULL,
nuevo_ingreso varchar(2),
fecha_ingreso date,
fecha_borrado date,
fecha_cambio date,
sueldo_issste_anterior decimal(7,2),
sueldo_issste_nuevo decimal(7,2) NOT NULL,
nombramiento_anterior varchar(45),
nombramiento_nuevo varchar(45),
num_ramo_anterior mediumint(5),
num_ramo_nuevo mediumint(5),
entidad_anterior varchar(20),
entidad_nuevo varchar(20),
modalidad_anterior varchar(70),
modalidad_nuevo varchar(70),
sector_anterior varchar(40),
sector_nuevo varchar(40),
  PRIMARY KEY (id, apellido_p, apellido_m, nombres)

);
