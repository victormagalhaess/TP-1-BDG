create table bacia_hidrografica(
	areakm2 double precision,
	gid integer,
	regiao_hid varchar(100)
)

select addgeometrycolumn('geodata', 'bacia_hidrografica', 'geom', 4326,
'MULTIPOLYGON', 2);

copy bacia_hidrografica from '/csv/Baci_Hidro/final.csv'
delimiter ';' CSV HEADER;

select * from bacia_hidrografica;