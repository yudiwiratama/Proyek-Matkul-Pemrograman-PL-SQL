CREATE OR REPLACE FUNCTION total_pemasukan(pengguna_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC(12, 2);
BEGIN
    SELECT SUM(jumlah) INTO total
    FROM pemasukan
    WHERE id_pengguna = pengguna_id;

    RETURN COALESCE(total, 0);
END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION total_pengeluaran(pengguna_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC(12, 2);
BEGIN
    SELECT SUM(jumlah) INTO total
    FROM pengeluaran
    WHERE id_pengguna = pengguna_id;

    RETURN COALESCE(total, 0);
END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION saldo_akhir(pengguna_id INT)
RETURNS NUMERIC AS $$
DECLARE
    pemasukan NUMERIC(12, 2);
    pengeluaran NUMERIC(12, 2);
BEGIN
    pemasukan := total_pemasukan(pengguna_id);
    pengeluaran := total_pengeluaran(pengguna_id);

    RETURN pemasukan - pengeluaran;
END;
$$ LANGUAGE plpgsql;



