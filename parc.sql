-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 06 jan. 2025 à 09:17
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parc`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

DROP TABLE IF EXISTS `animaux`;
CREATE TABLE IF NOT EXISTS `animaux` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `espece` varchar(50) NOT NULL,
  `enclos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enclos_id` (`enclos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id`, `nom`, `espece`, `enclos_id`) VALUES
(1, 'Python', 'Reptile', 1),
(2, 'Tortue', 'Reptile', 1),
(3, 'Iguane', 'Reptile', 1),
(4, 'Ara', 'Oiseau', 2),
(5, 'Perroquet', 'Oiseau', 2),
(6, 'Grand Hocco', 'Oiseau', 3),
(7, 'Crocodile nain', 'Reptile', 4),
(8, 'Casoar', 'Oiseau', 5),
(9, 'Guépard', 'Mammifère', 6),
(10, 'Gazelle', 'Mammifère', 6),
(11, 'Autruche', 'Oiseau', 6),
(12, 'Gnou', 'Mammifère', 6),
(13, 'Oryx beisa', 'Mammifère', 6),
(14, 'Fennec', 'Mammifère', NULL),
(15, 'Coati', 'Mammifère', NULL),
(16, 'Tapir', 'Mammifère', NULL),
(17, 'Rhinocéros', 'Mammifère', NULL),
(18, 'Suricate', 'Mammifère', NULL),
(19, 'Saimiri', 'Mammifère', NULL),
(20, 'Panthère', 'Mammifère', NULL),
(21, 'Python', 'Reptile', 1),
(22, 'Tortue', 'Reptile', 1),
(23, 'Iguane', 'Reptile', 1),
(24, 'Ara', 'Oiseau', 2),
(25, 'Perroquet', 'Oiseau', 2),
(26, 'Grand Hocco', 'Oiseau', 3),
(27, 'Crocodile nain', 'Reptile', 4),
(28, 'Casoar', 'Oiseau', 5),
(29, 'Guépard', 'Mammifère', 6),
(30, 'Gazelle', 'Mammifère', 6),
(31, 'Autruche', 'Oiseau', 6),
(32, 'Gnou', 'Mammifère', 6),
(33, 'Oryx beisa', 'Mammifère', 6),
(34, 'Fennec', 'Mammifère', NULL),
(35, 'Coati', 'Mammifère', NULL),
(36, 'Tapir', 'Mammifère', NULL),
(37, 'Rhinocéros', 'Mammifère', NULL),
(38, 'Suricate', 'Mammifère', NULL),
(39, 'Saimiri', 'Mammifère', NULL),
(40, 'Panthère', 'Mammifère', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int DEFAULT NULL,
  `enclos_id` int DEFAULT NULL,
  `note` int NOT NULL,
  `commentaire` text,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `enclos_id` (`enclos_id`)
) ;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `utilisateur_id`, `enclos_id`, `note`, `commentaire`, `date_creation`) VALUES
(1, 1, 1, 4, 'Très belle collection de reptiles !', '2025-01-05 20:58:32'),
(2, 2, 6, 5, 'La savane africaine est impressionnante, on se croirait en Afrique !', '2025-01-05 20:58:32'),
(3, 3, 10, 4, 'Les rhinocéros sont majestueux, mais l\'enclos pourrait être un peu plus grand.', '2025-01-05 20:58:32'),
(4, 4, 3, 5, 'Les Grands Hoccos sont fascinants, je ne connaissais pas cette espèce avant.', '2025-01-05 20:58:32'),
(5, 5, 13, 3, 'L\'enclos des panthères est bien, mais on ne les voit pas beaucoup.', '2025-01-05 20:58:32');

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

DROP TABLE IF EXISTS `billets`;
CREATE TABLE IF NOT EXISTS `billets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_billet` varchar(50) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `description` text,
  `date_validite` date DEFAULT NULL,
  `quantite_disponible` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `billets`
--

INSERT INTO `billets` (`id`, `type_billet`, `prix`, `description`, `date_validite`, `quantite_disponible`, `created_at`, `updated_at`) VALUES
(1, 'Adulte', 25.00, 'Billet d\'entrée pour une personne de plus de 12 ans', '2023-12-31', 1000, '2025-01-05 21:07:06', '2025-01-05 21:07:06'),
(2, 'Enfant', 15.00, 'Billet d\'entrée pour un enfant de 3 à 12 ans', '2023-12-31', 1000, '2025-01-05 21:07:06', '2025-01-05 21:07:06'),
(3, 'Senior', 20.00, 'Billet d\'entrée pour une personne de plus de 65 ans', '2023-12-31', 500, '2025-01-05 21:07:06', '2025-01-05 21:07:06'),
(4, 'Famille', 70.00, 'Billet d\'entrée pour 2 adultes et 2 enfants', '2023-12-31', 250, '2025-01-05 21:07:06', '2025-01-05 21:07:06');

-- --------------------------------------------------------

--
-- Structure de la table `biomes`
--

DROP TABLE IF EXISTS `biomes`;
CREATE TABLE IF NOT EXISTS `biomes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `color_code` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `biomes`
--

