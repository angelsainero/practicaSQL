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

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('001', '308', '001');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('002', '2008', '001');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('003', '408', '001');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('004', 'Leon', '001');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('005', 'C3', '002');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('006', 'C5', '002');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('007', 'Berlingo', '002');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('008', 'C4 Picasso', '002');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('009', 'EQ fortwo', '007');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('010', 'EQ fortwo cabrio', '007');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('011', 'Megane', '008');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('012', 'Clio', '008');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('013', 'Captur', '008');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('014', 'Kangoo', '008');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('015', 'CHR', '005');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('016', 'Yaris', '005');

insert into practicasql.modelo 
(idModelo, nombre, idMarca)
values('017', 'Corolla', '005');

insert into practicasql.modelo
(idModelo, nombre, idMarca)
values('018', 'RAV4', '005');


--tabla aseguradoras

create table practicasql.aseguradoras(
	idAseguradora varchar(20)  not null, --PK
	nombre varchar(20) not null	
);

alter table practicasql.aseguradoras
add constraint  idAseguradora_PK primary key (idAseguradora);

--carga datos aseguradoras

insert into practicasql.aseguradoras
(idAseguradora, nombre)
values('AXA', 'AXA SEGUROS');

insert into practicasql.aseguradoras
(idAseguradora, nombre)
values('MUT', 'MUTUA MADRILEÑA');

insert into practicasql.aseguradoras
(idAseguradora, nombre)
values('REA', 'REALES SEGUROS');

insert into practicasql.aseguradoras
(idAseguradora, nombre)
values('FEN', 'FENIX DIRECTO');

insert into practicasql.aseguradoras
(idAseguradora, nombre)
values('MMT', 'MMT SEGUROS');

--tabla revisiones

create table practicasql.revisiones(
	idRevision varchar(20)  not null, --PK
	nombre varchar(40) not null	
);

alter table practicasql.revisiones
add constraint  idRevision_PK primary key (idRevision);

--carga datos revisiones

insert into practicasql.revisiones
(idRevision, nombre)
values('PRE', 'Revisión PRE-Entrega');

insert into practicasql.revisiones
(idRevision, nombre)
values('5000', '1º Revisión 5000 Km.');

insert into practicasql.revisiones
(idRevision, nombre)
values('10000', '2º Revisión 10000 Km.');

insert into practicasql.revisiones
(idRevision, nombre)
values('30000', '3º Revisión 30000 Km.');

insert into practicasql.revisiones
(idRevision, nombre)
values('60000', '4º Revisión 60000 Km.');

insert into practicasql.revisiones
(idRevision, nombre)
values('100000', '5º Revisión 100000 Km.');


--tabla moneda

create table practicasql.moneda(
	idmoneda varchar(20)  not null, --PK
	nombre varchar(40) not null	
);

alter table practicasql.moneda
add constraint  idMoneda_PK primary key (idMoneda);

--carga datos monedas

insert into practicasql.moneda
(idMoneda, nombre)
values('EUR', 'Euro');

insert into practicasql.moneda
(idMoneda, nombre)
values('GBP', 'Libra');


--tabla colores

create table practicasql.colores(
	idColor varchar(20)  not null, --PK
	nombre varchar(40) not null	
);

alter table practicasql.colores
add constraint  idColor_PK primary key (idColor);

--carga de datos colores

insert into practicasql.colores
(idColor, nombre)
values('001', 'Rojo');

insert into practicasql.colores
(idColor, nombre)
values('002', 'Verde');

insert into practicasql.colores
(idColor, nombre)
values('003', 'Azul');

insert into practicasql.colores
(idColor, nombre)
values('004', 'Plata');

insert into practicasql.colores
(idColor, nombre)
values('005', 'Negro');



--tabla coche

create table practicasql.coche(
	idCoche varchar(20)  not null, --PK
	matricula varchar(20) not null, --PK	
	idModelo varchar(20) not null,	
	fechaCompra date null default '4000-01-01',
	fechaBaja date null default '4000-01-01',	
	idColor varchar(20) not null,	
	importeCompra varchar(40) not null,
	kmTotales varchar(20) not null
	
);

alter table practicasql.coche
add constraint  Coches_PK primary key (idCoche);


alter table practicasql.coche
add constraint idModelo_FK foreign key (idModelo)
references practicasql.modelo(idModelo);

alter table practicasql.coche
add constraint idColor_FK foreign key (idColor)
references practicasql.colores(idColor);

--carga datos coche
insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('001', '3456BBZ', '001','2019-02-12','001','15256','123454');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('002', '2426BCZ', '002','2015-02-12','2020-02-12','002','16356','113456');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('003', '3576AAZ', '003','2018-03-16','003','19256','123441');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('004', '4456BBZ', '004','2018-04-12','2019-05-18','004','15256','143556');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('005', '3456BRT', '005','2017-07-18', '005','5256','124856');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('006', '1116BBZ','006','2020-01-22','004','8256','125056');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('007', '3456CCZ', '004','2020-01-12','005','13256','121956');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('008', '3555BFZ', '007','2021-01-02','002','12256','123566');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, idColor, importeCompra, kmTotales)
values('009', '3456BCZ', '008','2019-02-16','002','15356','123445');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('010', '3256CBZ', '009','2018-02-12','2020-01-12','001','15256','123476');


insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('011', '1256CBZ', '010','2018-02-12','2020-01-12','001','15256','148456');


insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('012', '3236CZC', '011','2018-02-12','2020-01-12','001','15296','158456');


insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('013', '3256CZZ', '012','2018-02-12','2020-01-12','001','15456','233456');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('014', '3246BZZ', '013','2019-02-12','2020-01-12','002','14256','137456');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('015', '3255CAZ', '014','2019-02-12','2020-01-12','004','14256','123465');

insert into practicasql.coche 
(idCoche, matricula, idModelo, fechaCompra, fechaBaja, idColor, importeCompra, kmTotales)
values('016', '1156CBZ', '015','2019-02-12','2020-01-12','002','14256','124466');




--tabla aseguradora_coche_hist

create table practicasql.aseguradora_coche_hist(
	idAseguradora varchar(20)  not null, --PK
	idCoche varchar(20) not null, --PK	
	fechaAlta varchar(20) not null default current_date, --PK	
	numPoliza varchar(20) not null,
	fechaBaja date null default '4000-01-01'		
);


alter table practicasql.aseguradora_coche_hist
add constraint aseguradora_coche_PK primary key (idAseguradora,idCoche,fechaAlta);


alter table practicasql.aseguradora_coche_hist
add constraint aseguradora_hist_FK foreign key (idAseguradora)
references practicasql.aseguradoras(idAseguradora);

alter table practicasql.aseguradora_coche_hist
add constraint aseg_coche_hist_FK foreign key (idCoche)
references practicasql.coche(idCoche);


--carga datos aseguradora_coche_hist

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza, fechaBaja)
values('AXA', '001', '2021-12-25','1548754','2022-01-30');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza, fechaBaja)
values('MUT', '002', '2020-12-25','1554752','2022-03-30');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('AXA', '002', '2022-03-30','1252752');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MUT', '001', '2022-01-30','1153732');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('AXA', '003', '2021-03-30','1354658');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('AXA', '004', '2020-01-30','15244582');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('FEN', '005', '2020-11-12','14254582');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('REA', '006', '2020-11-13','13254781');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('FEN', '007', '2020-12-13','23254681');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('REA', '008', '2020-11-11','13254781');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MMT', '009', '2020-01-23','23254791');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MMT', '010', '2020-01-23','12254791');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MMT', '011', '2020-01-23','11254791');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MMT', '012', '2020-01-23','23325491');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('MMT', '013', '2020-01-23','24247691');

insert into practicasql.aseguradora_coche_hist 
(idAseguradora, idCoche, fechaAlta, numPoliza)
values('REA', '013', '2020-01-23','13256791');

--tabla revisiones_coche_hist

create table practicasql.revisiones_coche_hist(
	idCoche varchar(20) not null, --PK
	idRevision varchar(20) not null, --PK	
	fechaRevision date not null default current_date, --PK	
	numkm varchar(20) not null,
	idMoneda varchar(20) not null,
	importe varchar(20) not null,
	descripcion varchar(256) null	
);


alter table practicasql.revisiones_coche_hist
add constraint revisiones_coche_PK primary key (idCoche, idRevision);


alter table practicasql.revisiones_coche_hist
add constraint revision_hist_FK foreign key (idRevision)
references practicasql.revisiones(idRevision);

alter table practicasql.revisiones_coche_hist
add constraint idcoche_hist_FK foreign key (idCoche)
references practicasql.coche(idCoche);

alter table practicasql.revisiones_coche_hist
add constraint idmoneda_FK foreign key (idMoneda)
references practicasql.moneda(idMoneda);

--carga datos revisiones_coche_hist

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('001', 'PRE', '2020-11-11','132543','EUR','35,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('002', '5000', '2020-11-11','132521','EUR','23');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('003', '10000', '2020-11-11','132341','EUR','35,66');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('004', '30000', '2020-11-11','132561','EUR','36,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('005', '60000', '2020-11-11','132421','EUR','70,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('006', '5000', '2020-11-11','132941','EUR','80,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('007', '10000', '2020-11-11','162521','EUR','75,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('008', '30000', '2020-11-11','132541','EUR','36,61');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('009', '60000', '2020-11-11','132511','EUR','37,26');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('010', '60000', '2020-11-11','132541','EUR','34,76');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('011', '60000', '2020-11-11','132541','EUR','65,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('012', '60000', '2020-11-11','132541','EUR','85,51');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('013', '60000', '2020-11-11','132541','EUR','37,46');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('014', '60000', '2020-11-11','132541','EUR','55,56');

insert into practicasql.revisiones_coche_hist 
(idCoche, idRevision, fechaRevision, numKm, idMoneda, importe)
values('015', '60000', '2020-11-11','132541','EUR','63,56');


--consulta 

--Nombre modelo, marca y grupo de coches (los nombre de todos)
-- Fecha de compra
-- Matricula
-- Nombre del color del coche
-- Total kilómetros
-- Nombre empresa que está asegurado el coche
-- Número de póliza

select * from practicasql.revisiones

select co.idcoche,gr.nombre, ma.nombre, mo.nombre, co.fechaCompra, co.matricula,  col.nombre, co.kmTotales, ase.nombre, aseh.numPoliza  
from practicasql.coche co inner join practicasql.modelo mo on co.idmodelo=mo.idmodelo
join practicasql.marca ma on mo.idMarca=ma.idMarca
join practicasql.grupo gr on ma.idGrupo=gr.idGrupo
join practicasql.colores col on co.idColor=col.idColor
join practicasql.aseguradora_coche_hist aseh on co.idcoche = aseh.idcoche 
join practicasql.aseguradoras ase on aseh.idaseguradora = ase.idaseguradora 
;

