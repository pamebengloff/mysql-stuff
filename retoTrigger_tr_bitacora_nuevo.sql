/*TAREA RETO TRIGGER PARA LOS NUEVOS*/

DELIMITER | 
CREATE TRIGGER tr_bitacora_nuevo
AFTER INSERT ON activos
FOR EACH ROW
BEGIN
	INSERT INTO bitacora_activos(id, apellido_p, apellido_m, nombres, fecha_ingreso, 
    nuevo_ingreso, nombramiento_nuevo, sueldo_issste_nuevo, num_ramo_nuevo, 
    entidad_nuevo, modalidad_nuevo, sector_nuevo) 
values (NEW.id, NEW.apellido_paterno, NEW.apellido_materno, NEW.nombre, NOW(), 'Si', NEW.nombramiento, 
NEW.sueldo_issste, NEW.num_ramo, NEW.entidad, NEW.modalidad, NEW.sector);
END |
DELIMITER ;

