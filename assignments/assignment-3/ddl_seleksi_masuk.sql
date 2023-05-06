CREATE TABLE sbd.seleksi_masuk
(
    id_seleksi_masuk SMALLINT,
    singkat          VARCHAR(12) NOT NULL,
    seleksi_masuk    VARCHAR(45) NOT NULL,
    CONSTRAINT PK_SELEKSI_MASUK_ID_SELEKSI_MASUK PRIMARY KEY (id_seleksi_masuk)
)