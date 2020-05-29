CREATE TABLE public.countrycodes
(
    id integer NOT NULL DEFAULT nextval('countrycodes_id_seq'::regclass),
    code2 character varying COLLATE pg_catalog."default",
    code3 character varying COLLATE pg_catalog."default",
    CONSTRAINT countrycodes_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

CREATE TABLE public.countrygeo
(
    id integer NOT NULL DEFAULT nextval('countrygeo_id_seq'::regclass),
    code2 character varying COLLATE pg_catalog."default",
    countryname character varying COLLATE pg_catalog."default",
    lat double precision,
    "long" double precision,
    CONSTRAINT countrygeo_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

CREATE TABLE public.countryname
(
    id integer NOT NULL DEFAULT nextval('countryname_id_seq'::regclass),
    code2 character varying COLLATE pg_catalog."default",
    countryname character varying COLLATE pg_catalog."default",
    CONSTRAINT countryname_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

CREATE TABLE public.currencies
(
    id integer NOT NULL DEFAULT nextval('currencies_id_seq'::regclass),
    code2 character varying COLLATE pg_catalog."default",
    currency character varying COLLATE pg_catalog."default",
    CONSTRAINT currencies_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

CREATE TABLE public.phonecodes
(
    id integer NOT NULL DEFAULT nextval('phonecodes_id_seq'::regclass),
    code2 character varying COLLATE pg_catalog."default",
    phonecode character varying COLLATE pg_catalog."default",
    CONSTRAINT phonecodes_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

CREATE TABLE public.population
(
    id integer NOT NULL DEFAULT nextval('population_id_seq'::regclass),
    code3 character varying COLLATE pg_catalog."default",
    ranking integer,
    countryname character varying COLLATE pg_catalog."default",
    population integer,
    CONSTRAINT population_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;