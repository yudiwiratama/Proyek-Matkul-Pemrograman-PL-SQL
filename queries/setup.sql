

CREATE DATABASE manajemen_keuangan;

CREATE TABLE pengguna (
    id_pengguna SERIAL PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    tanggal_dibuat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE kategori (
    id_kategori SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(50) NOT NULL,
    tipe CHAR(1) CHECK (tipe IN ('P', 'K')) -- P = Pemasukan, K = Pengeluaran
);

CREATE TABLE pemasukan (
    id_pemasukan SERIAL PRIMARY KEY,
    id_pengguna INT REFERENCES pengguna(id_pengguna),
    id_kategori INT REFERENCES kategori(id_kategori),
    jumlah NUMERIC(12, 2) NOT NULL,
    tanggal TIMESTAMP NOT NULL,
    keterangan TEXT
);


CREATE TABLE pengeluaran (
    id_pengeluaran SERIAL PRIMARY KEY,
    id_pengguna INT REFERENCES pengguna(id_pengguna),
    id_kategori INT REFERENCES kategori(id_kategori),
    jumlah NUMERIC(12, 2) NOT NULL,
    tanggal TIMESTAMP NOT NULL,
    keterangan TEXT
);



