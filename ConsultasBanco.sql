#Consultas
use banco;

drop procedure if exists sp_Consulta1;
DELIMITER $$
create procedure sp_Consulta1 (in idCliente int)
begin
select idCuenta, montoCuenta from cuentas c inner join clientes cl on c.idCliente=idCliente where cl.idCliente=idCliente;
end $$
DELIMITER ;

call sp_Consulta1 (1);

drop procedure if exists sp_Consulta2;
DELIMITER $$
create procedure sp_Consulta2 (in idUsuario int)
begin
select h.fecha, u.nombreUsuario , h.desTransaccion from historial h inner join usuarios u on h.idUsuario=idUsuario where u.idUsuario=idUsuario
and h.fecha between "2020-09-01" and "2020-12-31";
end $$
DELIMITER ;

call sp_Consulta2 (2); 