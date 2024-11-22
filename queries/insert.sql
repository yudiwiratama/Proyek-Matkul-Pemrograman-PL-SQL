
INSERT INTO pengguna (nama, email, password) VALUES
('Yudi Wiratama', 'yudi@example.com', 'password123'),
('Ngurah Bagus', 'ngurah@example.com', 'securepass');


INSERT INTO kategori (nama_kategori, tipe) VALUES
('Gaji', 'P'),
('Investasi', 'P'),
('Makan', 'K'),
('Transportasi', 'K'),
('Hiburan', 'K');


INSERT INTO pemasukan (id_pengguna, id_kategori, jumlah, tanggal, keterangan) VALUES
(1, 1, 5000000, '2024-11-01', 'Gaji Bulanan'),
(2, 2, 1000000, '2024-11-05', 'Dividen Saham');


INSERT INTO pengeluaran (id_pengguna, id_kategori, jumlah, tanggal, keterangan) VALUES
(1, 3, 150000, '2024-11-02', 'Makan Siang'),
(1, 4, 50000, '2024-11-03', 'Ojek Online'),
(2, 5, 200000, '2024-11-04', 'Nonton Bioskop');


