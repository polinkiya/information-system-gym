-- Table: public.pass

-- DROP TABLE IF EXISTS public.pass;

CREATE TABLE IF NOT EXISTS public.pass
(
    pass_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tariff_id integer NOT NULL,
    contract_number integer NOT NULL,
    activate_date date NOT NULL,
    number_of_visits smallint NOT NULL,
    client_id integer NOT NULL,
    CONSTRAINT pass_pkey PRIMARY KEY (pass_id),
    CONSTRAINT client_id FOREIGN KEY (client_id)
        REFERENCES public.clients (client_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT contract_number FOREIGN KEY (contract_number)
        REFERENCES public.contract (number_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT tariff_id FOREIGN KEY (tariff_id)
        REFERENCES public.tariffs (tariff_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pass
    OWNER to postgres;

REVOKE ALL ON TABLE public.pass FROM sales_department;

GRANT UPDATE, INSERT, SELECT ON TABLE public.pass TO "Adminidtrator";

GRANT UPDATE, INSERT, SELECT ON TABLE public.pass TO administrator;

GRANT SELECT ON TABLE public.pass TO director;

GRANT INSERT, UPDATE, SELECT ON TABLE public.pass TO manager;

GRANT ALL ON TABLE public.pass TO postgres;

GRANT UPDATE, INSERT, DELETE, SELECT ON TABLE public.pass TO sales_department;