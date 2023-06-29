-- Table: public.Customers

-- DROP TABLE IF EXISTS public."Customers";

CREATE TABLE IF NOT EXISTS public."Customers"
(
    "CustomerID" integer NOT NULL,
    "FirstName" character varying(36) COLLATE pg_catalog."default" NOT NULL,
    "LastName" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    "Email" character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT "Customers_pkey" PRIMARY KEY ("CustomerID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customers"
    OWNER to postgres;