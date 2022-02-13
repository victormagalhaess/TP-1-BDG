create table rodovias(
	sigla varchar(100),
	gid integer,
	shape_len double precision,
)


select addgeometrycolumn('geodata', 'rodovias', 'geom', 4326,
'MULTILINESTRING', 2);

copy rodovias from '/csv/Rodovias/Rodovias.csv'
delimiter ';' CSV HEADER;

select * from rodovias;