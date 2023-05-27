SELECT a.nim, a.nama, a.angkatan, b.program_studi, c.seleksi_masuk
FROM akademik.mahasiswa a
         INNER JOIN akademik.program_studi b ON a.id_program_studi = b.id_program_studi
         INNER JOIN akademik.seleksi_masuk c ON a.id_seleksi_masuk = c.id_seleksi_masuk;