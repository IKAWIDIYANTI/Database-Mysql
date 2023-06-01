-- USE Database 
USE dbkursus;

-- INNER JOIN (kategori + materi)
SELECT k.nama_kategori, m.nama_materi, m.deskripsi, m.durasi_jam, m.biaya
FROM kategori k
INNER JOIN materi m ON k.id = m.kategori_id;

-- INNER JOIN (kategori + materi + pengajar + peserta + penjadwalan_kelas)
SELECT k.nama_kategori, m.nama_materi, p.nama_pengajar, ps.nama_peserta, pk.kode_kelas
FROM kategori k
INNER JOIN materi m ON k.id = m.kategori_id
INNER JOIN penjadwalan_kelas pk ON m.id = pk.materi_id
INNER JOIN pengajar p ON pk.pengajar_id = p.id
INNER JOIN peserta ps ON pk.peserta_id = ps.id;

-- INNER JOIN (kategori + materi + pengajar + peserta + penjadwalan_kelas pengaliasan nama tabel)
SELECT k.nama_kategori, m.nama_materi, p.nama_pengajar, ps.nama_peserta, pk.kode_kelas
FROM kategori AS k
INNER JOIN materi AS m ON k.id = m.kategori_id
INNER JOIN penjadwalan_kelas AS pk ON m.id = pk.materi_id
INNER JOIN pengajar AS p ON pk.pengajar_id = p.id
INNER JOIN peserta AS ps ON pk.peserta_id = ps.id;

-- VIEW
CREATE VIEW view_kategori
AS SELECT k.nama_kategori, m.nama_materi, m.deskripsi, m.durasi_jam, m.biaya
FROM kategori k
INNER JOIN materi m ON k.id = m.kategori_id;
SELECT * FROM view_kategori; 

