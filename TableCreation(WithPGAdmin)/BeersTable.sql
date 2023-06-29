-- Table: public.Beers

-- DROP TABLE IF EXISTS public."Beers";

CREATE TABLE IF NOT EXISTS public."Beers"
(
    "BeerID" integer NOT NULL,
    "CategoryID" integer NOT NULL,
    "BeerName" character varying(32) COLLATE pg_catalog."default" NOT NULL,
    "ABV" numeric NOT NULL,
    "Description" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Beers_pkey" PRIMARY KEY ("BeerID"),
    CONSTRAINT "CategoryID" FOREIGN KEY ("CategoryID")
        REFERENCES public."BeerCategories" ("CategoryID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Beers"
    OWNER to postgres;