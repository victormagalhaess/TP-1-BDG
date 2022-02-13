create table resumo (
  uf varchar(5),
  entidade_fiscalizadora varchar(100),
  barragens integer,
  outorgadas integer,
  com_empreendedor_identificado integer,
  submetidas_lei integer,
  sem_informacao integer,
  classificadas_dpa integer,
  classificadas_cri integer,
  submetidas_dpa integer,
  submetidas_cri integer,
  submetidas_cri_dpa integer,
  psb integer,
  isr_ise integer,
  rpsb integer,
  pae integer,
  barragens_diferentes_2020 integer,
  barragem_empreendedores_autuados integer,
  barragens_preocupam integer,
  equipe_exclusiva_seguranca integer,
  equipes_outros_areas integer,
  equipe_total integer,
  horas_capacitacao double precision,
  psb_desc varchar(100),
  isr_desc varchar(100),
  ise_desc varchar(100),
  rpsb_desc varchar(100),
  pae_desc varchar(100)
);
copy resumo from '/csv/Resumo/Resumo.csv'
delimiter ',' CSV HEADER;

SELECT * FROM resumo;