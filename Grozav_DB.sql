-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2024 at 11:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Grozav_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('client','administrator') NOT NULL DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$MYf9c9njb0Jy7xmT6UWTJe9bMVW5lYJVVes09OuE.akMmUbGnoGBm', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `programate`
--

CREATE TABLE `programate` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numar_contact` varchar(255) NOT NULL,
  `locatie` varchar(255) NOT NULL,
  `nr_persoane` int(11) NOT NULL,
  `servicii` text NOT NULL,
  `data_evenimentului` date NOT NULL,
  `suma_plata_totala` decimal(10,2) NOT NULL,
  `avans_de_platit` decimal(10,2) NOT NULL,
  `status` enum('in asteptare','confirmat','finalizat') DEFAULT 'in asteptare'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programate`
--

INSERT INTO `programate` (`id`, `nume`, `prenume`, `email`, `numar_contact`, `locatie`, `nr_persoane`, `servicii`, `data_evenimentului`, `suma_plata_totala`, `avans_de_platit`, `status`) VALUES
(2, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201967', 'Turda, Romania', 11, 'foto+video', '2024-03-15', 3893.35, 584.00, 'in asteptare'),
(22, 'Google', 'Amazonuu', 'amazongogu@gmail.com', '0731201966', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 110, 'doar video', '2024-03-13', 4680.98, 702.15, 'in asteptare'),
(23, 'Google', 'Amazonuu', 'amazongogu@gmail.com', '0731201966', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 110, 'doar video', '2024-03-16', 4680.98, 702.00, 'confirmat'),
(24, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 2, 'foto+video', '2024-03-21', 3758.35, 563.75, 'in asteptare'),
(26, 'Savu', 'Alex', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 16, 'doar foto', '2024-04-15', 2793.12, 418.97, 'confirmat'),
(27, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Salon Georgia, Strada Horea, Aiud, Romania', 90, 'doar foto', '2024-05-17', 3073.48, 461.02, 'in asteptare'),
(28, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turkey', 11, 'foto+video', '2024-05-14', 5042.74, 756.41, 'in asteptare'),
(29, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Tunisia', 11, 'foto+video', '2024-05-15', 6219.92, 932.99, 'in asteptare'),
(52, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turdaș, Romania', 11, 'foto+video', '2024-06-04', 2869.24, 430.39, 'in asteptare'),
(53, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 11, 'foto+video', '2024-06-05', 2595.72, 389.36, 'in asteptare'),
(54, 'Google', 'Amazon', 'amazongogu@gmail.com', '0749961098', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 11, 'foto+video', '2024-06-11', 2595.72, 389.36, 'in asteptare'),
(55, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 11, 'foto+video', '2024-06-08', 2595.72, 389.36, 'in asteptare'),
(56, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 11, 'foto+video', '2024-06-25', 3292.30, 493.84, 'in asteptare'),
(57, 'savu', 'Amazon', 'amazongogu@gmail.com', '0712345678', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 10, 'foto+video', '2024-06-29', 3280.72, 492.11, 'in asteptare'),
(58, 'Google', 'Amazon', 'amazongogu@gmail.com', '0749961098', 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 11, 'foto+video', '2024-06-24', 2595.72, 389.36, 'in asteptare'),
(59, 'Google', 'Amazon', 'amazongogu@gmail.com', '0749961098', 'Ocna Mureș, Romania', 11, 'foto+video', '2024-06-28', 3267.99, 490.20, 'in asteptare'),
(60, 'Google', 'Amazon', 'amazongogu@gmail.com', '0749961098', 'Ocna Mureș, Romania', 11, 'foto+video', '2024-07-24', 3267.99, 490.20, 'in asteptare'),
(61, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 11, 'foto+video', '2024-07-16', 2592.30, 388.84, 'in asteptare'),
(62, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 11, 'foto+video', '2024-07-02', 2792.30, 418.84, 'in asteptare'),
(63, 'Alex', 'Alex', 'savualex46@gmail.com', '0731201966', 'Turda Arena, Strada Stadionului, Turda, Romania', 110, 'foto+video', '2024-06-18', 4078.42, 611.76, 'in asteptare'),
(64, 'h', 'j', 'h@i.com', '555', 'Cluj-Napoca, Romania', 500, 'foto+video', '2025-01-16', 9463.57, 1419.54, 'in asteptare'),
(65, 'Google', 'Amazon', 'amazongogu@gmail.com', '0731201966', 'Turda, Romania', 11, 'foto+video', '2024-07-18', 3292.30, 493.84, 'in asteptare');

-- --------------------------------------------------------

--
-- Table structure for table `rezervari`
--

CREATE TABLE `rezervari` (
  `id` int(11) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `data_nasterii` date NOT NULL,
  `numar_telefon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tip_eveniment` enum('botez','nunta','majorat') NOT NULL,
  `numar_persoane` int(11) NOT NULL,
  `locatie` varchar(100) NOT NULL,
  `servicii` enum('foto+video','doar foto','doar video') NOT NULL,
  `album_personalizat` tinyint(1) DEFAULT 0,
  `data_evenimentului` date NOT NULL,
  `metoda_plata` varchar(255) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezervari`
--

INSERT INTO `rezervari` (`id`, `nume`, `prenume`, `data_nasterii`, `numar_telefon`, `email`, `tip_eveniment`, `numar_persoane`, `locatie`, `servicii`, `album_personalizat`, `data_evenimentului`, `metoda_plata`, `token`) VALUES
(1, 'NumeExemplu', 'PrenumeExemplu', '1980-01-01', '0712345678', 'exemplu@email.com', 'nunta', 100, 'LocatieExemplu', 'foto+video', 1, '2024-02-14', 'De contactat', NULL),
(17, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 110, 'Turda, Romania', 'doar video', 0, '2024-02-27', 'cash', NULL),
(18, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'nunta', 110, 'Turda, Romania', 'doar video', 0, '2024-02-28', 'card', NULL),
(19, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 111, 'Hotel Sunny Hill, Strada Făgetului, Cluj-Napoca, Romania', 'foto+video', 0, '2024-03-14', 'cash', NULL),
(20, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 11, 'Turda, Romania', 'foto+video', 0, '2024-03-15', 'card', NULL),
(22, 'Google', 'Amazonuu', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 110, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'doar video', 0, '2024-03-13', 'cash', NULL),
(23, 'Google', 'Amazonuu', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 110, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'doar video', 0, '2024-03-16', 'cash', NULL),
(24, 'Google', 'Amazon', '2002-09-26', '0731201966', 'amazongogu@gmail.com', 'botez', 2, 'Turda, Romania', 'foto+video', 0, '2024-03-21', 'cash', NULL),
(26, 'Alex', 'Savu', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'majorat', 11, 'Turda, Romania', 'doar foto', 0, '2024-04-15', 'cash', NULL),
(27, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'majorat', 90, 'Salon Georgia, Strada Horea, Aiud, Romania', 'doar foto', 0, '2024-05-17', 'cash', NULL),
(28, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'nunta', 11, 'Turkey', 'foto+video', 0, '2024-05-14', 'cash', NULL),
(29, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 11, 'Tunisia', 'foto+video', 0, '2024-05-15', 'cash', NULL),
(30, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'majorat', 111, 'Turkey', 'foto+video', 0, '2024-05-16', 'cash', '3c2deb04da46e70dd5c6c47433d313aecaffbb6ded371e55e988b4db7593da2c'),
(31, 'test', 'tester', '2000-09-16', '0731201967', 'amazongogu@gmail.com', 'majorat', 11, 'Alba Iulia, Romania', 'doar video', 0, '2024-05-18', 'cash', '30f2778863322a862f9ef96c39866942bf713edcfc7665ad8436bc548641b7e4'),
(32, 'tester', 'beta', '2002-09-16', '0749961098', 'test@test.ro', 'majorat', 111, 'Turdaș, Romania', 'doar foto', 1, '2024-05-20', 'cash', '7f9e8c150e71b20d53c7b2e2fc1cb6cb18b77f0c6125a8d51292b8799825ab91'),
(33, 'tester', 'test', '1111-11-11', '1111111111', 'amazongogu@gmail.com', 'nunta', 11, 'Turda Arena, Strada Stadionului, Turda, Romania', 'foto+video', 0, '2024-05-24', 'cash', 'c6fb9242e8efd61ca8a4408ac1b99a5ee5f7d09aecc73530436b13b959176d53'),
(34, 'testing', 'testare', '2002-09-16', '0777777777', 'amazongogu@gmail.com', 'botez', 11, 'Turkey', 'doar foto', 0, '2024-05-23', 'cash', '01ee008b92891a1076e160cd4ce03fdf9695a84fc100ca8ccb5f9cd4afd91091'),
(35, 'testerrr', 'dadad', '2002-09-16', '0849996109', 'tester@alex.ro', 'botez', 10, 'Turda, Romania', 'doar video', 0, '2024-05-25', 'cash', '5db505910804f5ea37f6e530e202ffdce1507446415f32175aebed86da84481c'),
(36, 'testerrr', 'dadad', '2002-09-16', '0849996109', 'tester@alex.ro', 'botez', 10, 'Turda, Romania', 'doar video', 0, '2024-05-27', 'cash', '8b74ca80992691c541be5f0703a96e621bb2b8196a846ff862e5c6d163ec9be8'),
(37, 'tester', 'test', '1111-11-11', '1111111111', 'amazongogu@gmail.com', 'nunta', 11, 'Turdaș, Romania', 'doar video', 0, '2024-05-29', 'cash', 'a0ad1eb6c900104e98e5108a605f4dfa9a4e86a884ae00791ea506165f7e8581'),
(38, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'nunta', 111, 'Hotel Sunny Hill, Strada Făgetului, Cluj-Napoca, Romania', 'foto+video', 0, '2024-05-31', 'cash', '9f82f64a69a2042b53a579cff76787f4316348ec7439b9f8ef7ec32b1d519c43'),
(39, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'nunta', 111, 'Cluj-Napoca, Romania', 'foto+video', 0, '2024-05-30', 'cash', '4eba7b33ec3c5b0c2d55133c08e366791f6800df5eabc6887ee40396bf9e6ceb'),
(52, 'Google', 'Amazon', '2002-11-11', '0731201966', 'amazongogu@gmail.com', 'botez', 11, 'Turdaș, Romania', 'foto+video', 0, '2024-06-04', 'cash', NULL),
(53, 'Google', 'Amazon', '2002-11-11', '0731201966', 'amazongogu@gmail.com', 'majorat', 11, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'foto+video', 0, '2024-06-05', 'cash', 'c37d904f6e49065fdd731c65550d12a3'),
(54, 'Google', 'Amazon', '2002-09-16', '0749961098', 'amazongogu@gmail.com', 'majorat', 11, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'foto+video', 0, '2024-06-11', 'cash', '11da028b8320a6449b410bbc074c1e30'),
(55, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'majorat', 11, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'foto+video', 0, '2024-06-08', 'cash', 'b442060dbccc65c2ab18e2f77c8a9984'),
(56, 'Google', 'Amazon', '2002-11-11', '0731201966', 'amazongogu@gmail.com', 'nunta', 11, 'Turda, Romania', 'foto+video', 0, '2024-06-25', 'cash', '1989d214538ae91d2136a0cc3c0b8073'),
(57, 'savu', 'Amazon', '2002-09-16', '0712345678', 'amazongogu@gmail.com', 'nunta', 10, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'foto+video', 0, '2024-06-29', 'cash', '8449b4bbad282a49793842c95baa5fb2'),
(58, 'Google', 'Amazon', '2002-09-16', '0749961098', 'amazongogu@gmail.com', 'majorat', 11, 'Turda Salt Mine, Aleea Durgăului, Turda, Romania', 'foto+video', 0, '2024-06-24', 'cash', '8dedc350024d86de37fc1785569c1032'),
(59, 'Google', 'Amazon', '2002-09-16', '0749961098', 'amazongogu@gmail.com', 'nunta', 11, 'Ocna Mureș, Romania', 'foto+video', 0, '2024-06-28', 'cash', 'fa3422ff37412638f528bc7f169d8b2b'),
(60, 'Google', 'Amazon', '2002-09-16', '0749961098', 'amazongogu@gmail.com', 'nunta', 11, 'Ocna Mureș, Romania', 'foto+video', 0, '2024-07-24', 'cash', 'c934cdb53349b8c970631e6e36a478e1'),
(61, 'Google', 'Amazon', '2002-10-11', '0731201966', 'amazongogu@gmail.com', 'majorat', 11, 'Turda, Romania', 'foto+video', 0, '2024-07-16', 'cash', 'b6ddfd44e3b5c89f04489064b36feb06'),
(62, 'Google', 'Amazon', '2002-09-16', '0731201966', 'amazongogu@gmail.com', 'botez', 11, 'Turda, Romania', 'foto+video', 0, '2024-07-02', 'cash', '75afb37433614f146f254e81712db7fd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `programate`
--
ALTER TABLE `programate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rezervari`
--
ALTER TABLE `rezervari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_evenimentului` (`data_evenimentului`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `programate`
--
ALTER TABLE `programate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `rezervari`
--
ALTER TABLE `rezervari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
