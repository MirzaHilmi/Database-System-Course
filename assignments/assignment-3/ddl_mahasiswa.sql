CREATE TABLE sbd.mahasiswa
(
    nim              VARCHAR(15),
    id_seleksi_masuk SMALLINT,
    id_program_studi SMALLINT,
    nama             VARCHAR(45) NOT NULL,
    angkatan         SMALLINT    NOT NULL,
    tgl_lahir        DATE        NOT NULL,
    kota_lahir       VARCHAR(60) NOT NULL,
    jenis_kelamin    CHAR(1)     NOT NULL,
    CONSTRAINT PK_MAHASISWA_NIM PRIMARY KEY (nim),
    CONSTRAINT FK_MAHASISWA_ID_SELEKSI_MASUK FOREIGN KEY (id_seleksi_masuk) REFERENCES sbd.seleksi_masuk (id_seleksi_masuk) ON DELETE CASCADE,
    CONSTRAINT FK_MAHASISWA_ID_PROGRAM_STUDI FOREIGN KEY (id_program_studi) REFERENCES sbd.program_studi (id_program_studi) ON DELETE CASCADE
)