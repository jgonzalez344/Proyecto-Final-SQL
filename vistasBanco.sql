#Vistas 
use banco;

create view gestion as
select * from historial where monto>=1000;

select * from gestion;

create view vagua as
select * from agua;

create view vclientes as
select * from clientes;

create view vcuentas as
select * from cuentas;

create view vestudios as
select * from estudios;

create view vhistorial as
select * from historial;

create view vluz as
select * from luz;

create view vproveedores as
select * from proveedores;

create view vtelefono as
select * from telefono;

create view vusuarios as
select * from usuarios;