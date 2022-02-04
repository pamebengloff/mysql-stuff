DELIMITER |
CREATE TRIGGER tr_bitacora_elimina
BEFORE DELETE on activos
for each row
			insert into bitacora_activos
	(id, apellido_p, apellido_m, nombres, nuevo_ingreso, fecha_ingreso, fecha_borrado,  
    nombramiento_anterior, nombramiento_nuevo, sueldo_issste_anterior, sueldo_issste_nuevo, 
     num_ramo_anterior, num_ramo_nuevo, entidad_anterior, entidad_nuevo, 
     modalidad_anterior, modalidad_nuevo, sector_anterior, sector_nuevo) 
		values 
	(OLD.id, OLD.apellido_paterno, OLD.apellido_materno, OLD.nombre, 'No', OLD.fecha_ingreso, NOW(), 
	OLD.nombramiento, OLD.nombramiento, OLD.sueldo_issste, OLD.sueldo_issste, 
	OLD.num_ramo, OLD.num_ramo, OLD.entidad, OLD.entidad,
	OLD.modalidad, OLD.modalidad, OLD.sector, OLD.sector);
    END | 
    DELIMITER ;
            
delete from activos where id= 252798931;
select * from bitacora_activos;