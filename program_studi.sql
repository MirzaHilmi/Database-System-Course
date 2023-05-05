CREATE TABLE sbd.program_studi
(
    id_program_studi SMALLINT,
    id_strata        SMALLINT,
    id_jurusan       SMALLINT,
    program_studi    VARCHAR(60) NOT NULL,
    CONSTRAINT PK_PROGRAM_STUDI_ID_PROGRAM_STUDI PRIMARY KEY (id_program_studi),
    CONSTRAINT FK_PROGRAM_STUDI_ID_STRATA FOREIGN KEY (id_strata) REFERENCES sbd.strata (id_strata),
    CONSTRAINT FK_PROGRAM_STUDI_ID_JURUSAN FOREIGN KEY (id_jurusan) REFERENCES sbd.jurusan (id_jurusan)
)