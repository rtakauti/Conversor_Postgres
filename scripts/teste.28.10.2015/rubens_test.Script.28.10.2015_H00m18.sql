

------------------ DATABASE: rubens_test ------------------


------ DEV SCHEMAS ------
	-- public

------ HOMOLOG SCHEMAS ------
	-- public

------ DEV SEQUENCES ------
	-- public.tabela11_cd_codigo_seq
	-- public.tabela2_cd_codigo_seq
	-- public.tabela3_id_identity_seq

------ HOMOLOG SEQUENCES ------
	-- public.tabela3_cd_codigo_seq
	-- public.tabela3_id_identity_seq

------ DEV TABELAS ------
	-- public.cities
	-- public.sal_emp
	-- public.tabela11
	-- public.tabela2
	-- public.tabela3
	-- public.tictactoe

------ HOMOLOG TABELAS ------
	-- public.tabela3

------ DEV INDICES ------
	-- public.tabela3_nome_idx2
	-- public.tabela3_descricao_idx

------ DEV COLUNAS ------
	-- public.cities.altitude
	-- public.cities.name
	-- public.cities.population
	-- public.sal_emp.bigintarray
	-- public.sal_emp.bitarray
	-- public.sal_emp.bitarray1
	-- public.sal_emp.bits
	-- public.sal_emp.booleano
	-- public.sal_emp.booleanoarray
	-- public.sal_emp.box
	-- public.sal_emp.boxarray
	-- public.sal_emp.bytea
	-- public.sal_emp.byteaarray
	-- public.sal_emp.chara
	-- public.sal_emp.chararray
	-- public.sal_emp.cidr
	-- public.sal_emp.cidrarray
	-- public.sal_emp.circle
	-- public.sal_emp.circlearray
	-- public.sal_emp.datearray
	-- public.sal_emp.dates
	-- public.sal_emp.decimalarray
	-- public.sal_emp.decimale
	-- public.sal_emp.floatarray
	-- public.sal_emp.floate
	-- public.sal_emp.floate1
	-- public.sal_emp.inet
	-- public.sal_emp.inetarray
	-- public.sal_emp.integerarray
	-- public.sal_emp.intervalarray
	-- public.sal_emp.intervale
	-- public.sal_emp.len
	-- public.sal_emp.line
	-- public.sal_emp.linearray
	-- public.sal_emp.lseg
	-- public.sal_emp.lsegarray
	-- public.sal_emp.macaddr
	-- public.sal_emp.macaddrarrary
	-- public.sal_emp.money
	-- public.sal_emp.moneyarray
	-- public.sal_emp.numerico
	-- public.sal_emp.numerico1
	-- public.sal_emp.numerico2
	-- public.sal_emp.numericoarray
	-- public.sal_emp.numericoarray1
	-- public.sal_emp.path
	-- public.sal_emp.patharray
	-- public.sal_emp.point
	-- public.sal_emp.pointarray
	-- public.sal_emp.polygon
	-- public.sal_emp.polygonarray
	-- public.sal_emp.realarray
	-- public.sal_emp.reale
	-- public.sal_emp.smallintarray
	-- public.sal_emp.smallinte
	-- public.sal_emp.stamp
	-- public.sal_emp.stamp1
	-- public.sal_emp.stamp1array
	-- public.sal_emp.stampnozone
	-- public.sal_emp.stampnozonearray
	-- public.sal_emp.stampzone
	-- public.sal_emp.stampzonearray
	-- public.sal_emp.tempo
	-- public.sal_emp.tempo1
	-- public.sal_emp.tempo1array
	-- public.sal_emp.temponozone
	-- public.sal_emp.temponozonearray
	-- public.sal_emp.tempozone
	-- public.sal_emp.tempozonearray
	-- public.sal_emp.textarray
	-- public.sal_emp.texto
	-- public.sal_emp.tsquery
	-- public.sal_emp.tsqueryarray
	-- public.sal_emp.tsvector
	-- public.sal_emp.tsvectorarray
	-- public.sal_emp.txid_snapshot
	-- public.sal_emp.txid_snapshotarray
	-- public.sal_emp.uuid
	-- public.sal_emp.uuidarray
	-- public.sal_emp.varcahar
	-- public.sal_emp.varchararray
	-- public.sal_emp.xmle
	-- public.sal_emp.xmlearray
	-- public.tabela11.cd_codigo
	-- public.tabela2.cd_codigo
	-- public.tabela2.ds_descricao
	-- public.tabela2.dt_data
	-- public.tabela2.nm_nome
	-- public.tabela2.nr_numero
	-- public.tabela3.cd_codigo
	-- public.tabela3.cd1_codigo
	-- public.tabela3.cd2_codigo
	-- public.tabela3.cod1_codigo
	-- public.tabela3.ds_descricao
	-- public.tabela3.id_identity
	-- public.tabela3.id1_identity
	-- public.tabela3.nm_nome
	-- public.tictactoe.squares

