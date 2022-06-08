-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 01:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
  `begindatum` datetime NOT NULL,
  `einddatum` datetime NOT NULL,
  `naam` varchar(20) NOT NULL,
  `aantal_uren` int(11) NOT NULL,
  `idmonteur` int(11) NOT NULL,
  `idvoertuig` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `mail` varchar(60) NOT NULL,
  `idlogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL,
  `gebruikersnaam` varchar(25) NOT NULL,
  `wachtwoord` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `idlogin` int(11) NOT NULL,
  `titel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voertuig`
--

CREATE TABLE `voertuig` (
  `chassisnummer` int(16) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `kenteken` varchar(7) NOT NULL,
  `idklant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `idlogin` (`idlogin`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idlogin`);

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
  ADD PRIMARY KEY (`chassisnummer`),
  ADD KEY `idklant` (`idklant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `afspraak`
--
ALTER TABLE `afspraak`
  MODIFY `idafspraak` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `idklant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `idlogin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materiaal`
--
ALTER TABLE `materiaal`
  MODIFY `idmateriaal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monteur`
--
ALTER TABLE `monteur`
  MODIFY `idmonteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opmerkingen`
--
ALTER TABLE `opmerkingen`
  MODIFY `idopmerkingen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recensie`
--
ALTER TABLE `recensie`
  MODIFY `idrecensie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voertuig`
--
ALTER TABLE `voertuig`
  MODIFY `chassisnummer` int(16) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `afspraak`
--
ALTER TABLE `afspraak`
  ADD CONSTRAINT `idmonteur` FOREIGN KEY (`idmonteur`) REFERENCES `monteur` (`idmonteur`),
  ADD CONSTRAINT `idvoertuig` FOREIGN KEY (`idvoertuig`) REFERENCES `voertuig` (`chassisnummer`);

--
-- Constraints for table `handeling_afspraak`
--
ALTER TABLE `handeling_afspraak`
  ADD CONSTRAINT `idafspraak` FOREIGN KEY (`idafspraak`) REFERENCES `afspraak` (`idafspraak`),
  ADD CONSTRAINT `idhandeling` FOREIGN KEY (`idhandeling`) REFERENCES `handeling` (`idhandeling`);

--
-- Constraints for table `klant`
--
ALTER TABLE `klant`
  ADD CONSTRAINT `idlogin` FOREIGN KEY (`idlogin`) REFERENCES `login` (`idlogin`);

--
-- Constraints for table `materiaal_afspraak`
--
ALTER TABLE `materiaal_afspraak`
  ADD CONSTRAINT `idmateriaal` FOREIGN KEY (`idmateriaal`) REFERENCES `materiaal` (`idmateriaal`);

--
-- Constraints for table `voertuig`
--
ALTER TABLE `voertuig`
  ADD CONSTRAINT `idklant` FOREIGN KEY (`idklant`) REFERENCES `klant` (`idklant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
