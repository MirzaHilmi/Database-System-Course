SELECT *
FROM akademik.program_studi a
         RIGHT JOIN akademik.jurusan b ON a.id_jurusan = b.id_jurusan;