------ HOMOLOG COLUNAS ------
	-- public.tabela3.cd_codigo
	-- public.tabela3.ds_descricao
	-- public.tabela3.id_identity

------ DEV CONSTRAINTS ------
	-- public.tabela2.tabela1_pkey
	-- public.tabela3.pk_tabela3
	-- public.tabela3.uq_descricao
	-- public.tabela3.fk_tabela2
	-- public.tabela3.ck_igual

------ HOMOLOG CONSTRAINTS ------
	-- public.tabela3.pk_tabela3


--------------------  DROP DE SEQUENCES -------------------- 
/*
DROP SEQUENCE IF EXISTS public.tabela3_cd_codigo_seq CASCADE;
*/


--------------------  CREATE DE SEQUENCES -------------------- 

CREATE SEQUENCE public.tabela11_cd_codigo_seq 
	INCREMENT 1
	MINVALUE 1
	START 1
	CACHE 1;

CREATE SEQUENCE public.tabela2_cd_codigo_seq 
	INCREMENT 1
	MINVALUE 1
	START 1
	CACHE 1;


------------------------------ CREATE TABLE ------------------------------


CREATE TABLE public.cities
(
	altitude integer,
	name text,
	population double precision
)
WITH (
	OIDS=FALSE
);
ALTER TABLE cities 
	OWNER TO postgres;


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
)
WITH (
	OIDS=FALSE
);
ALTER TABLE sal_emp 
	OWNER TO postgres;


CREATE TABLE public.tabela11
(
	cd_codigo bigint NOT NULL DEFAULT nextval('tabela11_cd_codigo_seq'::regclass) 
)
WITH (
	OIDS=FALSE
);
ALTER TABLE tabela11 
	OWNER TO postgres;


CREATE TABLE public.tabela2
(
	cd_codigo bigint NOT NULL DEFAULT nextval('tabela2_cd_codigo_seq'::regclass) ,
	ds_descricao text DEFAULT 'teste'::text ,
	dt_data timestamp (6) with time zone,
	nm_nome character varying (20) DEFAULT 'teste'::character varying ,
	nr_numero numeric(8,1)  DEFAULT 30 ,
	CONSTRAINT tabela1_pkey PRIMARY KEY (cd_codigo) 
)
WITH (
	OIDS=FALSE
);
ALTER TABLE tabela2 
	OWNER TO postgres;


CREATE TABLE public.tictactoe
(
	squares  integer [] 
)
WITH (
	OIDS=FALSE
);
ALTER TABLE tictactoe 
	OWNER TO postgres;


--------------------  CREATE DE INDICES -------------------- 

CREATE INDEX tabela3_nome_idx2
	ON tabela3
	USING btree
	(ds_descricao, nm_nome);

CREATE INDEX tabela3_descricao_idx
	ON tabela3
	USING btree
	(ds_descricao);


------------------------------ ALTER TABLE ------------------------------

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



------------------------------ ALTER TABLE ------------------------------

-- ESTADO ANTERIOR cd_codigo --  column_default => nextval('tabela3_cd_codigo_seq'::regclass)
ALTER TABLE public.tabela3 ALTER COLUMN cd_codigo DROP DEFAULT;

---------- COMMIT ----------
--COMMIT;

---------- ROLLBACK ----------
--ROLLBACK;