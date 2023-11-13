-- Table: public.pass_status

-- DROP TABLE IF EXISTS public.pass_status;

CREATE TABLE IF NOT EXISTS public.pass_status
(
    status_pass_id integer NOT NULL,
    activity_status integer NOT NULL,
    date_of_change date NOT NULL,
    CONSTRAINT pass_status_pkey PRIMARY KEY (status_pass_id, activity_status),
    CONSTRAINT activity_status FOREIGN KEY (activity_status)
        REFERENCES public.activity_status (id_activity_status) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT pass_id FOREIGN KEY (status_pass_id)
        REFERENCES public.pass (pass_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pass_status
    OWNER to postgres;

REVOKE ALL ON TABLE public.pass_status FROM sales_department;

GRANT UPDATE, SELECT, INSERT ON TABLE public.pass_status TO "Adminidtrator";

GRANT INSERT, UPDATE, SELECT ON TABLE public.pass_status TO administrator;

GRANT SELECT ON TABLE public.pass_status TO director;

GRANT UPDATE, INSERT, SELECT ON TABLE public.pass_status TO manager;

GRANT ALL ON TABLE public.pass_status TO postgres;

GRANT SELECT, INSERT, UPDATE ON TABLE public.pass_status TO sales_department;