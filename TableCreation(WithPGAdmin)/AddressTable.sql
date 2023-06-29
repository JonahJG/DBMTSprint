-- Table: public.Address

-- DROP TABLE IF EXISTS public."Address";

CREATE TABLE IF NOT EXISTS public."Address"
(
    "AddressID" integer NOT NULL,
    "VenueID" integer NOT NULL,
    "StreetAddress" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "City" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    "Province" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    "PostalCode" character varying(12) COLLATE pg_catalog."default",
    CONSTRAINT "Address_pkey" PRIMARY KEY ("AddressID"),
    CONSTRAINT "VenueID" FOREIGN KEY ("VenueID")
        REFERENCES public."VenueLocations" ("VenueID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Address"
    OWNER to postgres;