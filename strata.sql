CREATE TABLE sbd.strata
(
    id_strata SMALLINT,
    singkat   VARCHAR(10) NOT NULL,
    strata    VARCHAR(45) NOT NULL,
    CONSTRAINT PK_STRATA_ID_STRATA PRIMARY KEY (id_strata)
)