create schema practicasql authorization otpvuhqp;

--tabla grupo
create table practicasql.grupo(
	idGrupo varchar(20)  not null, --PK
	nombre varchar(20) not null	
);

alter table practicasql.grupo
add constraint  idGrupo_PK primary key (idGrupo);

--tabla marca
create table practicasql.marca(
	idMarca varchar(20)  not null, --PK
	nombre varchar(20) not null,	
	idGrupo varchar(20)  not null
);

alter table practicasql.marca
add constraint  idMarca_PK primary key (idMarca);

alter table practicasql.marca
add constraint idGrupo_FK foreign key (idGrupo)
references practicasql.grupo(idGrupo);


--tabla modelo
create table practicasql.modelo(
	idModelo varchar(20)  not null, --PK
	nombre varchar(20) not null,	
	idMarca varchar(20)  not null
);

alter table practicasql.modelo
add constraint  idModelo_PK primary key (idModelo);

alter table practicasql.modelo
add constraint idMarca_FK foreign key (idMarca)
references practicasql.marca(idMarca);


--cargamos datos grupo

insert into practicasql.grupo 
(idGrupo, nombre)
values('001', 'Stellantis');

insert into practicasql.grupo 
(idGrupo, nombre)
values('002', 'General Motors');

insert into practicasql.grupo 
(idGrupo, nombre)
values('003', 'BMW');

insert into practicasql.grupo 
(idGrupo, nombre)
values('004', 'Renault-Nissan');

insert into practicasql.grupo 
(idGrupo, nombre)
values('005', 'Toyota-Motors');


--cargamos datos marca
insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('001', 'Peugeot', '001');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('002', 'Citroen', '001');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('003', 'Fiat', '001');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('004', 'Cadillac', '002');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('005', 'Chevrolet', '002');

insert into practicasql.marca
(idMarca, nombre, idGrupo)
values ('006', 'BMW', '003');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('007', 'SMART', '003');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('008', 'Renault', '004');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('009', 'Nissan', '004');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('010', 'Toyota', '005');

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('011', 'Lexus', '005');

--cargamos datos modelos

insert into practicasql.marca 
(idMarca, nombre, idGrupo)
values('011', 'Lexus', '005');
