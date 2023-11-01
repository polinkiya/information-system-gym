CREATE TABLE IF NOT EXISTS public.activity_status
(
    id_activity_status integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT activity_status_pkey PRIMARY KEY (id_activity_status)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.activity_status
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.clients
(
    client_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    surname character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
    name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
    patronymic character varying COLLATE pg_catalog."default",
    birth_date date NOT NULL,
    phone_number character varying(10) COLLATE pg_catalog."default" NOT NULL,
    e_mail character varying(40)[] COLLATE pg_catalog."default",
    passport character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Client_pkey" PRIMARY KEY (client_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clients
    OWNER to postgres;
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
CREATE TABLE IF NOT EXISTS public.tariffs
(
    tariff_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tariff_type integer NOT NULL,
    name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
    price integer NOT NULL,
    number_of_visits smallint NOT NULL,
    duration smallint NOT NULL,
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
CREATE TABLE IF NOT EXISTS public.type_tariff
(
    id_type integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(40)[] COLLATE pg_catalog."default",
    CONSTRAINT type_tariff_pkey PRIMARY KEY (id_type)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.type_tariff
    OWNER to postgres;
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
