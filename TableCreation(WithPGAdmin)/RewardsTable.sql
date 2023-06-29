-- Table: public.Rewards

-- DROP TABLE IF EXISTS public."Rewards";

CREATE TABLE IF NOT EXISTS public."Rewards"
(
    "RewardsID" integer NOT NULL,
    "CustomerID" integer NOT NULL,
    "Points" integer,
    CONSTRAINT "Rewards_pkey" PRIMARY KEY ("RewardsID"),
    CONSTRAINT "CustomerID" FOREIGN KEY ("CustomerID")
        REFERENCES public."Customers" ("CustomerID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Rewards"
    OWNER to postgres;