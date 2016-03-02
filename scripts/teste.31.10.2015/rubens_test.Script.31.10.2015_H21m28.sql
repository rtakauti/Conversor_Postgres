


-------------------------------------- DATABASE: rubens_test ---------------------------------------


---------------------------------------- DROP DE SEQUENCES -----------------------------------------
/*

DROP SEQUENCE IF EXISTS public.tabela3_cd_codigo_seq;


*/


--------------------------------------- CREATE DE SEQUENCES ----------------------------------------

CREATE SEQUENCE public.tabela11_cd_codigo_seq;

CREATE SEQUENCE public.tabela2_cd_codigo_seq;


----------------------------------------- CREATE DE TABLE ------------------------------------------


CREATE TABLE public.cities
(
	altitude integer,
	name text,
	population double precision
);


CREATE TABLE public.sal_emp
(
	bigintarray  bigint [] ,
	bitarray  bit (1) [] ,
	bitarray1  bit varying [] ,
	bits bit (1),
	booleano boolean,
	booleanoarray  boolean [] ,
	box box,
	boxarray  box[] ,
	bytea bytea,
	byteaarray  bytea[] ,
	chara character (500),
	chararray  character (1) [] ,
	cidr cidr,
	cidrarray  cidr[] ,
	circle circle,
	circlearray  circle[] ,
	datearray  date[] ,
	dates date,
	decimalarray  numeric[] ,
	decimale numeric,
	floatarray  double precision [] ,
	floate double precision,
	floate1 double precision,
	inet inet,
	inetarray  inet[] ,
	integerarray  integer [] ,
	intervalarray  interval[] ,
	intervale interval (3) ,
	len interval HOUR TO MINUTE ,
	line line,
	linearray  line[] ,
	lseg lseg,
	lsegarray  lseg[] ,
	macaddr macaddr,
	macaddrarrary  macaddr[] ,
	money money,
	moneyarray  money[] ,
	numerico numeric,
	numerico1 numeric(8,0) ,
	numerico2 numeric(5,2) ,
	numericoarray  numeric[] ,
	numericoarray1  numeric[] ,
	path path,
	patharray  path[] ,
	point point,
	pointarray  point[] ,
	polygon polygon,
	polygonarray  polygon[] ,
	realarray  real [] ,
	reale real,
	smallintarray  smallint [] ,
	smallinte smallint,
	stamp timestamp (6) without time zone,
	stamp1 timestamp (3) without time zone,
	stamp1array  time without time zone [] ,
	stampnozone timestamp (1) without time zone,
	stampnozonearray  time without time zone [] ,
	stampzone timestamp (1) with time zone,
	stampzonearray  time with time zone [] ,
	tempo time (6) without time zone,
	tempo1 time (3) without time zone,
	tempo1array  time without time zone [] ,
	temponozone time (1) without time zone,
	temponozonearray  time without time zone [] ,
	tempozone time (2) with time zone,
	tempozonearray  time with time zone [] ,
	textarray  text[] ,
	texto text,
	tsquery tsquery,
	tsqueryarray  tsquery[] ,
	tsvector tsvector,
	tsvectorarray  tsvector[] ,
	txid_snapshot txid_snapshot,
	txid_snapshotarray  txid_snapshot[] ,
	uuid uuid,
	uuidarray  uuid[] ,
	varcahar character varying (100),
	varchararray  character varying [] ,
	xmle xml,
	xmlearray  xml[] 
);


CREATE TABLE public.tabela11
(
	cd_codigo bigint NOT NULL DEFAULT nextval('tabela11_cd_codigo_seq'::regclass) 
);


CREATE TABLE public.tabela2
(
	cd_codigo bigint NOT NULL DEFAULT nextval('tabela2_cd_codigo_seq'::regclass) ,
	ds_descricao text DEFAULT 'teste'::text ,
	dt_data timestamp (6) with time zone,
	nm_nome character varying (20) DEFAULT 'teste'::character varying ,
	nr_numero numeric(8,1)  DEFAULT 30 
);


CREATE TABLE public.tictactoe
(
	squares  integer [] 
);


-------------------------------------------- ADD COLUMN --------------------------------------------

ALTER TABLE public.tabela3 ADD COLUMN cd1_codigo 
	bigint
	NOT NULL ;

ALTER TABLE public.tabela3 ADD COLUMN cd2_codigo 
	bigint;

ALTER TABLE public.tabela3 ADD COLUMN cod1_codigo 
	bigint;

ALTER TABLE public.tabela3 ADD COLUMN id1_identity 
	bigint;

ALTER TABLE public.tabela3 ADD COLUMN nm_nome 
	text;


------------------------------------------- ALTER COLUMN -------------------------------------------


--TABELA: publictabela3

-- ESTADO ANTERIOR: cd_codigo --  column_default => nextval('tabela3_cd_codigo_seq'::regclass)
ALTER TABLE public.tabela3 ALTER COLUMN cd_codigo DROP DEFAULT;


---------------------------------------- ADD DE CONSTRAINT -----------------------------------------

ALTER TABLE public.tabela2
	ADD CONSTRAINT tabela1_pkey PRIMARY KEY (cd_codigo) ;

ALTER TABLE public.tabela3
	ADD CONSTRAINT ck_igual CHECK (cd_codigo = id_identity) ;

ALTER TABLE public.tabela3
	ADD CONSTRAINT fk_tabela2 FOREIGN KEY (cd2_codigo) 
	REFERENCES tabela2  (cd_codigo)  MATCH SIMPLE 
	ON UPDATE NO ACTION  ON DELETE NO ACTION ;

ALTER TABLE public.tabela3
	ADD CONSTRAINT uq_descricao UNIQUE (ds_descricao) ;


--------------------------------------- ALTER DE CONSTRAINT ----------------------------------------

ALTER TABLE IF EXISTS public.tabela3
	DROP CONSTRAINT IF EXISTS pk_tabela3;

ALTER TABLE public.tabela3
	ADD CONSTRAINT pk_tabela3 PRIMARY KEY (cd_codigo, cd1_codigo) ;


---------------------------------------- CREATE DE INDICES -----------------------------------------

CREATE INDEX tabela3_descricao_idx
	ON public.tabela3
	USING btree
	(ds_descricao);

CREATE INDEX tabela3_nome_idx2
	ON public.tabela3
	USING btree
	(ds_descricao, nm_nome);

/*

COMMIT;


ROLLBACK;

*/