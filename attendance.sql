-- Table: public.attendance

-- DROP TABLE IF EXISTS public.attendance;

CREATE TABLE IF NOT EXISTS public.attendance
(
    attendance_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    pass_id integer NOT NULL,
    date_of_visit date NOT NULL,
    time_of_visit_from time with time zone NOT NULL,
    time_of_vitit_to time with time zone NOT NULL,
    CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id),
    CONSTRAINT pass_id FOREIGN KEY (pass_id)
        REFERENCES public.pass (pass_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.attendance
    OWNER to postgres;

REVOKE ALL ON TABLE public.attendance FROM sales_department;

GRANT SELECT ON TABLE public.attendance TO director;

GRANT SELECT ON TABLE public.attendance TO manager;

GRANT ALL ON TABLE public.attendance TO postgres;

GRANT SELECT ON TABLE public.attendance TO sales_department;