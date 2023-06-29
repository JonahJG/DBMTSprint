-- Table: public.Deliveries

-- DROP TABLE IF EXISTS public."Deliveries";

CREATE TABLE IF NOT EXISTS public."Deliveries"
(
    "DeliveryID" integer NOT NULL,
    "EventID" integer,
    "BeerID" integer,
    "SupplierID" integer NOT NULL,
    "Quantity" integer NOT NULL,
    "TotalPrice" money NOT NULL,
    CONSTRAINT "Deliveries_pkey" PRIMARY KEY ("DeliveryID"),
    CONSTRAINT "BeerID" FOREIGN KEY ("BeerID")
        REFERENCES public."Beers" ("BeerID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "EventID" FOREIGN KEY ("EventID")
        REFERENCES public."Events" ("EventID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "SupplierID" FOREIGN KEY ("SupplierID")
        REFERENCES public."Suppliers" ("SupplierID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Deliveries"
    OWNER to postgres;