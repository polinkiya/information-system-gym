{\rtf1\ansi\ansicpg1251\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 TimesNewRomanPSMT;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\fi378\sl560\qj\partightenfactor0

\f0\fs37\fsmilli18667 \cf2 \expnd0\expndtw0\kerning0
CREATE TABLE IF NOT EXISTS public.activity_status
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 id_activity_status integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT activity_status_pkey PRIMARY KEY (id_activity_status)
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.activity_status
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.clients
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 client_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 surname character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 patronymic character varying COLLATE pg_catalog."default",
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 birth_date date NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 phone_number character varying(10) COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 e_mail character varying(40)[] COLLATE pg_catalog."default",
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 passport character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT "Client_pkey" PRIMARY KEY (client_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.clients
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.contract
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 number_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 validity_from date,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 validity_to date,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT contract_pkey PRIMARY KEY (number_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.contract
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.pass
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 pass_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 tariff_id integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 contract_number integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 activate_date date NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 number_of_visits smallint NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 client_id integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT pass_pkey PRIMARY KEY (pass_id),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT client_id FOREIGN KEY (client_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.clients (client_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT contract_number FOREIGN KEY (contract_number)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.contract (number_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT tariff_id FOREIGN KEY (tariff_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.tariffs (tariff_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.pass
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.pass_status
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 status_pass_id integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 activity_status integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 date_of_change date NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT pass_status_pkey PRIMARY KEY (status_pass_id, activity_status),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT activity_status FOREIGN KEY (activity_status)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.activity_status (id_activity_status) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT pass_id FOREIGN KEY (status_pass_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.pass (pass_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.pass_status
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.receipts
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 receipt_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 contract_id integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 price integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 date date NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 status smallint NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT receipts_pkey PRIMARY KEY (receipt_id),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT contract_id FOREIGN KEY (contract_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.contract (number_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.receipts
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.tariffs
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 tariff_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 tariff_type integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 name character varying(40)[] COLLATE pg_catalog."default" NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 price integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 number_of_visits smallint NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 duration smallint NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT tariffs_pkey PRIMARY KEY (tariff_id),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT tarrif_type FOREIGN KEY (tariff_type)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.type_tariff (id_type) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.tariffs
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.type_tariff
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 id_type integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 name character varying(40)[] COLLATE pg_catalog."default",
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT type_tariff_pkey PRIMARY KEY (id_type)
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.type_tariff
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \

\f0\fs37\fsmilli18667 CREATE TABLE IF NOT EXISTS public.attendance
\f1\fs32 \

\f0\fs37\fsmilli18667 (
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 attendance_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 pass_id integer NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 date_of_visit date NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 time_of_visit_from time with time zone NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 time_of_vitit_to time with time zone NOT NULL,
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id),
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 CONSTRAINT pass_id FOREIGN KEY (pass_id)
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 REFERENCES public.pass (pass_id) MATCH SIMPLE
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON UPDATE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 ON DELETE NO ACTION
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 NOT VALID
\f1\fs32 \

\f0\fs37\fsmilli18667 )
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 TABLESPACE pg_default;
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0
\f1\fs32 \

\f0\fs37\fsmilli18667 ALTER TABLE IF EXISTS public.attendance
\f1\fs32 \

\f0\fs37\fsmilli18667 \'a0\'a0\'a0 OWNER to postgres;
\f1\fs32 \
}