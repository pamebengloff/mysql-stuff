DELIMITER | 							/*TAREA RETO TRIGGER PARA LOS UPDATE*/
CREATE TRIGGER tr_bitacora_mod
after update on activos
for each row
begin
		insert into bitacora_activos
	(id, apellido_p, apellido_m, nombres, fecha_ingreso, fecha_cambio, 
    nombramiento_anterior, nombramiento_nuevo, sueldo_issste_anterior, sueldo_issste_nuevo, 
     num_ramo_anterior, num_ramo_nuevo, entidad_anterior, entidad_nuevo, 
     modalidad_anterior, modalidad_nuevo, sector_anterior, sector_nuevo) 
		values 
	(NEW.id, NEW.apellido_paterno, NEW.apellido_materno, NEW.nombre, OLD.fecha_ingreso, NOW(), 
	OLD.nombramiento, NEW.nombramiento, OLD.sueldo_issste, NEW.sueldo_issste, 
	OLD.num_ramo, NEW.num_ramo, OLD.entidad, NEW.entidad,
	OLD.modalidad, NEW.modalidad, OLD.sector, NEW.sector);
END |
DELIMITER ;
