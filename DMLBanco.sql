#DML
use banco;

insert into clientes (nombreCliente, direccionCliente, telTrabajo, telCasa, telMovil, compañiaMovil, sexoCliente, nacionalidadCliente, dpiCliente, pasaporteCliente) values ("Juan Garza","5ta Calle 3ra Avenida zona 6","45678134","1479460","14678046","Tigo","M","Guatemala","4579134681573","6748054");
insert into clientes (nombreCliente, direccionCliente, telTrabajo, telCasa, telMovil, compañiaMovil, sexoCliente, nacionalidadCliente, dpiCliente, pasaporteCliente) values ("Javiera Peruano","6ta Calle 5ta Avenida zona 7","47813450","15480614","80467310","Claro","F","Guatemala","5479134685760","76498031");

insert into cuentas(tipoCuenta, monedaCuenta, montoCuenta, idCliente) values ("Monetaria","USD","1560.30","2");
insert into cuentas(tipoCuenta, monedaCuenta, montoCuenta, idCliente) values ("Ahorros","Q","14760.50","1");

insert into usuarios (nombreUsuario, contraseñaUsuario, estadoUsuario, idCliente) values ("JuanElCrack", "123456789", "Habilitado", "1");
insert into usuarios (nombreUsuario, contraseñaUsuario, estadoUsuario, idCliente) values ("JavieraPeru123", "987654321", "Deshabilitado", "2");

insert into proveedores (nombreProveedor, idPago)values("Eggsa","111111");
insert into proveedores (nombreProveedor, idPago)values("Empagua","222222");
insert into proveedores (nombreProveedor, idPago)values("Kinal","201857");
insert into proveedores (nombreProveedor, idPago)values("Claro","333333");

insert into luz (correlativoLuz) values ("111111");

insert into agua (correlativoAgua) values ("222222");

insert into telefono (noTelefono) values ("14678046");

insert into estudios (idAlumno) values ("2018578");

insert into historial (fecha, idUsuario, desTransaccion, monto) values ("2020-09-30","1", "Pago teléfono","300.00");
insert into historial (fecha, idUsuario, desTransaccion, monto) values ("2020-09-29","2", "Pago colegio","500.00");
insert into historial (fecha, idUsuario, desTransaccion, monto) values ("2020-09-29","1", "Pago Luz","1200.00");