INSERT INTO `biomes` (`id`, `nom`, `color_code`) VALUES
(1, 'Le Belvedere', '#8E7B50'),
(2, 'Le Plateau', '#F5A2A2'),
(3, 'Le Vallon des cascades', '#5DB1C3'),
(4, 'Les Bois des Pins', '#B5F4BC'),
(5, 'Les clairieres', '#B5F4BC');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int DEFAULT NULL,
  `enclos_id` int DEFAULT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `enclos_id` (`enclos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `utilisateur_id`, `enclos_id`, `contenu`) VALUES
(1, 1, 6, 'J\'ai adoré voir les girafes de si près !'),
(2, 2, 10, 'Le bébé rhinocéros est trop mignon !'),
(3, 3, 1, 'J\'ai appris beaucoup de choses sur les reptiles grâce aux panneaux informatifs.'),
(4, 4, 13, 'La panthère noire est magnifique, j\'espère la revoir à mon prochain passage.'),
(5, 5, 5, 'Les casoars sont impressionnants, mais attention ils ont l\'air dangereux !');

-- --------------------------------------------------------

--
-- Structure de la table `enclos`
--

DROP TABLE IF EXISTS `enclos`;
CREATE TABLE IF NOT EXISTS `enclos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `biome_id` int DEFAULT NULL,
  `statut` enum('Ouvert','Fermé','En travaux') DEFAULT 'Ouvert',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `biome_id` (`biome_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `enclos`
--

INSERT INTO `enclos` (`id`, `nom`, `biome_id`, `statut`, `description`) VALUES
(1, 'La Bergerie des reptiles', 1, 'Ouvert', NULL),
(2, 'Enclos des Aras', 2, 'Ouvert', NULL),
(3, 'Enclos des Grands Hoccos', 2, 'Ouvert', NULL),
(4, 'Enclos des Crocodiles nains', 2, 'Ouvert', NULL),
(5, 'Enclos des Casoars', 2, 'Ouvert', NULL),
(6, 'Savane africaine', 3, 'Ouvert', NULL),
(7, 'Enclos des Fennecs', 3, 'Ouvert', NULL),
(8, 'Enclos des Coatis', 3, 'Ouvert', NULL),
(9, 'Enclos des Tapirs', 3, 'Ouvert', NULL),
(10, 'Enclos des Rhinocéros', 3, 'Ouvert', NULL),
(11, 'Enclos des Suricates', 3, 'Ouvert', NULL),
(12, 'Enclos des Saimiris', 3, 'Ouvert', NULL),
(13, 'Enclos des Panthères', 3, 'Ouvert', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `horaire_repas`
--

DROP TABLE IF EXISTS `horaire_repas`;
CREATE TABLE IF NOT EXISTS `horaire_repas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enclos_id` int NOT NULL,
  `heure_repas` time NOT NULL,
  `description` text,
  `jour_semaine` enum('Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi','Dimanche') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enclos_id` (`enclos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `horaire_repas`
--

INSERT INTO `horaire_repas` (`id`, `enclos_id`, `heure_repas`, `description`, `jour_semaine`, `created_at`, `updated_at`) VALUES
(1, 1, '10:00:00', 'Repas des reptiles', 'Lundi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(2, 1, '10:00:00', 'Repas des reptiles', 'Mercredi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(3, 1, '10:00:00', 'Repas des reptiles', 'Vendredi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(4, 3, '11:30:00', 'Nourrissage des Grands Hoccos', 'Mardi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(5, 3, '11:30:00', 'Nourrissage des Grands Hoccos', 'Jeudi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(6, 3, '11:30:00', 'Nourrissage des Grands Hoccos', 'Samedi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(7, 5, '14:00:00', 'Repas des Casoars', 'Lundi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(8, 5, '14:00:00', 'Repas des Casoars', 'Mercredi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(9, 5, '14:00:00', 'Repas des Casoars', 'Vendredi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(10, 6, '09:00:00', 'Petit-déjeuner des herbivores', '', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(11, 6, '16:00:00', 'Goûter des carnivores', '', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(12, 10, '13:00:00', 'Repas des Rhinocéros', 'Mardi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(13, 10, '13:00:00', 'Repas des Rhinocéros', 'Jeudi', '2025-01-05 21:02:43', '2025-01-05 21:02:43'),
(14, 10, '13:00:00', 'Repas des Rhinocéros', 'Samedi', '2025-01-05 21:02:43', '2025-01-05 21:02:43');

-- --------------------------------------------------------

--
-- Structure de la table `navigation`
--

DROP TABLE IF EXISTS `navigation`;
CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `point_depart` varchar(100) NOT NULL,
  `point_arrivee` varchar(100) NOT NULL,
  `distance` int NOT NULL,
  `temps_estime` int NOT NULL,
  `description` text,
  `accessible_handicap` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `navigation`
--

INSERT INTO `navigation` (`id`, `point_depart`, `point_arrivee`, `distance`, `temps_estime`, `description`, `accessible_handicap`, `created_at`, `updated_at`) VALUES
(1, 'Entrée', 'La Bergerie des reptiles', 100, 2, 'Chemin direct depuis l\'entrée', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(2, 'La Bergerie des reptiles', 'Enclos des Aras', 150, 3, 'Passage par le Bois des pins', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(3, 'Enclos des Aras', 'Savane africaine', 300, 6, 'Traversée du Belvédère', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(4, 'Savane africaine', 'Enclos des Rhinocéros', 200, 4, 'Vue panoramique sur le Plateau', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(5, 'Enclos des Rhinocéros', 'Restaurant du Parc', 250, 5, 'Passage près des enclos des félins', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(6, 'Restaurant du Parc', 'Sortie', 150, 3, 'Chemin direct vers la sortie', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(7, 'Entrée', 'Vallon des cascades', 400, 8, 'Chemin scenic avec plusieurs escaliers', 0, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(8, 'Vallon des cascades', 'Enclos des Panthères', 200, 4, 'Passage ombragé', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(9, 'Enclos des Panthères', 'Enclos des Suricates', 100, 2, 'Chemin court sur le Plateau', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01'),
(10, 'Enclos des Suricates', 'Sortie', 350, 7, 'Passage par la zone de pique-nique', 1, '2025-01-05 21:05:01', '2025-01-05 21:05:01');

-- --------------------------------------------------------

--
-- Structure de la table `points_interet`
--

DROP TABLE IF EXISTS `points_interet`;
CREATE TABLE IF NOT EXISTS `points_interet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `points_interet`
--

INSERT INTO `points_interet` (`id`, `nom`, `type`) VALUES
(1, 'Entrée principale', 'entrée/sortie'),
(2, 'Sortie', 'entrée/sortie'),
(3, 'Enclos COWA', 'enclos'),
(4, 'Enclos ROG', 'enclos'),
(5, 'Enclos GAG', 'enclos'),
(6, 'Aire de pique-nique', 'service'),
(7, 'Toilettes Nord', 'service'),
(8, 'Toilettes Sud', 'service'),
(9, 'Point d\'eau 1', 'service'),
(10, 'Point d\'eau 2', 'service'),
(11, 'Boutique souvenirs', 'service'),
(12, 'Gare du train', 'service'),
(13, 'Lodge', 'service'),
(14, 'Tente pédagogique 1', 'service'),
(15, 'Tente pédagogique 2', 'service'),
(16, 'Paillote 1', 'service'),
(17, 'Paillote 2', 'service'),
(18, 'Café nomade 1', 'service'),
(19, 'Café nomade 2', 'service'),
(20, 'Petit café 1', 'service'),
(21, 'Petit café 2', 'service'),
(22, 'Plateau de jeux', 'service'),
(23, 'Point de vue 1', 'service'),
(24, 'Point de vue 2', 'service');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int DEFAULT NULL,
  `billet_id` int DEFAULT NULL,
  `quantite` int NOT NULL,
  `date_reservation` date NOT NULL,
  `date_visite` date NOT NULL,
  `montant_total` decimal(10,2) NOT NULL,
  `statut` enum('En attente','Confirmé','Annulé') DEFAULT 'En attente',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `billet_id` (`billet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `utilisateur_id`, `billet_id`, `quantite`, `date_reservation`, `date_visite`, `montant_total`, `statut`, `created_at`) VALUES
(1, 1, 1, 2, '2023-06-01', '2023-06-15', 50.00, 'Confirmé', '2025-01-05 21:07:47'),
(2, 2, 2, 3, '2023-06-02', '2023-06-20', 45.00, 'Confirmé', '2025-01-05 21:07:47'),
(3, 3, 4, 1, '2023-06-03', '2023-06-25', 70.00, 'En attente', '2025-01-05 21:07:47'),
(4, 4, 3, 2, '2023-06-04', '2023-06-30', 40.00, 'Confirmé', '2025-01-05 21:07:47'),
(5, 5, 1, 4, '2023-06-05', '2023-07-05', 100.00, 'Confirmé', '2025-01-05 21:07:47'),
(6, 1, 2, 2, '2023-06-06', '2023-07-10', 30.00, 'Annulé', '2025-01-05 21:07:47'),
(7, 2, 4, 2, '2023-06-07', '2023-07-15', 140.00, 'Confirmé', '2025-01-05 21:07:47'),
(8, 3, 1, 1, '2023-06-08', '2023-07-20', 25.00, 'En attente', '2025-01-05 21:07:47'),
(9, 4, 3, 3, '2023-06-09', '2023-07-25', 60.00, 'Confirmé', '2025-01-05 21:07:47'),
(10, 5, 2, 5, '2023-06-10', '2023-07-30', 75.00, 'Confirmé', '2025-01-05 21:07:47');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text,
  `emplacement` varchar(100) DEFAULT NULL,
  `horaires` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `nom`, `type`, `description`, `emplacement`, `horaires`) VALUES
(1, 'Boutique', 'Commerce', 'Boutique de souvenirs', NULL, NULL),
(2, 'Restaurant du Parc', 'Restauration', 'Restaurant principal du parc', NULL, NULL),
(3, 'Toilettes', 'Commodité', 'Toilettes publiques', NULL, NULL),
(4, 'Point d\'eau', 'Commodité', 'Point d\'eau potable', NULL, NULL),
(5, 'Gare du train', 'Transport', 'Station pour le train du parc', NULL, NULL),
(6, 'Lodge', 'Hébergement', 'Hébergement de type lodge', NULL, NULL),
(7, 'Tente pédagogique', 'Éducation', 'Espace éducatif sous tente', NULL, NULL),
(8, 'Paillote Café nomade', 'Restauration', 'Café mobile dans une paillote', NULL, NULL),
(9, 'Petit Café', 'Restauration', 'Petit café pour une pause rapide', NULL, NULL),
(10, 'Espace des jeux', 'Loisir', 'Aire de jeux pour enfants', NULL, NULL),
(11, 'Point Pique-nique', 'Restauration', 'Espace dédié au pique-nique', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`, `role`, `date_inscription`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@email.com', '5504b4f70ca78f97137ff8ad5f910248', 'user', '2025-01-05 22:25:49'),
(2, 'Martin', 'Sophie', 'sophie.martin@email.com', '009ea2978376e8b095e6c236f2db7ccf', 'user', '2025-01-05 22:25:49'),
(3, 'Dubois', 'Pierre', 'pierre.dubois@email.com', '42a2362b94eda290fcbd7b542a22298f', 'admin', '2025-01-05 22:25:49'),
(4, 'Lefebvre', 'Marie', 'marie.lefebvre@email.com', '00a5f964760389d0d4c3136229be4e3e', 'user', '2025-01-05 22:25:49'),
(5, 'Moreau', 'Luc', 'luc.moreau@email.com', '108bf8cdcefbbb4413f3df47abc40a16', 'admin', '2025-01-05 22:25:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
