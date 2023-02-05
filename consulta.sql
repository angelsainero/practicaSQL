--consulta 

--Nombre modelo, marca y grupo de coches (los nombre de todos)
-- Fecha de compra
-- Matricula
-- Nombre del color del coche
-- Total kilómetros
-- Nombre empresa que está asegurado el coche
-- Número de póliza



select co.idcoche,gr.nombre, ma.nombre, mo.nombre, co.fechaCompra, co.matricula,  col.nombre, co.kmTotales, ase.nombre, aseh.numPoliza  
from practicasql.coche co inner join practicasql.modelo mo on co.idmodelo=mo.idmodelo
join practicasql.marca ma on mo.idMarca=ma.idMarca
join practicasql.grupo gr on ma.idGrupo=gr.idGrupo
join practicasql.colores col on co.idColor=col.idColor
join practicasql.aseguradora_coche_hist aseh on co.idcoche = aseh.idcoche 
join practicasql.aseguradoras ase on aseh.idaseguradora = ase.idaseguradora 
;