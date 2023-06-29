-- Table: public.Events

-- DROP TABLE IF EXISTS public."Events";

CREATE TABLE IF NOT EXISTS public."Events"
(
    "EventID" integer NOT NULL,
    "EventName" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "Date" date NOT NULL,
    "Description" character varying(600) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Events_pkey" PRIMARY KEY ("EventID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Events"
    OWNER to postgres;