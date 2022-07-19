#DDL
drop database if exists banco;
create database banco;
use banco;

create table clientes (
	idCliente int not null auto_increment,
    primary key (idCliente),
    nombreCliente varchar (100),
    direccionCliente varchar (100),
	telTrabajo varchar (8),
    telCasa varchar (8),
    telMovil varchar (8),
    compañiaMovil varchar (10),
    sexoCliente char (1),
    nacionalidadCliente varchar (30),
    dpiCliente varchar (13),
    pasaporteCliente varchar (16)
);
create table cuentas (
	idCuenta int not null auto_increment,
    primary key (idCuenta),
    tipoCuenta varchar (50),
    monedaCuenta varchar (3),
    montoCuenta float (8),
    idCliente int,
    foreign key (idCliente) references clientes(idCliente)
);
create table usuarios (
	idUsuario int not null auto_increment,
    primary key (idUsuario),
    nombreUsuario varchar (15) unique,
    contraseñaUsuario varchar (20),
    estadoUsuario varchar (15),
    idCliente int,
    foreign key (idCliente) references clientes(idCliente)
);
create table proveedores (
	idProveedor int not null auto_increment,
    primary key (idProveedor),
    nombreProveedor varchar (50),
    idPago varchar (12)
);
create table luz (
	correlativoLuz int not null auto_increment,
    primary key (correlativoLuz)
);
create table agua (
	correlativoAgua int not null auto_increment,
    primary key (correlativoAgua)
);
create table telefono (
	noTelefono int not null auto_increment,
    primary key (noTelefono)
);
create table estudios (
	idAlumno int not null auto_increment,
	primary key (idAlumno)
);
create table historial (
	idHistorial int not null auto_increment,
    primary key (idHistorial),
    fecha date,
    idUsuario int,
	desTransaccion varchar (100),
    monto float (8)
);
