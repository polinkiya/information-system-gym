-- Table: public.receipts

-- DROP TABLE IF EXISTS public.receipts;

CREATE TABLE IF NOT EXISTS public.receipts
(
    receipt_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    contract_id integer NOT NULL,
    price integer NOT NULL,
    date date NOT NULL,
    status smallint NOT NULL,
    CONSTRAINT receipts_pkey PRIMARY KEY (receipt_id),
    CONSTRAINT contract_id FOREIGN KEY (contract_id)
        REFERENCES public.contract (number_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.receipts
    OWNER to postgres;

REVOKE ALL ON TABLE public.receipts FROM sales_department;

GRANT SELECT ON TABLE public.receipts TO director;

GRANT SELECT ON TABLE public.receipts TO manager;

GRANT ALL ON TABLE public.receipts TO postgres;

GRANT INSERT, SELECT, UPDATE ON TABLE public.receipts TO sales_department;