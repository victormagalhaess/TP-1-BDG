create table barragem (
codigo_SNISB integer,
nome_barr varchar(1000),
nome_sec varchar(1000),
uso_principal varchar(1000),
uf varchar(10),
municipio varchar(1000),
cat_risco varchar(100),
dano_potencial_assoc varchar(100),
nome_empr varchar(1000),
orgao_fisc varchar(1000),
cod_barr_fisc varchar(100),
reg_pela_pnsb varchar(100),
num_aut varchar(100),
possui_pae varchar(10),
possu_plano_seg varchar(10),
possui_rev_perio varchar(10),
data_ult_fiscaliz varchar(15),
barr_autuada varchar(10),
alt_fundacao_m double precision,
alt_terreno_m double precision,
cap_hm3 double precision,
compr_coroa_m double precision,
tipo_material varchar(100),
uso_complementar varchar(1000),
classe_residuo varchar(1000),
curso_dagua_barr_oto varchar(100),
reg_hidro varchar(100),
unid_gestao varchar(100),
data_ult_inspecao varchar(15),
tipo_ult_inspecao varchar(100),
nivel_perigo_global varchar(100),
possui_eclusa varchar(10),
fase_da_vida varchar(100),
lat double precision,
long double precision,
complet_dados varchar(100),
outorgada varchar(100),
empr_identif varchar(10),
tipo_empreend varchar(100),
tem_info_altura varchar(10),
maior_altura varchar(100),
faixa_altura varchar(100),
tem_info_volume varchar(10),
faixa_volume varchar(100),
classif_cri varchar(10),
classif_dpa varchar(10),
inspecao_periodo_rsb varchar(100),
n varchar(100),
seq varchar(100),
extra varchar(10),
extra2 varchar(10)
);

copy barragem from '/csv/Barragem/Barragem.csv'
delimiter ',' CSV HEADER;

select addgeometrycolumn('geodata', 'barragem', 'geom', 4326,
'POINT', 2);

update barragem set geom = st_setsrid(st_makepoint(long,
lat), 4326);

delete from barragem where codigo_snisb is null or codigo_snisb in ('22000', '19139', '23538', '22690');

SELECT * FROM barragem;