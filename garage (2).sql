-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 07:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `afspraak`
--

CREATE TABLE `afspraak` (
  `idafspraak` int(11) NOT NULL,
  `begindatum` date NOT NULL,
  `einddatum` date NOT NULL,
  `naam` varchar(200) NOT NULL,
  `aantal_uren` int(11) NOT NULL,
  `idmonteur` int(11) NOT NULL,
  `idvoertuig` int(16) NOT NULL,
  `type_afspraak` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `afspraak`
--

INSERT INTO `afspraak` (`idafspraak`, `begindatum`, `einddatum`, `naam`, `aantal_uren`, `idmonteur`, `idvoertuig`, `type_afspraak`, `status`) VALUES
(32, '2022-06-16', '2022-06-16', 'Ben@gmail.com', 4, 1, 1, 'Reparatie', 'Aangevraagd'),
(39, '2022-06-16', '0000-00-00', 'Ben@gmail.com', 4, 1, 1, 'Lak', 'Aangevraagd'),
(43, '2022-06-16', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'APK', 'Aangevraagd'),
(44, '2022-07-22', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'APK', 'Aangevraagd'),
(45, '2022-07-17', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'Controle', 'Aangevraagd'),
(46, '2022-07-01', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'Lak', 'Aangevraagd'),
(47, '2022-08-17', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'Reparatie', 'Aangevraagd'),
(48, '2022-08-02', '0000-00-00', 'User@gmail.com', 4, 1, 18, 'Controle', 'Aangevraagd'),
(49, '2022-07-22', '0000-00-00', 'William@gmail.com', 4, 1, 3, 'Reparatie', 'Aangevraagd');

-- --------------------------------------------------------

--
-- Table structure for table `factuur`
--

CREATE TABLE `factuur` (
  `idfactuur` int(11) NOT NULL,
  `isbetaald` tinyint(1) NOT NULL,
  `idafspraak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `handeling`
--

CREATE TABLE `handeling` (
  `idhandeling` int(11) NOT NULL,
  `naam` varchar(45) NOT NULL,
  `prijs` decimal(10,0) NOT NULL,
  `isafgerond` tinyint(1) NOT NULL,
  `opmerkingen` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `handeling_afspraak`
--

CREATE TABLE `handeling_afspraak` (
  `idhandeling` int(11) NOT NULL,
  `idafspraak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `klant`
--

CREATE TABLE `klant` (
  `idklant` int(11) NOT NULL,
  `voornaam` varchar(25) NOT NULL,
  `achternaam` varchar(25) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klant`
--

INSERT INTO `klant` (`idklant`, `voornaam`, `achternaam`, `mail`, `wachtwoord`) VALUES
(1, 'Akasha', 'sfd', 'Akasha@gmail.com', '$2y$10$pGXDzmzSI6U0ARaWnJ6SteEAlFtJ3UQFo8eGSK4K3fyuQ6EJklZpe'),
(2, 'Ben', '', 'ben@gmail.com', '$2y$10$3aRiUf.s1lmFvBWeR2giPurrCIDmO1zZStf3zWIRm8Sx6I.6mfYju'),
(3, 'William', 'van den Broek', 'William@gmail.com', '$2y$10$I.RuZ6Nce6NCRuzPmdgpgeNdsWcIHF46pqKASCZ6fIs0Wzon6gwka'),
(4, 'User', 'van den Broeke', 'User@gmail.com', '$2y$10$M7/nI/DTVcGzyviyWtUeC.R6Dge.8mzz/souz/Z4TN.e.HCXyZHAS'),
(5, 'Pieter', '', 'Pieter@gmail.com', '$2y$10$w.Aik8vnKDqbSpTYtRou4eLXz4qmwYUAkvVJHcSTJu7RxRdCtyhue');

-- --------------------------------------------------------

--
-- Table structure for table `materiaal`
--

CREATE TABLE `materiaal` (
  `idmateriaal` int(11) NOT NULL,
  `naam` varchar(20) NOT NULL,
  `prijs` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `materiaal_afspraak`
--

CREATE TABLE `materiaal_afspraak` (
  `idmateriaal` int(11) NOT NULL,
  `idafspraak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `monteur`
--

CREATE TABLE `monteur` (
  `idmonteur` int(11) NOT NULL,
  `voornaam` varchar(25) NOT NULL,
  `achternaam` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monteur`
--

INSERT INTO `monteur` (`idmonteur`, `voornaam`, `achternaam`) VALUES
(1, 'klaas', 'henksen'),
(2, 'Jan', 'Tichelaar');

-- --------------------------------------------------------

--
-- Table structure for table `opmerkingen`
--

CREATE TABLE `opmerkingen` (
  `idopmerkingen` int(11) NOT NULL,
  `tekst` tinytext NOT NULL,
  `titel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recensie`
--

CREATE TABLE `recensie` (
  `idrecensie` int(11) NOT NULL,
  `opmerking` tinytext NOT NULL,
  `titel` varchar(50) NOT NULL,
  `idlogin` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recensie`
--

INSERT INTO `recensie` (`idrecensie`, `opmerking`, `titel`, `idlogin`) VALUES
(2, 'Ik ga vertellen waarom deze site zo slecht is, blablalbalbalblablalbalbablablalblablba abl ab la bla bla bl alb al bla bla lb alb al bla bl', 'Boos', 4),
(4, 'Gene user text', 'Geen user', 0),
(5, 'asdfasg', 'asd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voertuig`
--

CREATE TABLE `voertuig` (
  `carID` int(255) NOT NULL,
  `chassisnummer` varchar(255) DEFAULT NULL,
  `merk` varchar(30) NOT NULL,
  `kenteken` varchar(7) NOT NULL,
  `idklant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voertuig`
--

INSERT INTO `voertuig` (`carID`, `chassisnummer`, `merk`, `kenteken`, `idklant`) VALUES
(1, '345667', 'Audi', 'BEN-123', 2),
(2, NULL, '', '', 5),
(3, '13215346', 'Ford', 'WILL-12', 3),
(18, '23145', 'Ford', 'asda-23', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `afspraak`
--
ALTER TABLE `afspraak`
  ADD PRIMARY KEY (`idafspraak`),
  ADD KEY `idmonteur` (`idmonteur`),
  ADD KEY `idvoertuig` (`idvoertuig`);

--
-- Indexes for table `factuur`
--
ALTER TABLE `factuur`
  ADD PRIMARY KEY (`idfactuur`);

--
-- Indexes for table `handeling`
--
ALTER TABLE `handeling`
  ADD PRIMARY KEY (`idhandeling`);

--
-- Indexes for table `handeling_afspraak`
--
ALTER TABLE `handeling_afspraak`
  ADD KEY `idhandeling` (`idhandeling`),
  ADD KEY `idafspraak` (`idafspraak`);

--
-- Indexes for table `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`idklant`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `materiaal`
--
ALTER TABLE `materiaal`
  ADD PRIMARY KEY (`idmateriaal`);

--
-- Indexes for table `materiaal_afspraak`
--
ALTER TABLE `materiaal_afspraak`
  ADD KEY `idmateriaal` (`idmateriaal`);

--
-- Indexes for table `monteur`
--
ALTER TABLE `monteur`
  ADD PRIMARY KEY (`idmonteur`);

--
-- Indexes for table `opmerkingen`
--
ALTER TABLE `opmerkingen`
  ADD PRIMARY KEY (`idopmerkingen`);

--
-- Indexes for table `recensie`
--
ALTER TABLE `recensie`
  ADD PRIMARY KEY (`idrecensie`);

--
-- Indexes for table `voertuig`
--
ALTER TABLE `voertuig`
  ADD PRIMARY KEY (`carID`),
  ADD UNIQUE KEY `chassisnummer` (`chassisnummer`),
  ADD KEY `idklant` (`idklant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `afspraak`
--
ALTER TABLE `afspraak`
  MODIFY `idafspraak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `factuur`
--
ALTER TABLE `factuur`
  MODIFY `idfactuur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `handeling`
--
ALTER TABLE `handeling`
  MODIFY `idhandeling` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klant`
--
ALTER TABLE `klant`
  MODIFY `idklant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `materiaal`
--
ALTER TABLE `materiaal`
  MODIFY `idmateriaal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monteur`
--
ALTER TABLE `monteur`
  MODIFY `idmonteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opmerkingen`
--
ALTER TABLE `opmerkingen`
  MODIFY `idopmerkingen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recensie`
--
ALTER TABLE `recensie`
  MODIFY `idrecensie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voertuig`
--
ALTER TABLE `voertuig`
  MODIFY `carID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `afspraak`
--
ALTER TABLE `afspraak`
  ADD CONSTRAINT `idcar` FOREIGN KEY (`idvoertuig`) REFERENCES `voertuig` (`carID`),
  ADD CONSTRAINT `idmonteur` FOREIGN KEY (`idmonteur`) REFERENCES `monteur` (`idmonteur`);

--
-- Constraints for table `handeling_afspraak`
--
ALTER TABLE `handeling_afspraak`
  ADD CONSTRAINT `idafspraak` FOREIGN KEY (`idafspraak`) REFERENCES `afspraak` (`idafspraak`),
  ADD CONSTRAINT `idhandeling` FOREIGN KEY (`idhandeling`) REFERENCES `handeling` (`idhandeling`);

--
-- Constraints for table `materiaal_afspraak`
--
ALTER TABLE `materiaal_afspraak`
  ADD CONSTRAINT `idmateriaal` FOREIGN KEY (`idmateriaal`) REFERENCES `materiaal` (`idmateriaal`);

--
-- Constraints for table `voertuig`
--
ALTER TABLE `voertuig`
  ADD CONSTRAINT `klantID` FOREIGN KEY (`idklant`) REFERENCES `klant` (`idklant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
