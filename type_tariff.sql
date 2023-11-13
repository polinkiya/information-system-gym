-- Table: public.type_tariff

-- DROP TABLE IF EXISTS public.type_tariff;

CREATE TABLE IF NOT EXISTS public.type_tariff
(
    id_type integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT type_tariff_pkey PRIMARY KEY (id_type)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.type_tariff
    OWNER to postgres;

