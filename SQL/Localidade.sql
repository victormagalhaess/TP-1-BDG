create table localidade (
	alt double precision, 
	cd_categoria varchar(1000),
	cd_geocodb varchar(1000),
	cd_geocodd varchar(1000),
	cd_geocodi varchar(1000),  
	cd_geocodm varchar(1000),
	cd_geocods varchar(1000),
	cd_nivel integer,
	gid integer,
	gmrotation integer,
	identifier integer,
	lat double precision,
	long double precision,
	nome_bairro varchar(1000),
	nome_categoria varchar(1000),
	nome_distrito varchar(1000),
	nome_localidade varchar(1000),
	nome_meso varchar(1000),
	nome_micro varchar(1000),
	nome_municipio varchar(1000),
	nome_subdistrito varchar(1000),
	nome_uf varchar(1000),
	tipo varchar(1000)
);

copy localidade from '/csv/localidade/Localidade.csv'
delimiter ',' CSV HEADER;

select addgeometrycolumn('geodata', 'localidade', 'geom', 4326,
'POINT', 2);

update localidade set geom = st_setsrid(st_makepoint(long,
lat), 4326);


SELECT * FROM localidade