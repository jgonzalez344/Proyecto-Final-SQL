#Procedimientos Almacenados
use banco;

DELIMITER $$
create procedure sp_AgregarHistorial (in fecha_h date, in idUsuario_h int, in desTransacion_h varchar (100) , in monto_h float (8) )
begin
insert into historial (fecha, idUsuario, desTransaccion, monto) values (fecha_h , idUsuario_h, desTransacion_h, monto_h );
end $$
DELIMITER ;

call sp_AgregarHistorial ("2020-10-03","1","Pago agua","300.00");

select * from historial;

drop procedure if exists sp_ActualizarHistorial;

DELIMITER $$
create procedure sp_ActualizarHistorial (in idHistorial_h int, in fecha_h date, in idUsuario_h int, in desTransaccion_h varchar (100) , in monto_h float (8) )
begin
update  historial set fecha=fecha_h, idUsuario=idUsuario_h, desTransaccion=desTransaccion_h, monto=monto_h where idHistorial_h=idHistorial;
end $$
DELIMITER ;

call sp_ActualizarHistorial("1","2020-09-30","1","Pago teléfono","600");

select * from historial;

drop procedure if exists sp_BorrarHistorial;

DELIMITER $$ 
create procedure sp_BorrarHistorial (in idHistorial_h int)
begin
delete from Historial where idHistorial = idHistorial_h;
end $$;
DELIMITER ;

call sp_BorrarHistorial (1);

select * from historial 