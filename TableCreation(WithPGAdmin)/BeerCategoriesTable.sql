-- Table: public.BeerCategories

-- DROP TABLE IF EXISTS public."BeerCategories";

CREATE TABLE IF NOT EXISTS public."BeerCategories"
(
    "CategoryID" integer NOT NULL,
    "CategoryName" character varying(64) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "BeerCategories_pkey" PRIMARY KEY ("CategoryID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."BeerCategories"
    OWNER to postgres;