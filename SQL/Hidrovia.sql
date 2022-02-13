create table hidrovia(
	cod_hidrov integer,
	cod_pnv varchar(100),
	codigo_tre integer,
	extensao double precision,
	gid varchar(100),
	legislacao varchar(100),
	modal varchar(100),
	nome varchar(100),
	pnv_oficia varchar(100),
	situacao varchar(100)
)

select addgeometrycolumn('geodata', 'hidrovia', 'geom', 4326,
'MULTILINESTRING', 2);

copy hidrovia from '/csv/Hidrovia/final.csv'
delimiter ';' CSV HEADER;

select * from hidrovia;