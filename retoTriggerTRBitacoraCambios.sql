DELIMITER |
create trigger tr_bitacora_cambios /*nombre del trigger*/
after       /*cuando se va a ejecutar, antes o despues de la operación */
update /* tipo de operación a monitorear, cuando el usuario o la app actualice, inserte, elimine...*/
on activos /*nombre de la tabla*/
for each row /*para cada registro que sea modificado*/
begin /*inicia todo el chorizo que hará el trigger*/
	insert into bitacora_cambios
    (id, fecha_cambio, sueldo_issste_anterior, sueldo_issste_nuevo)
    values (OLD.id, NOW(), OLD.sueldo_issste, NEW.sueldo_issste);
    END |
DELIMITER ;

select * from activos;