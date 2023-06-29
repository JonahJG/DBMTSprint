-- Table: public.SalesTeam

-- DROP TABLE IF EXISTS public."SalesTeam";

CREATE TABLE IF NOT EXISTS public."SalesTeam"
(
    "EmployeeID" integer NOT NULL,
    "FirstName" character varying(32) COLLATE pg_catalog."default" NOT NULL,
    "LastName" character varying(32) COLLATE pg_catalog."default" NOT NULL,
    "StreetAddress" character(86) COLLATE pg_catalog."default" NOT NULL,
    "City" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    "Prov" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Sales Team_pkey" PRIMARY KEY ("EmployeeID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."SalesTeam"
    OWNER to postgres;