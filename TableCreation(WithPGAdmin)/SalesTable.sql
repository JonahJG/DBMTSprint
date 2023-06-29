-- Table: public.Sales

-- DROP TABLE IF EXISTS public."Sales";

CREATE TABLE IF NOT EXISTS public."Sales"
(
    "SaleID" integer NOT NULL,
    "EventID" integer,
    "BeerID" integer,
    "EmployeeID" integer,
    "Quantity" integer,
    "Date" date NOT NULL,
    "Price" money NOT NULL,
    CONSTRAINT "Sales_pkey" PRIMARY KEY ("SaleID"),
    CONSTRAINT "BeerID" FOREIGN KEY ("BeerID")
        REFERENCES public."Beers" ("BeerID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "EmployeeID" FOREIGN KEY ("EmployeeID")
        REFERENCES public."SalesTeam" ("EmployeeID") MATCH SIMPLE
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

ALTER TABLE IF EXISTS public."Sales"
    OWNER to postgres;