-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Feb 2020 pada 10.56
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_subur_makmur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategory` varchar(20) NOT NULL,
  `harga_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `id_kategory`, `harga_barang`) VALUES
(1001, 'mascara', 'A001', '35000'),
(1002, 'lipstik', 'A002', '25000'),
(1003, 'serum ', 'A003', '50000'),
(1004, 'toner', 'A004', '25000'),
(1005, 'sabun mandi', 'A005', '5000'),
(1006, 'sunlight', 'A006', '15000'),
(1007, 'mama lemon', 'A007', '19000'),
(1008, 'handbody ', 'A008', '14000'),
(1009, 'parfum', 'A009', '25000'),
(1010, 'bedak', 'A010', '47000'),
(1011, 'facial wash', 'A011', '24000'),
(1012, 'detergen', 'A012', '15000'),
(1013, 'minyak sayur', 'A013', '20000'),
(1014, 'gas lpg ', 'A014', '25000'),
(1015, 'shampo', 'A015', '15000'),
(1016, 'odol', 'A016', '14000'),
(1017, 'sikat gigi', 'A017', '12000'),
(1018, 'soklin lantai', 'A018', '13000'),
(1019, 'downy', 'A019', '15000'),
(1020, 'molto', 'A020', '15000'),
(1021, 'sabun ekonomi ', 'A021', '5000'),
(1022, 'rafika ', 'A022', '5000'),
(1023, 'sifat alis', 'A023', '15000'),
(1024, 'galon', 'A024', '19000'),
(1025, 'kompor', 'A025', '15000'),
(1026, 'rice cooker', 'A026', '175000'),
(1027, 'setrikaan', 'A027', '120000'),
(1028, 'televisi', 'A028', '2500000'),
(1029, 'ac', 'A029', '2500000'),
(1030, 'radio', 'A030', '2000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategory`
--

CREATE TABLE `t_kategory` (
  `id_kategory` varchar(20) NOT NULL,
  `nama_kategory` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kategory`
--

INSERT INTO `t_kategory` (`id_kategory`, `nama_kategory`) VALUES
('A001', 'Kosmetik'),
('A002', 'Kosmetik'),
('A003', 'Kosmetik'),
('A004', 'Kosmetik'),
('A005', 'Sabun'),
('A006', 'Sabun'),
('A007', 'Sabun'),
('A008', 'Kosmetik'),
('A009', 'Kosmetik'),
('A010', 'Kosmetik'),
('A011', 'Kosmetik'),
('A012', 'Sabun'),
('A013', 'Sembako'),
('A014', 'Sembako'),
('A015', 'Kosmetik'),
('A016', 'Kosmetik'),
('A017', 'Kosmetik'),
('A018', 'Sabun'),
('A019', 'Sabun'),
('A020', 'Sabun'),
('A021', 'Sabun'),
('A022', 'Sabun'),
('A023', 'Kosmetik'),
('A024', 'Elektronik'),
('A025', 'Elektronik'),
('A026', 'Elektronik'),
('A027', 'Elektronik'),
('A028', 'Elektronik'),
('A029', 'Elektronik'),
('A030', 'Elektronik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `qty` int(10) NOT NULL,
  `harga_barang` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `id_barang`, `id_user`, `no_transaksi`, `tanggal`, `qty`, `harga_barang`, `total_harga`) VALUES
('TRX-001', 1001, 'AN002', '1', '2019-01-01', 7, 35000, 245000),
('TRX-002', 1002, 'AN002', '2', '2019-01-02', 5, 25000, 125000),
('TRX-003', 1003, 'AN003', '3', '2019-01-03', 3, 50000, 150000),
('TRX-004', 1004, 'AN004', '4', '2019-01-04', 5, 25000, 125000),
('TRX-005', 1005, 'AN005', '5', '2019-01-05', 6, 5000, 30000),
('TRX-006', 1006, 'AN006', '6', '2019-01-06', 3, 15000, 45000),
('TRX-007', 1007, 'AN007', '7', '2019-01-07', 5, 19000, 95000),
('TRX-008', 1008, 'AN007', '8', '2019-01-08', 6, 14000, 84000),
('TRX-009', 1009, 'AN007', '9', '2019-01-09', 7, 25000, 175000),
('TRX-010', 1009, 'AN007', '10', '2019-01-10', 8, 47000, 376000),
('TRX-011', 1009, 'AN007', '11', '2019-01-11', 9, 24000, 216000),
('TRX-012', 1009, 'AN007', '12', '2019-01-12', 11, 15000, 165000),
('TRX-013', 1009, 'AN007', '13', '2019-01-13', 12, 20000, 240000),
('TRX-014', 1009, 'AN007', '14', '2019-01-14', 3, 25000, 75000),
('TRX-015', 1009, 'AN007', '15', '2019-01-15', 22, 15000, 330000),
('TRX-016', 1009, 'AN007', '16', '2019-01-16', 15, 14000, 210000),
('TRX-017', 1009, 'AN007', '17', '2019-01-17', 11, 12000, 132000),
('TRX-018', 1009, 'AN007', '18', '2019-01-18', 7, 13000, 91000),
('TRX-019', 1009, 'AN007', '19', '2019-01-19', 6, 15000, 90000),
('TRX-020', 1009, 'AN007', '20', '2019-01-20', 8, 15000, 120000),
('TRX-021', 1009, 'AN007', '21', '2019-01-21', 5, 5000, 25000),
('TRX-022', 1009, 'AN007', '22', '2019-01-22', 12, 5000, 60000),
('TRX-023', 1023, 'AN023', '23', '2019-01-23', 11, 15000, 165000),
('TRX-024', 1024, 'AN024', '24', '2019-01-24', 1, 19000, 19000),
('TRX-025', 1025, 'AN025', '25', '2019-01-25', 10, 15000, 150000),
('TRX-026', 1026, 'AN026', '26', '2019-01-26', 11, 175000, 1925000),
('TRX-027', 1027, 'AN027', '27', '2019-01-27', 20, 120000, 2400000),
('TRX-028', 1028, 'AN028', '28', '2019-01-28', 4, 2500000, 10000000),
('TRX-029', 1029, 'AN029', '29', '2019-01-29', 2, 2500000, 5000000),
('TRX-030', 1030, 'AN030', '30', '2019-01-30', 4, 2000000, 8000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(20) NOT NULL,
  `nama_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
('AN001', 'Alvin Surya'),
('AN002', 'Arie Apriatna'),
('AN003', 'Denih Damayanti'),
('AN004', 'Diana Lestari '),
('AN005', 'Dinda Fahdianti'),
('AN006', 'Gojali Agustina'),
('AN007', 'Fatahillah Effendi'),
('AN008', 'Hangga Aditya '),
('AN009', 'Fitriah Eka'),
('AN010', 'Intan Afrida'),
('AN011', 'Luthfan Radifan'),
('AN012', 'Tia Marta '),
('AN013', 'Siti Selvia'),
('AN014', 'Milda Karwati'),
('AN015', 'Yoga Bakti'),
('AN016', 'Siti LinaWati'),
('AN017', 'Siti Masitoh'),
('AN018', 'Lolita Risang Ayu'),
('AN019', 'Viny Alviany'),
('AN020', 'Zahra Khoirunnisa'),
('AN021', 'Rizky Aflaha'),
('AN022', 'Indra Nurmansyah'),
('AN023', 'Rohadi'),
('AN024', 'Zelika Nurmaya'),
('AN025', 'Sindi Amelia'),
('AN026', 'Sarah Putri'),
('AN027', 'Memas Khumaisho'),
('AN028', 'Zulfa Nabila'),
('AN029', 'Sri Rohuzzaefah'),
('AN030', 'Fatih Mubarok');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
