-- Table: public.VenueLocations

-- DROP TABLE IF EXISTS public."VenueLocations";

CREATE TABLE IF NOT EXISTS public."VenueLocations"
(
    "VenueID" integer NOT NULL,
    "EventID" integer NOT NULL,
    "VenueName" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "VenueCapacity" integer,
    CONSTRAINT "VenueLocations_pkey" PRIMARY KEY ("VenueID"),
    CONSTRAINT "Events" FOREIGN KEY ("EventID")
        REFERENCES public."Events" ("EventID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."VenueLocations"
    OWNER to postgres;