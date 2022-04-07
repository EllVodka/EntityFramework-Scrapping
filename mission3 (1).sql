-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 avr. 2022 à 22:43
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mission3`
--

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `Id` int(11) NOT NULL,
  `NomProduit` varchar(50) DEFAULT NULL,
  `Prix` double NOT NULL,
  `Description` text DEFAULT NULL,
  `TypeMedicament` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`Id`, `NomProduit`, `Prix`, `Description`, `TypeMedicament`) VALUES
(1, 'Purificateur d Air Desinfectant Surfaces & Textile', 3.99, 'Un spray desodorisant et purifiant. Vous souhaitez desodoriser les tissus et l�atmosphere de votre maison, tout en luttant contre...', 'PS'),
(2, 'Arnican 4 %', 5.02, '50 g de creme', 'DAM'),
(3, 'Ibufetum 5 %', 3, '60 g de gel dermique', 'DAM'),
(4, 'Flexea 625 mg', 15.85, '60 comprimes', 'DAM'),
(5, 'Sportenine', 7.09, '22 comprimes a croquer', 'DAM'),
(6, 'Voltarenactigo 2 % intense', 7.24, '30 g de gel dermique', 'DAM'),
(7, 'Extranase 900 nk', 7.54, '80 comprimes enrobes gastro-resistants', 'DAM'),
(8, 'Structum 500 mg', 17.16, '60 gelules', 'DAM'),
(9, 'Voltarenactigo 1 %', 7, 'flacon de 50 ml de gel', 'DAM'),
(10, 'Synthol Flacon de 225 ml de solution pour applicat', 6.74, '', 'DAM'),
(11, 'Baume aroma', 6.24, 'flacon de 50 g de creme dermique', 'DAM'),
(12, 'Lumbalgine', 6.66, '90 g de creme', 'DAM'),
(13, 'Baume aroma', 8.52, '100 g de creme', 'DAM'),
(14, 'Diclofenac arrow 1 %', 2.76, '50 g de gel', 'DAM'),
(15, 'Osmogel', 7.92, '90 g de gel pour application locale', 'DAM'),
(16, 'Cliptol', 6, '50 g de gel', 'DAM'),
(17, 'Advilmed 5 %', 4.24, '100 g de gel', 'DAM'),
(18, 'Doliprane 1000 mg', 2.18, '8 comprimes', 'DF'),
(19, 'Dolipranetabs 1000 mg', 2.12, '8 comprimes pellicules', 'DF'),
(20, 'Arnicalme', 6.27, '40 comprimes orodispersibles', 'DAM'),
(21, 'Dolipranecaps 1000 mg', 2.13, '8 gelules', 'DF'),
(22, 'Synthol - 75 g de gel', 5.99, '', 'DAM'),
(23, 'Dolenio 1178 mg', 17.01, '30 comprimes pellicules', 'DAM'),
(24, 'Nicotinell menthe 1 mg', 5.05, '36 comprimes a sucer', 'ST'),
(25, 'Nicotinell menthe 2 mg', 5.05, '36 comprimes a sucer', 'ST'),
(26, 'Nicopass 1,5 mg sans sucre eucalyptus', 9.26, '96 pastilles a sucer', 'ST'),
(27, 'Nicotinell menthe fraicheur 2 mg sans sucre', 4.98, '36 gommes a macher', 'ST'),
(28, 'Nicotinell tts 14 mg/24 h', 24.11, '28 dispositifs transdermiques', 'ST'),
(29, 'Nicorette menthe fraiche 4 mg sans sucre', 7.08, '30 gommes a macher', 'ST'),
(30, 'Piascledine 300 mg', 10.22, '15 gelules', 'DAM'),
(31, 'Chondrosulf 400 mg', 23.11, '84 gelules', 'DAM'),
(32, 'Voltarenplast 1 %', 13.69, '5 emplatres', 'DAM'),
(33, 'Flector 1 %', 3.7, '100 g de gel dermique', 'DAM'),
(34, 'Niflugel 2,5 %', 3.16, '60 g de gel percutane', 'DAM'),
(35, 'Arnigel', 4.96, '45 g de gel', 'DAM'),
(36, 'Voltarene emulgel 1 %', 3.72, 'flacon de 100 ml de gel', 'DAM'),
(37, 'Plaquenil 200 mg', 5.19, '30 comprimes pellicules', 'DAM'),
(38, 'Voltarene emulgel 1 %', 2.9, '50 g de gel', 'DAM'),
(39, 'Diclofenac mylan 1 %', 2.76, '50 g de gel', 'DAM'),
(40, 'Structoflex 625 mg', 15.55, '60 gelules', 'DAM'),
(41, 'Diclofenac bgr 1 %', 2.76, '50 g de gel', 'DAM'),
(42, 'Flector 1 %', 3.09, '60 g de gel', 'DAM'),
(43, 'Nicorette fruits 2 mg sans sucre', 6.97, '30 gommes a macher', 'ST'),
(44, 'Efferalgan capuccino 1000 mg', 3.53, 'granules en sachet', 'DF'),
(45, 'Efferalgan vanille fraise 250 mg', 3.27, 'granules en sachet', 'DF'),
(46, 'Paracetamol biogaran 500 mg', 2.18, '16 gelules', 'DF'),
(47, 'Paracetamol mylan 1000 mg', 1.15, '8 comprimes effervescents secables', 'DF'),
(48, 'Efferalgantab 1 g', 2, '8 comprimes pellicules', 'DF'),
(49, 'Claradol 500 mg cafeine', 2.48, '16 comprimes quadrisecables', 'DF'),
(50, 'Gel douche sport bio Menthe Argile blanche - 200ml', 3.84, 'Formule sans savon et a pH physiologique, le Gel Douche Sport Cattier nettoie en douceur et preserve l�equilibre naturel de...', 'BN'),
(51, 'D-Stress Sommeil - 40 comprimes', 10.49, 'Synergia D-Stress Sommeil 40 comprimes', 'BN'),
(52, 'Serviette hygienique maternite par 12', 6.73, 'Specifiquement adaptees aux besoins d�une intimite fragilisee apres l�accouchement. Ultra-absorbante et micro aeree, les...', 'BN'),
(53, 'Hydrolat Precieux Rose de Damas Bio Edition Limite', 7.98, 'L�Hydrolat de rose au service de votre peau. Vous souhaitez prendre soin de votre peau et de vos cheveux avec un remede naturel ? ...', 'BN'),
(54, 'Aspegic nourrissons 100 mg', 2.51, '20 sachets', 'DF'),
(55, 'Figuier Bio - 50ml', 14.97, 'Les bourgeons de figuier, un anti-stress naturel. La gemmotherapie est une methode de soin naturelle apparentee a la...', 'BN'),
(56, 'Creme Mains Verveine Tropicale Bio - 30ml', 2.64, 'La Creme mains a la verveine tropicale hydrate la peau sans la rendre grasse tout en laissant une sensation de fraicheur. Une...', 'BN'),
(57, 'Aroms Sirop Toux - 120ml', 6.08, 'Phytosun Ar�ms Aroms Sirop Toux 120ml', 'BN'),
(58, 'Huile de Soin Grossesse - 100ml', 12.48, 'Une huile qui lutte contre les vergetures. L�huile de grossesse Weleda est formulee specifiquement pour les femmes enceintes....', 'BN'),
(59, 'Arkovital - Double magnesium Bio - 30 comprimes', 12.15, 'Double magnesium Bio de la gamme Arkovital par les Laboratoires Arkopharma, est complement alimentaire contenant egalement un...', 'BN'),
(60, 'Bebe Creme pour le Change Calendula - 75ml', 5.41, 'La Creme pour le change au calendula de la marque WELEDA est prevue pour eviter rougeurs et inflammations au bebe. Elle agit...', 'BN'),
(61, 'Arkogelules Orthosiphon Draineur - 45 gelules', 6.44, 'Arkopharma Arkogelules Orthosiphon Draineur 45 gelules', 'BN'),
(62, 'Lait de Croissance 3eme �ge - 800g', 13.25, 'Parce qu apres 1 an, les besoins de votre enfant evoluent mais restent specifiques, une place importante au sein de son...', 'LI'),
(63, 'Lait AC 1er age - 800 g', 26.95, 'Le lait Novalac AC (anti-colique) 1er Age est un lait infantile 1er Age en poudre adapte a l alimentation du nourrisson des la...', 'LI'),
(64, 'Magnesium Quatro 900 - 90 gelules', 20.34, 'Be-Life Magnesium Quatro 900 90 gelules', 'BN'),
(65, 'Efferalgan vanille fraise 500 mg', 3.54, 'granules en sachet', 'DF'),
(66, 'Paracetamol mylan 500 mg', 2.18, '16 gelules', 'DF'),
(67, 'Paracetamol arrow 1 g', 2.18, '8 comprimes', 'DF'),
(68, 'Dafalgan 1 g', 2.18, '8 comprimes pellicules', 'DF'),
(69, 'Dafalgan 500 mg', 2.18, '16 gelules', 'DF'),
(70, 'EfferalganMed 1 g', 2.18, '8 comprimes effervescents', 'DF'),
(71, 'Doliprane 1000 mg', 2.18, '8 comprimes effervescents secables', 'DF'),
(72, 'Doliprane 500 mg', 2.18, '16 comprimes', 'DF'),
(73, 'Doliprane 1000 mg', 2.18, '8 gelules', 'DF'),
(74, 'Doliprane 2,4 % sans sucre', 2.4, 'flacon de 100 ml de suspension buvable', 'DF'),
(75, 'Doliprane 500 mg', 2.18, '16 gelules', 'DF'),
(76, 'Efferalgan 500 mg', 2.18, '16 comprimes', 'DF'),
(77, 'Efferalgan 500 mg', 2.18, '16 comprimes effervescents secables', 'DF'),
(78, 'Doliprane 1000 mg', 2.18, '8 sachets', 'DF'),
(79, 'Paracetamol teva 1 g', 2.18, '8 comprimes', 'DF'),
(80, 'Nurofenflash 400 mg', 5.23, '12 comprimes pellicules', 'DF'),
(81, 'Doliprane 500 mg', 2.18, '12 sachets', 'DF'),
(82, 'Doliprane 500 mg', 2.18, '16 comprimes effervescents', 'DF'),
(83, 'Advilmed enfants et nourrissons 20 mg/1 ml', 3.66, 'flacon de 200 ml de suspension buvable', 'DF'),
(84, 'Doliprane 300 mg', 2.18, '12 sachets', 'DF'),
(85, 'Nurofen 400 mg', 4.65, '12 comprimes enrobes', 'DF'),
(86, 'Paracetamol mylan 1 g', 2.18, '8 comprimes secables', 'DF'),
(87, 'Lait 1er age - 800 gr', 17.98, 'Ce lait de croissance pour bebe de premier age contient tous les nutriments indispensables pour son bon developpement. Il assure...', 'LI'),
(88, 'Nicopatch 14 mg/24 h', 7.2, '7 dispositifs transdermiques', 'ST'),
(89, 'Nicorette menthe fraiche 4 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(90, 'Forlax 4 g', 5, '20 sachets', 'AD'),
(91, 'Spagulax', 3.89, '20 sachets', 'AD'),
(92, 'Microlax sorbitol citrate et laurilsulfoacetate de', 9.25, '12 unidoses de gel rectal', 'AD'),
(93, 'Importal 10 g', 4.11, '20 sachets', 'AD'),
(94, 'Smecta orange vanille', 7.01, '60 sachets', 'AD'),
(95, 'Gaviscon menthe', 2.72, '20 comprimes a croquer', 'AD'),
(96, 'Transulose', 4.99, '150 g de gel oral', 'AD'),
(97, 'Oxyboldine', 4.71, '24 comprimes effervescents', 'AD'),
(98, 'Ultra-levure 50 mg', 7.12, '50 gelules', 'AD'),
(99, 'Nicorettespray 1 mg/dose', 20.81, 'flacon de 13,2 ml de solution pour pulverisation buccale', 'SD'),
(100, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 25.51, '144 pastilles a sucer', 'SD'),
(101, 'Nicopatch 21 mg/24 h', 24.87, '28 dispositifs transdermiques', 'SD'),
(102, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 8.37, '36 pastilles a sucer', 'SD'),
(103, 'Nicorette 2 mg sans sucre', 23.44, '210 gommes a macher', 'SD'),
(104, 'Nicorette microtab 2 mg', 11.72, '100 comprimes sublinguaux', 'SD'),
(105, 'Nicotinell menthe fraicheur 2 mg sans sucre', 11.3, '96 gommes a macher', 'SD'),
(106, 'Nicorette menthe fraiche 2 mg sans sucre', 6.84, '30 gommes a macher', 'SD'),
(107, 'Niquitinminis 1,5 mg sans sucre', 9.73, '60 comprimes a sucer', 'SD'),
(108, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 9.26, '96 pastilles a sucer', 'SD'),
(109, 'Nicorette fruits 2 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(110, 'Spagulax mucilage pur', 3.89, '20 sachets', 'AD'),
(111, 'Phloroglucinol mylan 80 mg', 2.45, '10 comprimes orodispersibles', 'AD'),
(112, 'Gaviscon', 3.04, '24 sachets', 'AD'),
(113, 'Spasfon lyoc 80 mg', 2.45, '10 comprimes orodispersibles', 'AD'),
(114, 'Macrogol 4000 mylan 10 g', 3.53, '20 sachets', 'AD'),
(115, 'Smecta orange vanille', 4.39, '30 sachets', 'AD'),
(116, 'Movicol', 4.26, '20 sachets', 'AD'),
(117, 'Macrogol biogaran 10 g', 3.53, '20 sachets', 'AD'),
(118, 'Citrate de betaine citron upsa 2 g sans sucre', 4.29, '20 comprimes effervescents', 'AD'),
(119, 'Transipeg 5,9 g', 3.97, '20 sachets', 'AD'),
(120, 'Gaviscon', 2.67, 'flacon de 250 ml de suspension buvable', 'AD'),
(121, 'Spasfon lyoc 160 mg', 2.45, '5 comprimes orodispersibles', 'AD'),
(122, 'Eductyl adultes', 2.64, '12 suppositoires', 'AD'),
(123, 'Dulcolax 5 mg', 6.71, '30 comprimes enrobes gastro-resistants', 'AD'),
(124, 'Vogalib 7,5 mg sans sucre', 7.01, '8 comprimes orodispersibles', 'AD'),
(125, 'Imodiumlingual 2 mg', 6.11, '12 comprimes sublinguaux', 'AD'),
(126, 'Alginate de sodium/bicarbonate de sodium biogaran ', 3.04, '24 sachet-doses de suspension buvable', 'AD'),
(127, 'Forlax 10 g', 6.21, '20 sachets', 'AD'),
(128, 'Imodiumcaps 2 mg', 4.14, '12 gelules', 'AD'),
(129, 'Ultralevure 200 mg', 6.76, '10 gelules', 'AD'),
(130, 'Normacol lavement adultes', 2.57, '130 ml de solution rectale', 'AD'),
(131, 'Nicorette menthe fraiche 2 mg sans sucre', 23.44, '210 gommes a macher', 'ST'),
(132, 'Nicopatch 14 mg/24 h', 24.74, '28 dispositifs transdermiques', 'SD'),
(133, 'Nicorette 2 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(134, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 8.37, '36 pastilles a sucer', 'ST'),
(135, 'Nicorette 2 mg sans sucre', 23.44, '210 gommes a macher', 'ST'),
(136, 'Nicorette microtab 2 mg', 11.72, '100 comprimes sublinguaux', 'ST'),
(137, 'Nicotinell menthe fraicheur 2 mg sans sucre', 11.3, '96 gommes a macher', 'ST'),
(138, 'Nicorette menthe fraiche 2 mg sans sucre', 6.84, '30 gommes a macher', 'ST'),
(139, 'Niquitinminis 1,5 mg sans sucre', 9.73, '60 comprimes a sucer', 'ST'),
(140, 'Nicorette fruits 2 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(141, 'Nicopatch 14 mg/24 h', 24.74, '28 dispositifs transdermiques', 'ST'),
(142, 'Nicopatch 21 mg/24 h', 24.87, '28 dispositifs transdermiques', 'ST'),
(143, 'Nicorette menthe fraiche 2 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(144, 'Nicorette 4 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(145, 'Nicotinell Patch 21mg x 28', 24.11, '', 'ST'),
(146, 'Nicopatch 21 mg/24 h', 7.42, '7 dispositifs transdermiques', 'ST'),
(147, 'Nicorette menthe glaciale 2 mg sans sucre', 6.81, '30 gommes a macher', 'ST'),
(148, 'Nicorette menthe glaciale 2 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(149, 'Nicotinell menthe fraicheur 4 mg sans sucre', 11.3, '96 gommes a macher', 'ST'),
(150, 'Nicotinell menthe fraicheur 2 mg sans sucre', 23.89, '204 gommes a macher', 'ST'),
(151, 'Niquitin 21 mg/24 heures', 24.11, '28 dispositifs transdermiques', 'ST'),
(152, 'Nicorette 2 mg sans sucre', 12.26, '105 gommes a macher', 'ST'),
(153, 'Nicorette menthe fraiche 2 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(154, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 25.51, '144 pastilles a sucer', 'ST'),
(155, 'Nicorettespray 1 mg/dose', 20.81, 'flacon de 13,2 ml de solution pour pulverisation buccale', 'ST'),
(156, 'Nicorette 4 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(157, 'Nicotinell Patch 21mg x 28', 24.11, '', 'SD'),
(158, 'Nicopatch 21 mg/24 h', 7.42, '7 dispositifs transdermiques', 'SD'),
(159, 'Nicorette menthe glaciale 2 mg sans sucre', 6.81, '30 gommes a macher', 'SD'),
(160, 'Nicorette menthe glaciale 2 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(161, 'Nicotinell menthe fraicheur 4 mg sans sucre', 11.3, '96 gommes a macher', 'SD'),
(162, 'Nicotinell menthe fraicheur 2 mg sans sucre', 23.89, '204 gommes a macher', 'SD'),
(163, 'Niquitin 21 mg/24 heures', 24.11, '28 dispositifs transdermiques', 'SD'),
(164, 'Nicopass 1,5 mg sans sucre menthe fraicheur', 9.26, '96 pastilles a sucer', 'ST'),
(165, 'Nicorette menthe fraiche 4 mg sans sucre', 12.26, '105 gommes a macher', 'SD'),
(166, 'Nicopatch 14 mg/24 h', 7.2, '7 dispositifs transdermiques', 'SD'),
(167, 'Nicorette fruits 2 mg sans sucre', 6.97, '30 gommes a macher', 'SD'),
(168, 'Nicotinell menthe 1 mg', 5.05, '36 comprimes a sucer', 'SD'),
(169, 'Nicotinell menthe 2 mg', 5.05, '36 comprimes a sucer', 'SD'),
(170, 'Nicopass 1,5 mg sans sucre eucalyptus', 9.26, '96 pastilles a sucer', 'SD'),
(171, 'Nicotinell menthe fraicheur 2 mg sans sucre', 4.98, '36 gommes a macher', 'SD'),
(172, 'Nicotinell tts 14 mg/24 h', 24.11, '28 dispositifs transdermiques', 'SD'),
(173, 'Nicorette menthe fraiche 4 mg sans sucre', 7.08, '30 gommes a macher', 'SD'),
(174, 'Nicorette menthe fraiche 2 mg sans sucre', 23.44, '210 gommes a macher', 'SD'),
(175, 'Lait Bebe Expert AR 1er age - 800 g', 26.78, 'Gallia anti-regurgitations 1er age devient Bebe Expert AR 1, la formule reste la m�me.Le lait Bebe Expert AR 1 est destine aux beb...', 'LI'),
(176, 'Lait ha 2eme age - 800 g', 26.47, 'Novalac lait HA 2eme age contient des proteines de lait hydrolyses qui permettent d obtenir l effet hypoallergenique.Le lait...', 'LI'),
(177, 'Expert Action Coliques Transit 1er �ge - 800g', 24.55, 'Gallia Expert Action Coliques Transit 1er �ge 800g', 'LI'),
(178, 'Total Capteur Perte de poids 5 en 1 - 60 gelules', 21.29, 'Total Capteur Perte de poids 5 en 1 est un dispositif medical des Laboratoires Eafit.. Capte les graissesCapte les sucresReduit...', 'FIT'),
(179, 'Pectine de pomme - bo�te de 30 gelules', 5.02, 'Les gelules Pectine de pomme de Naturactive contiennent des fibres qui ont la propriete de gonfler grace a leur capacite a...', 'FIT'),
(180, 'Cellulysse Special Cellulite - 60 Comprimes', 14.18, 'Cellulysse est un complement alimentaire anti-cellulite mettant en valeur le marc de raisin pour affiner la silhouette et...', 'FIT'),
(181, 'MilbemaxTab Vermifuge Spectre Large Petits Chiens ', 4.5, 'Milbemax Tab est un vermifuge a large spectre permettant de lutter contre les nematodes (vers plats) et les cestodes (vers...', 'VET'),
(182, 'Ascatene Vermifuge Chien et Chat + de 2kg - 10 com', 8.47, 'Ascatene, de Biocanina, est un vermifuge polyvalent pour chiens et chats de plus de 2 kg. Il est indique dans le traitement des...', 'VET'),
(183, 'MilbemaxTab Vermifuge Spectre Large Chien de plus ', 12.42, 'Milbemax Tab est un vermifuge a large spectre permettant de lutter contre les nematodes (vers plats) et les cestodes (vers...', 'VET'),
(184, 'Spot-On Chat  - 4 pipettes de 0.5ml', 12.35, 'Une pipette antiparasitaires pour les chats. Vous souhaitez proteger votre chat des parasites ? Les Laboratoires Frontline,...', 'VET'),
(185, 'Combo Spot-On Chats & Furets - 6 pipettes de 0,5ml', 22.25, 'Frontline Combo chat permet de lutter contre les parasites. Il est efficace contre les puces et les tiques.', 'VET'),
(186, 'Gel Concentre Minceur - 200ml', 11.12, 'Le Gel concentre minceur d Elancyl, est un soin amincissant de jour a l action anti-cellulite.', 'FIT'),
(187, 'Combo Spot-on Chat & Furets - 3 Pipettes 0.5ml', 13.2, 'L�antiparasitaire Combo chat FRONTLINE 3 pipettes permet d�eliminer les puces et tiques. Ce produit a double action...', 'VET'),
(188, 'Capstar 57mg  Traitement Anti-Puces Chiens de plus', 14.83, 'Capstar 57 mg, des Laboratoires Elanco, permet de traiter efficacement l infestation de puces (C. felis) chez le chien pesant plus...', 'VET'),
(189, 'Grand Chien de plus de 25 Kg - 4 Pipettes', 31, 'Pipettes antiparasitaires Advantix pour grands chiens de 25 a 40 kg. Action repulsive contre les tiques, les moustiques, les...', 'VET'),
(190, 'Spot-On L chien de 20-40 kg - 6 pipettes', 24.35, 'Une pipette antiparasitaires pour les chiens. Vous souhaitez proteger votre chien des parasites ? Les Laboratoires Frontline,...', 'VET'),
(191, 'Capstar Chat 11,4mg Traitement des Infestations pa', 13.9, 'Eliminez rapidement les puces de votre chat. Capstar 11,4mg est un traitement anti-puces con�u pour les chats de 1 a 11kg. Ce...', 'VET'),
(192, 'Tire-Tic Recyclable Double Crochet', 4.58, 'Clement Thekan Tire-Tic Recyclable Double Crochet', 'VET'),
(193, 'Homme Toilette Intime et Corporelle - 200 ml', 4.31, 'Le gel Saugella pour hygiene de l homme est une solution nettoyante adaptee a la toilette quotidienne, des parties intimes et de...', 'SEX'),
(194, 'Soin Lavant Doux Eco-recharge - 400 ml', 7.89, 'Le Soin Lavant Doux Saforelle a ete specialement formule pour les muqueuses et peaux sensibles ou irritees. Il nettoie en douceur...', 'SEX'),
(195, 'Gel Quotidien Lavant et Apaisant - Lot 2 x 200 ml', 14.08, 'HYDRALIN Quotidien permet de vous premunir des petits desagrements et de preserver l equilibre de votre flore intime tout en...', 'SEX'),
(196, 'Drontal Vermifuge pour chat - 2 comprimes', 12.98, 'Traitement vermifuge pour les chats. Contient 2 comprimes.', 'VET'),
(197, 'Florgynal Normal - 12 Tampons', 8.21, 'Plus de 2/3 des femmes souffrent de troubles vaginaux.Florgynal Tampon Probiotique est le seul tampon periodique qui agit pendant ...', 'SEX'),
(198, 'Arkogelules Orthosiphon Draineur - 45 gelules', 6.44, 'Arkopharma Arkogelules Orthosiphon Draineur 45 gelules', 'FIT'),
(199, 'Huile de Soin Grossesse - 100ml', 12.48, 'Une huile qui lutte contre les vergetures. L�huile de grossesse Weleda est formulee specifiquement pour les femmes enceintes....', 'FIT'),
(200, 'Physiolift Nuit Baume Lissant Regenerant - 30ml', 22.38, 'Raffermit, reduit les rides installees et defatigue les traits, pour une peau plus lumineuse au reveil.', 'AA'),
(201, 'Gel Hydroalcoolique Non Parfume - 100ml', 2.64, 'Gel Hydroalcoolique Non Parfume - 100ml', 'HYG'),
(202, 'Homme Toilette Intime et Corporelle - 200 ml', 4.31, 'Le gel Saugella pour hygiene de l homme est une solution nettoyante adaptee a la toilette quotidienne, des parties intimes et de...', 'HYG'),
(203, 'Soin Toilette Intime Mycolea - 200 ml', 5.98, 'Toilette intime quotidienne des muqueuses irritees.', 'HYG'),
(204, 'Atoderm Gel Douche - 1L', 12.42, 'Atoderm Gel douche, des Laboratoires Bioderma, c est le gel nettoyant douceur quotidien sans savon qui respecte la peau...', 'HYG'),
(205, 'Purificateur d Air Desinfectant Surfaces & Textile', 3.99, 'Un spray desodorisant et purifiant. Vous souhaitez desodoriser les tissus et l�atmosphere de votre maison, tout en luttant contre...', 'HYG'),
(206, 'Coton Protect - Serviettes Hygieniques en Coton Bi', 4.19, 'Saforelle Coton Protect 10 Serviettes Hygieniques extra-fines avec ailettes sont des serviettes hygieniques en coton biologique, p...', 'HYG'),
(207, 'Gel douche sport bio Menthe Argile blanche - 200ml', 3.84, 'Formule sans savon et a pH physiologique, le Gel Douche Sport Cattier nettoie en douceur et preserve l�equilibre naturel de...', 'HYG'),
(208, 'Force 5 / Ultra 5 - 180 gelules', 53.39, 'Un capteur de graisses ultra-performant. XLS Medical Force 5 (XLS Medical Ultra 5) est un dispositif medical con�u pour vous...', 'FIT'),
(209, 'Cotton Touch Serviettes Extra-Fines - 14 serviette', 5.6, 'Les serviettes jour extra-fines avec ailettes Cotton Touch de Saugella possedent un voile 100% cotton, et sont enrichies en...', 'HYG'),
(210, 'Lipikar Gel Lavant Gel Douche Apaisant Protecteur ', 10.74, 'Le gel lavant Lipikar de La Roche Posay est un soin d hygiene quotidienne pour le corps, adapte aux peaux seches a tendance...', 'HYG'),
(211, 'Dentifrice Meridol Protection Gencives - 2 x 75ml', 5.88, 'Une bonne dentition donne un beau sourire. Le dentifrice Meridol Protection Gencives renforce les dents et preserve les...', 'HYG'),
(212, 'Lotion - 375ml', 8.79, 'La Lotion EAU PRECIEUSE est un soin quotidien du visage specialement con�u pour les personnes qui presentent des peaux mixtes et...', 'HYG'),
(213, 'Active Food La Barre Proteinee Go�t Chocolat - 46g', 1.36, 'EaFit Active Food La Barre Proteinee Go�t Chocolat 46g', 'FIT'),
(214, 'B. Slim Transit Detox Tisane Minceur - 30 infusett', 27.79, 'Une tisane minceur et detox. Vous souhaitez retrouver un transit regulier et retrouver un ventre plat , Faites appel a la tisane...', 'FIT'),
(215, 'Ergydraine - 250 ml', 12.85, 'Ergydraine, des Laboratoires Nutergia, contient de la reine des pres, et associe l aubier de tilleul et le cassis qui favorisent...', 'FIT'),
(216, 'Active Food La Barre Proteinee Go�t Noix de Coco -', 1.48, 'EaFit Active Food La Barre Proteinee Go�t Noix de Coco 46g', 'FIT'),
(217, 'Mini Sweeteners - 400 comprimes', 2.14, 'Hermesetas Mini Sweeteners 400 comprimes', 'FIT'),
(218, 'XeraCalm AD - Pain nettoyant surgras - 100 g', 4.8, 'Le Pain nettoyant surgras de la gamme XeraCalm AD par Avene, est ideal pour les peaux sensibles seches a tres seches sujettes a...', 'HYG'),
(219, 'Hyaluron-Filler + Elasticity Soin de jour - 50 ml', 26.91, 'Hyaluron-Filler + Elasticity est un soin de jour pour peaux matures avec une protection anti-UVB (SPF15) et anti-UVA. Renforce la...', 'AA'),
(220, 'Sensilube Fluide Lubrifiant Intime - 40ml', 10.48, 'Avec Sensilube Fluide lubrifiant intime, retrouvez des sensations naturelles avec une fluidite au plus proche des secretions...', 'SEX'),
(221, 'Florgynal Tampon Probiotique Mini sans Applicateur', 7.29, 'Saforelle Florgynal Tampon Probiotique Mini sans Applicateur�14 pieces', 'SEX'),
(222, 'Premium La Creme Soyeuse Anti-Age Absolu - 50ml', 83.79, 'Premium La Creme Soyeuse anti-age absolu est un soin d�exception qui fait regagner une peau de velours. Ce soin est conseille pour...', 'VI'),
(223, 'Clairial serum correcteur integral anti-tache ecla', 27.99, 'Clairial serum correcteur integral, des Laboratoires SVR, est le n�1 de l�anti-taches en prescription dermatologique. Ce...', 'VI'),
(224, 'Rosaliac CC Creme SPF30 - 50ml', 15.37, 'Le soin Rosaliac CC Creme permet d�homogeneiser la peau sensible de maniere naturelle. Efficace contre les rougeurs, ce produit...', 'VI'),
(225, 'Cicaplast Mains - 100ml', 7.89, 'Une creme reparatrice pour les mains. La peau de vos mains est endommagee ? N�attendez plus et optez pour la Creme Mains...', 'VI'),
(226, 'Effaclar Duo+ Soin Correcteur - 40ml', 10.64, 'Effaclar Duo [+] de La Roche Posay, est un soin complet a la texture gel-creme qui associe plusieurs actifs pour agir sur les 2...', 'VI'),
(227, 'Effaclar A.I. - Gel imperfections cutanees - 15 ml', 9.3, 'Le correcteur cutane Effaclar A.I agit jusque dans les profondeurs de l�epiderme pour debarrasser la peau des imperfections, sans...', 'VI'),
(228, 'Hydrance Legere Emulsion Hydratante - 40ml', 13, 'La creme hydratante Hydrance Avene genere un effet adoucissant durable sur la peau. Elle constitue aussi un bon element pour emp�c...', 'VI'),
(229, 'Cotopads Rectangles de Coton 8x10cm - 200 pieces', 3.48, 'Rectangles de coton blanc non-steriles, 100% coton pour la toilette du bebe et les soins de la peau.. Notre avis. Nous...', 'PS'),
(230, 'Men Nuxellence Fluide Anti-�ge Rechargeur Jeunesse', 27.69, 'Fluide anti-age rechargeur de jeunesse et d energie.Pour toutes peaux, et tous les ages, ce soin est efficace par nature.', 'VI'),
(231, 'Cotopads par Velpeau carre de coton 5x5cm - 500 pi', 3.17, 'Carres de coton blanc non-steriles, 100% coton pour la toilette du bebe et les soins de la peau.. Notre avis. Nous conseillons les...', 'PS'),
(232, 'Gel Hydroalcoolique Non Parfume - 100ml', 2.64, 'Gel Hydroalcoolique Non Parfume - 100ml', 'PS'),
(233, 'Test de Grossesse - 1 piece', 1.89, 'Elle Test de Grossesse x1', 'PS'),
(234, 'Ultrabiotique Probiotiques - 60 gelules', 10.78, 'Ultrabiotique est un complement alimentaire a base de lactobacilles et de bifidobacteries.', 'PS'),
(235, 'Floradix Fer + Plantes 500ml', 20.48, 'Une Boisson qui aide a pallier les carences en fer.', 'PS'),
(236, 'Homme Toilette Intime et Corporelle - 200 ml', 4.31, 'Le gel Saugella pour hygiene de l homme est une solution nettoyante adaptee a la toilette quotidienne, des parties intimes et de...', 'PS'),
(237, 'Activ Foie - 30 Comprimes', 18.38, 'Activ�Foie est un complement alimentaire qui contribue au bon fonctionnement du foie.', 'PS'),
(238, 'Test Covid Nasal Detection Rapide de l Antigene - ', 9.99, 'Le Newgene Kit de Detection d Antigene COVID-19 est un autotest pour determiner le risque de contamination par le coronavirus...', 'PS'),
(239, 'Floradix Fer - 147 comprimes', 16.08, 'Ce produit ne poss�de pas de description.', 'PS'),
(240, 'Orthese Anti-Ronflement - 1 piece', 59.98, 'Une orthese pour limiter les ronflements. Oniris Orthese d Avancee Mandibulaire est une solution efficace contre le ronflement et...', 'PS'),
(241, 'Mucogyne Gel Intime Non-Hormonal - 40ml', 8.7, 'Mucogyne est un gel non hormonal a structure liposomiale formule pour favoriser la souplesse et l�elasticite de la muqueuse...', 'SEX'),
(242, 'Cicaplast Baume B5 - 100ml', 10.32, 'Cicaplast baume B5 reparateur apaisant, de La Roche Posay, repare et soulage intensement toutes les peaux fragilisees et les...', 'VI'),
(243, 'Mysterieux Repulpant - 30ml', 48.39, 'Mysterieux Repulpant est un serum con�u pour gommer les rides au niveau du visage et des yeux. Alliant plusieurs produits...', 'VI'),
(244, 'Replens Gel Vaginal - 8 unidoses', 20.78, 'Le gel Replens en 8 doses est une trouvaille des laboratoires CODEPHARMA pour les femmes qui souffrent de g�ne au niveau des...', 'SEX'),
(245, 'Hydralin Quotidien - 200 ml', 8.04, 'Hydralin Quotidien permet de vous premunir des petits desagrements et de preserver l equilibre de votre flore intime tout en...', 'SEX'),
(246, 'Skyn Elite Preservatifs Sans Latex - 10 pieces', 10.28, 'Ce produit ne poss�de pas de description.', 'SEX'),
(247, 'Mousse Lavante Ultra Douce - 250ml', 7.28, 'La Mousse Lavante Saforelle a ete specialement formulee pour les muqueuses et les peaux tres irritees. Elle nettoie en douceur et...', 'SEX'),
(248, 'Manix Skyn Intense Feel - 10 Preservatifs', 9.79, 'Les preservatifs Manix Skyn Intense Feel 10 Preservatifs offrent une stimulation intense pour elle et des sensation naturelles...', 'SEX'),
(249, 'Cotopads Rectangles de Coton 8x10cm - 200 pieces', 3.48, 'Rectangles de coton blanc non-steriles, 100% coton pour la toilette du bebe et les soins de la peau.. Notre avis. Nous...', 'MAT'),
(250, 'Cotopads par Velpeau carre de coton 5x5cm - 500 pi', 3.17, 'Carres de coton blanc non-steriles, 100% coton pour la toilette du bebe et les soins de la peau.. Notre avis. Nous conseillons les...', 'MAT'),
(251, 'Serum Physiologique Unidose - 40x5ml + 5x5ml OFFER', 2.37, 'Une seule solution pour l�hygiene du nez, des yeux et des oreilles. Le serum Physiodose est ideal pour une bonne hygiene des yeux,...', 'MAT'),
(252, 'Cicalfate+ Creme Reparatrice Protectrice - 100ml', 10.18, 'Cicalfate creme reparatrice, des Laboratoires Avene, apaise, repare et assainit votre peau irritee plus rapidement. . Cicalfate...', 'VI'),
(253, 'Cotopads Rectangles de Coton 8x10cm - 200 pieces', 4.42, 'Cotopads Rectangles de Coton 8x10cm 200 pieces', 'MAT'),
(254, 'Gel Lavant Doux Corps et Cheveux - 500ml', 6.19, 'Le gel lavant doux, de Mustela, nettoie et protege en douceur le corps et les cheveux de bebe. Ideal au quotidien des la...', 'MAT'),
(255, 'Cicaplast Mains - 100ml', 7.89, 'Une creme reparatrice pour les mains. La peau de vos mains est endommagee ? N�attendez plus et optez pour la Creme Mains...', 'MAT'),
(256, 'Lipikar Gel Lavant Gel Douche Apaisant Protecteur ', 10.74, 'Le gel lavant Lipikar de La Roche Posay est un soin d hygiene quotidienne pour le corps, adapte aux peaux seches a tendance...', 'MAT'),
(257, 'Lipikar Syndet AP+ Creme Lavante Relipidante Recha', 11.08, 'La Roche Posay Lipikar Syndet AP+ Creme Lavante Relipidante Recharge - 400ml', 'MAT'),
(258, 'Lipikar Surgras Creme Lavante Anti-Dessechement - ', 14.74, 'La Roche-Posay Lipikar Surgras Creme Lavante Anti-Dessechement 750ml', 'MAT'),
(259, 'Serum Physiologique Sterile - 40 unidoses de 5ml', 5.58, 'Le Serum physiologique Physiodose est un serum sterile, sans conservateur et non injectable. Presente en unidose, Physiodose...', 'MAT'),
(260, 'Lipikar AP+M Baume Relipidant - 400ml', 17.8, 'Reparez votre peau tres seche.. Le baume Lipikar AP+M de La Roche-Posay est un soin qui assure une triple reparation des peaux tre...', 'MAT'),
(261, 'Toleriane Ultra Creme - 40ml', 16.94, 'Soulage intensement et durablement les inconforts quotidiens des peaux ultra-sensibles ou allergiques.', 'VI'),
(262, 'Cicaplast Baume B5 - 100ml', 10.32, 'Cicaplast baume B5 reparateur apaisant, de La Roche Posay, repare et soulage intensement toutes les peaux fragilisees et les...', 'MAT'),
(263, 'Physiolift Serum Lissant Repulpant - 30ml', 23.98, 'Le Serum lissant repulpant de la gamme PhysioLift d Avene, est un soin sur-mesure agissant sur la perte de fermete, les rides...', 'AA'),
(264, 'Anti-Rides SD Advanced+ Soin Hydratant Intensif An', 64.35, 'La creme hydratante intensive cible 10 types de collagene pour ameliorer visiblement les rides et les vergetures. La creme...', 'AA'),
(265, 'L Elixir du Marabout - 15ml', 31.59, 'Avec le stress, la pollution, les cycles hormonaux, la peau peut devenir sensible aux imperfections comme les petits boutons, les...', 'AA'),
(266, 'Mela-Sommeil - 2 x 30 gelules vegetales', 11.98, 'Alvityl Mela-Sommeil est une gelule qui permet une double action sur le sommeil.. A partir de 18 ans.', 'SCA'),
(267, 'Arkorelax Sommeil Fort 8h - 30 comprimes', 22.95, 'Arkopharma Arkorelax Sommeil Fort 8h 30 comprimes', 'SCA'),
(268, 'Noctigem Bio Sommeil - 50ml', 14.97, 'Retrouvez un sommeil sain et reparateur. Con�u par les laboratoires Herbalgem, Noctigem est un complement alimentaire qui...', 'SCA'),
(269, 'Magnesium Marin Vitamine B6 - 40 gelules', 4.26, 'Nat & Form Magnesium Marin Vitamine B6 40 gelules', 'SCA'),
(270, 'Sommeil 60 gommes a macher', 15.39, 'ZzzQuil Sommeil 60 gommes a macher', 'SCA'),
(271, 'Lero Noctuline 20ml', 8.1, 'Lero Noctuline 20ml', 'SCA'),
(272, 'Chronobiane immediat spray - 20 ml', 12.95, 'Ce complement alimentaire sous forme de spray sublingual (pulverisation sous la langue) est a base de melatonine et d�extrait...', 'SCA'),
(273, 'Somniphyt nuit calme - 30 comprimes', 9.94, 'Somniphyt nuit calme est un complement alimentaire a base de preparations de plantes et dolomite.', 'SCA'),
(274, 'Chronobiane LP 1,9mg - 60 comprimes', 14.18, 'Pileje Chronobiane LP 1,9mg Complement Alimentaire a Base de Melatonine 60 comprimes', 'SCA'),
(275, 'Ultrabiotique Probiotiques - 60 gelules', 10.78, 'Ultrabiotique est un complement alimentaire a base de lactobacilles et de bifidobacteries.', 'CA'),
(276, 'Activ Foie - 30 Comprimes', 18.38, 'Activ�Foie est un complement alimentaire qui contribue au bon fonctionnement du foie.', 'CA'),
(277, 'Floradix Fer - 147 comprimes', 16.08, 'Ce produit ne poss�de pas de description.', 'CA'),
(278, 'Herbesan Panax Ginseng - 30 ampoules', 11.85, 'Herbesan Panax Ginseng par les Laboratoires Super Diet, est un complement alimentaire a base de Panax Ginseng Meyer, gelee...', 'CA'),
(279, 'Ventr Activ - 60 comprimes', 6.68, 'Ventre plat est une formule exclusive avec une double action contre les rondeurs abdominales. Ce complement alimentaire associe...', 'CA'),
(280, 'Novanuit Triple Action - 30 comprimes', 13.58, 'Novanuit triple action par Sanofi, est un complement alimentaire reserve a l adulte avec une triple action sur le sommeil sans acc...', 'CA'),
(281, 'Myod Contract magnesium - 30 capsules', 6.89, 'Myod Contract des Laboratoires Chauvin Bausch + Lomb est un complement alimentaire compose d un melange unique de vitamines et...', 'CA'),
(282, 'Phytostandard Rhodiole Safran - 30 comprimes', 13.58, 'Phytostandard complement alimentaire rhodiole et safran, des Laboratoires Pileje, aide l organisme a s adapter au stress...', 'CA'),
(283, 'Bi-osteo Capital Osseux - 30 capsules', 9.38, 'Synergia Bi-osteo Capital Osseux 30 capsules', 'CA'),
(284, 'Floradix Fer + Plantes 500ml', 20.48, 'Une Boisson qui aide a pallier les carences en fer.', 'CA'),
(285, 'Thalamag Magnesium Marin �quilibre Interieur - 30 ', 9.8, 'Thalamag Magnesium Marin �quilibre Interieur 30 comprimes', 'CA'),
(286, 'Super melatonine - 60 comprimes', 22.26, 'Ce soir, endormez-vous avec Solgar ! Dosee a 1,9 mg par comprime, la melatonine vous aide a vous endormir plus facilement et a mi...', 'SCA'),
(287, 'Novanuit Triple Action - 30 comprimes', 13.58, 'Novanuit triple action par Sanofi, est un complement alimentaire reserve a l adulte avec une triple action sur le sommeil sans acc...', 'SCA'),
(288, 'Optipro GuigozGest 2 Lait 6-12 Mois - 800g', 16.99, 'Guigoz Optipro GuigozGest 2 Lait 6-12 Mois 800g', 'LI'),
(289, 'Bio Croissance 3eme �ge 10-36 Mois - 800g', 16.37, 'Lait de suite a partir de 10 mois et aliment lacte pour enfants en bas age en poudre.. Attention, changement de decor : afin...', 'LI'),
(290, 'Lait Galliagest Premium 2eme age - 800 g', 22.58, 'Pour repondre aux besoins nutritionnels du nourrisson de 6 a 12 mois, decouvrez Galliagest Premium Lait 2eme age des Laboratoires...', 'LI'),
(291, 'Lais Relais Calisma 2eme age - 800g', 15.92, 'Le lait Gallia Calisma 2 devient Calisma Relais 2, la formule reste la m�me.Ce lait est ideal en relais de l allaitement maternel...', 'LI'),
(292, 'Junior Lait infantile 4eme age a partir de 24 mois', 19.04, 'Lait de croissance Gallia Junior est adapte pour les enfants des 24 mois. Il peut leur apporter les elements necessaires pour l�ev...', 'LI'),
(293, 'Lait Calisma Croissance a partir d 1 an - 800 g', 11.44, 'Le lait Calisma Croissance de GALLIA est un concentre multivitamine de nutriments et d�elements nourrissants, con�u pour l�enfant...', 'LI'),
(294, 'Triphasic - Shampoing Anti-Chute 200ml', 10.96, 'Furterer Triphasic Shampoing Anti-Chute 200ml', 'CHE'),
(295, 'Karite Hydra - Shampoing hydratation brillance - 1', 9.81, 'Le Shampoing Hydratation Brillance, de la gamme Karite Hydra, de Rene Furterer, lave en douceur pour une hydratation et une...', 'CHE'),
(296, 'D-Stress Sommeil - 40 comprimes', 10.49, 'Synergia D-Stress Sommeil 40 comprimes', 'SCA'),
(297, 'Node K Shampooing Kerato-Reducteur - 150ml', 9.89, 'Le shampoing apaisant qui elimine les etats squameux en plaques, evite leur reapparition et limite le grattage.', 'CHE'),
(298, 'Soin Des Cheveux  Nature & Soin - Colorations Perm', 7.39, 'Une coloration soin : Apres coloration, vos cheveux sont plus lumineux, revelant ainsi votre couleur et ses nuances, plus...', 'CHE'),
(299, 'Soin Des Cheveux  Nature & Soin - Colorations Perm', 7.39, 'Une coloration soin : Apres coloration, vos cheveux sont plus lumineux, revelant ainsi votre couleur et ses nuances, plus...', 'CHE'),
(300, 'Forcapil Anti-Chute - 90 comprimes 2 + 1 mois OFFE', 34.88, 'Vitalite, brillance et force.. Pour apporter de la vitalite, de la brillance et de la force a vos cheveux et a vos ongles, les Lab...', 'CHE'),
(301, 'Dercos Aminexil Clinical 5 Femmes - 21 unidoses de', 39.15, 'Cliniquement prouve. La chute est freinee.. Apres 3 semaines, le cuir chevelu est renforce. Les cheveux retrouvent resistance et f...', 'CHE'),
(302, 'Klorane Capillaire Shampooing Apaisant a la Pivoin', 8.68, 'Le Shampoing Apaisant et Anti-Irritant a la Pivoine, a la pivoine de Chine, de Klorane, est un shampoing recommande pour les...', 'CHE'),
(303, 'Novophane Shampooing �nergisant - 200ml', 7.8, 'Ce Shampoing Energisant Novophane, des Laboratoires ACM, convient aux cheveux ternes et fragilises.', 'CHE'),
(304, 'Shampoing volumateur au lait d Amande � 200 ml', 6.02, 'Le Shampooing volumateur au lait d�amande KLORANE a ete tres apprecie pour sa grande douceur, pour sa facilite de coiffage et son ...', 'CHE'),
(305, 'Capillaire Shampooing Camomille - 400ml', 9.02, 'Ce shampooing tres doux convient aussi bien aux mamans qu�aux enfants.', 'CHE'),
(306, 'Kelual DS Shampooing traitant antipelliculaire ant', 15.98, 'Kelual DS Shampooing traitant antipelliculaire antirecidive, de Ducray, elimine durablement les pellicules et apaise rapidement...', 'CHE'),
(307, 'Junior 20 sticks', 7.79, 'Ce produit ne poss�de pas de description.', 'CA'),
(308, 'Cotopads Rectangles de Coton 8x10cm - 200 pieces', 3.48, 'Rectangles de coton blanc non-steriles, 100% coton pour la toilette du bebe et les soins de la peau.. Notre avis. Nous...', 'MM'),
(309, 'Cotopads Rectangles de Coton 8x10cm - 200 pieces', 4.42, 'Cotopads Rectangles de Coton 8x10cm 200 pieces', 'MM'),
(310, 'Cicaplast Baume B5 - 100ml', 10.32, 'Cicaplast baume B5 reparateur apaisant, de La Roche Posay, repare et soulage intensement toutes les peaux fragilisees et les...', 'COR'),
(311, 'Homme Toilette Intime et Corporelle - 200 ml', 4.31, 'Le gel Saugella pour hygiene de l homme est une solution nettoyante adaptee a la toilette quotidienne, des parties intimes et de...', 'COR'),
(312, 'Eau de toilette Elle & Lui - 50ml', 4.98, 'Laboratoire Marque Verte Eau de toilette Elle & Lui 50ml', 'COR'),
(313, 'Cicaplast Mains - 100ml', 7.89, 'Une creme reparatrice pour les mains. La peau de vos mains est endommagee ? N�attendez plus et optez pour la Creme Mains...', 'COR'),
(314, 'Anti-Rides SD Advanced+ - Soin Hydratant Intensif ', 33.82, 'La creme hydratante intensive cible 10 types de collagene pour ameliorer visiblement les rides et les vergetures. La creme...', 'COR'),
(315, 'Lipikar AP+M Baume Relipidant - 400ml', 17.8, 'Reparez votre peau tres seche.. Le baume Lipikar AP+M de La Roche-Posay est un soin qui assure une triple reparation des peaux tre...', 'COR'),
(316, 'Atoderm SOS Spray - 200 ml', 11.88, 'Atoderm SOS Spray, de Bioderma, est le reflexe anti-demangeaisons pour un apaisement immediat.. Il est indique pour les...', 'COR'),
(317, 'Cicalfate Mains Creme Reparatrice Isolante - 100ml', 7.79, 'Cicalfate Creme mains reparatrice, de Avene, repare, apaise et protege les mains tres seches et irritees plus rapidement....', 'COR'),
(318, 'Cicalfate+ Creme Reparatrice Protectrice - 100ml', 10.18, 'Cicalfate creme reparatrice, des Laboratoires Avene, apaise, repare et assainit votre peau irritee plus rapidement. . Cicalfate...', 'COR'),
(319, 'Atopicontrol Emollient Creme Corps Calmante - 400m', 20.44, 'Avez-vous des demangeaisons cutanees recurrentes ?Essayer le nouveau AtopiControl Emollient Corps Calmant de EUCERIN fera toute la...', 'COR'),
(320, 'Lait Corps Hydratant pour Peaux Fragiles - 400ml', 12.08, 'Le Lait corps hydratant de la gamme Les Indispensables par A-Derma, a la texture legere, fluide et rafra�chissante hydrate et...', 'COR'),
(321, 'Mysterieux Repulpant - 30ml', 48.39, 'Mysterieux Repulpant est un serum con�u pour gommer les rides au niveau du visage et des yeux. Alliant plusieurs produits...', 'AA'),
(322, 'Men Nuxellence Fluide Anti-�ge Rechargeur Jeunesse', 27.69, 'Fluide anti-age rechargeur de jeunesse et d energie.Pour toutes peaux, et tous les ages, ce soin est efficace par nature.', 'AA'),
(323, 'Premium La Creme Soyeuse Anti-Age Absolu - 50ml', 83.79, 'Premium La Creme Soyeuse anti-age absolu est un soin d�exception qui fait regagner une peau de velours. Ce soin est conseille pour...', 'AA'),
(324, 'Clairial serum correcteur integral anti-tache ecla', 27.99, 'Clairial serum correcteur integral, des Laboratoires SVR, est le n�1 de l�anti-taches en prescription dermatologique. Ce...', 'AA'),
(325, 'Anti-Rides SD Advanced+ - Soin Hydratant Intensif ', 33.82, 'La creme hydratante intensive cible 10 types de collagene pour ameliorer visiblement les rides et les vergetures. La creme...', 'AA'),
(326, 'Hydrolat Precieux Rose de Damas Bio Edition Limite', 7.98, 'L�Hydrolat de rose au service de votre peau. Vous souhaitez prendre soin de votre peau et de vos cheveux avec un remede naturel ? ...', 'AA'),
(327, 'DermAbsolu Baume Nuit Reconfortant - 40ml', 27.64, 'Le Baume nuit reconfortant de la gamme DermAbsolu par Avene, regenere et nourrit intensement la peau.. Au reveil, les traits...', 'AA'),
(328, 'Men - Gel douche multi-usages - 200 ml', 5.98, 'Le Gel douche multi-usages Nuxe Men nettoie en douceur a la fois le visage, le corps et les cheveux des hommes.Pour toutes peaux, ...', 'COR'),
(329, 'Huile Seche Visage et Corps IP20 - 125ml', 14.23, 'L�huile seche de Bergasol active votre capacite naturelle de bronzage et vous aide a obtenir un bronzage radieux et naturel tout...', 'SOL'),
(330, 'Sensibio AR BB Creme Soin Anti-Rougeurs Perfecteur', 19.88, 'Sensibio AR BB creme, de Bioderma, est le soin anti rougeurs dermatologique protecteur et perfecteur de peau, qui...', 'SOL'),
(331, 'Ideal/Capital Soleil Lait Apaisant Apres-Soleil - ', 13.03, 'Pour les hommes et les femmes a la recherche d un soin apres soleil hydratant apres l exposition.', 'SOL'),
(332, 'Medicomp Compresses en Nontisse 10cm x 10cm - 100 ', 3.15, 'Hartmann Medicomp Compresses en Nontisse 10cm x 10cm 100 pieces', 'MM'),
(333, 'Medicomp Compresses en Nontisse 7,5cm x 7,5cm - 10', 1.89, 'Hartmann Medicomp Compresses en Nontisse 7,5cm x 7,5cm - 100 pieces', 'MM'),
(334, 'Urgosyval - Sparadrap Resistant Blanc - 5m x 2,5cm', 2.07, 'Urgo Urgosyval Sparadrap Resistant Blanc 5m x 2,5cm', 'MM'),
(335, 'Fastclix - 204 lancettes steriles', 14.82, 'Compatible avec l auto-piqueur du m�me nom, les lancettes Accu-Check Fastclix permettent de prelever une goutte de sang, pour le c...', 'MM'),
(336, 'Masque Barriere Protection Visage Tissu - 1 Piece', 0.91, 'Une masque barriere pour le visage. Le Masque Barriere Protection Visage offre une protection optimale contre la propagation des v...', 'MM'),
(337, 'Coton carre - 5 x 5 - sachet de 500', 5.6, 'Coton carre.', 'MM'),
(338, 'Omnifix Elastic no.900 602 Pansement 5cm x 10m', 3.94, 'Hartmann Omnifix Elastic no.900 602 Pansement 5cm x 10m', 'MM'),
(339, 'Bande Sport Anti-Ampoules 2,5m x 5cm', 6.82, 'Hansaplast Bande Sport Anti-Ampoules 2,5mx5cm', 'MM'),
(340, 'Thermometre auriculaire Thermoscan IRT3030', 29.89, 'Avec son design compact, le nouveau thermometre auriculaire, Thermoscan 3 IRT3030 de Braun, est facile a utiliser, doux et...', 'MM'),
(341, 'Performa - 50 Bandelettes', 21.79, 'Verifier son taux de glycemie facilement grace a Accu-Chek Performa.. Les bandelettes performa sont utilisees par les diabetiques...', 'MM'),
(342, 'Rosaliac CC Creme SPF30 - 50ml', 15.37, 'Le soin Rosaliac CC Creme permet d�homogeneiser la peau sensible de maniere naturelle. Efficace contre les rougeurs, ce produit...', 'SOL'),
(343, 'Solaires - Reflexe solaire SPF50+ - 30 ml', 5.84, 'Reflexe solaire SPF50+ d Avene, est une tres haute protection solaire pour les peaux sensibles, au toucher sec.', 'SOL'),
(344, 'Solaire Creme Tres Haute Protection Confort SPF50+', 10.98, 'Cette Creme SPF50+ d Avene, est une tres haute protection visage pour les peaux sensibles, seches, ideale pour les peaux claires...', 'SOL'),
(345, 'Anthelios XL Gel-Creme Toucher Sec sans Parfum SPF', 12.89, 'Avec son nouveau flacon-pompe, Anthelios 50+ Gel Creme, de La Roche Posay, est une tres haute protection solaire visage.UVA Ultra...', 'SOL'),
(346, 'Hyaluron-Filler + Elasticity Soin de jour - 50 ml', 26.91, 'Hyaluron-Filler + Elasticity est un soin de jour pour peaux matures avec une protection anti-UVB (SPF15) et anti-UVA. Renforce la...', 'SOL'),
(347, 'Ideal Soleil Lait hydratant Autobronzant - 100ml', 10.36, 'Ideal Soleil Lait hydratant autobronzant Vichy s applique 2 a 4 fois par semaine sur visage et corps pour un bronzage progressif e...', 'SOL'),
(348, 'Avene Stick Zones Sensibles SPF50+ 8g', 8.39, 'Avene Stick Zones Sensibles SPF50+ 8g', 'SOL'),
(349, 'Solaire Intensif - Preparateur Peau Normale - 2 x ', 20.05, 'Un complement alimentaire pour preparer votre peau au soleil. Vous souhaitez preparer votre peau avant de l�exposer au soleil ? Vo...', 'SOL'),
(350, 'Coffret Sun Secure - Creme SPF 50+ 50 ml + Apres-S', 10.77, 'Ce coffret regroupe deux produits pour une protection avant exposition solaire et apres exposition solaire :Sun Secure Creme SPF 5...', 'SOL'),
(351, 'Meteospasmyl', 3.8, '20 capsules', 'AD'),
(352, 'Spasfon', 3.16, '30 comprimes enrobes', 'AD');

-- --------------------------------------------------------

--
-- Structure de la table `typemedicaments`
--

CREATE TABLE `typemedicaments` (
  `Libelle` varchar(3) NOT NULL,
  `Designation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typemedicaments`
--

INSERT INTO `typemedicaments` (`Libelle`, `Designation`) VALUES
('AA', 'Anti-Age'),
('AD', 'Appareil Digestif'),
('BN', 'Bio Naturel'),
('CA', 'Complement Alimentaire'),
('CHE', 'Cheveux'),
('COR', 'Corps'),
('DAM', 'Douleurs Articulaires et Musculaires'),
('DF', 'Douleur et Fievre'),
('FIT', 'Fitness'),
('HYG', 'Hygiene'),
('LI', 'Lait Infantiles'),
('MAT', 'Maternite'),
('MM', 'Matereil Medical'),
('PS', 'Produit Sante'),
('SCA', 'Sommeil'),
('SD', 'Sommeil et Detente'),
('SEX', 'Sexualite'),
('ST', 'Sevrage Tabagique'),
('VET', 'Veterinaire'),
('VI', 'Visage');

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20220312105228_Initial', '5.0.12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `typemedicaments`
--
ALTER TABLE `typemedicaments`
  ADD PRIMARY KEY (`Libelle`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
