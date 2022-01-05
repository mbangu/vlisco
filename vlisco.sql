-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 04 jan. 2022 à 14:14
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vlisco`
--

-- --------------------------------------------------------

--
-- Structure de la table `credential`
--

CREATE TABLE `credential` (
  `idcredential` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `credential`
--

INSERT INTO `credential` (`idcredential`, `nom`, `adresse`, `telephone`, `email`, `password`) VALUES
(1, 'jesus', 'makomeno', '+243970719030', 'jesuskazkid@gmail.com', '0000'),
(3, 'kidinda', 'makomeno', '987456321', 'k', '0000'),
(5, 'vhjjk', 'fjgfj', 'hjkhh', 'hjjhkk', 'gjghkjhjk');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `credential`
--
ALTER TABLE `credential`
  ADD UNIQUE KEY `idcredential_UNIQUE` (`idcredential`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `credential`
--
ALTER TABLE `credential`
  MODIFY `idcredential` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
