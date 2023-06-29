-- Table: public.Suppliers

-- DROP TABLE IF EXISTS public."Suppliers";

CREATE TABLE IF NOT EXISTS public."Suppliers"
(
    "SupplierID" integer NOT NULL,
    "SupplierName" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "Phone" character varying(16) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Suppliers_pkey" PRIMARY KEY ("SupplierID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Suppliers"
    OWNER to postgres;