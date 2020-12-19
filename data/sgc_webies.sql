-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 19 déc. 2020 à 13:59
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sgc_webies`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `slug` json NOT NULL,
  `excerpt` json NOT NULL,
  `content` json NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `excerpt`, `content`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '{\"fr\": \"Lorem Ipsum Dolor Sit Amet\", \"nl\": \"Lorem Ipsum Dolor Sit Amet\"}', '{\"fr\": \"Lorem-Ipsumm\", \"nl\": \"Lorem-Ipsumm\"}', '{\"fr\": \"Accedat huc suavitas quaedam oportet sermonum atque morum, haudquaquam mediocre condimentum amicitiae. Tristitia autem et in omni re severitas habet illa quidem gravitatem, sed amicitia remissior esse debet et liberior et dulcior et ad omnem comitatem facilitatemque proclivior.\", \"nl\": \"Accedat huc suavitas quaedam oportet sermonum atque morum, haudquaquam mediocre condimentum amicitiae. Tristitia autem et in omni re severitas habet illa quidem gravitatem, sed amicitia remissior esse debet et liberior et dulcior et ad omnem comitatem facilitatemque proclivior.\"}', '{\"fr\": \"Accedat huc suavitas quaedam oportet sermonum atque morum, haudquaquam mediocre condimentum amicitiae. Tristitia autem et in omni re severitas habet illa quidem gravitatem, sed amicitia remissior esse debet et liberior et dulcior et ad omnem comitatem facilitatemque proclivior.\", \"nl\": \"Accedat huc suavitas quaedam oportet sermonum atque morum, haudquaquam mediocre condimentum amicitiae. Tristitia autem et in omni re severitas habet illa quidem gravitatem, sed amicitia remissior esse debet et liberior et dulcior et ad omnem comitatem facilitatemque proclivior.\"}', '2020-11-26 23:00:00', '2020-11-27 10:45:40', '2020-11-27 10:45:40', NULL),
(3, '{\"fr\": \"Intellectum est enim mihi\", \"nl\": \"Intellectum est enim mihi\"}', '{\"fr\": \"Intellectum-est\", \"nl\": \"Intellectum-est\"}', '{\"fr\": \"Latius iam disseminata licentia onerosus bonis omnibus Caesar nullum post haec adhibens modum orientis latera cuncta vexabat nec honoratis parcens nec urbium primatibus nec plebeiis.\", \"nl\": \"Latius iam disseminata licentia onerosus bonis omnibus Caesar nullum post haec adhibens modum orientis latera cuncta vexabat nec honoratis parcens nec urbium primatibus nec plebeiis.\"}', '{\"fr\": \"Latius iam disseminata licentia onerosus bonis omnibus Caesar nullum post haec adhibens modum orientis latera cuncta vexabat nec honoratis parcens nec urbium primatibus nec plebeiis.\", \"nl\": \"Latius iam disseminata licentia onerosus bonis omnibus Caesar nullum post haec adhibens modum orientis latera cuncta vexabat nec honoratis parcens nec urbium primatibus nec plebeiis.\"}', '2020-11-26 23:00:00', '2020-11-27 10:50:39', '2020-11-27 10:50:39', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `percentage` float(5,3) NOT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `activated` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `discounts`
--

INSERT INTO `discounts` (`id`, `percentage`, `condition`, `activated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10.000, NULL, 1, '2020-11-27 10:58:38', '2020-11-27 10:58:38', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` json NOT NULL,
  `slug` json NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `label`, `slug`, `updated_at`, `created_at`) VALUES
(1, '{\"fr\": \"animation\", \"nl\": \"animatie\"}', '{\"fr\": \"animation\", \"nl\": \"animatie\"}', '2020-11-27 11:19:15', '2020-11-27 11:19:15'),
(2, '{\"fr\": \"action\", \"nl\": \"actie\"}', '{\"fr\": \"action\", \"nl\": \"actie\"}', '2020-11-27 11:19:56', '2020-11-27 11:19:56'),
(3, '{\"fr\": \"comédie\", \"nl\": \"komedie\"}', '{\"fr\": \"comédie\", \"nl\": \"komedie\"}', '2020-11-27 11:19:56', '2020-11-27 11:19:56'),
(4, '{\"fr\": \"drame\", \"nl\": \"drama\"}', '{\"fr\": \"drame\", \"nl\": \"drama\"}', '2020-12-03 19:20:38', '2020-12-03 19:20:38'),
(5, '{\"fr\": \"horreur\", \"nl\": \" horror\"}', '{\"fr\": \"horreur\", \"nl\": \" horror\"}', '2020-12-03 19:20:38', '2020-12-03 19:20:38'),
(8, '{\"fr\": \"aventure\", \"nl\": \"avontuur\"}', '{\"fr\": \"aventure\", \"nl\": \"avontuur\"}', '2020-12-03 19:21:55', '2020-12-03 19:21:55');

-- --------------------------------------------------------

--
-- Structure de la table `genre_movie`
--

DROP TABLE IF EXISTS `genre_movie`;
CREATE TABLE IF NOT EXISTS `genre_movie` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `genre_id` int(11) UNSIGNED NOT NULL,
  `order` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_genre_movie_genres` (`genre_id`),
  KEY `fk_genre_movie_movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre_movie`
