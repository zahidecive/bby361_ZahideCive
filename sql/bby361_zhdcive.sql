-- Create the database
CREATE DATABASE `bby361_zhdcive`;

-- Use the created database
USE `bby361_zhdcive`;

-- Set SQL mode and other configurations
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Table structure for table `eserler`
CREATE TABLE `eserler` (
  `eserID` int(11) NOT NULL,
  `eserDamga` timestamp NOT NULL DEFAULT current_timestamp(),
  `eserAdi` text NOT NULL,
  `eserDetay` text DEFAULT NULL,
  `eserURL` varchar(200) NOT NULL,
  `yazarID` int(11) DEFAULT NULL,
  `konuID` int(11) DEFAULT NULL,
  `yayineviID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `eserler`
INSERT INTO `eserler` (`eserID`, `eserDamga`, `eserAdi`, `eserDetay`, `eserURL`, `yazarID`, `konuID`, `yayineviID`) VALUES
(23, '2024-01-06 11:51:48', 'Satranç', '', 'https://tr.wikipedia.org/wiki/Stefan_Zweig', 3, 10, 1),
-- (Other rows are truncated for brevity)

-- Table structure for table `konular`
CREATE TABLE `konular` (
  `konuID` int(11) NOT NULL,
  `konuAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `konular`
INSERT INTO `konular` (`konuID`, `konuAdi`) VALUES
(1, 'Suç'),
-- (Other rows are truncated for brevity)

-- Table structure for table `yayinevleri`
CREATE TABLE `yayinevleri` (
  `yayineviID` int(11) NOT NULL,
  `yayineviAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `yayinevleri`
INSERT INTO `yayinevleri` (`yayineviID`, `yayineviAdi`) VALUES
(1, 'İletişim Yayınları'),
-- (Other rows are truncated for brevity)

-- Table structure for table `yazarlar`
CREATE TABLE `yazarlar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` varchar(100) NOT NULL,
  `yazarSoyadi` varchar(100) NOT NULL,
  `yazarURL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `yazarlar`
INSERT INTO `yazarlar` (`yazarID`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(3, 'Stefan', 'Zweig', 'https://tr.wikipedia.org/wiki/Stefan_Zweig'),
-- (Other rows are truncated for brevity)

-- Indexes for table `eserler`
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`eserID`),
  ADD UNIQUE KEY `eserURL` (`eserURL`),
  ADD KEY `fk_eserler_konular_idx` (`konuID`),
  ADD KEY `fk_eserler_yayinevleri_idx` (`yayineviID`);

-- Indexes for table `konular`
ALTER TABLE `konular`
  ADD PRIMARY KEY (`konuID`);

-- Indexes for table `yayinevleri`
ALTER TABLE `yayinevleri`
  ADD PRIMARY KEY (`yayineviID`);

-- Indexes for table `yazarlar`
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazarID`);

-- Auto-increment values for tables
ALTER TABLE `eserler`
  MODIFY `eserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

ALTER TABLE `konular`
  MODIFY `konuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `yayinevleri`
  MODIFY `yayineviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `yazarlar`
  MODIFY `yazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

-- Foreign key constraints for table `eserler`
ALTER TABLE `eserler`
  ADD CONSTRAINT `fk_eserler_konular` FOREIGN KEY (`konuID`) REFERENCES `konular` (`konuID`),
  ADD CONSTRAINT `fk_eserler_yayinevleri` FOREIGN KEY (`yayineviID`) REFERENCES `yayinevleri` (`yayineviID`);

-- Commit the changes
COMMIT;
