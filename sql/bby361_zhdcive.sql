-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Oca 2024, 14:49:55
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database Oluşturma


CREATE DATABASE bby361_zhdcive;
USE bby361_zhdcive;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bby361_zhdcive.sql`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eserler`
--

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

--
-- Tablo döküm verisi `eserler`
--

INSERT INTO `eserler` (`eserID`, `eserDamga`, `eserAdi`, `eserDetay`, `eserURL`, `yazarID`, `konuID`, `yayineviID`) VALUES
(23, '2024-01-06 11:51:48', 'Satranç', '', 'https://tr.wikipedia.org/wiki/Stefan_Zweig', 3, 10, 1),
(25, '2024-01-06 11:53:33', 'Suç ve Ceza', '', 'https://tr.wikipedia.org/wiki/Fyodor_Dostoyevski', 4, 1, 2),
(27, '2024-01-06 11:54:24', '1984', '', 'https://en.wikipedia.org/wiki/George_Orwell', 5, 11, 3),
(28, '2024-01-06 11:55:13', 'Simyacı', '', 'https://tr.wikipedia.org/wiki/Paulo_Coelho', 6, 12, 3),
(29, '2024-01-06 11:57:03', 'Yabancı', '', 'https://tr.wikipedia.org/wiki/Albert_Camus', 7, 9, 2),
(30, '2024-01-06 11:58:08', 'Şeker Portakalı', '', 'https://tr.wikipedia.org/wiki/Jos%C3%A9_Mauro_de_Vasconcelos', 8, 8, 2),
(31, '2024-01-06 11:59:42', 'Göçebe', '', 'https://tr.wikipedia.org/wiki/Stephenie_Meyer', 9, 6, 4),
(35, '2024-01-06 12:46:11', 'Karamazov Kardeşler', NULL, 'https://tr.wikipedia.org/wiki/Fyodor_Dostoyevski/', 4, 2, 3),
(36, '2024-01-06 12:48:09', 'Harry Potter ve Felsefe Taşı', NULL, 'https://tr.wikipedia.org/wiki/J._K._Rowling', 10, 13, 5),
(37, '2024-01-06 12:49:08', 'Sessiz Ev', '', 'https://tr.wikipedia.org/wiki/Orhan_Pamuk', 11, 2, 1),
(38, '2024-01-06 12:49:44', 'Kırmızı Pazartesi', NULL, 'https://tr.wikipedia.org/wiki/Gabriel_Garc%C3%ADa_M%C3%A1rquez', 12, 7, 6),
(39, '2024-01-06 12:58:27', 'Tutunamayanlar ', NULL, 'https://tr.wikipedia.org/wiki/O%C4%9Fuz_Atay', 13, 4, 1),
(40, '2024-01-06 13:00:05', 'Kardeşimin Hikayesi', NULL, 'https://tr.wikipedia.org/wiki/Z%C3%BClf%C3%BC_Livaneli', 14, 3, 7),
(41, '2024-01-06 13:01:53', 'İstanbul Hatırası', NULL, 'https://tr.wikipedia.org/wiki/Ahmet_%C3%9Cmit', 15, 1, 8),
(42, '2024-01-06 13:02:38', 'Beyoğlı Rapsodisi', NULL, 'https://tr.wikipedia.org/wiki/Ahmet_%C3%9Cmit/', 15, 1, 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konular`
--

CREATE TABLE `konular` (
  `konuID` int(11) NOT NULL,
  `konuAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `konular`
--

INSERT INTO `konular` (`konuID`, `konuAdi`) VALUES
(1, 'Suç'),
(2, 'Aile İlişkileri'),
(3, 'Kültürel Çatışma'),
(4, 'Toplumsal Eleştiri'),
(5, 'Totaliterizm'),
(6, 'Romantik Bilim Kurgu'),
(7, 'Aşk ve Siyaset'),
(8, 'Büyüme Hikayesi'),
(9, 'Varoşçuluk'),
(10, 'Spor'),
(11, 'Politika'),
(12, 'Macera'),
(13, 'Fantastik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevleri`
--

CREATE TABLE `yayinevleri` (
  `yayineviID` int(11) NOT NULL,
  `yayineviAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yayinevleri`
--

INSERT INTO `yayinevleri` (`yayineviID`, `yayineviAdi`) VALUES
(1, 'İletişim Yayınları'),
(2, 'İş Bankası Kültür Yayınları'),
(3, 'Can Yayınları'),
(4, 'Pegasus Yayınları'),
(5, 'Yapı Kredi Yayınları'),
(6, 'Cem Yayınevi'),
(7, 'Doğan Kitap'),
(8, 'Everest Yayınları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` varchar(100) NOT NULL,
  `yazarSoyadi` varchar(100) NOT NULL,
  `yazarURL` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`yazarID`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(3, 'Stefan', 'Zweig', 'https://tr.wikipedia.org/wiki/Stefan_Zweig'),
(4, 'Fyodor', 'Dostoyevski', 'https://tr.wikipedia.org/wiki/Fyodor_Dostoyevski'),
(5, 'George', 'Orwell', 'https://en.wikipedia.org/wiki/George_Orwell'),
(6, 'Paulo', 'Coelho', 'https://tr.wikipedia.org/wiki/Paulo_Coelho'),
(7, 'Albert', 'Camus', 'https://tr.wikipedia.org/wiki/Albert_Camus'),
(8, 'Jose Mauro de', 'Vasconceles', 'https://tr.wikipedia.org/wiki/Jos%C3%A9_Mauro_de_Vasconcelos'),
(9, 'Stephenie', 'Meyer', 'https://tr.wikipedia.org/wiki/Stephenie_Meyer'),
(10, 'JK', 'Rowling', 'https://tr.wikipedia.org/wiki/J._K._Rowling'),
(11, 'Orhan', 'Pamuk', 'https://tr.wikipedia.org/wiki/Orhan_Pamuk'),
(12, 'Gabriel Garcia ', 'Marquez', 'https://tr.wikipedia.org/wiki/Gabriel_Garc%C3%ADa_M%C3%A1rquez'),
(13, 'Oğuz', 'Atay', 'https://tr.wikipedia.org/wiki/O%C4%9Fuz_Atay'),
(14, 'Zülfü', 'Livaneli', 'https://tr.wikipedia.org/wiki/Z%C3%BClf%C3%BC_Livaneli'),
(15, 'Ahmet', 'Ümit', 'https://tr.wikipedia.org/wiki/Ahmet_%C3%9Cmit');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eserler`
--
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`eserID`),
  ADD UNIQUE KEY `eserURL` (`eserURL`),
  ADD KEY `fk_eserler_konular_idx` (`konuID`),
  ADD KEY `fk_eserler_yayinevleri_idx` (`yayineviID`);

--
-- Tablo için indeksler `konular`
--
ALTER TABLE `konular`
  ADD PRIMARY KEY (`konuID`);

--
-- Tablo için indeksler `yayinevleri`
--
ALTER TABLE `yayinevleri`
  ADD PRIMARY KEY (`yayineviID`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eserler`
--
ALTER TABLE `eserler`
  MODIFY `eserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `konular`
--
ALTER TABLE `konular`
  MODIFY `konuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevleri`
--
ALTER TABLE `yayinevleri`
  MODIFY `yayineviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `yazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `eserler`
--
ALTER TABLE `eserler`
  ADD CONSTRAINT `fk_eserler_konular` FOREIGN KEY (`konuID`) REFERENCES `konular` (`konuID`),
  ADD CONSTRAINT `fk_eserler_yayinevleri` FOREIGN KEY (`yayineviID`) REFERENCES `yayinevleri` (`yayineviID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
