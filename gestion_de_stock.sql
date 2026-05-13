-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Juillet 2023 à 03:01
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion_de_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE IF NOT EXISTS `medicament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_med` varchar(20) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `deseignation` varchar(52) NOT NULL,
  `date_perem` date DEFAULT NULL,
  `fournisseur` varchar(56) DEFAULT NULL,
  `remise` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`id`, `code_med`, `reference`, `deseignation`, `date_perem`, `fournisseur`, `remise`, `prix`, `stock`) VALUES
(1, '001', 'Effervescent', 'Vitamines B Complex', '2024-05-01', 'BIOFAR', 0, 2500, 50),
(2, '002', 'Sirop', 'Lévodropropizine', '2024-06-01', 'HECTOSEC', 0, 5000, 95),
(3, '003', 'Effervescent', 'Doliprane', '2023-10-01', 'SANOFI', 5, 1500, 85);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `id_user`, `username`, `password`, `type`) VALUES
(1, 750, 'admin', 'admin', 'directeur'),
(2, 350, 'admin2', 'admin2', 'caissier');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE IF NOT EXISTS `vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_facture` int(11) NOT NULL,
  `code_med` int(11) NOT NULL,
  `reference` varchar(55) NOT NULL,
  `prix_vente` int(11) NOT NULL,
  `stock_sortie` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `vente`
--

INSERT INTO `vente` (`id`, `num_facture`, `code_med`, `reference`, `prix_vente`, `stock_sortie`, `subtotal`) VALUES
(1, 1, 2, 'Sirop', 5000, 5, 25000),
(2, 2, 3, 'Effervescent', 1425, 10, 14250),
(3, 1, 3, 'Effervescent', 1425, 5, 7125);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
