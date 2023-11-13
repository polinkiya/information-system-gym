-- Table: public.activity_status

-- DROP TABLE IF EXISTS public.activity_status;

CREATE TABLE IF NOT EXISTS public.activity_status
(
    id_activity_status integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT activity_status_pkey PRIMARY KEY (id_activity_status)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.activity_status
    OWNER to postgres;

REVOKE ALL ON TABLE public.activity_status FROM sales_department;

GRANT SELECT ON TABLE public.activity_status TO director;

GRANT INSERT, UPDATE, SELECT ON TABLE public.activity_status TO manager;

GRANT ALL ON TABLE public.activity_status TO postgres;

GRANT SELECT, INSERT, UPDATE ON TABLE public.activity_status TO sales_department;