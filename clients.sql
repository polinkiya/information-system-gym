-- Table: public.clients

-- DROP TABLE IF EXISTS public.clients;

CREATE TABLE IF NOT EXISTS public.clients
(
    client_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    birth_date date NOT NULL,
    surname character(40) COLLATE pg_catalog."default" NOT NULL,
    name character(40) COLLATE pg_catalog."default" NOT NULL,
    patronymic character(40) COLLATE pg_catalog."default",
    e_mail character(40) COLLATE pg_catalog."default",
    phone_number character(10) COLLATE pg_catalog."default" NOT NULL,
    passport character(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Client_pkey" PRIMARY KEY (client_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clients
    OWNER to postgres;

REVOKE ALL ON TABLE public.clients FROM Администратор;

GRANT UPDATE, SELECT, INSERT ON TABLE public.clients TO "Adminidtrator";

GRANT INSERT, UPDATE, SELECT ON TABLE public.clients TO administrator;

GRANT SELECT ON TABLE public.clients TO director;

GRANT SELECT, UPDATE, INSERT ON TABLE public.clients TO manager;

GRANT ALL ON TABLE public.clients TO postgres;

GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE public.clients TO sales_department;

GRANT SELECT, INSERT, UPDATE ON TABLE public.clients TO "Администратор";