--

INSERT INTO `genre_movie` (`id`, `movie_id`, `genre_id`, `order`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2020-11-27 11:43:08', '2020-11-27 11:43:08', NULL),
(2, 1, 2, 2, '2020-11-27 11:43:08', '2020-11-27 11:43:08', NULL),
(3, 1, 3, 3, '2020-11-27 11:43:08', '2020-11-27 11:43:08', NULL),
(4, 2, 2, 1, '2020-12-03 20:26:20', '2020-12-03 20:26:20', NULL),
(5, 2, 8, 2, '2020-12-03 20:26:20', '2020-12-03 20:26:20', NULL),
(6, 3, 8, 1, '2020-12-03 20:26:20', '2020-12-03 20:26:20', NULL),
(7, 3, 4, 2, '2020-12-03 20:26:20', '2020-12-03 20:26:20', NULL),
(8, 4, 2, 1, '2020-12-03 20:27:13', '2020-12-03 20:27:13', NULL),
(9, 4, 8, 2, '2020-12-03 20:27:13', '2020-12-03 20:27:13', NULL),
(10, 4, 4, 3, '2020-12-03 20:27:13', '2020-12-03 20:27:13', NULL),
(11, 5, 8, 2, '2020-12-03 20:27:50', '2020-12-03 20:27:50', NULL),
(12, 5, 1, 1, '2020-12-03 20:27:50', '2020-12-03 20:27:50', NULL),
(13, 6, 8, 2, '2020-12-03 20:28:19', '2020-12-03 20:28:19', NULL),
(14, 6, 2, 1, '2020-12-03 20:28:19', '2020-12-03 20:28:19', NULL),
(15, 11, 1, 1, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(16, 11, 8, 2, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(17, 10, 5, 1, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(18, 10, 4, 2, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(19, 9, 2, 1, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(20, 9, 8, 2, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(21, 8, 8, 1, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(22, 8, 4, 2, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(23, 7, 8, 1, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL),
(24, 7, 2, 2, '2020-12-04 10:18:08', '2020-12-04 10:18:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `public_id` int(11) UNSIGNED NOT NULL,
  `meta_keywords` json DEFAULT NULL,
  `meta_description` json DEFAULT NULL,
  `meta_img` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `teased` tinyint(1) NOT NULL DEFAULT '0',
  `title` json NOT NULL,
  `slug` json NOT NULL,
  `description` json NOT NULL,
  `featured_img` varchar(255) DEFAULT NULL,
  `featured_alt` json DEFAULT NULL,
  `cover_img` varchar(255) NOT NULL,
  `cover_alt` json NOT NULL,
  `trailer_url` varchar(255) NOT NULL,
  `published_until` timestamp NULL DEFAULT NULL,
  `released_at` datetime NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movies_publics` (`public_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `public_id`, `meta_keywords`, `meta_description`, `meta_img`, `featured`, `teased`, `title`, `slug`, `description`, `featured_img`, `featured_alt`, `cover_img`, `cover_alt`, `trailer_url`, `published_until`, `released_at`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, 1, 0, '{\"fr\": \"Les Nouveaux Héros\", \"nl\": \"Big Hero 6\"}', '{\"fr\": \"les-nouveaux-heros\", \"nl\": \"big-hero-6\"}', '{\"fr\": \"Un petit génie de la robotique nommé Hiro Hamada découvre qu\'un complot criminel menace de détruire la ville de San Fransokyo. Avec l\'aide de son plus proche ami, Baymax le robot infirmier, et de ses compagnons qu\'il va transformer en une bande de superhéros high-tech, Hiro va tout faire pour sauver la ville et sa population de l\'infâme Yokai.\", \"nl\": \"Big Hero 6 draait om Hiro Hamada, een wonderkind en robotica-expert. Hij raakt betrokken bij een crimineel plan dat de hectische, hightech stad San Fransokyo dreigt te vernietigen. Met de hulp van zijn beste vriend – de robot Baymax – sluit Hiro zich aan bij een team van onervaren misdaadbestrijders om de stad te redden. Gebaseerd op de gelijknamige Marvel comics.\"}', 'header-bg.jpg', '{\"fr\": \"Les Nouveaux Héros\", \"nl\": \"Big Hero 6\"}', '../images/m1.jpeg', '{\"fr\": \"Les Nouveaux Héros\", \"nl\": \"Big Hero 6\"}', 'https://youtu.be/WHTLNNPnhHk', NULL, '2014-11-07 00:00:00', '2020-11-27 11:38:06', '2020-11-27 11:37:22', '2020-11-27 11:37:22', NULL),
(2, 1, NULL, NULL, NULL, 0, 0, '{\"fr\": \"The Amazing Spider-man 2\", \"nl\": \"The Amazing Spider-man 2\"}', '{\"fr\": \"the-amazing-spider-man-2\", \"nl\": \"the-amazing-spider-man-2\"}', '{\"fr\": \"Ce n’est un secret pour personne que le combat le plus rude de Spider-Man est celui qu’il mène contre lui-même en tentant de concilier la vie quotidienne de Peter Parker et les lourdes responsabilités de Spider-Man. Mais Peter Parker va se rendre compte qu’il fait face à un conflit de bien plus grande ampleur. Être Spider-Man, quoi de plus grisant ? Peter Parker trouve son bonheur entre sa vie de héros, bondissant d’un gratte-ciel à l’autre, et les doux moments passés aux côté de Gwen. Mais être Spider-Man a un prix : il est le seul à pouvoir protéger ses concitoyens new-yorkais des abominables méchants qui menacent la ville.  Face à Electro, Peter devra affronter un ennemi nettement plus puissant que lui.  Au retour de son vieil ami Harry Osborn, il se rend compte que tous ses ennemis ont un point commun : OsCorp.\", \"nl\": \"Spider-Man leidt zijn gewone leventje als Peter Parker, samen met zijn grote liefde Gwen Stacy (Emma Stone). Maar er is natuurlijk ook nog zijn buitengewone leven als gekostumeerde held Spider-Man. In dat kostuum probeert hij New York te beschermen. Maar als zich een nieuwe, machtigere slechterik de vorm van Electro (Jamie Foxx) aandient, moet bij zichzelf op zoek naar kracht. Ook keert zijn oude vriend Harry Osborn (Dane DeHaan) onverwacht terug. Dat is het moment waarop Peter zich realiseert dat al zijn vijanden één ding gemeen hebben: OsCorp.\"}', NULL, NULL, './images/r2.jpeg', '{\"fr\": \"The Amazing Spider-man 2\", \"nl\": \"The Amazing Spider-man 2\"}', 'https://www.youtube.com/watch?v=nbp3Ra3Yp74', '2021-02-26 23:00:00', '2014-04-16 00:00:00', '2020-11-09 23:00:00', '2020-12-03 19:34:15', '2020-12-03 19:34:15', NULL),
(3, 2, NULL, NULL, NULL, 0, 1, '{\"fr\": \"Interstellar\", \"nl\": \"Interstellar \"}', '{\"fr\": \"interstellar\", \"nl\": \"interstellar \"}', '{\"fr\": \"Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire. \", \"nl\": \"In de toekomst zijn regeringen en economieën over de hele wereld ingestort. Voedsel is schaars, NASA bestaat niet meer en de 20e eeuw is de grote schuldige. Wanneer een mysterieus wormgat in de ruimtetijd opengaat is het aan een groep overblijvende onderzoekers van NASA om op verkenning te gaan en op zoek te gaan naar een plek in de ruimte waar de mensheid kan voortbestaan.\"}', NULL, NULL, './images/r4.jpg', '{\"fr\": \"Interstellar\", \"nl\": \"Interstellar \"}', 'https://www.youtube.com/embed/zSWdZVtXT7E', '2021-02-26 23:00:00', '2014-11-05 00:00:00', '2020-11-29 23:00:00', '2020-12-03 19:56:01', '2020-12-03 19:56:01', NULL),
(4, 3, NULL, NULL, NULL, 0, 0, '{\"fr\": \"Avengers : L\'ère d\'Ultron\", \"nl\": \"Avengers: Age of Ultron\"}', '{\"fr\": \"avengers-l-ere-d-ultron\", \"nl\": \"avengers-age-of-ultron\"}', '{\"fr\": \"Alors que Tony Stark tente de relancer un programme de maintien de la paix jusque-là suspendu, les choses tournent mal et les super-héros Iron Man, Captain America, Thor, Hulk, Black Widow et Hawkeye vont devoir à nouveau unir leurs forces pour combattre le plus puissant de leurs adversaires : le terrible Ultron, un être technologique terrifiant qui s’est juré d’éradiquer l’espèce humaine. Afin d’empêcher celui-ci d’accomplir ses sombres desseins, des alliances inattendues se scellent, les entraînant dans une incroyable aventure et une haletante course contre le temps…\", \"nl\": \"Wanneer Tony Stark een slapend vredesinitiatief nieuw leven probeert in te blazen, gaat het goed mis en de machtigste helden van de aarde, waaronder Iron Man, Captain America, Thor, The Incredible Hulk, Black Widow en Hawkeye worden tot het uiterste op de proef gesteld als het lot van de aarde in hun handen ligt. Als de kwaadaardige Ultron verschijnt, is het aan The Avengers om zijn verschrikkelijke plannen te stoppen.\"}', NULL, NULL, './images/r3.jpg', '{\"fr\": \"Avengers : L\'ère d\'Ultron\", \"nl\": \"Avengers: Age of Ultron\"}', 'https://youtu.be/tmeOjFno6Do', '2021-02-26 23:00:00', '2015-11-10 00:00:00', '2020-11-28 23:00:00', '2020-12-03 20:07:53', '2020-12-03 20:07:53', NULL),
(5, 4, NULL, NULL, NULL, 0, 0, '{\"fr\": \"La Grande Aventure Lego\", \"nl\": \"The Lego Movie \"}', '{\"fr\": \"la-grande-aventure-lego\", \"nl\": \"the-lego-movie \"}', '{\"fr\": \"Emmet est un petit personnage banal et conventionnel que l\'on prend par erreur pour un être extraordinaire, capable de sauver le monde. Il se retrouve entraîné, parmi d\'autres, dans un périple des plus mouvementés, dans le but de mettre hors d\'état de nuire un redoutable despote. Mais le pauvre Emmet n\'est absolument pas prêt à relever un tel défi !\", \"nl\": \"De film volgt Emmet, een doorsnee, braaf Lego-poppetje, dat door een misverstand wordt aangezien als de \'speciale\' die de wereld zal redden. Emmet gaat met een bont gezelschap op missie om een eind te maken aan het schrikbewind van de boosaardige tiran, President Business. Helaas is Emmet hopeloos en hilarisch slecht voorbereid op dit avontuur.\"}', NULL, NULL, './images/r1.jpg', '{\"fr\": \"La Grande Aventure Lego\", \"nl\": \"The Lego Movie \"}', 'https://youtu.be/fZ_JOBCLF-I', '2021-03-23 23:00:00', '2014-09-15 00:00:00', '2014-12-07 23:00:00', '2020-12-03 20:13:19', '2020-12-03 20:13:19', NULL),
(6, 2, NULL, NULL, NULL, 0, 0, '{\"fr\": \"La Planète Des Singes : L\'affrontement\", \"nl\": \"Dawn of the Planet of the Apes\"}', '{\"fr\": \"la-planète-des-singes-l-affrontement\", \"nl\": \"dawn-of-the-planet-of-the-apes\"}', '{\"fr\": \"Une nation de plus en plus nombreuse de singes évolués, dirigée par César, est menacée par un groupe d’humains qui a survécu au virus dévastateur qui s\'est répandu dix ans plus tôt. Ils parviennent à une trêve fragile, mais de courte durée : les deux camps sont sur le point de se livrer une guerre qui décidera de l’espèce dominante sur Terre.\", \"nl\": \"Een groeiende groep genetisch geëvolueerde mensapen onder leiding van Caesar wordt bedreigd door de menselijke overlevenden van een dodelijk virus. Dit virus roeide tien jaar eerder vrijwel de gehele wereldbevolking uit. Na een kort en wankel vredesbestand barst de strijd los. Beide groepen staan op de rand van een oorlog die zal bepalen wie de dominante soort op Aarde zal worden.\"}', NULL, NULL, './images/r5.jpg', '{\"fr\": \"La Planète Des Singes : L\'affrontement\", \"nl\": \"Dawn of the Planet of the Apes\"}', 'https://youtu.be/DpSaTrW4leg', '2021-03-30 22:00:00', '2020-10-21 00:00:00', '2020-11-22 23:00:00', '2020-12-03 20:20:35', '2020-12-03 20:20:35', NULL),
(7, 2, NULL, NULL, NULL, 0, 0, '{\"fr\": \"Transcendence\", \"nl\": \"Transcendence\"}', '{\"fr\": \"transcendence\", \"nl\": \"transcendence\"}', '{\"fr\": \"Dans un futur proche, un groupe de scientifiques tente de concevoir le premier ordinateur doté d’une conscience et capable de réfléchir de manière autonome. Ils doivent faire face aux attaques de terroristes anti-technologies qui voient dans ce projet une menace pour l’espèce humaine. Lorsque le scientifique à la tête du projet est assassiné, sa femme se sert de l’avancée de ses travaux pour « transcender » l’esprit de son mari dans le premier super ordinateur de l’histoire. Pouvant désormais contrôler tous les réseaux liés à internet, il devient ainsi quasi omnipotent. Mais comment l’arrêter s’il perdait ce qui lui reste d’humanité ?\", \"nl\": \"Dr. Will Caster (Johnny Depp) is de voornaamste onderzoeker op het gebied van Kunstmatige Intelligentie en werkt aan een machine die collectieve kennis combineert met de menselijke emoties. Zijn extreem controversiële experimenten maken hem tot een doelwit van anti-technologische extremisten. In hun poging om Will uit te schakelen veroorzaken zij echter zijn succes – zijn bewustzijn wordt geüpload in een computersysteem. Zijn vrouw Evelyn en vriend Max, beide mede onderzoekers, maken dit mogelijk maar niet zonder hun twijfels. Hun grootste angsten worden werkelijkheid wanneer Wills dorst naar kennis evolueert in een oneindige honger naar macht. Het wordt al snel duidelijk dat er wellicht geen manier is om het tegen te houden.\"}', NULL, NULL, './images/m3.jpg', '{\"fr\": \"Transcendence\", \"nl\": \"Transcendence\"}', 'https://youtu.be/VCTen3-B8GU', '2021-04-07 22:00:00', '2020-08-10 00:00:00', '2020-10-12 22:00:00', '2020-12-04 09:43:27', '2020-12-04 09:43:27', NULL),
(8, 1, NULL, NULL, NULL, 0, 0, '{\"fr\": \"L\'odysée de Pi\", \"nl\": \"Life of Pi\"}', '{\"fr\": \"lodysée-de-pi\", \"nl\": \"life-of-pi\"}', '{\"fr\": \"Après une enfance passée à Pondichéry en Inde, Pi Patel, 17 ans, embarque avec sa famille pour le Canada où l’attend une nouvelle vie. Mais son destin est bouleversé par le naufrage spectaculaire du cargo en pleine mer. Il se retrouve seul survivant à bord d\'un canot de sauvetage. Seul, ou presque... Richard Parker, splendide et féroce tigre du Bengale est aussi du voyage. L’instinct de survie des deux naufragés leur fera vivre une odyssée hors du commun au cours de laquelle Pi devra développer son ingéniosité et faire preuve d’un courage insoupçonné pour survivre à cette aventure incroyable.\", \"nl\": \"Piscine Patelis is een zestienjarige Indiase jongen, wiens vader een dierentuin in India heeft. Wanneer de familie besluit het land te verlaten wordt de hele dierentuin ingescheept. Maar het schip vergaat en de enige overlevenden op de reddingssloep zijn Pi, een hyena, een zebra met een gebroken been en een tijger van 200 kilo.\"}', NULL, NULL, './images/m4.jpg', '{\"fr\": \"L\'odysée de Pi\", \"nl\": \"Life of Pi\"}', 'https://youtu.be/3mMN693-F3U', '2021-03-02 23:00:00', '2020-12-14 00:00:00', '2020-12-03 23:00:00', '2020-12-04 09:47:44', '2020-12-04 09:47:44', NULL),
(9, 1, NULL, NULL, NULL, 0, 0, '{\"fr\": \"Sherlock Holmes 2 : Jeu d\'ombres\", \"nl\": \"Sherlock Holmes: A Game of Shadows\"}', '{\"fr\": \"sherlock-holmes-2-jeu-dombres\", \"nl\": \"sherlock-holmes-a-game-of-shadows\"}', '{\"fr\": \"Sherlock Holmes a toujours été réputé pour être l\'homme à l\'esprit le plus affûté de son époque. Jusqu\'au jour où le redoutable professeur James Moriarty, criminel d\'une puissance intellectuelle comparable à celle du célèbre détective, fait son entrée en scène… Il a même sans doute un net avantage sur Holmes car il met non seulement son intelligence au service de noirs desseins, mais il est totalement dépourvu de sens moral. Partout dans le monde, la presse s\'enflamme : on apprend ainsi qu\'en Inde un magnat du coton est ruiné par un scandale, ou qu\'en Chine un trafiquant d\'opium est décédé, en apparence, d\'une overdose, ou encore que des attentats se sont produits à Strasbourg et à Vienne et qu\'aux Etats-Unis, un baron de l\'acier vient de mourir… Personne ne voit le lien entre ces événements qui semblent sans rapport, hormis le grand Sherlock Holmes qui y discerne la même volonté maléfique de semer la mort et la destruction. Et ces crimes portent tous la marque du sinistre Moriarty. Tandis que leur enquête les mène en France, en Allemagne et en Suisse, Holmes et Watson prennent de plus en plus de risques. Mais Moriarty a systématiquement un coup d\'avance et semble tout près d\'atteindre son objectif. S\'il y parvient, non seulement sa fortune et son pouvoir seront sans limite, mais le cours de l\'Histoire pourrait bien en être changé à jamais…\", \"nl\": \"Een jaar na de avonturen uit het eerste deel zal privédetective Sherlock Holmes (Robert Downey Jr.) wederom zijn krachten moeten bundelen met zijn loyale assistent, huisgenoot en vriend Dr. John Watson (Jude Law). Ze nemen het dit keer op tegen de mysterieuze Professor Moriarty, een crimineel meesterbrein dat Groot Brittannië wil verwoesten. Het duo krijgt in hun strijd met Moriarty hulp van Mycroft Holmes (Stephen Fry), de oudere en net zo slimme broer van Sherlock die voor de Britse regering werkt.\"}', NULL, NULL, './images/m2.jpg', '{\"fr\": \"Sherlock Holmes 2 : Jeu d\'ombres\", \"nl\": \"Sherlock Holmes: A Game of Shadows\"}', 'https://youtu.be/6jMLTodNhXc', '2021-02-18 23:00:00', '2020-11-15 00:00:00', '2020-10-11 22:00:00', '2020-12-04 09:52:54', '2020-12-04 09:52:54', NULL),
(10, 2, NULL, NULL, NULL, 0, 0, '{\"fr\": \"Morbius\", \"nl\": \"Morbius\"}', '{\"fr\": \"morbius\", \"nl\": \"morbius\"}', '{\"fr\": \"Gravement atteint d’une rare maladie sanguine, et déterminé à sauver toutes les victimes de cette pathologie, le Dr Morbius tente un pari désespéré. Mais ce qui semble à première vue être un succès se révèle rapidement comme un remède potentiellement plus grave que la maladie…\", \"nl\": \"Dr. Morbius is ernstig ziek en kampt met een zeldzame bloedaandoening. Hij is erop gebrand om deze ziekte te overwinnen en anderen die er ook onder lijden te helpen. Wanhopig neemt hij een grote gok met een experimenteel geneesmiddel. Wat in eerste instantie een groot succes lijkt, blijkt al snel een remedie te zijn die mogelijk nog erger is dan de ziekte.\"}', NULL, NULL, './images/morbius.jpg', '{\"fr\": \"Morbius\", \"nl\": \"Morbius\"}', 'https://youtu.be/jLMBLuGJTsA', '2021-08-30 22:00:00', '2021-03-17 00:00:00', '2021-04-16 22:00:00', '2020-12-04 10:00:35', '2020-12-04 10:00:35', NULL),
(11, 1, NULL, NULL, NULL, 0, 0, '{\"fr\": \"100% Loup\", \"nl\": \"100% Wolf\"}', '{\"fr\": \"100%-loup\", \"nl\": \"100%-wolf\"}', '{\"fr\": \"Freddy Lupin et sa famille cachent depuis des siècles un grand secret. Le jour, ils sont des humains ordinaires. Mais dès la tombée de la nuit, ils deviennent des loups-garous ! Le jour de son quatorzième anniversaire, Freddy s’attend à se transformer en loup-garou pour la première fois. Mais le soir de son initiation rien ne se déroule comme prévu et le voilà qui devient … un mignon petit caniche rose au caractère bien trempé. Sacrilège pour sa famille ! Freddy n’a plus désormais qu’un objectif : démontrer qu’il est bel et bien 100% Loup !\", \"nl\": \"Freddy en zijn familie bewaren al eeuwenlang een groot geheim. Overdag zijn ze gewone mensen, maar ‘s nachts transformeren ze in weerwolven. Normaal zou Freddy op zijn veertiende verjaardag ook transformeren in een weerwolf, maar dat loopt fout. In plaats daarvan verandert hij in… een roze poedel. Freddy heeft ondanks alles maar één missie: bewijzen dat hij voor 100% een wolf is.\"}', NULL, NULL, './images/loup.jpg', '{\"fr\": \"100% Loup\", \"nl\": \"100% Wolf\"}', 'https://youtu.be/FobQae5Kt2w', '2021-04-29 22:00:00', '2020-10-28 00:00:00', '2020-10-27 23:00:00', '2020-12-04 10:07:51', '2020-12-04 10:07:51', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `movie_producer`
--

DROP TABLE IF EXISTS `movie_producer`;
CREATE TABLE IF NOT EXISTS `movie_producer` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `producer_id` int(11) UNSIGNED NOT NULL,
  `order` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_movie_producer_movies` (`movie_id`),
  KEY `fk_movie_producer_producers` (`producer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movie_producer`
--

INSERT INTO `movie_producer` (`id`, `movie_id`, `producer_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-11-27 11:44:27', '2020-11-27 11:44:27'),
(2, 1, 2, 2, '2020-11-27 11:44:27', '2020-11-27 11:44:27'),
(3, 2, 8, 1, '2020-12-03 20:32:36', '2020-12-03 20:32:36'),
(6, 3, 7, 1, '2020-12-03 20:33:29', '2020-12-03 20:33:29'),
(7, 4, 6, 1, '2020-12-03 20:33:29', '2020-12-03 20:33:29'),
(8, 5, 5, 2, '2020-12-03 20:34:35', '2020-12-03 20:34:35'),
(9, 5, 4, 1, '2020-12-03 20:34:35', '2020-12-03 20:34:35'),
(10, 6, 3, 1, '2020-12-03 20:35:11', '2020-12-03 20:35:11'),
(11, 11, 9, 1, '2020-12-04 10:08:57', '2020-12-04 10:08:57'),
(12, 10, 10, 1, '2020-12-04 10:10:06', '2020-12-04 10:10:06'),
(13, 9, 11, 1, '2020-12-04 10:11:05', '2020-12-04 10:11:05'),
(14, 8, 12, 1, '2020-12-04 10:11:46', '2020-12-04 10:11:46'),
(15, 7, 13, 1, '2020-12-04 10:12:27', '2020-12-04 10:12:27');

-- --------------------------------------------------------

--
-- Structure de la table `navigation_links`
--

DROP TABLE IF EXISTS `navigation_links`;
CREATE TABLE IF NOT EXISTS `navigation_links` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `label` json NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `navigation_links`
--

INSERT INTO `navigation_links` (`id`, `order`, `url`, `label`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'index.php', '{\"fr\": \"accueil\", \"nl\": \"ontvangst\"}', 'home', '2020-11-27 12:09:40', '2020-11-27 12:09:40', NULL),
(2, 2, 'videos.html', '{\"fr\": \"Vidéos\", \"nl\": \"Videos\"}', 'videos', '2020-12-03 20:39:01', '2020-12-03 20:39:01', NULL),
(3, 3, 'reviews.html', '{\"fr\": \"Avis\", \"nl\": \"Openie\"}', 'watching', '2020-12-03 20:41:04', '2020-12-03 20:41:04', NULL),
(4, 4, '404.html', '{\"fr\": \"erreur\", \"nl\": \"error\"}', 'booking', '2020-12-03 20:42:45', '2020-12-03 20:42:45', NULL),
(5, 5, 'contact.html', '{\"fr\": \"Contact\", \"nl\": \"Contact\"}', 'contact', '2020-12-03 20:43:56', '2020-12-03 20:43:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `producers`
--

DROP TABLE IF EXISTS `producers`;
CREATE TABLE IF NOT EXISTS `producers` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `producers`
--

INSERT INTO `producers` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Don', 'Hall', '2020-11-27 11:43:57', '2020-11-27 11:43:57', NULL),
(2, 'Chris', 'Williams', '2020-11-27 11:43:57', '2020-11-27 11:43:57', NULL),
(3, 'Matt', 'Reeves', '2020-12-03 20:28:56', '2020-12-03 20:28:56', NULL),
(4, 'Phil', 'Lord', '2020-12-03 20:29:39', '2020-12-03 20:29:39', NULL),
(5, 'Christopher', 'Miller', '2020-12-03 20:29:39', '2020-12-03 20:29:39', NULL),
(6, 'Joss', 'Whedon', '2020-12-03 20:29:59', '2020-12-03 20:29:59', NULL),
(7, 'Christopher', 'Nolan', '2020-12-03 20:30:19', '2020-12-03 20:30:19', NULL),
(8, 'Marc', 'Webb', '2020-12-03 20:31:00', '2020-12-03 20:31:00', NULL),
(9, 'Alexs', 'Stadermann', '2020-12-04 10:08:12', '2020-12-04 10:08:12', NULL),
(10, 'Daniel', 'Espinosa', '2020-12-04 10:09:37', '2020-12-04 10:09:37', NULL),
(11, 'Guy', 'Ritchie', '2020-12-04 10:10:40', '2020-12-04 10:10:40', NULL),
(12, 'Ang', 'Lee', '2020-12-04 10:11:34', '2020-12-04 10:11:34', NULL),
(13, 'Wally', 'Pfister', '2020-12-04 10:12:11', '2020-12-04 10:12:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `publics`
--

DROP TABLE IF EXISTS `publics`;
CREATE TABLE IF NOT EXISTS `publics` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` json NOT NULL,
  `slug` json NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `publics`
--

INSERT INTO `publics` (`id`, `label`, `slug`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"fr\": \"tout âge\", \"nl\": \"alle leeftijden\"}', '{\"fr\": \"tout-age\", \"nl\": \"alle-leeftijden\"}', 'green', '2020-11-27 11:23:13', '2020-11-27 11:23:13', NULL),
(2, '{\"fr\": \"Adulte\", \"nl\": \"Volwassene\"}', '{\"fr\": \"adulte\", \"nl\": \"volwassene\"}', 'red', '2020-12-03 19:39:50', '2020-12-03 19:39:50', NULL),
(3, '{\"fr\": \"Adolescent\", \"nl\": \"Jongere\"}', '{\"fr\": \"adolescent\", \"nl\": \"jongere\"}', 'blue', '2020-12-03 19:39:50', '2020-12-03 19:39:50', NULL),
(4, '{\"fr\": \"Enfant\", \"nl\": \"Kind\"}', '{\"fr\": \"enfant\", \"nl\": \"kind\"}', 'orange', '2020-12-03 19:41:30', '2020-12-03 19:41:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `cookie_key` varchar(255) NOT NULL,
  `rating` int(2) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_reviews_movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `movie_id`, `cookie_key`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, '', 6, '2020-11-27 12:00:10', '2020-11-27 12:00:10'),
(2, 1, '', 2, '2020-12-11 10:18:21', '2020-12-11 10:18:21'),
(3, 1, '', 10, '2020-12-11 10:18:21', '2020-12-11 10:18:21'),
(4, 1, '', 2, '2020-12-11 10:18:25', '2020-12-11 10:18:25'),
(5, 1, '', 10, '2020-12-11 10:18:25', '2020-12-11 10:18:25');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD CONSTRAINT `fk_genre_movie_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_genre_movie_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movies_publics` FOREIGN KEY (`public_id`) REFERENCES `publics` (`id`) ON UPDATE NO ACTION;

--
-- Contraintes pour la table `movie_producer`
--
ALTER TABLE `movie_producer`
  ADD CONSTRAINT `fk_movie_producer_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movie_producer_producers` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
