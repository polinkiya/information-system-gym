-- Table: public.tariffs

-- DROP TABLE IF EXISTS public.tariffs;

CREATE TABLE IF NOT EXISTS public.tariffs
(
    tariff_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tariff_type integer NOT NULL,
    price integer NOT NULL,
    number_of_visits smallint NOT NULL,
    duration smallint NOT NULL,
    name character(40) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tariffs_pkey PRIMARY KEY (tariff_id),
    CONSTRAINT tarrif_type FOREIGN KEY (tariff_type)
        REFERENCES public.type_tariff (id_type) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tariffs
    OWNER to postgres;

REVOKE ALL ON TABLE public.tariffs FROM sales_department;

GRANT SELECT ON TABLE public.tariffs TO director;

GRANT SELECT ON TABLE public.tariffs TO manager;

GRANT ALL ON TABLE public.tariffs TO postgres;

GRANT INSERT, SELECT, UPDATE ON TABLE public.tariffs TO sales_department;