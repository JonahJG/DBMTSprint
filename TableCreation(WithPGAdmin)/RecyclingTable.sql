-- Table: public.Recycling

-- DROP TABLE IF EXISTS public."Recycling";

CREATE TABLE IF NOT EXISTS public."Recycling"
(
    "RecylingID" integer NOT NULL,
    "EventID" integer NOT NULL,
    "AddressID" integer NOT NULL,
    "Weight" numeric NOT NULL,
    CONSTRAINT "Recycling_pkey" PRIMARY KEY ("RecylingID"),
    CONSTRAINT "AddressID" FOREIGN KEY ("AddressID")
        REFERENCES public."Address" ("AddressID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "EventID" FOREIGN KEY ("EventID")
        REFERENCES public."Events" ("EventID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Recycling"
    OWNER to postgres;