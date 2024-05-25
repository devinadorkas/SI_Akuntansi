-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 02:50 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catshop`
--
CREATE DATABASE IF NOT EXISTS `db_catshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_catshop`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `email`, `password`, `username`) VALUES
(1, 'babibakar@itn.ac.id', '$2y$10$IZPYfWC1.NYY/mEIs0YbheDwcwaXnVZkApYELvZXU/zRpoSMIyGtq', 'babibakar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE `tb_categories` (
  `id` int NOT NULL,
  `photo` varchar(50) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_categories`
--

INSERT INTO `tb_categories` (`id`, `photo`, `categories`, `price`, `description`) VALUES
(2, '664b095a995db.jpg', 'kucing ripale', 20000, 'jenis ini adalah jenis yang mematikan. produk tidak dapat ditukar tambah atau diperjualbelikan kembali.'),
(3, '6645cba664bb5.jpg', 'Kucing Oren', 450000, 'kucing yang sangat aktif dan suka eksperimen. cocok untuk anda yang lelah dengan kehidupan ini! ps : awas kucing ini gampang kabur karna suka berpetualang dan rasa ingin tahunya sangat tinggi.'),
(4, '6645cc54197de.jpg', 'kucing gila', 100000, 'terlalu dekat dengan kucing ini akan membuat anda muntah dan mual. menaruhnya di got bisa menjadi opsi terbaik.'),
(5, '6645ccfb6a41b.jpg', 'kucing pikmi', 2000000, 'biaya makan, skinker, mandi, berak sangad mahal. kucing ini sangat suka durian dan sangat manja. cocok untuk konsumen om-om duda kaya raya.'),
(6, '6645cd6089599.jpg', 'kucing emak', 500000, 'kucing ini sangat receh, bisa tertawa dimana saja. jago renang dan bisa diandalkan. beli sekarang juga!'),
(7, '6645cdd92f6b4.jpg', 'kucing sakit', 500, 'kucing ini tidak sehat, silakan ambil dengan harga paling murah. hati-hati kucing ini sering tercebur di got.'),
(8, '6645ceb056424.jpg', 'kucing ntt', 520000, 'kucing ini punya suara yang sangat keras. jangan terlalu dekat dengan telinga. kucing ini sangat suka duid. bila ada uang pasti akan hilang.'),
(9, '6645d0988c16a.jpg', 'kucing solehah', 700000, 'kucing ini pendiam dan sangat baik. sangat responsif terhadap perlakuan anda. kucing ini suka tidur di mana saja, siapkan bantal dimanapun kucing ini tidur. kucing ini tidak rewel dan cepat beradaptasi dengan lingkungan sekitar.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaction`
--

CREATE TABLE `tb_transaction` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomorhp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_transaction`
--

INSERT INTO `tb_transaction` (`id`, `nama`, `nomorhp`, `alamat`, `jenis`, `harga`, `status`, `tanggal`) VALUES
(1, 'DEVINA DORKAS MANUELA', '089524936200', 'Jl. Polonia Tengah BN13', 'kucing ntt', '520000', 'succes', '2024-05-20'),
(2, 'PeachFall', '081125336202', 'kos ripal', 'kucing ripale', '20000', 'succes', '2024-05-20'),
(3, 'Yonathan Soesilo', '083614933708', 'Jl. Langsep', 'kucing solehah', '700000', 'succes', '2024-05-20'),
(4, 'Gana Novitasari', '081328936254', 'Dekat Pantai Selatan', 'Kucing Oren', '450000', 'succes', '2024-05-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaction`
--
ALTER TABLE `tb_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_transaction`
--
ALTER TABLE `tb_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `db_devz_stationery`
--
CREATE DATABASE IF NOT EXISTS `db_devz_stationery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_devz_stationery`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categories` int NOT NULL,
  `name_categories` int NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_transaction` int NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `email_customer` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `order_quantity` int NOT NULL,
  `order_price` int NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `id_categories` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transaction`),
  ADD UNIQUE KEY `email_customer` (`email_customer`),
  ADD KEY `categories_name` (`categories_name`),
  ADD KEY `id_categories` (`id_categories`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaction` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_inventory_mng_sys`
--
CREATE DATABASE IF NOT EXISTS `db_inventory_mng_sys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_inventory_mng_sys`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` varchar(6) NOT NULL,
  `cus_name` varchar(30) NOT NULL,
  `cus_mobile` int NOT NULL,
  `cus_email` varchar(30) NOT NULL,
  `cus_pass` varchar(30) NOT NULL,
  `cus_add` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `cus_name`, `cus_mobile`, `cus_email`, `cus_pass`, `cus_add`) VALUES
('CU1001', 'Budi Santoso', 12345890, 'budisanto@gmail.com', 'budisan123', 'Bandung'),
('CU1002', 'Ani Cahyani', 78763210, 'anipunyacahyani@gmail.com', 'anicah789', 'Jakarta'),
('CU1003', 'Dewi Sartika', 5556877, 'dewi.sarti@gmail.com', 'karti1234', 'Jombang'),
('CU1004', 'Eko Wijaya', 1569303, 'ekowijaya@gmail.com', 'ekoselalu', 'Malang'),
('CU1005', 'Ika Permata', 448031466, 'ika.permata@gmail.com', 'permataindah', 'Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_information`
--

CREATE TABLE `tb_information` (
  `date_payment` datetime DEFAULT NULL,
  `info_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_information`
--

INSERT INTO `tb_information` (`date_payment`, `info_status`) VALUES
('2024-05-20 19:02:12', 'data pembayaran berhasil dicetak'),
('2024-05-20 19:10:13', 'data pembayaran berhasil diupdate'),
('2024-05-20 19:16:25', 'data pembayaran berhasil dihapus');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventory`
--

CREATE TABLE `tb_inventory` (
  `inv_id` varchar(6) NOT NULL,
  `inv_desc` varchar(50) NOT NULL,
  `inv_type` varchar(20) NOT NULL,
  `inv_num` varchar(20) NOT NULL,
  `inv_item` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_inventory`
--

INSERT INTO `tb_inventory` (`inv_id`, `inv_desc`, `inv_type`, `inv_num`, `inv_item`) VALUES
('INV001', 'Management Software', 'Software', '97531', 'Management Suite'),
('INV002', 'Conference Room Scheduler', 'Software', '86420', 'MeetingPro 5000'),
('INV003', 'Network Switch', 'Hardware', '75309', 'Cisco Catalyst 9300'),
('INV004', 'Employee ID Cards', 'Supplies', '64298', 'Card Printer'),
('INV005', 'Whiteboard', 'Furniture', '53107', 'Glass Board');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `login_id` varchar(20) NOT NULL,
  `login_username` varchar(20) NOT NULL,
  `login_password` varchar(30) NOT NULL,
  `role_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`login_id`, `login_username`, `login_password`, `role_id`) VALUES
('LOG01', 'triohandono', 'initrio', 'R001'),
('LOG02', 'agusyo', 'yoagus', 'R002'),
('LOG04', 'seliaselia', 'selselsel', 'R003'),
('LOG05', 'alex_garcia', 'Alex123', 'R004'),
('LOG07', 'ratih34', 'ratih1234', 'R004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment`
--

CREATE TABLE `tb_payment` (
  `payment_id` int NOT NULL,
  `customer_id` varchar(6) DEFAULT NULL,
  `inv_id` varchar(6) NOT NULL,
  `pay_desc` varchar(20) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_amt` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_payment`
--

INSERT INTO `tb_payment` (`payment_id`, `customer_id`, `inv_id`, `pay_desc`, `pay_date`, `pay_amt`) VALUES
(101, 'CU1001', 'INV001', 'Pembayaran penuh', '2024-04-15', 500000),
(102, 'CU1002', 'INV002', 'Pembayaran cicilan', '2024-04-20', 2500000),
(103, 'CU1003', 'INV003', 'Pembayaran penuh', '2024-04-25', 750000),
(204, 'CU1005', 'INV005', 'Pembayaran penuh', '2024-05-05', 100000),
(205, 'CU1005', 'INV005', 'Pembayaran penuh', '2024-04-25', 560000),
(104, 'CU1005', 'INV001', 'Pembayaran cicilan', '2024-04-15', 750000),
(109, 'CU1003', 'INV001', 'Pembayaran Penuh', '2024-06-05', 650000),
(214, 'CU1001', 'INV002', 'Pembayaran penuh', '2024-03-02', 800000);

--
-- Triggers `tb_payment`
--
DELIMITER $$
CREATE TRIGGER `delete_data` AFTER DELETE ON `tb_payment` FOR EACH ROW insert into tb_information (date_payment, info_status) values 
(now(), 'data pembayaran berhasil dihapus')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_data` AFTER INSERT ON `tb_payment` FOR EACH ROW insert into tb_information (date_payment, info_status) values 
(now(), 'data pembayaran berhasil dicetak')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_data` AFTER UPDATE ON `tb_payment` FOR EACH ROW insert into tb_information (date_payment, info_status) values 
(now(), 'data pembayaran berhasil diupdate')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_permission`
--

CREATE TABLE `tb_permission` (
  `permission_id` varchar(10) NOT NULL,
  `permission_role_id` varchar(10) NOT NULL,
  `permission_module` varchar(10) NOT NULL,
  `permission_names` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_permission`
--

INSERT INTO `tb_permission` (`permission_id`, `permission_role_id`, `permission_module`, `permission_names`) VALUES
('P001', 'R001', 'ModulA', 'Baca Tulis Hapus'),
('P002', 'R002', 'ModulB', 'Baca Saja'),
('P003', 'R003', 'ModulC', 'Baca Tulis'),
('P004', 'R004', 'ModulD', 'Baca'),
('P005', 'R005', 'ModulE', 'Hapus');

-- --------------------------------------------------------

--
-- Table structure for table `tb_roles`
--

CREATE TABLE `tb_roles` (
  `roles_id` varchar(7) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `role_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_roles`
--

INSERT INTO `tb_roles` (`roles_id`, `role_name`, `role_desc`) VALUES
('R001', 'Admin', 'Akses penuh'),
('R002', 'User', 'Standar pengguna'),
('R003', 'Manager', 'Manajerial'),
('R004', 'Staff', 'Pekerja'),
('R005', 'Supervisor', 'Pengawas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stock`
--

CREATE TABLE `tb_stock` (
  `stock_id` int NOT NULL,
  `stock_desc` varchar(20) DEFAULT NULL,
  `stock_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_stock`
--

INSERT INTO `tb_stock` (`stock_id`, `stock_desc`, `stock_type`) VALUES
(1, 'Laptop ASUS X543MA', 'Elektronik'),
(2, 'Printer HP LaserJet', 'Perangkat Keras'),
(3, 'Keyboard Logitech', 'Perangkat Keras'),
(4, 'Mouse Logitech MX', 'Perangkat Keras');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(5) NOT NULL,
  `user_mobile` int NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user_mobile`, `user_email`, `user_address`) VALUES
('U0001', 49725688, 'trihan@gmail.com', 'Surabaya'),
('U0005', 4872116, 'alex.garcia@gmail.com', 'Surabaya'),
('U0012', 49525681, 'agus123@gmail.com', 'Trenggalek'),
('U0015', 45322674, 'fania34@gmail.com', 'Pasuruan'),
('U0022', 47765449, 'selia4t@gmail.com', 'Malang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tb_inventory`
--
ALTER TABLE `tb_inventory`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tb_permission`
--
ALTER TABLE `tb_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`roles_id`);

--
-- Indexes for table `tb_stock`
--
ALTER TABLE `tb_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
--
-- Database: `db_ws`
--
CREATE DATABASE IF NOT EXISTS `db_ws` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_ws`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `harga`) VALUES
(1, 'Social Media Marketing', 450000),
(2, 'Image Sharing', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `nama`, `jenis`, `harga`, `tanggal`) VALUES
(1, 'Devina', 'Cat', 50000, '2024-01-17'),
(2, 'Piril', 'Hammock', 250000, '2024-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Babi bakar', 'babibakar@itn.ac.id', 'babiituenak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `oop_2218108`
--
CREATE DATABASE IF NOT EXISTS `oop_2218108` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `oop_2218108`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int NOT NULL,
  `nim` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jk` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `prodi` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `th_angkatan` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `noHp` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nim`, `nama`, `jk`, `prodi`, `th_angkatan`, `alamat`, `noHp`) VALUES
(2, '2218111', 'Conly Ariella', 'P', 'informatika', '2022', 'Sumba', '082111111111'),
(3, '2218118', 'Afrida Dewi', 'P', 'informatika', '2022', 'Malang', '082222222222'),
(4, '2218134', 'Marita Putri', 'P', 'informatika', '2022', 'Batu', '082333333333'),
(5, '2218136', 'Gana Novitasari', 'P', 'informatika', '2022', 'Malang Selatan', '082444444444'),
(6, '2218096', 'Maria Avriliana', 'P', 'informatika', '2022', 'Adonara', '082666666666'),
(9, '2218108', 'Devina Dorkas', 'P', 'informatika', '2022', 'Malang', '089524936200'),
(10, '2218108', 'Devina Dorkas', 'P', 'informatika', '2022', 'Bali', '089524936200'),
(11, '2218199', 'Devina Dorkas', 'P', 'informatika', '2022', 'Bali', '089524936200');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `id` int NOT NULL,
  `kode_mk` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `matakuliah` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `dosenpengajar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jmlsks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`id`, `kode_mk`, `matakuliah`, `dosenpengajar`, `jmlsks`) VALUES
(1, 'IF301', 'OOP', 'Yosep Agus', 3),
(2, 'IF202', 'Matematika Diskrit', 'Ali Mahmudi', 2),
(3, 'IF315', 'PCD', 'Ahmad Fahrudi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int NOT NULL,
  `Nim` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `kd_mk` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `NP1` int NOT NULL,
  `NP2` int NOT NULL,
  `UTS` int NOT NULL,
  `NP3` int NOT NULL,
  `prak` int NOT NULL,
  `UAS` int NOT NULL,
  `NA` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `Nim`, `kd_mk`, `NP1`, `NP2`, `UTS`, `NP3`, `prak`, `UAS`, `NA`) VALUES
(1, '2218108', 'IF202', 80, 78, 77, 83, 80, 84, 87),
(2, '2218096', 'IF202', 80, 83, 74, 74, 81, 77, 87),
(3, '2218111', 'IF301', 78, 96, 70, 67, 70, 80, 87);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `oop_inventorybarangkantor`
--
CREATE DATABASE IF NOT EXISTS `oop_inventorybarangkantor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oop_inventorybarangkantor`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjamanalatelektronik`
--

CREATE TABLE `tb_peminjamanalatelektronik` (
  `Nama_Peminjam` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Barang_Dipinjam` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Lokasi_Barang` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Durasi_Pinjam` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalianbarang`
--

CREATE TABLE `tb_pengembalianbarang` (
  `ID_Peminjaman` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Barang` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Tanggal_Kembali` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Jumlah_Pinjam` int NOT NULL,
  `Jumlah_Kembali` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pengembalianbarang`
--
ALTER TABLE `tb_pengembalianbarang`
  ADD PRIMARY KEY (`ID_Peminjaman`);
--
-- Database: `si_akuntansi`
--
CREATE DATABASE IF NOT EXISTS `si_akuntansi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `si_akuntansi`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` int NOT NULL,
  `merk_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `merk_barang`) VALUES
('A0002', 'LCD Projector', 1600000, 'BenQ Proyektor'),
('A0003', 'Monitor LED 24\"', 2800000, 'VisualTech');

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `id_biaya` varchar(6) NOT NULL,
  `jumlah_biaya` int NOT NULL,
  `metode_bayar` enum('tunai','debit','kredit') NOT NULL,
  `jenis_biaya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buku_besar`
--

CREATE TABLE `buku_besar` (
  `id_bukubesar` varchar(6) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nominal_debit` int NOT NULL,
  `nominal_kredit` int NOT NULL,
  `akun_debit` varchar(255) NOT NULL,
  `akun_kredit` varchar(255) NOT NULL,
  `kode_transaksi_jual` int NOT NULL,
  `kode_transaksi_beli` int NOT NULL,
  `id_pengeluaran` varchar(10) NOT NULL,
  `no_kasbank` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(7) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `telp_customer` int NOT NULL,
  `alamat_customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_pembelian`
--

CREATE TABLE `detail_transaksi_pembelian` (
  `id_detail_beli` varchar(10) NOT NULL,
  `kode_transaksi_beli` int NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `jumlah_barang` int NOT NULL,
  `harga_pembelian` int NOT NULL,
  `pajak_beli` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_penjualan`
--

CREATE TABLE `detail_transaksi_penjualan` (
  `id_detail_jual` varchar(10) NOT NULL,
  `kode_transaksi_jual` int NOT NULL,
  `id_barang` varchar(5) NOT NULL,
  `jumlah_barang` int NOT NULL,
  `harga_penjualan` int NOT NULL,
  `pajak_jual` int NOT NULL,
  `diskon` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `no_invoice` varchar(5) NOT NULL,
  `tgl_faktur` date NOT NULL,
  `metode_bayar` enum('tunai','debit','kredit') NOT NULL,
  `kode_transaksi_beli` int NOT NULL,
  `kode_transaksi_jual` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kas_bank`
--

CREATE TABLE `kas_bank` (
  `no_kasbank` varchar(6) NOT NULL,
  `nominal_debit` int NOT NULL,
  `nominal_kredit` int NOT NULL,
  `petty_cash` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_23_003421_create_barang_table', 0),
(6, '2024_05_23_003421_create_biaya_table', 0),
(7, '2024_05_23_003421_create_buku_besar_table', 0),
(8, '2024_05_23_003421_create_customer_table', 0),
(9, '2024_05_23_003421_create_detail_transaksi_pembelian_table', 0),
(10, '2024_05_23_003421_create_detail_transaksi_penjualan_table', 0),
(11, '2024_05_23_003421_create_failed_jobs_table', 0),
(12, '2024_05_23_003421_create_invoice_table', 0),
(13, '2024_05_23_003421_create_kas_bank_table', 0),
(14, '2024_05_23_003421_create_outlet_table', 0),
(15, '2024_05_23_003421_create_password_reset_tokens_table', 0),
(16, '2024_05_23_003421_create_pegawai_table', 0),
(17, '2024_05_23_003421_create_pengeluaran_table', 0),
(18, '2024_05_23_003421_create_personal_access_tokens_table', 0),
(19, '2024_05_23_003421_create_supplier_table', 0),
(20, '2024_05_23_003421_create_transaksi_pembelian_table', 0),
(21, '2024_05_23_003421_create_transaksi_penjualan_table', 0),
(22, '2024_05_23_003421_create_user_table', 0),
(23, '2024_05_23_003421_create_users_table', 0),
(24, '2024_05_23_003424_add_foreign_keys_to_barang_table', 0),
(25, '2024_05_23_003424_add_foreign_keys_to_biaya_table', 0),
(26, '2024_05_23_003424_add_foreign_keys_to_customer_table', 0),
(27, '2024_05_23_003424_add_foreign_keys_to_kas_bank_table', 0),
(28, '2024_05_23_003424_add_foreign_keys_to_outlet_table', 0),
(29, '2024_05_23_003424_add_foreign_keys_to_pegawai_table', 0),
(30, '2024_05_23_003424_add_foreign_keys_to_pengeluaran_table', 0),
(31, '2024_05_23_003424_add_foreign_keys_to_supplier_table', 0),
(32, '2024_05_23_003424_add_foreign_keys_to_transaksi_pembelian_table', 0),
(33, '2024_05_23_003424_add_foreign_keys_to_transaksi_penjualan_table', 0),
(34, '2024_05_23_003424_add_foreign_keys_to_user_table', 0),
(35, '2024_05_23_045801_create_barangs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` varchar(5) NOT NULL,
  `nama_outlet` varchar(255) NOT NULL,
  `alamat_outlet` varchar(255) NOT NULL,
  `kontak_outlet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(5) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `alamat_pegawai` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` varchar(10) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `jenis_pengeluaran` enum('tunai','debit','kredit') NOT NULL,
  `jumlah_pengeluaran` int NOT NULL,
  `id_biaya` varchar(6) NOT NULL,
  `id_pegawai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(5) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `telp_supplier` int NOT NULL,
  `no_orderbarang` int NOT NULL,
  `id_barang` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pembelian`
--

CREATE TABLE `transaksi_pembelian` (
  `kode_transaksi_beli` int NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `total_pembelian` int NOT NULL,
  `metode_bayar` enum('tunai','debit','kredit') NOT NULL,
  `id_supplier` varchar(5) NOT NULL,
  `id_pegawai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `kode_transaksi_jual` int NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_penjualan` int NOT NULL,
  `metode_bayar` enum('tunai','debit','kredit') NOT NULL,
  `id_outlet` varchar(5) NOT NULL,
  `id_customer` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `buku_besar`
--
ALTER TABLE `buku_besar`
  ADD PRIMARY KEY (`id_bukubesar`),
  ADD KEY `no_kasbank` (`no_kasbank`),
  ADD KEY `id_pengeluaran` (`id_pengeluaran`),
  ADD KEY `kode_transaksi_beli` (`kode_transaksi_beli`),
  ADD KEY `kode_transaksi_jual` (`kode_transaksi_jual`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `detail_transaksi_pembelian`
--
ALTER TABLE `detail_transaksi_pembelian`
  ADD PRIMARY KEY (`id_detail_beli`),
  ADD KEY `kode_transaksi_beli` (`kode_transaksi_beli`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `detail_transaksi_penjualan`
--
ALTER TABLE `detail_transaksi_penjualan`
  ADD PRIMARY KEY (`id_detail_jual`),
  ADD KEY `kode_transaksi_jual` (`kode_transaksi_jual`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`no_invoice`),
  ADD KEY `kode_transaksi_beli` (`kode_transaksi_beli`),
  ADD KEY `kode_transaksi_jual` (`kode_transaksi_jual`);

--
-- Indexes for table `kas_bank`
--
ALTER TABLE `kas_bank`
  ADD PRIMARY KEY (`no_kasbank`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_biaya` (`id_biaya`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD UNIQUE KEY `no_orderbarang` (`no_orderbarang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD PRIMARY KEY (`kode_transaksi_beli`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`kode_transaksi_jual`),
  ADD KEY `id_outlet` (`id_outlet`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biaya`
--
ALTER TABLE `biaya`
  ADD CONSTRAINT `biaya_ibfk_1` FOREIGN KEY (`id_biaya`) REFERENCES `pengeluaran` (`id_biaya`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `transaksi_penjualan` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kas_bank`
--
ALTER TABLE `kas_bank`
  ADD CONSTRAINT `kas_bank_ibfk_1` FOREIGN KEY (`no_kasbank`) REFERENCES `buku_besar` (`no_kasbank`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outlet`
--
ALTER TABLE `outlet`
  ADD CONSTRAINT `outlet_ibfk_1` FOREIGN KEY (`id_outlet`) REFERENCES `transaksi_penjualan` (`id_outlet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pengeluaran` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `transaksi_pembelian` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`id_pengeluaran`) REFERENCES `buku_besar` (`id_pengeluaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD CONSTRAINT `transaksi_pembelian_ibfk_1` FOREIGN KEY (`kode_transaksi_beli`) REFERENCES `buku_besar` (`kode_transaksi_beli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_pembelian_ibfk_2` FOREIGN KEY (`kode_transaksi_beli`) REFERENCES `invoice` (`kode_transaksi_beli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_pembelian_ibfk_3` FOREIGN KEY (`kode_transaksi_beli`) REFERENCES `detail_transaksi_pembelian` (`kode_transaksi_beli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD CONSTRAINT `transaksi_penjualan_ibfk_1` FOREIGN KEY (`kode_transaksi_jual`) REFERENCES `invoice` (`kode_transaksi_jual`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_penjualan_ibfk_2` FOREIGN KEY (`kode_transaksi_jual`) REFERENCES `buku_besar` (`kode_transaksi_jual`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_penjualan_ibfk_3` FOREIGN KEY (`kode_transaksi_jual`) REFERENCES `detail_transaksi_penjualan` (`kode_transaksi_jual`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `tubes_si_akuntansi`
--
CREATE DATABASE IF NOT EXISTS `tubes_si_akuntansi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tubes_si_akuntansi`;

-- --------------------------------------------------------

--
-- Table structure for table `data barang`
--

CREATE TABLE `data barang` (
  `id_barang` int NOT NULL,
  `nama_barang` varchar(15) DEFAULT NULL,
  `harga_barang` int DEFAULT NULL,
  `stok_barang` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data customer`
--

CREATE TABLE `data customer` (
  `kode_pembelian` varchar(7) NOT NULL,
  `nama_customer` varchar(225) NOT NULL,
  `alamat_customer` varchar(20) NOT NULL,
  `telp_customer` int NOT NULL,
  `id_barang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data pegawai`
--

CREATE TABLE `data pegawai` (
  `id_pegawai` int NOT NULL,
  `nama_pegawai` varchar(15) NOT NULL,
  `alamat_pegawai` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data supplier`
--

CREATE TABLE `data supplier` (
  `id_supplier` varchar(5) NOT NULL,
  `nama_supplier` varchar(225) NOT NULL,
  `no_orderbarang` int NOT NULL,
  `id_barang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yuiuhg`
--

CREATE TABLE `yuiuhg` (
  `Nama_Peminjam` enum('klo','yui') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data barang`
--
ALTER TABLE `data barang`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
