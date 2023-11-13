-- Table: public.contract

-- DROP TABLE IF EXISTS public.contract;

CREATE TABLE IF NOT EXISTS public.contract
(
    number_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    validity_from date,
    validity_to date,
    CONSTRAINT contract_pkey PRIMARY KEY (number_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contract
    OWNER to postgres;

REVOKE ALL ON TABLE public.contract FROM sales_department;

GRANT INSERT, SELECT, UPDATE ON TABLE public.contract TO "Adminidtrator";

GRANT SELECT, INSERT, UPDATE ON TABLE public.contract TO administrator;

GRANT SELECT ON TABLE public.contract TO director;

GRANT INSERT, SELECT, UPDATE ON TABLE public.contract TO manager;

GRANT ALL ON TABLE public.contract TO postgres;

GRANT SELECT, INSERT ON TABLE public.contract TO sales_department;