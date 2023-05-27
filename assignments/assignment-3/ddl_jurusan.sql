CREATE TABLE akademik.jurusan
(
    id_jurusan  SMALLINT,
    id_fakultas SMALLINT,
    jurusan     VARCHAR(45) NOT NULL,
    CONSTRAINT PK_JURUSAN_ID_JURUSAN PRIMARY KEY (id_jurusan),
    CONSTRAINT FK_JURUSAN_ID_FAKULTAS FOREIGN KEY (id_fakultas) REFERENCES akademik.fakultas (id_fakultas) ON DELETE CASCADE
);