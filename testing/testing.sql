-- Total pemasukan untuk pengguna ID 1:
SELECT total_pemasukan(1);

-- Total pengeluaran untuk pengguna ID 1:
SELECT total_pengeluaran(1);

-- Saldo akhir untuk pengguna ID 1: 
SELECT saldo_akhir(1);

-- Uji Laporan Bulanan
SELECT
    p.nama AS nama_pengguna,
    total_pemasukan(p.id_pengguna) AS total_pemasukan,
    total_pengeluaran(p.id_pengguna) AS total_pengeluaran,
    saldo_akhir(p.id_pengguna) AS saldo_akhir
FROM pengguna p;
