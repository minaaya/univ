-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 17 jan. 2018 à 00:14
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `univ`
--

-- --------------------------------------------------------

--
-- Structure de la table `doc`
--

CREATE TABLE `doc` (
  `id_Doc` int(255) NOT NULL,
  `Lien_Doc` text NOT NULL,
  `Type_Doc` varchar(25) NOT NULL,
  `ID_Module` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `doc`
--

INSERT INTO `doc` (`id_Doc`, `Lien_Doc`, `Type_Doc`, `ID_Module`) VALUES
(1, 'test', 'TD', 'D112'),
(2, 'test2', 'TP', 'D112');

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `ID_Filiere` varchar(25) NOT NULL,
  `Titre_Filiere` varchar(25) NOT NULL,
  `Specialite` varchar(25) NOT NULL,
  `annee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`ID_Filiere`, `Titre_Filiere`, `Specialite`, `annee`) VALUES
('F01', 'MI', 'MI', 'L1');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(255) NOT NULL,
  `Lien_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `memoire`
--

CREATE TABLE `memoire` (
  `ID_Memoire` varchar(25) NOT NULL,
  `Description_Memoire` text NOT NULL,
  `Lien_Memoire` varchar(255) NOT NULL,
  `ID_Filiere` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `ID_Module` varchar(25) NOT NULL,
  `Titre_Module` varchar(25) CHARACTER SET utf8 NOT NULL,
  `Description_Module` longtext CHARACTER SET utf8,
  `Semestre` varchar(25) CHARACTER SET utf8 NOT NULL,
  `ID_Filiere` varchar(25) NOT NULL,
  `freq` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`ID_Module`, `Titre_Module`, `Description_Module`, `Semestre`, `ID_Filiere`, `freq`) VALUES
('D112', 'Codage', 'Codage et representation de l\'informatique \r\nCoef 2\r\nCredit 2.00\r\nCoef.Examen 50.00\r\nCoef.CC 50.00\r\n', 'S1', 'F01', 0),
('D113', 'Economie ', 'Economie d\'entreprise\r\nCoef 2 \r\nCredit 2.00\r\nCoef.Exam 50.00\r\nCoef.CC 50.00', 'S1', 'F01', 0),
('F111', 'Analyse 1', 'Analyse 1\r\nCoef 4\r\nCredit 6.00\r\nCoef.Examen 50.00\r\nCoef.CC 50.00', 'S1', 'F01', 0),
('F112', 'Algebre 1', 'Algebre\r\nCoef 2\r\nCredit 5.00\r\nCoef.Examen 50.00\r\nCoef.CC 50.00\r\n', 'S1', 'F01', 0),
('F113', 'Algorithmique', 'Initiation ? l?algorithmique\r\nCoef 4\r\nCredit 6.00\r\nCoef.Examen 50.00\r\nCoef.CC 50.00', 'S1', 'F01', 0),
('M111', 'Terminologie ', 'Terminologie scientifique \r\net expression ?crite et oral\r\nEconomie d\'entreprise\r\nCoef 1\r\nCredit 4.00\r\nCoef.Exam 50.00\r\nCoef.CC 50.00', 'S1', 'F01', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `mot_passe` varchar(25) NOT NULL,
  `annee` int(10) NOT NULL,
  `categorie` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`, `email`, `username`, `mot_passe`, `annee`, `categorie`) VALUES
(1, 'abdou', 'abderrahmane', 'abdou.benkadja@gmail.com', 'abdou', 'abdou', 1, 1),
(2, 'mina', 'chiheb', 'amina@gmail.com', 'mina', 'mina', 2, 1),
(3, 'walid', 'walid ', 'mecili', 'walid', 'walid', 5, 2),
(4, 'ilies', 'ilies', 'ilies@gmail.com', 'ilies', 'ilies', 3, 2),
(5, 'sifou', 'sifou', 'sifou@gmail.com', 'sifou', 'sifou', 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id_Doc`),
  ADD UNIQUE KEY `Id_Doc` (`id_Doc`),
  ADD KEY `FK_Doc_ID_Module` (`ID_Module`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`ID_Filiere`),
  ADD UNIQUE KEY `ID_Filiere` (`ID_Filiere`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `memoire`
--
ALTER TABLE `memoire`
  ADD PRIMARY KEY (`ID_Memoire`),
  ADD UNIQUE KEY `ID_Memoire` (`ID_Memoire`),
  ADD KEY `FK_Memoire_ID_Filiere` (`ID_Filiere`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`ID_Module`),
  ADD UNIQUE KEY `ID_Module` (`ID_Module`),
  ADD KEY `FK_Module_ID_Filiere` (`ID_Filiere`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `doc`
--
ALTER TABLE `doc`
  MODIFY `id_Doc` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `doc`
--
ALTER TABLE `doc`
  ADD CONSTRAINT `FK_Doc_ID_Module` FOREIGN KEY (`ID_Module`) REFERENCES `module` (`ID_Module`);

--
-- Contraintes pour la table `memoire`
--
ALTER TABLE `memoire`
  ADD CONSTRAINT `FK_Memoire_ID_Filiere` FOREIGN KEY (`ID_Filiere`) REFERENCES `filiere` (`ID_Filiere`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FK_Module_ID_Filiere` FOREIGN KEY (`ID_Filiere`) REFERENCES `filiere` (`ID_Filiere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
