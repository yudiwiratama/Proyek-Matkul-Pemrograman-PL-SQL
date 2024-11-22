SELECT
    p.nama AS nama_pengguna,
    total_pemasukan(p.id_pengguna) AS total_pemasukan,
    total_pengeluaran(p.id_pengguna) AS total_pengeluaran,
    saldo_akhir(p.id_pengguna) AS saldo_akhir
FROM pengguna p;
