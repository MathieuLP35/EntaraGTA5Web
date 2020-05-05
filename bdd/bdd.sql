-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 05 mai 2020 à 11:19
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `iroleplay`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_autocar', 'Concessionnaire Auto', 1),
('society_avocat', 'Avocat', 1),
('society_bahama', 'bahama', 1),
('society_bennys', 'Benny\'s', 1),
('society_blackmarket', 'BlackMarker', 1),
('society_cardealer', 'Concessionnaire Luxe', 1),
('society_gouv', 'Gouvernement', 1),
('society_lowrider', 'Concessionnaire Lowrider', 1),
('society_mechanic', 'Mécano', 1),
('society_mechanic66', 'Mécano', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_police', 'Police', 1),
('society_police_black_money', 'Police Black Money', 1),
('society_sheriff', 'Sheriff', 1),
('society_tabac', 'tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_usedcar', 'Occaz Car\'s', 1),
('society_vigne', 'Vigneron', 1),
('vault_black_money', 'Money Vault', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_autocar', 0, NULL),
(3, 'society_avocat', 0, NULL),
(4, 'society_bahama', 0, NULL),
(5, 'society_bennys', 0, NULL),
(6, 'society_blackmarket', 0, NULL),
(7, 'society_cardealer', 0, NULL),
(8, 'society_gouv', 0, NULL),
(9, 'society_lowrider', 2000, NULL),
(10, 'society_mechanic', 0, NULL),
(11, 'society_mechanic66', 0, NULL),
(12, 'society_orpailleurs', 0, NULL),
(13, 'society_police', 0, NULL),
(14, 'society_sheriff', 0, NULL),
(15, 'society_tabac', 0, NULL),
(16, 'society_taxi', 0, NULL),
(17, 'society_unicorn', 0, NULL),
(18, 'society_usedcar', 0, NULL),
(19, 'society_vigne', 0, NULL),
(20, 'caution', 0, 'steam:11000010a351d4a'),
(21, 'property_black_money', 0, 'steam:11000010a351d4a'),
(22, 'property_black_money', 0, 'steam:1100001029c253e'),
(23, 'caution', 0, 'steam:1100001029c253e'),
(24, 'society_police_black_money', 0, NULL),
(25, 'vault_black_money', 0, 'steam:11000010a351d4a'),
(26, 'vault_black_money', 0, 'steam:1100001029c253e');

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_autocar', 'Concesionnaire Auto', 1),
('society_avocat', 'Avocat', 1),
('society_bahama', 'bahama', 1),
('society_bahama_fridge', 'bahama (frigo)', 1),
('society_bennys', 'Benny\'s', 1),
('society_blackmarket', 'BlackMarker', 1),
('society_cardealer', 'Concesionnaire Luxe', 1),
('society_gouv', 'gouv', 1),
('society_lowrider', 'Concesionnaire Lowrider', 1),
('society_mechanic', 'Mécano', 1),
('society_mechanic66', 'Mécano', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_police', 'Police', 1),
('society_sheriff', 'Sheriff', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_usedcar', 'Occaz Car\'s', 1),
('society_vigne', 'Vigneron', 1),
('vault', 'Vault', 0);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(5, 'society_vigne', 'jus_raisin', 12, NULL),
(6, 'society_vigne', 'raisin', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arrests_list`
--

INSERT INTO `arrests_list` (`id`, `json_data`) VALUES
(1, '{\"Officer\":\"steam:11000010a351d4a\",\"Detainee\":\"zrzerzrz\",\"Description\":\"rzrzerze\",\"OfficerC\":\"rzerzerez\", \"Date\":\"Sun May  3 23:01:19 2020\"}');

-- --------------------------------------------------------

--
-- Structure de la table `autocar`
--

CREATE TABLE `autocar` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `autocar`
--

INSERT INTO `autocar` (`name`, `model`, `price`, `category`) VALUES
('Rust Emperor', 'emperor2', 2000, 'premierprix'),
('Faggio', 'faggio2', 800, 'scooter'),
('Rust Issi', 'issi4', 1000, 'premierprix');

-- --------------------------------------------------------

--
-- Structure de la table `autocar_categories`
--

CREATE TABLE `autocar_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `autocar_categories`
--

INSERT INTO `autocar_categories` (`name`, `label`) VALUES
('premierprix', 'Premier Prix'),
('scooter', 'Scooter');

-- --------------------------------------------------------

--
-- Structure de la table `autocar_sold`
--

CREATE TABLE `autocar_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `autocar_vehicles`
--

CREATE TABLE `autocar_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `baninfo`
--

CREATE TABLE `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `baninfo`
--

INSERT INTO `baninfo` (`identifier`, `license`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
('no info', 'no info', 'no info', 'no info', 'no info', 'no info', NULL),
('steam:1100001006020a5', 'license:6b5ab9c5583733cf2dc38110cda1d0206ebba0ce', 'no info', 'no info', 'discord:263423259977056256', 'ip:176.176.42.133', 'Tr@nxen'),
('steam:110000100f86fb9', 'license:62b1a779bac58c32a84492d6ce6e2f0badb7b047', 'live:1055521733721576', 'xbl:2535439251000296', 'discord:355769943666589706', 'ip:86.246.19.171', 'lil purple_noob'),
('steam:1100001015275e5', 'license:ad1badf6f71de52fc91a50dcd7af78a8cef9fd42', 'no info', 'no info', 'discord:139085629676978176', 'ip:86.196.204.47', 'Cesar Domingo'),
('steam:110000101b2e56d', 'license:5d640efbb9717c436ab3157ab3bf4f09fc0404e3', 'no info', 'no info', 'discord:252436793138348033', 'ip:86.245.100.223', 'Giovanni Falconne'),
('steam:110000101b5e717', 'license:c38f385f563333ff60a2f597d65c1a7e219a3cee', 'live:844427721318259', 'no info', 'discord:679165396166901761', 'ip:79.84.175.178', 'Laurent JALABERT'),
('steam:11000010285e544', 'license:bd7b9909326e791a2539bde1271dd2298ba7fc10', 'no info', 'no info', 'discord:181836372867416064', 'ip:86.206.99.178', 'Uk0o 48'),
('steam:1100001029c253e', 'license:528c5eb97b938ca270505b47baba6117fb1db75a', 'live:1759221010324301', 'xbl:2535429051556274', 'discord:296390457200738326', 'ip:25.84.176.48', 'jack daniels'),
('steam:110000102b1cbb3', 'license:617b7b06bb7eeceb30493f590b3a5a4bf26f3ff2', 'live:985156384563464', 'xbl:2535409059191313', 'discord:338058116451008513', 'ip:78.114.185.250', 'Pablo Brasseur'),
('steam:1100001030e9a35', 'license:22373c47a44756698b028cfa0b6d01f6ec0c97c9', 'live:914802000624306', 'xbl:2535435881559977', 'no info', 'ip:86.244.11.41', 'Jean Leon'),
('steam:110000103696103', 'license:84d366c25cecef9fd1d6672eddc916cb7f7ea6fe', 'live:1899945810990173', 'xbl:2533274852358698', 'discord:683068826925269110', 'ip:88.124.29.40', 'jackson storme'),
('steam:1100001037a7351', 'license:8161bcd04982f198cd46715fa3d971109d63c1d0', 'live:844425362784472', 'xbl:2535436320575176', 'discord:365834691175120899', 'ip:176.128.173.130', 'Haahko'),
('steam:110000103850008', 'license:ab4150854b4ed64123c223e99eb40a7ad44f05c8', 'live:1759221074868909', 'xbl:2535467870623749', 'discord:683067498819878927', 'ip:88.124.29.40', 'Masha Ruiz'),
('steam:11000010388f992', 'license:715266734a30564daa8a94a1b175be690d7caf16', 'no info', 'no info', 'no info', 'ip:89.87.8.81', 'Brandone Scott'),
('steam:110000104d47656', 'license:04f0bcb7c23ac9819e85bb50527ccdbcde4b6f2c', 'live:1688853388679930', 'xbl:2533274939244736', 'discord:248919894261760010', 'ip:217.67.152.221', 'steff BZA(Gandi)'),
('steam:110000104e6f626', 'license:c95df7015d46a431fd646d6ba924c04f62a1c8f4', 'live:1055520986280622', 'xbl:2533274891180978', 'discord:575695109819990026', 'ip:109.7.199.74', 'Kyle Queen'),
('steam:110000105625cce', 'license:0098f46c6b8e053212f29e6ef519b63a7ba4932d', 'no info', 'no info', 'discord:611637434106773555', 'ip:62.35.18.47', 'weaked76'),
('steam:110000105b1f696', 'license:edce246a4e676c975ddd5a5c9e6c65a8ab99a624', 'live:1055518822247564', 'xbl:2535410445487800', 'no info', 'ip:92.90.37.89', 'Diego Domingo'),
('steam:110000105b79c79', 'license:960e0c78c3b71fdb7df1a0fb86518499f116a546', 'live:1688852353769964', 'xbl:2535443657075380', 'discord:254371228725280769', 'ip:37.252.248.93', 'jUALOO'),
('steam:110000105c88be4', 'license:acab98aa35c77adbdcb9f0e45f3620892e27ba6f', 'live:1055521800709069', 'xbl:2535471718937769', 'discord:277892397596147713', 'ip:93.23.107.237', 'Palwin'),
('steam:11000010652eb72', 'license:d18e752ff199569d1d4e2b77bdfe1a650f2e925b', 'live:844428558372191', 'xbl:2535470589524052', 'no info', 'ip:79.84.242.26', 'Roco Manceau'),
('steam:1100001065a15e6', 'license:c1b29db61dc24da42b79b54b1bbdb19e68172d51', 'no info', 'no info', 'discord:284074228112818177', 'ip:88.121.112.132', 'Parzival'),
('steam:1100001065c6faa', 'license:c900bf922b76d16732226a8ae7e5eb2703bd5525', 'live:1688853724520072', 'xbl:2533275026568264', 'discord:246660463784361987', 'ip:92.151.10.31', 'ToXiKe'),
('steam:110000106826936', 'license:5f6bf6440ffc95fcc7f47cde86c4e1ce32b03cf9', 'no info', 'no info', 'discord:277089260832555008', 'ip:78.125.163.59', 'Lancelot Ysgrim'),
('steam:1100001068c2e6f', 'license:6c4b3ca85113201dcff199fd3ca88cbd4292696e', 'live:1759221338012901', 'xbl:2533274876831060', 'no info', 'ip:79.92.77.95', 'Lucho Fuentes'),
('steam:110000106dd798d', 'license:73dd240ed02f99659eafd357b783365419f22b9b', 'no info', 'no info', 'discord:645247991871176704', 'ip:109.11.8.237', 'Steve taylor'),
('steam:110000106e719a4', 'license:4aa3c20eb2947bd14217a8598ec3aa748e92a2f7', 'no info', 'no info', 'discord:352969666726985732', 'ip:93.3.249.39', 'Shuwpa_TV'),
('steam:110000106f27442', 'license:8638c27c86a29e2422724c93419c21d64cd0d154', 'live:1899946476026976', 'xbl:2533274905781424', 'discord:255489746908741632', 'ip:109.128.196.72', 'loupskin'),
('steam:110000107225a4c', 'license:81560a57ba34b9c57bf1db2622dafa7dfb1c91fb', 'no info', 'no info', 'discord:203470277647007745', 'ip:81.247.145.24', 'M.'),
('steam:110000107c87123', 'license:52a91327795bf3d0b02ce60daea5d5db1d1b4aba', 'no info', 'no info', 'discord:237306109000417280', 'ip:85.26.30.56', '☆☆ncwarrior☆☆ ⊿◤'),
('steam:110000107e7b3d4', 'license:c53013cc7d27c05c4b768160bf56c48043ea2763', 'live:1055521998190390', 'xbl:2535459450052805', 'no info', 'ip:87.231.179.12', 'Cecilio Jimenez'),
('steam:1100001082cbc71', 'license:3490168ce21b2a4b9a7c18c5edb62b8b2ebe7695', 'live:985153950276691', 'no info', 'discord:556154033245782027', 'ip:90.125.59.108', 'Weinar'),
('steam:110000108d5e264', 'license:64386e9a77cfde907e91d33bb0fecec7f3dace12', 'live:1759221892953619', 'xbl:2533274816087384', 'no info', 'ip:90.51.12.73', 'BoubouV12'),
('steam:110000108d62b63', 'license:4d94f32d1a52749a2ed1ba793331c77bc3723848', 'no info', 'no info', 'discord:356155370974216193', 'ip:78.239.84.23', 'Victor Arya'),
('steam:110000109466a04', 'license:8c4a1bb148718953cae0d1b2514b42746ba37eb0', 'live:1688853706656756', 'xbl:2533275022871678', 'no info', 'ip:91.167.193.176', 'MyBigBurger®™'),
('steam:11000010971f778', 'license:e913045321c38c6fa46f6fedf01b93a920bf9b55', 'live:1688852249433521', 'xbl:2533274809358805', 'discord:324878470461128705', 'ip:90.44.38.242', 'Maddison Pantellini'),
('steam:11000010977ab19', 'license:048ed55f557b6905f75fd0ba0fc661c4b00db215', 'live:844428314061809', 'xbl:2535415739509731', 'discord:690352877029425162', 'ip:81.244.34.196', 'Ruslan Tomakov'),
('steam:110000109782451', 'license:488fdf105a61aef3e7b2b859b09d77f1db5c9e9b', 'live:985156387902266', 'xbl:2535440516282849', 'no info', 'ip:92.188.76.191', 'Dash'),
('steam:110000109b549c0', 'license:a68d385e65f6247381adedbecf7951e30810248e', 'live:1899945949202003', 'xbl:2533274855593492', 'no info', 'ip:90.125.19.114', 'Jojo Rodrigues'),
('steam:110000109c04fab', 'license:f91aa9a0d12e3439c5fe3a0acf31a81789d35255', 'live:914801207749081', 'xbl:2535406077514183', 'no info', 'ip:2.7.196.118', 'Larry James'),
('steam:110000109cd1113', 'license:9c2770788118dc854f4d3b6610933cf4c8588343', 'live:985157063370660', 'no info', 'discord:564511837379625011', 'ip:109.24.151.177', 'Younes Madara'),
('steam:110000109e88049', 'license:146bf90ce2af255ca0f75466d15b0e6601e71e9e', 'live:1055521692056891', 'xbl:2535418547023755', 'discord:407986065115316224', 'ip:91.168.186.96', 'Christophe'),
('steam:11000010a2708e6', 'license:da98217820558ddb61280725608a434f17f1606c', 'no info', 'no info', 'discord:277934193512677376', 'ip:81.254.61.150', 'Kannderz'),
('steam:11000010a2c482e', 'license:2e08ee8ffa3f823d62471435a653373640a95cbd', 'live:1829581976601343', 'xbl:2535456015828552', 'discord:389096931215015937', 'ip:92.92.250.245', 'Jeff Smith'),
('steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 'no info', 'no info', 'discord:268092633216188416', 'ip:127.0.0.1', 'SaYoNaraa'),
('steam:11000010a4893fe', 'license:b778bb4bd596c67f35f96c60cb8867eb5be1588c', 'no info', 'no info', 'discord:285490148039196672', 'ip:176.181.95.70', 'Abelino Flores'),
('steam:11000010a54a9f8', 'license:78642670c993fbf12fe6f5b8ce20faa49ab1aed0', 'live:1055521760610069', 'xbl:2535455973598124', 'discord:275117340922740737', 'ip:91.162.65.39', 'Selena best girl on the world'),
('steam:11000010a66db69', 'license:9ff3e438fd6a970483cc16c15dc1e58049e9326c', 'live:1759221024199788', 'xbl:2533274964693933', 'discord:264096820517404673', 'ip:86.233.132.161', 'Killian Croz'),
('steam:11000010a82f7e2', 'license:ee53cccd1933d396cb98dfcd96f34355714eb92e', 'live:1899945727823124', 'no info', 'discord:460648140437979136', 'ip:82.226.100.74', 'John'),
('steam:11000010ad798d9', 'license:0223427ed96fb99c43126b664bada89ef4676958', 'live:1899946431126498', 'xbl:2535448342525616', 'discord:268070743982604299', 'ip:176.153.241.22', 'Faress63'),
('steam:11000010af61c55', 'license:d5c90ec37426523bfc936756d5d7bee47151c9f2', 'no info', 'no info', 'no info', 'ip:176.156.77.101', 'Lucas lamon'),
('steam:11000010afa4797', 'license:4490da3ad540df1ce01163a01d982916fe209b87', 'live:1055521868865342', 'xbl:2535467240226080', 'discord:323651676844195843', 'ip:78.121.121.186', 'Enzo ????????'),
('steam:11000010b0073de', 'license:ee008c92caed8e43db8c0bd0f68b31a46e9c2953', 'no info', 'no info', 'no info', 'ip:70.54.170.166', 'josh noua'),
('steam:11000010b0244fa', 'license:70dfb764402e5209b3738f9a4cccac34c2c8409a', 'no info', 'no info', 'no info', 'ip:90.23.182.210', 'Didix'),
('steam:11000010b0c6c82', 'license:5a47aeff15d907236d765d423de0d179db093a32', 'no info', 'no info', 'discord:682748418904293384', 'ip:86.192.80.218', 'Lone_Ranger_LB'),
('steam:11000010b22426c', 'license:96ebfd407abe291861dd59737f8cd6ce39fcad7d', 'live:1829581636423397', 'xbl:2535447453730098', 'no info', 'ip:92.139.224.109', 'Mathias Zinto'),
('steam:11000010b25c942', 'license:bcc0fb70640047941995722f40f78b24ce0201ef', 'live:1759222189366683', 'xbl:2535455400815005', 'discord:239637581094977537', 'ip:85.3.249.150', 'Gustavo Rivera'),
('steam:11000010b58e7b4', 'license:5c83f6c294806021a92c730e0481553873f6ca4c', 'no info', 'no info', 'discord:271350146506293258', 'ip:92.188.76.191', 'MrSweaz360'),
('steam:11000010b7ce377', 'license:f05f1cfa400a63ce80bb70f3ec640043d4824b72', 'live:1899946967824346', 'xbl:2535408783203991', 'discord:286493941698789379', 'ip:92.169.243.123', 'Nasym teboub'),
('steam:11000010b8e723e', 'license:1fb6b31dd02f8eb21ece3391389ca0972e0f3b96', 'no info', 'no info', 'discord:301823611461959681', 'ip:94.107.41.24', 'Negan'),
('steam:11000010ba1295d', 'license:124075af016737135fbfec9c052f21a4d2e52f17', 'live:1055521190224254', 'no info', 'no info', 'ip:81.241.155.21', 'Abdel_Crime'),
('steam:11000010bb02af6', 'license:d76569bfc6ca26ec0660dffffa2f5608aa0ae3ec', 'live:1055518612258384', 'xbl:2535430416130710', 'discord:442014387327336458', 'ip:51.91.22.235', 'Fred Martino'),
('steam:11000010bb1f783', 'license:d65a26377a806e8a3c2e851fb656f2defddc462c', 'live:985154145851156', 'xbl:2535413089999935', 'discord:549188720901881861', 'ip:81.249.244.248', 'Nito Diez'),
('steam:11000010bb91129', 'license:caab8635f128df425c18f8db8507ebdb8de2ed01', 'live:1055518399038153', 'xbl:2535417366897040', 'discord:229665775760310272', 'ip:86.238.228.20', 'Tarik Lapeuf'),
('steam:11000010bdc766d', 'license:3668eb7bcf6370c3931543fbaf1c6de1fed718a0', 'live:985157297212420', 'xbl:2535412843698321', 'discord:689855657465479181', 'ip:88.124.102.233', 'Irvin Lerouquin'),
('steam:11000010be1b97a', 'license:11efbf85df2ebe6bb1b0e70a7edb20bc42fa2c4e', 'live:844429058064684', 'no info', 'discord:454583849117286410', 'ip:78.119.39.226', 'Maxime Garde'),
('steam:11000010c1e5bb6', 'license:40d61194295be35b21e58e000ee9f87028d3f065', 'live:1055518681342593', 'no info', 'no info', 'ip:77.135.110.20', 'Gambi Santos'),
('steam:11000010c3e5a7f', 'license:9c3a4159d235c2b7e8cd4af3ad5394e3f00922c7', 'live:1899946063977166', 'xbl:2533274849287280', 'discord:401304638856364034', 'ip:90.66.204.9', 'Ironhides'),
('steam:11000010c4f54db', 'license:bf984a9f8f54ff8684a2d9bf6912010e13b45a5a', 'no info', 'no info', 'discord:292777254231080965', 'ip:90.78.11.142', 'BouleTonBoule'),
('steam:11000010c6031d4', 'license:e4c5f618ae26b7559fa8fc47027b210015401358', 'live:985154221866876', 'xbl:2535414802350177', 'discord:238687163569537036', 'ip:90.40.194.2', 'Alex Price'),
('steam:11000010cb0eede', 'license:840cb1ddc7a572cc221fae78531064b8d3fdbea2', 'live:914798382329271', 'no info', 'discord:478577971414827008', 'ip:149.154.221.226', 'dheliox'),
('steam:11000010cce6699', 'license:7943a6184d3d4fb1740a271f6b30bc079909740e', 'live:1055521636057293', 'xbl:2535410269747903', 'discord:539848489211920400', 'ip:92.142.69.254', 'Mike Baning'),
('steam:11000010ce19e55', 'license:848b92e5b14b8f07780b626ddbb123a51d54c604', 'live:914801904530206', 'xbl:2535414163903773', 'no info', 'ip:78.241.46.125', 'S\'waD'),
('steam:11000010d2c353b', 'license:cdeddf951aed81e8fc162533612fad28691a3c17', 'live:844429166526592', 'xbl:2535408686042116', 'discord:235088041239248899', 'ip:86.192.182.245', 'Samael Rabat'),
('steam:11000010d2ed26e', 'license:cdc0f5a1ff58058bb22ac7d57b173c8e8e982664', 'no info', 'no info', 'discord:234029684134772737', 'ip:78.230.128.200', 'Joachim Malek'),
('steam:11000010d526019', 'license:bb6adbf3f983d61206962e7fb86aed925e652c25', 'live:844427996594079', 'xbl:2533274981618728', 'discord:511275676754640936', 'ip:91.173.39.199', 'Bryan Walker'),
('steam:11000010d56fbd3', 'license:6aece3b8f558102b48d656ebe6205c2817b6cd78', 'live:844425077049371', 'xbl:2535453040567730', 'no info', 'ip:92.148.192.53', 'Nitizono'),
('steam:11000010d5c4b4d', 'license:3466a4dc0d7830de256147dc800ec119f14e424b', 'live:844425038253233', 'xbl:2535421046264489', 'discord:517330253895565323', 'ip:83.159.89.52', 'Neji Denry'),
('steam:11000010d62e78a', 'license:ef0ebf9117d77a22ea626ed4916d5070d35d65e5', 'no info', 'no info', 'discord:204932306199117825', 'ip:91.172.28.32', 'Lari'),
('steam:11000010da3688a', 'license:e9afcfaffb2afd7063916ab840fb8e44a1822835', 'live:1688852372781926', 'xbl:2533274848294673', 'no info', 'ip:137.175.246.37', 'Josué Noua'),
('steam:11000010dc8ae6a', 'license:fa41954b5a90de279f01a97d34175dea2556f877', 'live:844425547047978', 'xbl:2535420626218922', 'discord:314479602158403589', 'ip:109.136.57.176', 'JimFromRH'),
('steam:11000010dd5c962', 'license:5be14496f9afbfa07497461486cd6032bd21d767', 'live:844427880598193', 'xbl:2535457646816285', 'discord:278910278455001091', 'ip:85.201.76.222', 'Danillo Del Tirlo'),
('steam:11000010dd76b1a', 'license:beda0666252b69273df7ccaeeafc4ec473349579', 'no info', 'no info', 'no info', 'ip:77.202.32.231', 'Matt'),
('steam:11000010debb52e', 'license:48ea36c3aac8fd9c109a9afc10de2e0b5c2aa1de', 'no info', 'no info', 'discord:263744271037890570', 'ip:81.241.111.161', 'Zhen Wu Liang'),
('steam:11000010e0edf85', 'license:cad0ce9ba4f268b2f45a5d01aa276a80d2bcb658', 'live:1759221271127569', 'xbl:2533274877811085', 'discord:378280558880489473', 'ip:89.156.49.185', 'Moums Carter'),
('steam:11000010e124481', 'license:84bfc696524a676b1162fc51d394436fab32ee58', 'live:914798440712415', 'xbl:2535446069423716', 'no info', 'ip:90.70.249.55', 'Jean Plouk'),
('steam:11000010e13f83b', 'license:e63a57152a416e335d2ecb428def3c472627f1cb', 'live:914798541934839', 'xbl:2535422414355891', 'no info', 'ip:90.70.249.55', 'Dimitri Smitch'),
('steam:11000010e5165d7', 'license:35420b7fc06f231f9c216346beb1543865b4cd6a', 'no info', 'no info', 'no info', 'ip:78.220.30.145', 'Enzo Mesrine'),
('steam:11000010e8a9c9d', 'license:e91eff2995cee9c44418b2f44a05b00c617ccf2a', 'no info', 'no info', 'no info', 'ip:85.190.71.164', 'Vinny Balles'),
('steam:11000010eae17af', 'license:70f77a8b90992ccf624343f2a4983c5609c70a16', 'live:914798075834104', 'xbl:2535453594325720', 'no info', 'ip:90.59.160.39', 'Ricardo Delmez'),
('steam:11000010f2ae5c9', 'license:af6781d54d1a46d67183c4413d427c08679314a3', 'no info', 'no info', 'discord:265540773838192640', 'ip:85.190.73.230', 'John Rabat'),
('steam:11000010f61fad5', 'license:ec5892fc9a1d119630414059e06ef2530dab1f99', 'live:1759221653267090', 'xbl:2533274877460074', 'discord:340655928489541632', 'ip:91.162.226.113', 'LokiBaay'),
('steam:11000010fe05584', 'license:41ac868276945d350b10ad731b101d64d5ae1a49', 'live:914798479360308', 'xbl:2535410973752636', 'discord:421836838194642944', 'ip:176.190.117.251', 'Yusuf Bouschnek'),
('steam:1100001100bcb58', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:1899946936028431', 'xbl:2533275009414764', 'discord:303952703057428482', 'ip:109.89.183.42', 'San Pellegrino'),
('steam:1100001101ad020', 'license:3451fbf0849c4d9918ed349a8b1965857f30d684', 'no info', 'no info', 'discord:612445343350521857', 'ip:85.190.79.120', 'Krayrus [FR]'),
('steam:1100001109729fe', 'license:09ed5429f1555a228f07286c54cc364e7b6b1dc0', 'live:1055520710959901', 'xbl:2533274868260880', 'no info', 'ip:176.129.202.149', 'Tony RODRIGUES'),
('steam:110000110a29248', 'license:682b97c5caf8a642982d9ab683258a411444bc40', 'live:844424992778150', 'xbl:2535457528168731', 'no info', 'ip:90.116.106.62', 'Tany Zampa'),
('steam:110000110c2c378', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:844429151688644', 'xbl:2535470788833990', 'discord:295643462189973505', 'ip:91.182.10.206', 'Jack ouille'),
('steam:110000110c3bfec', 'license:f5175a84875b706eb2ed093d89d95c5128203916', 'live:1899947070715740', 'xbl:2535468965903293', 'discord:409740652109365248', 'ip:176.139.237.45', 'Zitrix'),
('steam:110000110dfcf4e', 'license:7f05a04c99ccdfce9e44d6419e45453aece96ba0', 'live:1055518305824950', 'xbl:2535463487239298', 'discord:224531370825744396', 'ip:86.195.89.38', 'Rachid Melene'),
('steam:110000111728fc0', 'license:5491d9586fa45045b4762b0b54a007cc9e2495dd', 'live:1055522515217478', 'no info', 'discord:303907849954787328', 'ip:86.247.115.82', 'Traquia'),
('steam:1100001117b1740', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:844429151688644', 'xbl:2535470788833990', 'discord:295643462189973505', 'ip:91.182.10.206', 'Ciccio'),
('steam:11000011190700c', 'license:738133497233baa2dd86dc77f0af4fe888bb4cbb', 'no info', 'no info', 'no info', 'ip:89.2.222.209', 'Igor Balor'),
('steam:11000011190eca5', 'license:b4a7ade1643b9c2f516dc97898b59ab1d029536e', 'live:844427680138559', 'xbl:2533274934979004', 'discord:197866520406130688', 'ip:109.132.110.91', 'Lucenzo Di maria'),
('steam:110000111e41994', 'license:846841ea8d9a054e2b85023e194664228c1ddc80', 'no info', 'no info', 'discord:411559473115824128', 'ip:81.51.255.214', 'Fana'),
('steam:1100001120c8e0c', 'license:ae5b57a8d8f1cf8fb35abdc0edf337745a6ef750', 'live:1055518839509394', 'no info', 'discord:225633013315141633', 'ip:92.169.104.240', 'Lucas Pignon'),
('steam:11000011228fe07', 'license:44626b501b4a48f55de0c8fb5558ba8664d0bb59', 'live:844425375023049', 'no info', 'discord:394940519882686475', 'ip:81.67.213.215', 'Alvaro Santos hellcase.com'),
('steam:1100001122f982b', 'license:684f5a9e478d0cfe15fc6cff49cc1d0c54ce38db', 'live:1899947155713300', 'no info', 'discord:246734520273862658', 'ip:91.86.162.216', 'Ismael Candel'),
('steam:11000011265ce0e', 'license:efd055ad80cc966022178636f135241a184fcf0f', 'live:985157707200344', 'xbl:2535425797768649', 'no info', 'ip:81.250.119.93', 'Moulaga!!!'),
('steam:11000011270f029', 'license:2ed4cb78c656d0a86dcd32fcfe34e444a8e6b328', 'live:914801449561199', 'xbl:2535455521666466', 'discord:228539856198828043', 'ip:92.107.212.236', 'Kidz Carter'),
('steam:110000112778ce7', 'license:10002e0360b0e4eb3fb8e8b86b3d269dc41a9577', 'live:914801222739486', 'xbl:2535428311450927', 'discord:381486744912134154', 'ip:78.227.41.247', 'filougarat'),
('steam:1100001128965f9', 'license:0d9fc97b1be5bc47293575b05d993dc16aa7b63f', 'live:985154447544884', 'xbl:2535447542775208', 'no info', 'ip:90.119.210.26', 'La Quica'),
('steam:11000011291aa16', 'license:4e5db7f2c32a4e2365f847366ea6241309448627', 'live:914801612491903', 'xbl:2535436662882088', 'no info', 'ip:176.156.108.38', 'Niko Jadina'),
('steam:110000112a0b714', 'license:68d80c7822173da93ccf0108bfa77adcd529db81', 'live:914802127072234', 'xbl:2535471313931123', 'no info', 'ip:31.34.21.130', 'Rémi Pantellini'),
('steam:110000112a98086', 'license:4cf041d597148951fcf7f8d4dc4d6940cba0e73f', 'no info', 'no info', 'no info', 'ip:86.195.164.51', 'iSuupremz'),
('steam:110000112adeb55', 'license:27188e9d5de24d095bac5d9b2e47a96e1dba7895', 'no info', 'no info', 'no info', 'ip:93.21.43.127', 'Reyo Depaella'),
('steam:110000112b372a1', 'license:276dc756b263b648633d7be2a715bed7cac18008', 'live:844425096218723', 'xbl:2535435124459434', 'discord:325333013040857089', 'ip:65.94.68.39', 'rall911 Jhon Rockford'),
('steam:110000112c253c8', 'license:359d32e8b6d27bc772139d3121c840329189a262', 'no info', 'no info', 'discord:409766877091332096', 'ip:78.218.133.120', 'Alexis Ducardonet'),
('steam:110000112cda263', 'license:7a78dc60bd53ae79e4565615d04b9c7489e92cc1', 'live:1055521833226674', 'xbl:2535456034728454', 'no info', 'ip:77.132.255.84', 'Jean Lapierre'),
('steam:110000112f37c9e', 'license:5201ab817d9caa237f35d637096107247889b281', 'no info', 'no info', 'discord:349640230191759360', 'ip:86.250.6.12', 'Ambe Kimya'),
('steam:1100001130bf2a7', 'license:a7cc26dcd2e3edc298d1e82e1d6157d33d5d1908', 'live:1899946061312340', 'no info', 'discord:600316602507984897', 'ip:90.29.95.243', 'Juan  Perez'),
('steam:11000011312af2a', 'license:58898e13ec7e24780402ef01ab1df544d7197860', 'live:985157206780499', 'no info', 'no info', 'ip:90.103.119.253', 'Rachid Teurki'),
('steam:11000011314d50d', 'license:6546c1eb196d86e088c739045a3ca8e632d82601', 'no info', 'no info', 'discord:493685363408109589', 'ip:85.26.52.186', 'Lorenzo Ricci'),
('steam:110000113151d05', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:844429151688644', 'xbl:2535470788833990', 'no info', 'ip:91.182.10.206', 'Ciro Amore'),
('steam:110000113214ea6', 'license:934c3522c3b91a069f19b8b2616b79d02d1a0ebb', 'no info', 'no info', 'discord:668793790470946827', 'ip:90.46.130.248', 'Tidziano'),
('steam:11000011346f312', 'license:96ea7308bf7cd0be2bea390acfa56b0825e1b1f3', 'live:1759222552591022', 'xbl:2535436919807467', 'discord:474356150427582476', 'ip:91.165.192.150', 'Twitch_Maxange'),
('steam:1100001136b60a7', 'license:54932947455b7f9162a636135ff223a65efcb63b', 'live:914801450430379', 'no info', 'no info', 'ip:90.46.189.87', 'Musterx'),
('steam:11000011371502a', 'license:dcee0243ac471c7cbacfbc27c682701709c85805', 'live:844429184321296', 'xbl:2535413633709911', 'discord:315910864198696971', 'ip:92.153.193.140', 'Ayoub boukema'),
('steam:110000113873b76', 'license:bbc34cb4dbbbeb44b7ea54054a31113662441357', 'live:1759222414763280', 'xbl:2535413768675039', 'no info', 'ip:86.248.240.23', 'Pablo Don Quijotte'),
('steam:110000113b6fcbe', 'license:a3eaac8fbe6a1ae1de3d5ad345ddfce94b7f978f', 'live:985154179161294', 'xbl:2535457068288844', 'discord:510803646980685824', 'ip:90.30.178.5', 'ZrEExX // Frank Madon'),
('steam:110000113beed95', 'license:86a7550a7a5390897b2685ddcebdeda43b031cd5', 'live:1055521998510712', 'xbl:2535423237221088', 'no info', 'ip:90.103.198.29', 'Benoit Mlk'),
('steam:110000113c6d222', 'license:ca443ab1f3a02b646010c350b22a07a9d715225f', 'live:844425526735926', 'no info', 'discord:483656342247309334', 'ip:91.168.237.230', 'VladimirFlorecki'),
('steam:110000113e6d5ba', 'license:993eadc6becde03f7fc5da952a989fb0dedfc957', 'live:844425468884393', 'no info', 'discord:333216109719191552', 'ip:109.0.206.31', 'Kiga_'),
('steam:110000113f91420', 'license:c26715b073da23c2879f589624792715c3d9e32a', 'live:985157310533175', 'xbl:2535418934282445', 'discord:331163074545451016', 'ip:90.108.156.112', 'Tex'),
('steam:110000113fc1c29', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:844429151688644', 'xbl:2535470788833990', 'no info', 'ip:109.89.53.71', 'Carlyto kozuki'),
('steam:11000011424b9f6', 'license:324c3914ba85d1ea1802fbffb10c5a06378c3e69', 'no info', 'no info', 'discord:397210345761931264', 'ip:176.150.209.176', 'Bryan Krüger'),
('steam:11000011445b3c8', 'license:6b38db17e272e39c047efc2cc1724c71afa65264', 'live:914801211770742', 'xbl:2535437823124387', 'discord:381862334303567876', 'ip:5.51.31.127', 'Alejandro Marlos'),
('steam:1100001146925ff', 'license:a03665ab682a49fefe939fe1845cdcdfa32cf66c', 'live:1055521853709244', 'no info', 'no info', 'ip:78.123.74.251', 'Jean Nicolas'),
('steam:110000114ad6f05', 'license:55e5ad12efa985f730a702f6724888515794a358', 'no info', 'no info', 'no info', 'ip:105.105.99.42', 'farouk_king'),
('steam:110000114e6e964', 'license:4ec7af26cf7286b90dff0a866801810192a7f8b5', 'live:844429193009447', 'xbl:2535432966450148', 'discord:295495588810850304', 'ip:86.201.202.75', 'Ayson Owen'),
('steam:11000011502358d', 'license:549338af47d8f16bc3a056d3e8b2d4f989a37928', 'live:1759221403720857', 'xbl:2535424448450097', 'discord:210927220183662592', 'ip:76.66.205.28', 'Mehdi Binietsroune'),
('steam:1100001153596cf', 'license:f9544bdd767a8c89bab48549060aef3d6aee82a2', 'live:1688853531836291', 'xbl:2535414541633831', 'no info', 'ip:193.250.243.34', 'Dixon Scott'),
('steam:1100001153a0b44', 'license:e9b622511ae50ef6a4ed2f8370fd634e3e7215f5', 'live:985154198709507', 'xbl:2535451971815756', 'no info', 'ip:85.190.77.9', 'Jordan Taiko'),
('steam:1100001153efdca', 'license:faabce114a1e9ab6f53deb5ecde5b632d3632c38', 'no info', 'no info', 'discord:473548600660459520', 'ip:176.133.123.23', 'Yacine Abdelaina'),
('steam:110000115657048', 'license:e0fb4b1be997a1b7c77a138d37b3daaacf86f08a', 'live:1899946954320228', 'xbl:2533274973830931', 'discord:451091245960265729', 'ip:82.124.55.165', 'Molotov'),
('steam:11000011567bbaf', 'license:7ae153817087d35420fe03bcfe528a4f67126aa0', 'live:1055518720994361', 'no info', 'discord:527521867313971221', 'ip:92.170.144.77', 'M | Bachir Boumedi'),
('steam:11000011575241f', 'license:533b812d36b224de7ddf924477262c775b910df6', 'live:1688853868260933', 'xbl:2535472653696240', 'discord:152033106516377600', 'ip:81.11.161.135', 'Lotmi6TG'),
('steam:11000011589ed64', 'license:7e33244472ae1c247db7ac7e01f0d787fc2c1c56', 'live:1055522558505480', 'no info', 'no info', 'ip:89.159.224.39', 'ANASS_MAROC'),
('steam:110000116042a45', 'license:9faed6b41d6a500f27afc507e4754071d00c5c3f', 'live:1055518569786102', 'xbl:2535422196060479', 'no info', 'ip:83.202.142.85', 'Leo Toxic'),
('steam:1100001161a9040', 'license:4da900cf38b17d4ef96b36dcbd0dd4e637d327bd', 'no info', 'no info', 'discord:645038077991059466', 'ip:78.200.81.63', 'KILLER QUEEN'),
('steam:11000011638e655', 'license:ecff1cbfa645a28461b40a1daac905ed2e0d1c5b', 'live:844429171777256', 'xbl:2535410661729271', 'discord:372925126808961025', 'ip:78.113.113.67', 'Thiago Delsol'),
('steam:1100001166cce0b', 'license:d27918e9acf05ed21bb44b7e72050aec1d328aa7', 'live:914802226813571', 'no info', 'discord:602881794282618890', 'ip:85.5.223.48', 'Vladimir Abarnikov'),
('steam:1100001168fd7d8', 'license:8d96c00d42bed4ae6f152b3d4b07645abc6b5bdf', 'no info', 'no info', 'discord:420305957076074496', 'ip:90.93.245.146', '✪Is_Maxxs✪'),
('steam:1100001169c49bf', 'license:7d5cf09dc9aa93cc2be38dbf33442c0219529167', 'live:844424942383231', 'xbl:2535412945096173', 'discord:311457517412679680', 'ip:87.67.33.40', 'MXME1'),
('steam:110000116b1d4b5', 'license:a580a58df7f4f3dfbc61ce417557216b9fa02c20', 'live:1055518551688510', 'xbl:2535419558042303', 'discord:401448417865498633', 'ip:46.126.220.36', 'Walid Massah'),
('steam:110000116d2b3f8', 'license:dd5fbb45cc92215e3e53be6137623e0d404a80cd', 'no info', 'no info', 'no info', 'ip:212.83.143.46', 'Ernesto'),
('steam:110000116eecdd9', 'license:1e4c74f4edb9ec8bf74b3aab54343a79d71a3979', 'live:914802122549025', 'xbl:2535419333647528', 'discord:422158013197975582', 'ip:83.159.217.46', 'Dixon Roscoe'),
('steam:110000117212f6a', 'license:70d709231e01e113cf9ec0a294fdd3f283d68d47', 'live:985153939177920', 'xbl:2535472705225135', 'discord:355382853137072130', 'ip:176.145.31.114', 'Ludo Cortez'),
('steam:110000117598a75', 'license:d5486c79c285fb91cf21fa9fa443e7a1e577a67c', 'no info', 'no info', 'discord:351817838576533524', 'ip:78.212.167.114', 'Alex Brazier'),
('steam:11000011766bcf0', 'license:24eac9f31192cb9d768e267f3f8965590a43c338', 'live:844425448624894', 'xbl:2535434292165996', 'discord:321717194117611530', 'ip:90.55.85.97', 'Mamadou Sane'),
('steam:11000011779ed88', 'license:35d6e15fe846d5964f1e6aa492db879591b0032a', 'live:844425417073922', 'no info', 'no info', 'ip:89.159.171.1', 'Luicchi Guzman'),
('steam:110000117807fcd', 'license:a01370c772b84e7e740145f1e0b932fc8c79e3c5', 'no info', 'no info', 'no info', 'ip:88.121.58.171', 'Baptiste'),
('steam:11000011789e571', 'license:e90f67db4b3c37d0749def0d729f683495b9fb0b', 'live:844425413812681', 'xbl:2535413949110149', 'discord:406924001139752982', 'ip:93.29.213.54', 'Antoine Kiel'),
('steam:110000117926154', 'license:4fbe49b4a324ffcb803010d09b126b6d70ed4649', 'no info', 'no info', 'discord:274942031858761741', 'ip:78.243.228.142', 'Merlin l\'enchenteur'),
('steam:110000117bd7231', 'license:b07c8cf7d98bc8541a2e83f7d299062af991cf1d', 'no info', 'no info', 'no info', 'ip:77.153.181.29', 'Paulo Dybala'),
('steam:110000117ce91af', 'license:7a747ce2aca039bc4fcba0162365fa076137048c', 'live:844429211217462', 'xbl:2535473083510724', 'discord:259296555427823616', 'ip:176.132.208.193', 'André Madon'),
('steam:110000117e17f60', 'license:7e1317ee2614be5c6482c4dbe395a1767aa00174', 'live:914802200583240', 'no info', 'no info', 'ip:109.21.186.190', 'Bozo Dezinguer'),
('steam:110000117e8dcd1', 'license:97bf885989a2ec26bfe6db8d74d7683f1fc7e133', 'live:914798178033280', 'no info', 'discord:434743775168823297', 'ip:90.79.47.34', 'dybalaxx23'),
('steam:110000117f281ac', 'license:57caf2f9672be7d0d7f68124a7fdc994fb12ffbc', 'live:1055518759783318', 'xbl:2535471948304230', 'no info', 'ip:109.221.208.228', 'Gifford Yayne'),
('steam:110000117f7f1eb', 'license:099f91fa694666edf9cc67afde76872ffd7e97f8', 'no info', 'no info', 'no info', 'ip:93.24.237.87', 'Joe Djo'),
('steam:110000118180811', 'license:a28eb70e1587b5060d1041adfdaebad002ed30b7', 'no info', 'no info', 'discord:398579639884447755', 'ip:78.223.214.32', 'Greg Solezze'),
('steam:1100001181aa2e3', 'license:9b499f3b3c5c2f636092d9f8dcc347a65acd34d1', 'live:1055518567024043', 'xbl:2535416138294130', 'discord:272056216505548804', 'ip:91.174.175.174', 'Peter Wilson'),
('steam:1100001183035e6', 'license:3ee8440fa644a50701a5baf366e00f0f0837ed5f', 'live:1055518805980064', 'no info', 'no info', 'ip:162.156.197.30', 'Samuel Cloutier'),
('steam:11000011838eaad', 'license:21e41da181ee924e7a8a6a8a5413d16c94f84a6f', 'live:844425352016194', 'no info', 'discord:303869477957795840', 'ip:91.162.89.135', 'Diego Flores'),
('steam:1100001186aa8d6', 'license:60cfe5d383d205f1c613946408cfec7b618bbdb6', 'no info', 'no info', 'no info', 'ip:91.162.205.143', 'NeXzO'),
('steam:1100001188b2196', 'license:69a20e8c4bb6f148a4c41376f72e110b1a475914', 'live:914798357158400', 'no info', 'discord:238536671010750465', 'ip:92.94.2.17', 'Oscaar Humberto'),
('steam:110000118abaf1c', 'license:ca3c0e69d806a9eea26b73b55e8495c481a08abc', 'live:914801665836064', 'xbl:2535435724814341', 'discord:368413915207565314', 'ip:90.49.16.45', 'Darki'),
('steam:110000118c0842f', 'license:545b26ba433b0b71fe511c571d5753b3150e4b88', 'no info', 'no info', 'discord:302167793393074196', 'ip:176.174.111.232', 'Adam Fernandez'),
('steam:110000118d60125', 'license:ea101238c9fda15951b645bb6ed56e9523a7c665', 'live:914798091998058', 'no info', 'discord:503943907353296905', 'ip:81.51.254.81', 'cassxfr'),
('steam:110000118e67613', 'license:31c3a1559371420b909473dcbc47c4a43712adb0', 'live:1055518592221372', 'xbl:2535409760794601', 'discord:529991237533564938', 'ip:212.194.104.142', 'ivfinisteriv'),
('steam:110000118eaf244', 'license:a755d3343a6bb834ff9397e2f4eb0417b4761c94', 'live:914801511750500', 'no info', 'discord:340150767367356416', 'ip:176.139.22.234', 'Devon Darson'),
('steam:110000118f03ec4', 'license:b37eb9c1007658045bd706075c2a5d364815ec6c', 'live:844424975473291', 'xbl:2535439271845861', 'discord:422154320637591564', 'ip:86.213.203.38', 'Karim Yazabi'),
('steam:110000118fd8cf4', 'license:b57009ba40b7ec57d439d5d3fae3332aba72f40f', 'live:985158089786197', 'xbl:2535463044228333', 'no info', 'ip:92.148.176.218', 'Paul Coreleone'),
('steam:110000119194df6', 'license:79a27bd0a174cdb707ca89465e0f82daeccfb351', 'live:985154503725618', 'no info', 'no info', 'ip:92.138.61.129', '123'),
('steam:11000011952aa6c', 'license:f9985e896fc82cb61da2f12985094dae8ab85aa8', 'no info', 'no info', 'discord:334639571172327425', 'ip:90.114.198.94', 'Sebastian'),
('steam:1100001197f2bb8', 'license:41bfbf353ae96b273d35ad2348c0f7709ef98c12', 'no info', 'no info', 'no info', 'ip:91.164.133.219', 'iglasse'),
('steam:110000119a21896', 'license:a46d0def754e3f806a50deaf4c35e5774d8d5234', 'live:1055518853262734', 'xbl:2535414464775999', 'discord:329199678099030017', 'ip:82.239.84.170', 'Jhon Didas'),
('steam:110000119ba4840', 'license:fa2aa32e6d112905b9b9a79288b94fad26123180', 'live:914798029916373', 'xbl:2535462456169434', 'discord:316346432670138372', 'ip:176.156.50.164', 'Thomas nolan'),
('steam:110000119c0d4b9', 'license:a55f63735ca7c8753330550ee1c6512d86f82fd8', 'live:914798282785495', 'no info', 'no info', 'ip:109.11.42.84', 'Ricardo Da Costa'),
('steam:110000119cdc986', 'license:feb020d28aa6670eea22f28c30daeefcdb108da8', 'live:985153989192855', 'xbl:2535462700250470', 'discord:314473005076185089', 'ip:88.120.170.132', 'Alexandre Brown'),
('steam:11000011a1e1502', 'license:4e7835a77036a8c1b9f29e859c337f5c9c2afc27', 'live:1055518397456419', 'no info', 'discord:360859686724960256', 'ip:89.92.86.182', 'Salomax'),
('steam:11000011a33e856', 'license:e98d464a260abd09eedf7396aad2cf988fa332d6', 'no info', 'no info', 'no info', 'ip:88.125.66.23', 'Saint_Patoche'),
('steam:11000011a45a82c', 'license:f43904adb7b5ef47e4c05deba61614ea8be57804', 'live:844428210872568', 'xbl:2533275034616503', 'no info', 'ip:91.163.185.134', 'Zoxito'),
('steam:11000011a9431b9', 'license:c241caa468c438afa74294cff93f0054352b9934', 'no info', 'no info', 'discord:446360521164324864', 'ip:109.128.213.115', 'Gejimaru97'),
('steam:11000011a944736', 'license:ac7dd42bfdacdad3f545bc41a061c6215743c631', 'live:1055522057605510', 'xbl:2535473771817931', 'no info', 'ip:90.76.28.240', 'Taylor Smite'),
('steam:11000011aac7a92', 'license:99e99213540dddc5ad96c288e5d7119b37ad7b79', 'live:844425116232511', 'xbl:2535430005070311', 'discord:334072229778292740', 'ip:84.100.230.53', 'Ryann'),
('steam:11000011ac4c381', 'license:ba8aec0721a75a862c59ef98df8b21f76cf30fc2', 'no info', 'no info', 'discord:359780973279445002', 'ip:82.251.189.198', 'Frank Brown'),
('steam:11000011ad8ae36', 'license:e664f7c26b32245fcf4deb83a3a6603a60782cae', 'live:1055521659891471', 'xbl:2535450888729076', 'discord:427557950291312653', 'ip:51.91.22.57', 'Djessim Daoudi'),
('steam:11000011ae7a453', 'license:748f0f0b4919776aa3ba03f423501a510fab5ee3', 'live:985153886297116', 'no info', 'discord:514017089523154946', 'ip:185.109.173.151', 'Dez Nando'),
('steam:11000011aea310b', 'license:647c4824d22536d0998f7bc23546d320804ce251', 'live:844425469111079', 'xbl:2535452554851784', 'discord:386609997469057027', 'ip:185.109.173.130', 'Chuck Ortiz'),
('steam:11000011b0054c0', 'license:35d34db2ccea98d212b385ef17e437e8b1b8e2d1', 'no info', 'no info', 'discord:606206362267025428', 'ip:89.3.89.147', 'dedejess'),
('steam:11000011b214440', 'license:f58b723c24e9b7fd917333fcf2affca0d54633db', 'live:1055522548200549', 'xbl:2535409342689082', 'discord:316638154482253833', 'ip:85.168.24.68', 'Jean Wilder'),
('steam:11000011b397d6a', 'license:32b7581b87e8f500386d5f5b9f07a2119c866db1', 'no info', 'no info', 'no info', 'ip:37.171.240.61', 'Nubo'),
('steam:11000011b3bdf73', 'license:35b9d519ecb592bd39ad97c3da6bfdd10e00d14f', 'live:844425464954948', 'no info', 'discord:527191898583203850', 'ip:82.124.202.252', 'Sxftii_'),
('steam:11000011b57d983', 'license:c59994ffb173f18d36d1cf10cc2d9f884e93e5f2', 'live:1899946379027340', 'xbl:2535413503355071', 'discord:584842270176444426', 'ip:78.221.250.234', 'ALKARABI'),
('steam:11000011b897864', 'license:223141dfac66b75e6ad96ad11e71ae60d406be75', 'live:985156187995497', 'xbl:2533274954338621', 'no info', 'ip:91.162.234.186', 'Aeron'),
('steam:11000011bd8f2aa', 'license:b5fc74a64c6b1c4fe04485ec3ac7477e620cb59b', 'live:1055522511481992', 'xbl:2535445306165285', 'discord:374599843156328469', 'ip:93.0.185.85', 'Steven Williams'),
('steam:11000011be3abb0', 'license:5d28ead7d6bede342395a3b017389f4979df6126', 'live:1055518521988799', 'xbl:2535453727404828', 'discord:305778624978485249', 'ip:78.224.112.203', '.'),
('steam:11000011bf03461', 'license:14011837ccbac0baf0ea64e7e634ced3c5aecbc7', 'live:914798412165275', 'no info', 'discord:362659443487277058', 'ip:109.219.250.63', 'Damien Clarck'),
('steam:11000011c08b81e', 'license:3a8f05f8b9c7d2dd9fddfa251873f12cd2b4b26a', 'live:1055521966738256', 'xbl:2535418000865448', 'discord:270606449653055499', 'ip:92.129.113.150', 'Mornixx / Michael Kali'),
('steam:11000011c0f8cc8', 'license:6c5511bebabaec55d85698252785e8f8277277e2', 'live:1688854008900801', 'xbl:2535440639941247', 'no info', 'ip:91.87.149.15', 'James Kaill'),
('steam:11000011c47e87c', 'license:89459f1f2802158459c9319a26b92d247d53c5b9', 'live:844429202203951', 'no info', 'discord:261876588839174148', 'ip:92.188.149.165', 'Tyler Manson Crown'),
('steam:11000011c7de9cc', 'license:e9e903a3d71f4d92ddc148a66cb77c9c9418ffcb', 'live:914802237984017', 'xbl:2535414782093649', 'discord:443812465772462090', 'ip:79.86.109.220', 'KARUZZ'),
('steam:11000011c871311', 'license:521937fd647b89351bb79d0db87acc38d40476e4', 'no info', 'no info', 'discord:362580152783339521', 'ip:78.205.16.23', 'Bob Croz'),
('steam:11000011c9d8f3b', 'license:6b167570b98ed2de06a3eae71a4563c4a236e1ce', 'live:985153999179911', 'xbl:2535435692410557', 'discord:383266401722433546', 'ip:91.69.15.83', 'Giuseppe Guzmán'),
('steam:11000011ca8bc80', 'license:fa18bf7d3c365c60e0d407c8835ec419c48d1985', 'live:844428546775990', 'xbl:2535462381858221', 'discord:332270749576331265', 'ip:83.205.203.122', 'Jack Smith'),
('steam:11000011cc2b122', 'license:12c19daf596481a9b3a3777cda12543aabe6fe71', 'live:985153992585429', 'xbl:2535432635687332', 'no info', 'ip:94.107.12.155', 'Karim'),
('steam:11000011cd6c324', 'license:23ae9abdd01b833d8677ed736035dd0b6030c56f', 'no info', 'no info', 'no info', 'ip:176.167.11.213', 'JohnBacker'),
('steam:11000011d0ef63a', 'license:a4ab96afdd2e790e6f14d60b9d73bf1d127a3aec', 'no info', 'no info', 'discord:454336976116776960', 'ip:176.127.102.108', 'Jason Carter'),
('steam:11000011d0f4e04', 'license:7635518c28774410832db97e2c274c9ffbe9abcf', 'no info', 'no info', 'no info', 'ip:77.141.246.82', 'Leo Brossard'),
('steam:11000011d30e815', 'license:6798e80454aeb759a2d13e22f1d5c4a75cd8a053', 'live:985154497641003', 'xbl:2535428660188851', 'discord:549889012077166602', 'ip:89.84.0.105', 'Gustavo Guzmán'),
('steam:11000011d505f21', 'license:1f36ab8139a0874f9ab438fe5a58ae34be6df9a7', 'live:985157312166395', 'xbl:2535414854714636', 'discord:662734894132232192', 'ip:195.132.246.159', 'Dick Aprio'),
('steam:110000131d2981d', 'license:2a79c16b9fb399201af520bfc9a4d29416bf5427', 'live:1055522539843116', 'xbl:2535419884014768', 'discord:369225694737072128', 'ip:185.32.236.177', 'Obito Uchiha'),
('steam:110000131d71aeb', 'license:8346efdfaa507d20f46ff13a0b5c01b353a99a5f', 'live:985157595927128', 'xbl:2535407581647674', 'discord:394839231069159437', 'ip:87.65.101.195', 'Popy Baker'),
('steam:110000131f1b8b8', 'license:275e1a7a3d4fd61b6fa5fd774ca9d166152fe495', 'no info', 'no info', 'discord:444534623914033153', 'ip:81.185.161.31', 'karim mitche'),
('steam:1100001320610a5', 'license:7cb5c7356ac732f07b3b1ee10f05742aa382edf0', 'no info', 'no info', 'discord:372113971584696320', 'ip:109.14.27.192', '[M] Bob Bob'),
('steam:1100001320d50c6', 'license:4c38d76cb01ea20b7ae2b8d6025477fe3401cc6d', 'no info', 'no info', 'discord:395630497285406721', 'ip:90.6.182.69', 'Juke Evans'),
('steam:11000013228d4dc', 'license:0c9647096717b2c534a6533cd7cae31b80d6490d', 'live:985153850337394', 'xbl:2535427169157747', 'no info', 'ip:195.36.207.100', '???????????????????????? ????'),
('steam:110000132376ad4', 'license:b600ed60cfa80fa3b305062b3ba4c0a1a844c0f9', 'no info', 'no info', 'discord:285467449292226563', 'ip:91.163.51.38', 'Toxin LFT'),
('steam:1100001323b3d3e', 'license:e8ccdf4d9dfc87024592078d1d6568d9e9666751', 'no info', 'no info', 'no info', 'ip:92.90.211.66', 'Fernando'),
('steam:11000013260978c', 'license:81d4d10b2f5516e20e8dcf1f7e4b9b74a8402a4f', 'no info', 'no info', 'discord:408319618961113101', 'ip:81.64.227.224', 'Kylian Quarter'),
('steam:110000132614fe9', 'license:b22068ab9c595857ee305cbb6b54a997dac9f5c9', 'live:1055518806030770', 'no info', 'discord:468862417888083975', 'ip:70.83.158.54', 'Jacob Murphy'),
('steam:1100001326225cd', 'license:8fe1b63c1043afbcf373fd03aa83cb63734ae9ee', 'no info', 'no info', 'discord:401862425957367808', 'ip:90.79.44.35', 'khali95rs'),
('steam:11000013270bf73', 'license:8eda2b30c285171bae2e7f9bcfef7edd46aea493', 'live:844425584529875', 'xbl:2535409873821810', 'discord:402164914745114634', 'ip:90.90.30.148', 'sidi azam'),
('steam:11000013273cdbd', 'license:2bbdf6e61386d727a7bc15fe5570247d08cf5760', 'no info', 'no info', 'discord:682596825940623397', 'ip:85.26.96.231', 'Roulioo.'),
('steam:11000013290c147', 'license:344742f7ebfcd624d705c14de95aec46f187aa3f', 'live:1055518643923855', 'no info', 'discord:513101188934270976', 'ip:91.172.193.152', 'Julio Barillo'),
('steam:110000132a82652', 'license:df957354c8c9e5948eec0d0bbd68e53820dae3ef', 'live:914798314477055', 'no info', 'discord:401645848838144003', 'ip:188.154.166.210', 'JES Skyzz'),
('steam:110000132cd954c', 'license:f1b187afe43465a47d5389a9bf5ac39dcd3bcd7b', 'no info', 'no info', 'no info', 'ip:85.244.75.111', 'Sasha  Smith'),
('steam:110000132ce6e53', 'license:e29d2df28ffa63a18823bbae4a5fc54970d43a95', 'live:914798135707777', 'xbl:2535424172110943', 'no info', 'ip:91.177.215.57', 'Mamadou Mbapet'),
('steam:110000132d543cf', 'license:91f43617bcc8d8f78a2ad92522b6bd74ad85566b', 'live:985153939107196', 'no info', 'no info', 'ip:185.109.173.11', 'LoupFoque'),
('steam:110000132e39d2a', 'license:0706853698a9019bf6f01c9493675fcbcf384fd7', 'live:914798199322407', 'no info', 'discord:295144870803275776', 'ip:91.91.243.203', 'Feu2Glace'),
('steam:110000132e6e6ba', 'license:727eab680d1c0bc0a2bd28771eeda002aaef1c80', 'live:914801396941252', 'xbl:2535451685343315', 'discord:659325323120345124', 'ip:77.203.228.121', 'Juan Don Quijote'),
('steam:110000132e72699', 'license:9cf10075ac5be3f08c6ce1e5f0c478b6549a4b70', 'no info', 'no info', 'discord:337736993070907393', 'ip:90.76.248.126', 'Ramirez Guzman'),
('steam:110000132fa46dd', 'license:215a1702ce7377f180b7294ad0156c1bf3e8627c', 'live:914798257546165', 'no info', 'discord:500404493184270336', 'ip:83.202.221.219', 'Ryan'),
('steam:1100001334a697f', 'license:a8a8a89e57cf567a89f8a195891d5cfd27a88c65', 'live:914798269788856', 'xbl:2535463517441467', 'discord:565138610429493251', 'ip:81.51.159.177', 'FouDuchesse'),
('steam:1100001336faae5', 'license:ad7ad69f18fcb7bd9cd0888e96ab4e68b90abe98', 'no info', 'no info', 'no info', 'ip:90.52.146.249', 'William Walter'),
('steam:110000133d13b42', 'license:9e9ac16f3cb8d33f8972c1b114ecd78c3d2f0873', 'no info', 'no info', 'no info', 'ip:89.92.209.245', 'Fabio Quartararo'),
('steam:110000133d3d284', 'license:3d4c9e96631326ba8a8cf049ca235bf61294b50a', 'live:844427636799220', 'xbl:2535453880814648', 'discord:464737196096618497', 'ip:80.200.212.49', 'MIGUZZ'),
('steam:110000133d7b6e1', 'license:f7360674fe8c564ed0d6503db71c35abcc5a8ac3', 'live:914801889615729', 'xbl:2535429678381967', 'discord:435093256330543105', 'ip:78.126.26.135', 'Elios rimera'),
('steam:110000133e1c4a5', 'license:0ff0bec20c1f00eb5b39079873d09a7e0a902218', 'live:914798140062584', 'xbl:2535451426176234', 'discord:435483381069774850', 'ip:94.107.41.24', 'Francesco Riina'),
('steam:1100001342a956f', 'license:2273d87252bba5f64efd700971703e2e2f4a5b57', 'live:985157855447652', 'xbl:2535427575623770', 'discord:523943770086047746', 'ip:78.237.168.127', 'Nito Tavares'),
('steam:1100001342f5a01', 'license:80f08fba94f37806054f8ea470c752929f98c7ea', 'no info', 'no info', 'discord:419140572083650590', 'ip:194.59.249.20', 'Mohammed Sosa'),
('steam:110000134626f15', 'license:56190b15a38da16027d7628836701e3617508b17', 'live:1899947398168310', 'xbl:2535455617582590', 'discord:424248876850085900', 'ip:193.56.243.97', 'Canoni Martino'),
('steam:1100001346c286c', 'license:d77775bedbf17e0f81cf4dda09527a47cfe18404', 'live:985154143156351', 'no info', 'discord:608637042422972416', 'ip:176.164.160.176', 'benit banner'),
('steam:11000013477533f', 'license:cee9b04670ae48cec035f482f8a70131cd571f93', 'live:1899945723914410', 'no info', 'discord:452565739157717034', 'ip:86.245.222.106', 'gaultier rouziere'),
('steam:110000134beed36', 'license:f2f1830a85f467242c1b5456bf52abb7dba48b44', 'no info', 'no info', 'discord:462891921581408268', 'ip:31.31.55.90', 'Arouf ou Selem'),
('steam:110000134fffb74', 'license:79b3821bf0fa4719a836198ad8534f5561b5b63a', 'live:985154218888113', 'xbl:2535463959957522', 'discord:536588501244837888', 'ip:78.224.34.2', 'Akil Lucci'),
('steam:1100001350b2c9c', 'license:6170d37768ae3bbafea7c9c96314b4277e750549', 'live:1759221321819607', 'xbl:2535432967762695', 'no info', 'ip:109.134.221.135', 'Williams Smith'),
('steam:1100001352633ad', 'license:1a06bed53470bb978a16c881ebc58cc2488a73be', 'live:844424981024370', 'xbl:2535406773915378', 'no info', 'ip:93.26.106.184', 'Michel LaGazelle'),
('steam:1100001358b8dbb', 'license:55942927f7e46452bbdf84dcabc7da7f9a7146c0', 'live:844425325326396', 'no info', 'discord:314801706019848192', 'ip:92.137.201.226', 'Kevin Benachio'),
('steam:110000135e0cd65', 'license:02e67feb126c7825ffc57cb35a2547eceb468576', 'no info', 'no info', 'discord:425030719509626891', 'ip:94.75.88.21', 'key_drop Czarny_TV'),
('steam:11000013605048b', 'license:8cf84f2a662fe2c10d42e10be7c693c30ad4f426', 'live:985154309236042', 'no info', 'discord:307523714101149708', 'ip:31.10.174.153', 'Dimitri Abarnikov'),
('steam:110000136172b36', 'license:98b0fd2dd3301f5c4258c2ae7a4873e6533ebcc4', 'live:914798230687145', 'xbl:2535408797459928', 'discord:645454105422069760', 'ip:82.64.86.141', 'Chico Escobar'),
('steam:1100001361c4033', 'license:ad4b59545e409603363378e9100f27d8629f48ca', 'live:914801758374459', 'xbl:2535408385283506', 'no info', 'ip:83.157.109.157', 'Jerry Gustavo'),
('steam:1100001361e0b45', 'license:76b5296d5c83c699a8374f2f21297bea48ea0245', 'live:914798233524995', 'xbl:2535419871937125', 'no info', 'ip:213.55.221.15', 'Emilio Rojas'),
('steam:110000136208ada', 'license:de6dc0e8afd2d0e39c1cce6a2259d20919f46ad4', 'no info', 'no info', 'discord:507671245362429955', 'ip:176.127.246.134', 'Michele Carro'),
('steam:1100001363b31d3', 'license:9037e98e2dda7bb2abf0ee3ca2c2617792e14696', 'live:914798361463281', 'xbl:2535446740035733', 'discord:574640975159492621', 'ip:37.173.61.2', 'Lucas Garcia'),
('steam:11000013647c998', 'license:dec74ceaf20c763111ee4ec88ddeeec6d43c33a4', 'live:914801311020380', 'xbl:2535440624027736', 'discord:513221389944094730', 'ip:74.14.185.1', 'Omar Mohamed'),
('steam:110000136515af9', 'license:aea842adc4514ab0b9bae8c904edae1fb349f722', 'no info', 'no info', 'discord:675255245093339147', 'ip:82.102.18.114', 'Kévin Dumas'),
('steam:1100001365a992b', 'license:192007cfae8eee40f939f2ba30b5ecba93c20615', 'live:1055518467828530', 'xbl:2535431217058809', 'discord:433588485039849482', 'ip:92.170.93.17', 'Wilson Anderson'),
('steam:11000013668f823', 'license:5852d1be21abc15664831082ad21e152e35f0b48', 'live:985154175771014', 'no info', 'discord:377812159259738113', 'ip:90.118.43.44', 'Kidy Shadow'),
('steam:1100001366b63c6', 'license:aa58d66c2fe03c739ca6113376174774e1d244ce', 'live:1055518706957892', 'xbl:2535405558223386', 'no info', 'ip:176.184.135.132', 'Adama Thaore'),
('steam:1100001367c5f49', 'license:5f1dc95cc6557dfbf347b9574b58d8bd2aa11244', 'no info', 'no info', 'no info', 'ip:86.216.203.15', 'Jouliann |  Hellcase.com'),
('steam:11000013680840a', 'license:f5dd2737993b29c1ef7a9ecf1d1974896b8a221e', 'live:914802130457858', 'xbl:2535405499079105', 'discord:416032334043676692', 'ip:78.193.25.32', 'Alexander Walker'),
('steam:110000136895a41', 'license:b84e54f712318a35e424edbb3f89c1518e475357', 'live:844425368000585', 'no info', 'no info', 'ip:85.168.0.232', 'Hmidou Menace'),
('steam:110000136919dc3', 'license:b7591f59c9052933c4b46a743f8063c2c3c1eb31', 'live:844425181803432', 'no info', 'discord:419084763433795594', 'ip:92.151.51.73', 'Elias2015_'),
('steam:1100001369b250e', 'license:7ff35967ee39622a347f9f9c73d41590143e4f07', 'live:844425449973138', 'xbl:2535430816922982', 'discord:474232571618787359', 'ip:85.190.68.117', 'Darwin'),
('steam:110000136a0564b', 'license:ed2ef063e81c251c7074dc452ed8f0649d5694c0', 'no info', 'no info', 'discord:315225698128101386', 'ip:79.83.217.120', 'Hakim Bouchakour'),
('steam:110000136d6d9ce', 'license:5396dca91f47e3f449f22dacef372fa82fd27205', 'live:985154465661250', 'xbl:2535469841980618', 'no info', 'ip:82.252.135.22', 'Mehdi Mermoud'),
('steam:110000136e0169a', 'license:96e4ce301ad1c362c233bc7e3d8bcfceb4f9af9e', 'live:914798006799239', 'xbl:2535465613205850', 'discord:305140095709741068', 'ip:88.125.91.188', 'Camille Lareine'),
('steam:11000013704e6ed', 'license:0be69b051026f6ca6e7a31878b8c4629feb4495f', 'live:1688853851689800', 'xbl:2535461877749506', 'no info', 'ip:91.164.236.77', 'Floki Babs'),
('steam:1100001372ae9ff', 'license:34eb34538a9960a122d9d5868e941b3a6d69547f', 'live:844425382659939', 'no info', 'discord:393775841290616834', 'ip:90.92.69.112', 'Sam Jones'),
('steam:11000013759b11a', 'license:cbcbd7585fdc49c9c4b63b1220f1007034bf1504', 'live:1055518733940981', 'xbl:2535441147998304', 'no info', 'ip:77.206.45.45', 'Junior Sekou'),
('steam:1100001375b5955', 'license:888447c6611e1dbbb8f710914b3259bf55278dfc', 'live:844427988079967', 'xbl:2533275019621850', 'discord:536033248724123661', 'ip:184.162.10.212', 'Mohamed Azzys'),
('steam:110000137940f00', 'license:4f5af68b96bc0c5cf339f28948f98b7c0e01eb3b', 'no info', 'no info', 'no info', 'ip:78.210.168.94', 'Sean Johnson');
INSERT INTO `baninfo` (`identifier`, `license`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
('steam:110000137944489', 'license:f32761f02520f448bdc2c444851ee11b5dc1ee19', 'live:1055518708849117', 'xbl:2535425424200765', 'discord:536230423815127040', 'ip:195.132.162.79', 'Sebastien Benitez'),
('steam:110000137ac0909', 'license:b8c3bd564dead1c5c8e520804f8f81db663b32a4', 'live:914802211278626', 'no info', 'no info', 'ip:91.163.92.122', 'Bastien Lepin'),
('steam:110000137b6821e', 'license:30224820c19fb0ed0fd2cfe85f86e1691a36cbcf', 'no info', 'no info', 'discord:363018607820668928', 'ip:109.212.117.24', 'Jack Bellingham'),
('steam:110000137d2cece', 'license:447c03f0ec474f422cf0d26edcbb6898cb0c9680', 'live:985154484160646', 'xbl:2535433295435528', 'discord:541300879639183360', 'ip:128.78.58.134', 'Fares Akra'),
('steam:110000138bc7d5b', 'license:03181ac7831f5974bbef4451a3fbb514bb7ed170', 'live:914802072492467', 'no info', 'discord:218445163779850251', 'ip:90.118.143.143', 'thomas tylors'),
('steam:110000138db80be', 'license:556b2ea9c31af7d4bbc568eb9411a2670bfb16ee', 'live:985154076468718', 'xbl:2535455839634675', 'discord:368737198075412481', 'ip:83.77.9.69', 'Marco Salvatore'),
('steam:11000013909ae7c', 'license:22379258a0f00172fa946b94de5114d5ced088aa', 'live:844429207594105', 'xbl:2535450688119582', 'discord:531464824111235102', 'ip:5.49.158.5', 'Virtox'),
('steam:1100001398c9252', 'license:cc25f835d8072088a525f0dbd24bc5f10afeee1d', 'no info', 'no info', 'discord:539531829636759572', 'ip:31.36.18.149', 'M Salix {Tony Scaletta}'),
('steam:110000139984aa0', 'license:fb5266b4ce14f166c30e1d7750c3af3f5b9a9bc5', 'no info', 'no info', 'discord:302545962260234242', 'ip:90.101.177.7', 'Jay Will'),
('steam:11000013a16bd33', 'license:a8e02b60c94b81a185ecf132f7bace7e383fe040', 'live:985154088150954', 'xbl:2535443705866678', 'discord:331888388162715648', 'ip:92.170.94.144', 'Carlos Tardivel'),
('steam:11000013a922b5a', 'license:8bd4116a1abf01b90b576a787b9731a25336fcd0', 'no info', 'no info', 'no info', 'ip:176.58.224.159', 'mitsarask88'),
('steam:11000013aa7e6cf', 'license:0078c7b0d2c4d9d8ba2633807436b90d18da0a2b', 'live:985154315439361', 'no info', 'no info', 'ip:91.207.57.252', 'Ayoub Babil'),
('steam:11000013ad1ca16', 'license:3c513c08945551e912805ffad7f3d388b96426b2', 'no info', 'no info', 'discord:460064152405147688', 'ip:109.29.230.44', 'patrice62500'),
('steam:11000013b085ac1', 'license:3b43e3c58e0128a1340969d667fb71150ffa09fb', 'no info', 'no info', 'no info', 'ip:85.170.216.141', 'Kais Bengouz'),
('steam:11000013b1ac066', 'license:0e7f1499d8f0a0fbabf66b792337be827cd79aa5', 'live:985157538369955', 'xbl:2535471430280993', 'discord:359783717389991936', 'ip:185.107.84.159', 'Boustouf Anzefloux'),
('steam:11000013b3a73b0', 'license:9e417bfff8e47468de0765241477bc8730bc118b', 'no info', 'no info', 'discord:635225033178087473', 'ip:86.207.67.86', 'Ichiro Kenishi'),
('steam:11000013b6911dc', 'license:ecfa3f09c302d6e69f673ff07d98b88a5008a7e1', 'live:1055518741579399', 'xbl:2535470342310164', 'discord:634034117415272448', 'ip:94.111.59.63', 'georges.melanitis'),
('steam:11000013b744191', 'license:42c7fce49a864e52daec116557215a3e8adcc91c', 'live:914801514811228', 'xbl:2535433983274270', 'discord:569292250589167626', 'ip:82.124.212.58', 'JASON BROWN'),
('steam:11000013b9c29d3', 'license:8e6bd88c5551388b812172f636e9ded6588801c1', 'live:844425072098166', 'xbl:2535434098887205', 'discord:368731901223239682', 'ip:90.101.187.33', 'Le_Tigre'),
('steam:11000013babbd64', 'license:aa78a3faafba4037bcbd167b950773088148051e', 'no info', 'no info', 'discord:434878988993822731', 'ip:95.115.36.228', '᠌Putin'),
('steam:11000013bc7a11f', 'license:24f3bab08ad160504d67e64439b660d64578ea17', 'no info', 'no info', 'discord:575333173483798560', 'ip:88.125.144.37', 'Raven Weiss'),
('steam:11000013bc8877c', 'license:e8c78e85b12b594541ed3b701d6615bee7b53dea', 'no info', 'no info', 'no info', 'ip:93.27.49.85', 'Mathieu stanier'),
('steam:11000013bcf9cff', 'license:c964d922fadeaacc04263421de1b11243ec55ed7', 'live:1055518540317414', 'xbl:2535415922187157', 'discord:270958242421538816', 'ip:128.78.120.39', 'John White'),
('steam:11000013bd4dea9', 'license:f33a8411c945cdd707dfee574d4eb4a9eb8dc860', 'live:1055518283901876', 'xbl:2535436294155385', 'discord:225588535749640192', 'ip:92.88.237.181', 'Michel Bavette/Emilio Guzmán'),
('steam:11000013be07905', 'license:521b2edbfc85dc9e214857a08f2066e4ace2d5bb', 'no info', 'no info', 'no info', 'ip:91.165.200.201', 'JULIEN CHENG'),
('steam:11000013be30d31', 'license:d15e78826fe37ca481989e271c4a3ffc0f28032b', 'no info', 'no info', 'no info', 'ip:78.126.124.78', 'Leonardo Félipe'),
('steam:11000013bfed992', 'license:38d67fc4a9b77bee6ed0c4b7a2fb1a20f8608288', 'no info', 'no info', 'discord:444797105568088064', 'ip:91.160.170.217', 'Lorenzo Delmez'),
('steam:11000013c072309', 'license:85b715f4118ad2e5c806da8336b2c842f84bf630', 'no info', 'no info', 'discord:510821079527456788', 'ip:91.173.178.174', 'Skorez'),
('steam:11000013c075326', 'license:d50ada85f9eaa85a01f1a965313838b9e0c556a3', 'live:914798568522475', 'no info', 'discord:690519647765921793', 'ip:93.8.111.131', 'MOHAMED'),
('steam:11000013c1a8245', 'license:5c2e563eb616ea35c3710c19986a1178b3c45d09', 'no info', 'no info', 'no info', 'ip:82.227.171.52', 'Karim Narvalo'),
('steam:11000013c1b07c7', 'license:4ebc15f81a287016d558a8adf94daf800371fc7d', 'live:1055518358685979', 'xbl:2535416157243254', 'no info', 'ip:77.201.249.212', 'Arthur Debois'),
('steam:11000013c32c3a8', 'license:cec8e2f549ae3e95aa0f6b51fa2146ca1c6dc4ac', 'no info', 'no info', 'no info', 'ip:82.246.124.238', 'Edouard Oslo'),
('steam:11000013c347335', 'license:5a47aeff15d907236d765d423de0d179db093a32', 'no info', 'no info', 'discord:682748418904293384', 'ip:86.192.80.218', 'SixNueve'),
('steam:11000013c78bdbe', 'license:b40b073da5839353bf232530120de0a1cac6f3c1', 'no info', 'no info', 'no info', 'ip:78.127.48.142', 'John Jaune'),
('steam:11000013c7945c3', 'license:68bdb76d08ad75b445c1c6740778bf2ca5923243', 'live:1055518846829943', 'xbl:2535451559870568', 'discord:620247183341387776', 'ip:88.139.4.137', 'Fermandos Costa'),
('steam:11000013c7a9b33', 'license:21454694830bbb4624521e876bd8031419d5c096', 'no info', 'no info', 'discord:543784195722444800', 'ip:78.234.100.139', 'Tedy Soulax'),
('steam:11000013c8bd9d3', 'license:05945d2218bfd29111f463c126eacbd919a8f437', 'live:914798375191642', 'no info', 'discord:636825807603630140', 'ip:2.4.248.218', 'Cuauh Florès'),
('steam:11000013c8ca339', 'license:1461f8770b407d580f0ac0688aeeaa40db2349e6', 'live:985154410640437', 'xbl:2535460236970908', 'discord:597400544809713673', 'ip:176.152.54.157', 'D4rKsiD3'),
('steam:11000013c9583e4', 'license:03a3e2f99a77f3e3ba7fe8bdefc3fcad9cb84031', 'no info', 'no info', 'discord:474275921289805824', 'ip:91.169.21.113', 'Amir'),
('steam:11000013c9948f8', 'license:78d43e02805f25227b3b9a33d8c644451cea7f06', 'live:1055518823240971', 'xbl:2535435171941429', 'discord:548193670583549982', 'ip:78.115.175.2', 'Jason White'),
('steam:11000013c9eaa0c', 'license:993eadc6becde03f7fc5da952a989fb0dedfc957', 'live:844425468884393', 'no info', 'discord:557245388055248896', 'ip:176.172.252.125', 'mxnemcl'),
('steam:11000013ca645e3', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:844429151688644', 'xbl:2535470788833990', 'discord:295643462189973505', 'ip:91.182.10.206', 'BOT LORENZO'),
('steam:11000013cac34b6', 'license:06d9faffc4e6277836d7e57cda8e502001f31719', 'live:1055518350101014', 'no info', 'discord:450258686133272576', 'ip:91.160.138.51', 'GUCCI'),
('steam:11000013cb22393', 'license:c1085c8c36f92ce00b6c62ecd76456c1ae43a797', 'no info', 'no info', 'discord:689891052907528284', 'ip:77.151.234.213', 'Romain'),
('steam:11000013cb3dfd0', 'license:4502b510bd79060757e6d18f7be32d9ec85f1577', 'live:844425528854863', 'no info', 'discord:606901157935317027', 'ip:78.122.248.93', 'gregory magasa'),
('steam:11000013ce89fb5', 'license:524b23eb6497328b6ecb439948a3a1319dc51a57', 'no info', 'no info', 'no info', 'ip:176.169.54.175', 'flo81808'),
('steam:11000013cef0665', 'license:7b9be5212a9c7a34f502b8a3220d560b075d322d', 'no info', 'no info', 'no info', 'ip:85.190.76.219', 'Jean Moulin'),
('steam:11000013d02a5d3', 'license:533b812d36b224de7ddf924477262c775b910df6', 'live:1688853868260933', 'xbl:2535472653696240', 'discord:152033106516377600', 'ip:81.11.161.135', 'LotmiLGerant'),
('steam:11000013d0501a6', 'license:fdaebd710e80659c1e588ad263313437cfb33718', 'no info', 'no info', 'discord:588485793002160132', 'ip:77.204.155.213', 'CookieGraille'),
('steam:11000013d0556a3', 'license:087a3b6bad2895961939915b60dce2617fa5a9b8', 'no info', 'no info', 'discord:611262760163999757', 'ip:37.170.233.139', 'Emilio Caster'),
('steam:11000013d09f43f', 'license:148c84115fb0283a57c6d2b0006239d9b881fa45', 'no info', 'no info', 'discord:693314570680402040', 'ip:82.238.8.37', 'Max Davee'),
('steam:11000013d1a06b4', 'license:248e6e7b79794aad97405693a8b40facc8d3ae08', 'live:914798041393007', 'xbl:2535414687230043', 'discord:543168564824113162', 'ip:85.27.59.171', 'Axel Biker'),
('steam:11000013d2311a1', 'license:f5b56405315184f80a1df789d1130d8c5b1c3860', 'live:1055518818700188', 'xbl:2535471701864489', 'discord:453696047252766720', 'ip:93.7.207.123', 'Zek Kingston'),
('steam:11000013d25bf07', 'license:c2dcf65f6db04291c1157ac4b32cb7ca68d66a84', 'no info', 'no info', 'discord:468854452187561994', 'ip:90.110.163.138', 'Curtis Blake'),
('steam:11000013d2931f3', 'license:1fd3f8d3e03d0ea45fa118e38a3e10609cbd229c', 'live:985153933608484', 'no info', 'discord:378928332302974986', 'ip:92.170.177.107', 'MARC DYLAN'),
('steam:11000013d366ddf', 'license:fda65cdad79b1e1386cbf2b002a434865ec89ddd', 'live:1055518875360934', 'no info', 'no info', 'ip:94.64.57.50', 'stefnoulis13'),
('steam:11000013d409d77', 'license:6d4af8c0e720ab1f3825a421a7fb9920fb833fc7', 'no info', 'no info', 'no info', 'ip:91.132.136.84', 'Thomas Nas'),
('steam:11000013d431395', 'license:6b01f02732828d81c8ccdbc91e4e394f1fbabdc4', 'no info', 'no info', 'discord:524932392801271830', 'ip:217.136.37.34', 'Twitch.com/TheVetoTv'),
('steam:11000013d46cd95', 'license:de6f3a5c26efeb91e0d9951141d34fdbfc187ba7', 'no info', 'no info', 'discord:611145110700294147', 'ip:78.236.54.156', 'brade joneson'),
('steam:11000013d4a73ae', 'license:fa41954b5a90de279f01a97d34175dea2556f877', 'live:844425547047978', 'xbl:2535420626218922', 'discord:314479602158403589', 'ip:109.136.57.176', 'jimcisco'),
('steam:11000013d6867d6', 'license:0074de50c2f2170d40a7692046a1b908b6a26a55', 'no info', 'no info', 'discord:326814519978491914', 'ip:109.218.225.18', 'Ricci De Lucas'),
('steam:11000013d6a4456', 'license:6b5a5ef28972615e05064cb769f8e0a87169346f', 'live:985154488175795', 'xbl:2535421870219451', 'discord:622464438699819067', 'ip:78.125.245.75', 'tony mendez'),
('steam:11000013d6df2c8', 'license:d7465b72e184e0bb0f0a6c02d3421f88a1ee529e', 'no info', 'no info', 'discord:685932931801153577', 'ip:86.243.204.242', 'marco67corso270'),
('steam:11000013d7c292d', 'license:c6a2492c8f31baec5a9f48d6762587ae1cd20ebe', 'live:1688853111126924', 'xbl:2535453016731333', 'discord:624300592537403419', 'ip:94.104.122.85', 'Mercure Amg'),
('steam:11000013d8e518a', 'license:783f87605a502cac418263e3043bb025584331a1', 'live:914798175221830', 'xbl:2535462210074823', 'discord:443851849154560012', 'ip:87.88.137.52', 'Yoann Lacoste'),
('steam:11000013d8f3e13', 'license:7dcc9a91aec5e2a00a54570778a626f0b3b7db38', 'live:844425149746590', 'no info', 'discord:609759239090733066', 'ip:82.255.152.1', 'Anatoly Liches'),
('steam:11000013d903936', 'license:7f084ba1cb603a288c9467dccd7961771b97fc8c', 'live:844425514887420', 'xbl:2535423906542242', 'no info', 'ip:91.173.88.71', 'BIENglace'),
('steam:11000013d981690', 'license:3ac9dd6d5452e6f825be295b63eb4b0ff28c4d65', 'live:844425385904602', 'no info', 'discord:277434044323594240', 'ip:91.171.23.83', 'Jackson Manson Crown'),
('steam:11000013da2f3a6', 'license:f045760bc5f19da8707d460d56bb0490f9e660e2', 'no info', 'no info', 'discord:632288038864551962', 'ip:37.164.80.179', 'Aymen Grealish'),
('steam:11000013da637ae', 'license:2ad949f277ef637c668c88396d31a37561cd74d3', 'no info', 'no info', 'no info', 'ip:78.229.109.10', 'Kysma'),
('steam:11000013dce7633', 'license:36c10b5e67a0352ab41ee9cf12fa0cccb8a495a5', 'live:985154256355698', 'no info', 'discord:465187103999787020', 'ip:25.127.97.1', 'Roofters'),
('steam:11000013dd7329c', 'license:e5d720549d472b4c5e7908b6554e1660fce4fda3', 'live:844427967007992', 'xbl:2533274965917018', 'discord:633441015772086274', 'ip:85.190.73.143', 'alexis casabel'),
('steam:11000013ddc6581', 'license:218bd1728ae0347b0385a5c2b7c2e56eed81506d', 'live:914802152677286', 'no info', 'no info', 'ip:5.51.172.126', 'Lucien Bolide'),
('steam:11000013de4f55c', 'license:0308d38eddb7fc8fadfa19eea0e74a40b12df901', 'live:844425530490424', 'xbl:2535471578122514', 'no info', 'ip:176.163.89.125', 'SeenRaX'),
('steam:11000013df2d7b0', 'license:19ded9d837efcf1c48d69ea0d61ff2578090900d', 'live:914798087906215', 'no info', 'no info', 'ip:92.148.192.208', 'mtanovan'),
('steam:11000013df41c6b', 'license:56724a27b0abbe76052cb011a5a9f5813c994bec', 'no info', 'no info', 'no info', 'ip:161.22.108.76', 'sergiolabroche8'),
('steam:11000013e11946c', 'license:8525bfca251015a227388d9012159e3b7c93df3c', 'live:985153960272178', 'xbl:2535440610948186', 'discord:513711661832732693', 'ip:91.181.147.35', 'Tyler Lacoste'),
('steam:11000013e1c9a76', 'license:8afbcffdf925e2b7da7e5f1f51c584fb1b5e6750', 'live:1055522518569529', 'no info', 'no info', 'ip:92.148.192.208', 'matthieutanovan'),
('steam:11000013e38f2f4', 'license:c83e13f27e0cfc13665c075f2cee5138c0106f2a', 'no info', 'no info', 'no info', 'ip:89.158.213.4', 'discordredwan'),
('steam:11000013e573849', 'license:751f86b55d394b713495e377680c1d32c7e84a9d', 'live:844425000740486', 'no info', 'discord:664158986932584470', 'ip:109.21.110.202', 'Nerzia'),
('steam:11000013e5ab3e5', 'license:f520a2cdc1fd37341a392f6c7d04a710c7aa3a82', 'live:844425563585886', 'no info', 'discord:650450945637089300', 'ip:176.133.106.4', 'mohcine.redouain'),
('steam:11000013e5af256', 'license:50717843eea8009d669654a46dd5a228ca1f0f4d', 'live:844425566291849', 'no info', 'discord:322756318622515202', 'ip:91.173.196.124', 'Aaron Nach'),
('steam:11000013e699150', 'license:7ffb4efd7ea57b9ecc81c399a77b9100074375e5', 'live:914801508691108', 'xbl:2535454528398236', 'discord:599925907414581269', 'ip:2.4.98.254', '[R] Emilio'),
('steam:11000013e6cd2f1', 'license:f2d3f43ba649c1d71df7a9a1609e46603881b409', 'no info', 'no info', 'discord:289500456600862721', 'ip:91.176.169.59', 'kekooave'),
('steam:11000013e6da3b5', 'license:77a3e9c4254c17b62e4a942d80ae1c9a46aa7450', 'live:1055518677140402', 'no info', 'no info', 'ip:176.188.113.9', 'Larry CiteBlanch'),
('steam:11000013e7cdc6b', 'license:f7a22bb8eb9a2452d4b520f9fd70229568f6f02b', 'live:1055518698249032', 'xbl:2535451195636346', 'discord:522388531042320385', 'ip:93.5.119.81', 'Max Facsa'),
('steam:11000013e7ceb44', 'license:d8c61673c2705a7540299bea27f2ea7abbdee518', 'no info', 'no info', 'discord:343241723352186891', 'ip:196.53.110.178', 'santosssbrysa'),
('steam:11000013e7efb1a', 'license:53d3f18d30ea7dec1e7ad05c6e0f799172b60244', 'live:1055518913183513', 'no info', 'discord:653269176026136615', 'ip:85.28.122.226', 'nasermuharemi2.0'),
('steam:11000013e806cf5', 'license:f93f9f87b9ebd4e7a88b2a60035cdbead32fb66d', 'live:985158094581078', 'no info', 'discord:567404315166375937', 'ip:81.66.36.11', 'ermanito'),
('steam:11000013e8f28c5', 'license:91aed0762f930bc0704f3bec2d5a559cafba1ca2', 'live:914798373250941', 'xbl:2535451572231145', 'discord:652991481912754207', 'ip:91.173.111.136', 'dani'),
('steam:11000013e916ec5', 'license:34d0df3baad68ef977bc4b90d63cb5aad102cf92', 'live:914798088867316', 'xbl:2535438078563944', 'discord:656471145578758144', 'ip:88.122.137.194', 'Calvin brown'),
('steam:11000013ea6a891', 'license:ab96923ec205c2b3c65bc75c6ec8a6bc884bb23b', 'no info', 'no info', 'no info', 'ip:2.10.95.59', 'zlRedman YT'),
('steam:11000013eac3d18', 'license:a49048767324adef64d8ea17300a401e0ce9a41a', 'live:1055518472202321', 'xbl:2535454979794950', 'discord:409362466657665034', 'ip:77.147.164.22', 'adem'),
('steam:11000013eae97b5', 'license:2f368402c09560a11bb4db02dbd16c772ab392fe', 'no info', 'no info', 'discord:655225004186664970', 'ip:90.110.93.167', 'ITACHI RYX'),
('steam:11000013eb06dbe', 'license:293235dc4861198db78bc55559062ff0654e86d6', 'no info', 'no info', 'discord:657577909380317184', 'ip:93.22.26.9', 'al capone'),
('steam:11000013eb6a07b', 'license:e46a2b8df6b82fdbe4fc827b913edca9a3fbd28f', 'live:1055518832860950', 'no info', 'discord:472776568524242945', 'ip:78.194.228.5', 'denny.saiki1'),
('steam:11000013eb88484', 'license:96e5ae6da58de2a5f1096a08cf46ed6d552c1d1e', 'live:844425107843357', 'xbl:2535423288549119', 'no info', 'ip:82.252.131.96', 'Xavier Belt'),
('steam:11000013ebc7a19', 'license:a0e503a5561d5ee913ee824db22af786c759c74f', 'no info', 'no info', 'discord:659524992148439069', 'ip:91.161.6.9', 'babutbaptiste'),
('steam:11000013ec2c02f', 'license:b44793239c778cb8a4cacb1dd74b8f374b3efe3d', 'no info', 'no info', 'no info', 'ip:70.80.120.25', 'Jayden fontaine'),
('steam:11000013ec6f614', 'license:dcfb7ac25e7ff5c5d253185f9dc423d1484c87b2', 'live:844425539499534', 'xbl:2535463127941874', 'discord:660675583432327199', 'ip:86.253.139.18', 'loevann.delot3'),
('steam:11000013ec8d8d8', 'license:afe6646b0a9250c80841d1728df536e3c93a0050', 'no info', 'no info', 'no info', 'ip:90.109.66.167', 'Jackie milou'),
('steam:11000013ec97063', 'license:9f885499d430b085a9f97ca69d481e0fe7e89b25', 'no info', 'no info', 'discord:601013305175441410', 'ip:78.217.6.210', 'paul pilo'),
('steam:11000013ece0fba', 'license:42b9acd7fa6a16e6a5254d0abce46a8eb31e6ae3', 'live:844428431887648', 'xbl:2535428659846350', 'discord:658406955546705920', 'ip:176.136.100.158', 'Jhon Pablito'),
('steam:11000013eceecac', 'license:6ff3669e339aaa6bd6dd58302b7ab5e156a01267', 'no info', 'no info', 'discord:661220054020522049', 'ip:81.64.51.173', 'Kaaris Zango'),
('steam:11000013ee38586', 'license:5885096adcfdb76261233a7c06eaa8169d30be87', 'live:985154497158607', 'no info', 'discord:514112788612907034', 'ip:81.249.143.11', 'Thiago Montana'),
('steam:11000013ee38f13', 'license:fe35cc6c4564a5fbc2f345f113ae88f467082fe3', 'live:914798313418586', 'xbl:2535415281724744', 'no info', 'ip:82.246.49.55', 'Mac'),
('steam:11000013ee3e60d', 'license:e114eed2a8d9984f385700df9645775c00bda38a', 'live:1055521337053121', 'xbl:2535453161534650', 'discord:591643231570100239', 'ip:88.123.77.188', 'NOAHHHH.'),
('steam:11000013ee5b17d', 'license:c10e7714d7bdc388cee1669cfe2ff198c324253e', 'no info', 'no info', 'discord:671076994489909273', 'ip:176.180.29.204', 'GemLeGenBon'),
('steam:11000013eec885a', 'license:d96e6581c3fd8eb5f261cd32050ba3df00b2ace8', 'live:914798534364101', 'no info', 'discord:394966282304487424', 'ip:83.99.84.189', 'Raffic Scotti'),
('steam:11000013ef660f6', 'license:69cf1f6934d6bef4e1d61d3a8c60db069208c4dc', 'no info', 'no info', 'no info', 'ip:92.158.58.92', 'Carouge Jojo'),
('steam:11000013ef72e31', 'license:51326d71fba6cc4f616a8186c99989dac5499ade', 'live:844429177211996', 'no info', 'discord:660437617162321920', 'ip:109.88.150.50', '[R]Don Pedro'),
('steam:11000013f052da3', 'license:2bbdf6e61386d727a7bc15fe5570247d08cf5760', 'no info', 'no info', 'discord:682596825940623397', 'ip:85.26.96.231', 'Loris Campione'),
('steam:11000013f0d65e8', 'license:89459f1f2802158459c9319a26b92d247d53c5b9', 'live:844429202203951', 'no info', 'no info', 'ip:92.188.149.165', 'Jack Grimms'),
('steam:11000013f296ab6', 'license:5e8ca7042d065bc993fe08026919fb5ba8729385', 'no info', 'no info', 'discord:312335107077963778', 'ip:82.247.82.36', 'Alex Anderson'),
('steam:11000013f2cdb8e', 'license:91ad96ec4beec8f008a54fcab40b93eae80b38b9', 'live:1055521585026406', 'xbl:2535439572793091', 'no info', 'ip:83.197.102.109', 'Oleg Halfdanarson'),
('steam:11000013f2dcfce', 'license:e4332d12e17c1f99041cceba9f84ef4b2ade3c3e', 'live:1829582493583178', 'xbl:2535468547021492', 'discord:534076168857583628', 'ip:92.93.181.126', 'enzovazzoler94'),
('steam:11000013f366670', 'license:9513853dc9ffd1288b3f1cf8220e0d67842adfb5', 'live:844425484028837', 'no info', 'discord:496734149999067148', 'ip:90.22.198.127', 'KoBraFR'),
('steam:11000013f3df3e0', 'license:fd2c4c31f28afa2d6ea09ddaa2692c13fadb3185', 'live:1899947235276015', 'xbl:2535430899882316', 'discord:688877557441233195', 'ip:109.134.96.105', '1 9 8 6™ V2'),
('steam:11000013f4af6c4', 'license:8107b338256b90104b1e690c3f70d6a9e71fc974', 'live:914797993473841', 'xbl:2535450232658030', 'discord:381521740074975232', 'ip:92.153.31.70', 'jack'),
('steam:11000013f574542', 'license:8a3747a1dff1e1f14e23e655e3807b7507713cff', 'no info', 'no info', 'no info', 'ip:79.94.153.111', 'Turfulux'),
('steam:11000013f5ae114', 'license:42d9bd8276cfebe24e83037d033cf5317174e5d5', 'live:1055518646675877', 'no info', 'discord:686642183436238914', 'ip:77.204.56.200', 'sabrina maness'),
('steam:11000013f609b15', 'license:4fa060c88a5fcb6fdd20ff9bfd5d926ecfb86036', 'no info', 'no info', 'no info', 'ip:109.209.101.4', 'jimmyd85230'),
('steam:11000013f6c466c', 'license:248d70b51c3d354896b6a0da9adca90e19ad03d4', 'live:1055518946770882', 'xbl:2535421935565292', 'discord:627638659172139040', 'ip:81.49.157.102', 'Benjy Malcarez'),
('steam:11000013f7b4715', 'license:140432619bec62c01aed9dd2276801f24e1ea73f', 'live:914798541154434', 'no info', 'discord:678337767968866341', 'ip:109.136.184.150', 'Renard Sef'),
('steam:11000013f9501f2', 'license:86a439c58cbb28d8f44fbecfa8a278eec0d5f6dd', 'no info', 'no info', 'no info', 'ip:93.1.251.132', 'Isaac Smith'),
('steam:11000013f957560', 'license:2c10df2ce24cec1c13f1bb3d10e568d87c8fef43', 'no info', 'no info', 'no info', 'ip:78.228.33.115', 'Abdel Kairi'),
('steam:11000013fb62428', 'license:0f150221485b7262a0776b9c04a8171862cf7650', 'no info', 'no info', 'discord:681647783316553780', 'ip:81.67.217.63', 'Dinor Sekou'),
('steam:11000013fb6de7c', 'license:8867e479cc93ba83e4ca415ec984536108ae8e0e', 'live:914798047257863', 'xbl:2535440002400619', 'no info', 'ip:51.91.21.58', 'Jessy Consils'),
('steam:11000013fba141c', 'license:d1178eafdb491b40a91d4f01f70bbc5796332f34', 'live:1055518958640122', 'no info', 'no info', 'ip:176.152.56.107', 'Sonny Bawger'),
('steam:11000013fc0ea0e', 'license:35ac7265238ad01341dce5e244619d4f6e7df273', 'live:1899947219763656', 'xbl:2535436691904768', 'no info', 'ip:85.170.14.7', '✪ Decim..'),
('steam:11000013fc65ced', 'license:70a97e71ca13f2ccd2f6d4e9b39ede40c7a86d85', 'no info', 'no info', 'discord:664134391752294403', 'ip:176.156.18.151', 'Leto Brazzi'),
('steam:11000013fcc27f4', 'license:714859068cfce24658d4e4426726103696d349fc', 'no info', 'no info', 'discord:474237155275964447', 'ip:86.225.73.29', 'TinTinio De Juarez'),
('steam:11000013fd22c35', 'license:f5cb2f273076c15f239f9a801796a647f7bb8565', 'live:1759221927341677', 'xbl:2535446470424160', 'no info', 'ip:91.167.22.175', 'calvin Desiles'),
('steam:11000013fd84250', 'license:96fdc01bf3ec40703a264118d28d7365ec54de2f', 'live:1055518837886543', 'no info', 'discord:543727834099744783', 'ip:78.243.229.55', 'eliepezzotti9'),
('steam:11000013fdc50dd', 'license:7159b10a59539b9c785516ce54558324b2d0659b', 'no info', 'no info', 'discord:596835694455029781', 'ip:90.108.173.245', 'Isak Léblié'),
('steam:11000013fdfed9c', 'license:7898806eac3ab3be46e05a490a973eb0862848cf', 'live:1055518841238967', 'no info', 'discord:317306383064367104', 'ip:88.125.38.213', 'Lamar Brooks'),
('steam:11000013ff004e4', 'license:eddc58faee80d936b2e451224d7bb9f7ce434ee8', 'live:844425627873477', 'no info', 'discord:687733339142356998', 'ip:176.156.36.114', 'Hernandez Many'),
('steam:11000013fff12cf', 'license:05e7af188b38da84389ba1379539467452076340', 'no info', 'no info', 'no info', 'ip:82.225.131.65', 'Louis kevin'),
('steam:1100001400187de', 'license:d8dac31a9c3233397923a851d1254fc0f464d077', 'no info', 'no info', 'discord:686678111018156055', 'ip:176.130.253.41', 'gonatrouverjin'),
('steam:11000014003f8c9', 'license:118c2e757c3fa0a1cfbad305cf8d4691dfcda947', 'live:914798564708989', 'xbl:2535437233425331', 'no info', 'ip:194.206.67.57', 'romainlisembard'),
('steam:11000014018a850', 'license:993eadc6becde03f7fc5da952a989fb0dedfc957', 'live:1055522518536720', 'xbl:2535454726914369', 'discord:303902822527795202', 'ip:37.173.172.102', 'Guy Yougo'),
('steam:1100001401f3a5d', 'license:360098563d96d1af2a42a286892b25b02c47b0dc', 'no info', 'no info', 'no info', 'ip:91.165.213.6', 'loutchoo67dz'),
('steam:11000014041b883', 'license:8fe1b63c1043afbcf373fd03aa83cb63734ae9ee', 'no info', 'no info', 'discord:401862425957367808', 'ip:90.79.44.35', 'KHAMEL MENELE'),
('steam:110000140434870', 'license:a021a204c768f37b93343e8ae990affaff928f98', 'live:1829582488474729', 'xbl:2535445120547959', 'no info', 'ip:90.112.166.200', 'Hugo Soulax'),
('steam:1100001404a2b2f', 'license:0e7f1499d8f0a0fbabf66b792337be827cd79aa5', 'live:985157538369955', 'xbl:2535471430280993', 'discord:359783717389991936', 'ip:185.107.84.159', 'charifmounir73'),
('steam:1100001405117d9', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:1899946936028431', 'xbl:2533275009414764', 'discord:303952703057428482', 'ip:109.89.183.42', 'mattindorato'),
('steam:110000140517d7d', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:1899946936028431', 'xbl:2533275009414764', 'discord:303952703057428482', 'ip:109.89.183.42', 'notrox5000'),
('steam:11000014051c26f', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:1899946936028431', 'xbl:2533275009414764', 'discord:303952703057428482', 'ip:109.89.183.42', 'mattiaindorato'),
('steam:1100001405282dd', 'license:0694c45709d396eb9c2c3b6b5dec87c92cec7ec2', 'live:1899946936028431', 'xbl:2533275009414764', 'discord:303952703057428482', 'ip:109.89.183.42', 'bigcroissont'),
('steam:110000140575f11', 'license:7a5245350cfd2629e433e7f3609cf17aac9bd9b5', 'no info', 'no info', 'discord:430304668447539200', 'ip:94.104.218.142', 'tuncer3mrah'),
('steam:1100001405ba50a', 'license:b485453d43ff1097b91d0cb29b0aa42722596bad', 'live:914798327638621', 'xbl:2535435825577886', 'no info', 'ip:83.5.248.46', 'Label'),
('steam:110000140653012', 'license:e66ff560a6abc6b49e6b16e7ca6b383643af09d6', 'live:844425106743475', 'xbl:2535473512009782', 'discord:187539515743797249', 'ip:5.51.108.136', 'Sneakers');

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `banlist`
--

INSERT INTO `banlist` (`identifier`, `license`, `liveid`, `xblid`, `discord`, `playerip`, `targetplayername`, `sourceplayername`, `reason`, `timeat`, `expiration`, `permanent`) VALUES
('steam:110000100323296', 'license:d22677419f809727794f58680a4cbc4f312f5d15', 'live:1688853572556516', 'xbl:2535455422493239', 'discord:227769977422217227', 'ip:51.218.145.132', 'Dam3', 'Amado Fuentes', 'moddeur', '1565964336', '1565964336', 1),
('steam:1100001006020a5', 'license:6b5ab9c5583733cf2dc38110cda1d0206ebba0ce', 'no info', 'no info', 'discord:263423259977056256', 'ip:176.176.42.133', 'Tr@nxen', 'MXME1', 'troll', '1585263420', '1602543420', 0),
('steam:110000100f86fb9', 'license:62b1a779bac58c32a84492d6ce6e2f0badb7b047', 'live:1055521733721576', 'xbl:2535439251000296', 'discord:355769943666589706', 'ip:86.246.19.171', 'lil purple_noob', 'Mamadou Mbapet', 'trol', '1585139616', '1585139616', 1),
('steam:110000101008562', 'license:4ed8cc4c9877b5cfb1b4f6eef37e318a8b792fb7', 'live:844425395042511', 'xbl:2535461661145791', 'discord:484015958189539329', 'ip:86.199.242.6', 'Abdoule Lamoule', 'Amado Fuentes', 'moddeur casse toi petite salope', '1567370029', '1567370029', 1),
('steam:110000101608b6d', 'license:95ef8d178cb2f55544d1bdbf7cba523f57a411a1', 'live:844425140056797', 'no info', 'discord:223808892709109760', 'ip:109.134.5.218', 'Evan Williams', 'Jonhson William', 'hack', '1567299423', '1567904223', 0),
('steam:11000010181ef0f', 'license:94af24445d6224ed9889fc7705e0a5df3b871fa9', 'live:1055521282101281', 'no info', 'discord:385848108422135812', 'ip:93.26.193.112', 'Earl Hickey', 'Amado Fuentes', 'moddeur', '1567616373', '1567616373', 1),
('steam:110000101b5e717', 'license:c38f385f563333ff60a2f597d65c1a7e219a3cee', 'live:844427721318259', 'no info', 'discord:679165396166901761', 'ip:79.84.175.178', 'Laurent JALABERT', 'MXME1', 'troll', '1585263435', '1602543435', 0),
('steam:110000102435f91', 'license:fd27d96d33fff8a4822c5f4e8fce67e689f467fd', 'no info', 'no info', 'discord:441586899514163210', 'ip:88.182.143.206', 'Mikhail Bojianowski', 'Enzo Alvs', 'Moddeur', '1568991263', '1600095263', 0),
('steam:11000010348a122', 'license:c97d4d4c3dd7873a7b5e5a41ad91ab085da1c629', 'no info', 'no info', 'discord:432958881468121099', 'ip:90.89.192.134', 'Loan Shelby', 'Enzo Alvs', 'Moddeur', '1568912018', '1568912018', 1),
('steam:11000010388f992', 'license:715266734a30564daa8a94a1b175be690d7caf16', 'no info', 'no info', 'no info', 'ip:89.87.8.81', 'Brandone Scott', 'Dash', 'Troll / Carkill', '1585359184', '1585359184', 1),
('steam:110000103b337fd', 'license:7bd0457b765ae7a5a748a39378d9bcecd8f8c64f', 'live:1899945728490862', 'xbl:2533274857608059', 'discord:283328594569068545', 'ip:2.15.82.164', 'Sami Gercant', 'Enzo Alvs', 'Moddeur', '1567535550', '1598639550', 0),
('steam:110000105625cce', 'license:0098f46c6b8e053212f29e6ef519b63a7ba4932d', 'no info', 'no info', 'discord:611637434106773555', 'ip:62.35.18.47', 'weaked76', 'Tyler Manson Crown', 'troll no fear power', '1585430713', '1585517113', 0),
('steam:110000105c280b3', 'license:5aa036fbbccfca646c4b6df106fbd1edd2c2d85f', NULL, NULL, NULL, NULL, 'James Carter', 'Amado Fuentes', 'moddeur', '1566343410', '1566343410', 1),
('steam:110000105c79b08', 'license:350221f28469136c2d421e8c1bf248ec2c2be4f6', 'live:985154241713575', 'xbl:2535464010629983', 'discord:453893431622631425', 'ip:90.22.5.103', 'Mathieu Gamelin', 'Bobby Shaaw', 'cheater', '1567607259', '1598711259', 0),
('steam:110000106c8aabb', 'license:8485555f62d311e5fcd42c35725b7ba142673d7a', 'live:1055521797368919', 'xbl:2535419423906355', 'discord:252101992900460544', 'ip:176.185.244.227', 'Michel Blanc', 'Amado Fuentes', 'Give arme', '1567027116', '1567027116', 1),
('steam:110000107225a4c', 'license:81560a57ba34b9c57bf1db2622dafa7dfb1c91fb', 'no info', 'no info', 'discord:203470277647007745', 'ip:81.247.145.24', 'M.', 'Zek Kingston', 'Raison Inconnue', '1585448619', '1585535019', 0),
('steam:110000108075f39', 'license:0db803ffac547a1a8a4582ab80bd175f13fe1ea4', 'live:1829578912287937', 'no info', 'discord:188709331426869248', 'ip:212.195.105.80', 'Jhonny Binks', 'Bob Marlouf', 'Moddeur', '1568982128', '1568982128', 1),
('steam:11000010814f456', 'license:345efc7bf31dddcabf32135cfc32f533c351230a', 'no info', 'no info', 'discord:261536921174409216', 'ip:37.172.33.197', 'Jean-Bernard', 'Enzo Alvs', 'Moddeur', '1568991271', '1600095271', 0),
('steam:1100001093097d2', 'license:20afa6b4df3535d86a7868f718c673fabf228622', 'no info', 'no info', 'discord:132999001007063040', 'ip:2.6.134.27', 'Isaac Roth', 'MisterSmoke [LH]', 'freekill + cheat', '1566416873', '1597520873', 0),
('steam:110000109b77374', 'license:2d02d7129816c5b40ca8f1c13a2385e91a480798', 'no info', 'no info', 'discord:260468471857414145', 'ip:82.241.102.31', 'Abou Mbalabolo', 'Amado Fuentes', 'Give arme', '1567027115', '1567027115', 1),
('steam:11000010a4893fe', 'license:b778bb4bd596c67f35f96c60cb8867eb5be1588c', 'no info', 'no info', 'discord:285490148039196672', 'ip:176.181.95.70', 'Abelino Flores', 'Anatoly Liches', 'mod menu', '1585151427', '1602431427', 0),
('steam:11000010a82f7e2', 'license:ee53cccd1933d396cb98dfcd96f34355714eb92e', 'live:1899945727823124', 'no info', 'discord:460648140437979136', 'ip:82.226.100.74', 'John', 'TONY NAGEL', 'trool', '1585452114', '1585452114', 1),
('steam:11000010aee97e7', 'license:ed33400d8723a9ef64a9ef8f4d157e25aa583bfb', 'live:1899947122937641', 'xbl:2535436903463036', 'discord:356991224470568962', 'ip:81.49.25.84', 'Khali Escobar', 'Amado Fuentes', 'Moddeur : question? : https://discord.gg/axqfbG8', '1567216782', '1598320782', 0),
('steam:11000010af61c55', 'license:d5c90ec37426523bfc936756d5d7bee47151c9f2', 'no info', 'no info', 'no info', 'ip:176.156.77.101', 'Lucas lamon', 'Tyler Manson Crown', 'troll nofear power', '1585430110', '1585516510', 0),
('steam:11000010afa4797', 'license:4490da3ad540df1ce01163a01d982916fe209b87', 'live:1055521868865342', 'xbl:2535467240226080', 'discord:323651676844195843', 'ip:78.121.121.186', 'Enzo ????????', 'TONY NAGEL', 'trool', '1585446528', '1585446528', 1),
('steam:11000010b22426c', 'license:96ebfd407abe291861dd59737f8cd6ce39fcad7d', 'live:1829581636423397', 'xbl:2535447453730098', 'no info', 'ip:92.139.224.109', 'Mathias Zinto', 'Dash', 'Carkill + troll / vient discord pour ton déban !', '1585356503', '1585356503', 1),
('steam:11000010b57c645', 'license:896379634e1410e2f6f74fd825fc034d8a620bf0', 'live:985156581932389', 'xbl:2533274936424496', 'discord:300652432432693268', 'ip:176.174.44.249', 'Hugo Lliorace', 'Enzo Alvs', 'Moddeur', '1567628190', '1567628190', 1),
('steam:11000010ba1295d', 'license:124075af016737135fbfec9c052f21a4d2e52f17', 'live:1055521190224254', 'no info', 'no info', 'ip:81.241.155.21', 'Abdel_Crime', 'Lucas Pignon', 'mod menu', '1585449760', '1611369760', 0),
('steam:11000010bb02af6', 'license:d76569bfc6ca26ec0660dffffa2f5608aa0ae3ec', 'live:1055518612258384', 'xbl:2535430416130710', 'discord:442014387327336458', 'ip:51.91.22.235', 'Fred Martino', 'Roofters', 'nique t(a tante', '1585172519', '1585172519', 1),
('steam:11000010bca0fc2', 'license:bb7d914c214dfec07f7cfdc47b2668cbc21c357a', 'live:914801204867036', 'xbl:2535406864098219', 'discord:257968549065261056', 'ip:86.227.133.97', 'Brisco Ralam', 'Enzo Alvs', 'Moddeur Anonymous ?', '1567871756', '1567871756', 1),
('steam:11000010be3802b', 'license:174ca8517e7381494050bb5cb7f73dbe442a5b05', 'no info', 'no info', 'discord:183968006567755776', 'ip:93.22.205.28', 'Grégoire Mckynley', 'Amado Fuentes', 'Cheat', '1566007334', '1566007334', 1),
('steam:11000010c3e5a7f', 'license:9c3a4159d235c2b7e8cd4af3ad5394e3f00922c7', 'live:1899946063977166', 'xbl:2533274849287280', 'discord:401304638856364034', 'ip:90.66.204.9', 'Ironhides', 'Chuck Ortiz', 'troll', '1585090979', '1585090979', 1),
('steam:11000010c6031d4', 'license:e4c5f618ae26b7559fa8fc47027b210015401358', 'live:985154221866876', 'xbl:2535414802350177', 'discord:238687163569537036', 'ip:90.40.194.2', 'Alex Price', 'Mamadou Mbapet', 'vol de voiture de police', '1585443994', '1585616794', 0),
('steam:11000010c797e2c', 'license:2155dcfd5c2a8c05b888f9a169d913fa2ae1fa93', 'live:1829582643328872', 'xbl:2535456652992963', 'discord:441641368335548416', 'ip:82.64.120.6', 'Corentin Holite [Azmoco]', 'Bobby Shaaw', 'Moddeur', '1567803951', '1567803951', 1),
('steam:11000010cc31d6e', 'license:5848ea53788a65cb9910fd2590588d30bea8f7db', 'no info', 'no info', 'discord:304899342748090369', 'ip:93.28.12.26', 'Bilou Kurt', 'Salvatore Luccio', 'freekill moddeur', '1566393852', '1566393852', 1),
('steam:11000010ce19e55', 'license:848b92e5b14b8f07780b626ddbb123a51d54c604', 'live:914801904530206', 'xbl:2535414163903773', 'no info', 'ip:78.241.46.125', 'S\'waD', 'Pedro Nagel', 'TRoll + Carkill', '1585139616', '1585139616', 1),
('steam:11000010d2ed26e', 'license:cdc0f5a1ff58058bb22ac7d57b173c8e8e982664', 'no info', 'no info', 'discord:234029684134772737', 'ip:78.230.128.200', 'Joachim Malek', '[H] Bob Bob', 'troll', '1585433640', '1611353640', 0),
('steam:11000010df4524a', 'license:63c386187c5b4ccc5d4bac32caa4a6725c42075f', 'no info', 'no info', 'discord:286850101207367693', 'ip:81.248.0.185', 'Eiden Covaliski', 'YANIS LIOTTA', 'Modeur', '1565824117', '1565824117', 1),
('steam:11000010e124481', 'license:84bfc696524a676b1162fc51d394436fab32ee58', 'live:914798440712415', 'xbl:2535446069423716', 'no info', 'ip:90.70.249.55', 'Jean Plouk', 'Roofters', 'modemenu', '1585351965', '1585351965', 1),
('steam:11000010e13f83b', 'license:e63a57152a416e335d2ecb428def3c472627f1cb', 'live:914798541934839', 'xbl:2535422414355891', 'no info', 'ip:90.70.249.55', 'Dimitri Smitch', 'Pedro Nagel', 'troll', '1585139616', '1585139616', 1),
('steam:11000010e281d6b', 'license:c281eeacaf5de46f304591799c51e6fae28dda99', 'no info', 'no info', 'discord:308583811468361729', 'ip:85.171.247.163', 'Mamadou Libali', 'Bobby Shaaw', 'moddeur', '1568056493', '1599160493', 0),
('steam:11000010e4c6a2d', 'license:1186b6ea3d85a0cc5caf56e74f0708113fe48477', 'live:1055518301424126', 'xbl:2535465689720214', 'discord:214865888510345217', 'ip:93.16.124.103', 'Ahhhhh', 'Enzo White', 'Moddeur', '1568236892', '1599340892', 0),
('steam:11000010ee91287', 'license:81d817f5311d9242bfb5fef7212f5b0d258295e3', 'live:985157026284549', 'xbl:2535411379519460', 'discord:340247124925087744', 'ip:86.249.28.196', 'Abdou lacisa', 'Bobby Shaaw', 'cheat', '1567359067', '1598463067', 0),
('steam:11000010f4ed8bc', 'license:26a217c87c838520eab25d2cf01e933f090cda5c', 'live:844428431206631', 'xbl:2535430088125097', 'no info', 'ip:83.159.82.241', 'Mathieu Pomme', 'Amado Fuentes', 'give arme', '1567628669', '1598732669', 0),
('steam:110000110a29248', 'license:682b97c5caf8a642982d9ab683258a411444bc40', 'live:844424992778150', 'xbl:2535457528168731', 'no info', 'ip:90.116.106.62', 'Tany Zampa', 'Jackson Manson Crown', 'carkill + troll', '1585529692', '1585616092', 0),
('steam:110000110cca6ec', 'license:303f9bb7f10ffb0a809c612e8ca55b876f2513de', 'live:1055521378947500', 'xbl:2535438285909455', 'discord:192302011805335552', 'ip:87.66.160.15', 'Jack Oligaro', 'Amado Fuentes', 'Moddeur', '1567195438', '1598299438', 0),
('steam:11000011190700c', 'license:738133497233baa2dd86dc77f0af4fe888bb4cbb', 'no info', 'no info', 'no info', 'ip:89.2.222.209', 'Igor Balor', 'Jack Grimms', '.', '1585351975', '1585351975', 1),
('steam:1100001119d6adf', 'license:8065e48d3014877b6a988b0c276b574468b00dd6', 'no info', 'no info', 'discord:458661855074713640', 'ip:83.202.159.172', 'Zack Sheraton', 'Enzo Alvs', 'Moddeur', '1568145287', '1599249287', 0),
('steam:110000111a5bf6e', 'license:08a84c6b0beee20f9b6776b234dbf5adb7997afd', 'live:985157375820678', 'xbl:2535441276965319', 'discord:311515471361081355', 'ip:78.126.245.234', '! 🆃🅸🅴🅶🅾', 'Jonhson William', 'hack spawn voiture', '1567299623', '1567904423', 0),
('steam:110000111de91af', 'license:0d4bf791f80251c3c4c89faa3b2910d823a01d92', 'no info', 'no info', 'discord:282252317271523330', 'ip:93.22.251.144', 'Jhonny Dubled', 'Jonhson William', 'Free kill hack', '1567299508', '1567904308', 0),
('steam:1100001128965f9', 'license:0d9fc97b1be5bc47293575b05d993dc16aa7b63f', 'live:985154447544884', 'xbl:2535447542775208', 'no info', 'ip:90.119.210.26', 'La Quica', 'Tyler Manson Crown', 'troll no fear', '1585337587', '1585337587', 1),
('steam:110000112a15f52', 'license:7430a76cae892d52554bfcca85590f9df4e5a1a7', 'no info', 'no info', 'discord:298243342087618560', 'ip:78.241.192.14', 'Jorge Gomez', 'William Calaway', 'Achète véhicule d\'occasion à 1$ (cheat)', '1568460779', '1569065579', 0),
('steam:110000112c74d5b', 'license:ce0637c84fa2b122c0239d20cb4bfc8a71882f17', 'live:844428540253349', 'xbl:2535411781163804', 'no info', 'ip:176.184.100.188', 'Antho Veratti', 'Enzo Alvs', 'Se téléporte partout sur la map (Moddeur)', '1567873116', '1567873116', 1),
('steam:110000112d8c41f', 'license:0f05730ad2bdd4085246bcf9aa90dff4646c5b63', 'live:985154121472331', 'no info', 'discord:229585707214045187', 'ip:176.142.116.79', 'Pedro Mongrool', 'Enzo White', 'Moddeur', '1568236887', '1599340887', 0),
('steam:11000011312af2a', 'license:58898e13ec7e24780402ef01ab1df544d7197860', 'live:985157206780499', 'no info', 'no info', 'ip:90.103.119.253', 'Rachid Teurki', '[H] Bob Bob', 'troll', '1585433651', '1611353651', 0),
('steam:1100001135a0c09', 'license:a6be5eb5843a114c1a66a8c5796b52ee94c920e7', 'no info', 'no info', 'discord:320483178735337474', 'ip:88.181.253.131', 'MIXANY | SUP', 'Enzo Alvs', 'Moddeure', '1568653499', '1599757499', 0),
('steam:11000011375be6d', 'license:c3df366182dac0eaf9df95428a49cad475152c64', 'no info', 'no info', 'discord:576044719885516819', 'ip:217.136.70.65', 'Plug Walk', 'Enzo Alvs', 'Moddeur', '1568660774', '1599764774', 0),
('steam:1100001137d99a4', 'license:d669d9321e52ef0cdf888e57b116aaa4bc589042', 'live:1759222092815047', 'xbl:2533275082991530', 'discord:209568627320422401', 'ip:90.30.69.117', 'Paul Williams', 'Amado Fuentes', 'moddeur', '1567113783', '1567113783', 1),
('steam:110000113873b76', 'license:bbc34cb4dbbbeb44b7ea54054a31113662441357', 'live:1759222414763280', 'xbl:2535413768675039', 'no info', 'ip:86.248.240.23', 'Pablo Don Quijotte', '[H] Bob Bob', 'troll', '1585436241', '1585436241', 1),
('steam:110000113aa86e9', 'license:af5ffb0d3177075d2ff3fcf9178c929e4c777f23', 'live:985153847330606', 'xbl:2535447345010575', 'no info', 'ip:78.127.219.98', 'Otmaan Ben', 'Enzo Alvs', 'moddeur', '1568660749', '1599764749', 0),
('steam:110000113b6fcbe', 'license:a3eaac8fbe6a1ae1de3d5ad345ddfce94b7f978f', 'live:985154179161294', 'xbl:2535457068288844', 'discord:510803646980685824', 'ip:90.30.178.5', 'ZrEExX // Frank Madon', 'TONY NAGEL', 'carkill', '1585431110', '1586295110', 0),
('steam:110000113beed95', 'license:86a7550a7a5390897b2685ddcebdeda43b031cd5', 'live:1055521998510712', 'xbl:2535423237221088', 'no info', 'ip:90.103.198.29', 'Benoit Mlk', '[H] Bob Bob', 'troll', '1585433645', '1611353645', 0),
('steam:110000113f91420', 'license:c26715b073da23c2879f589624792715c3d9e32a', 'live:985157310533175', 'xbl:2535418934282445', 'discord:331163074545451016', 'ip:90.108.156.112', 'Tex', 'TONY NAGEL', 'trool', '1585446806', '1585446806', 1),
('steam:11000011408a887', 'license:a7bc3174d0f72feb66fb2722a79a22555e09f561', 'live:985153973609844', 'xbl:2535464753544698', 'discord:340920597754150912', 'ip:90.104.247.96', 'Koyaa', 'Bob Marlouf', 'moddeur', '1568983128', '1568983128', 1),
('steam:110000114155731', 'license:6e3e6d19a7e3b609c6453a38354388ec8da07602', 'live:914798432384057', 'xbl:2535425256404933', 'discord:286970257049124884', 'ip:88.180.120.190', 'Amadou Boka', 'Enzo Alvs', 'Moddeur', '1567542130', '1567542130', 1),
('steam:110000114c79fca', 'license:e0b79ff3e82f2c5a928a62d4f2c60aeaa3d61be9', 'live:985154218526884', 'no info', 'discord:467279830983901205', 'ip:90.91.82.80', 'Louis Frost', 'Bobby Shaaw', 'cheater', '1567609286', '1598713286', 0),
('steam:110000114f5633c', 'license:ac956ffc7ad8c81bcec9b2217ad2f7286733f1cb', 'no info', 'no info', 'discord:260086578934710272', 'ip:93.8.225.174', 'Dani Mikelson', 'Amado Fuentes', 'Cheat', '1566146628', '1571330628', 0),
('steam:1100001150545b4', 'license:897c35bd4cd6f75141ba7dca3bd8aec5032c9645', 'live:914798334211404', 'no info', 'discord:429210572282920961', 'ip:77.152.71.132', 'Paul Riina', 'Enzo Alvs', 'Moddeur', '1568990981', '1600094981', 0),
('steam:1100001153596cf', 'license:f9544bdd767a8c89bab48549060aef3d6aee82a2', 'live:1688853531836291', 'xbl:2535414541633831', 'no info', 'ip:193.250.243.34', 'Dixon Scott', 'Dash', 'Troll / Carkill', '1585359202', '1585359202', 1),
('steam:1100001153a0b44', 'license:e9b622511ae50ef6a4ed2f8370fd634e3e7215f5', 'live:985154198709507', 'xbl:2535451971815756', 'no info', 'ip:85.190.77.9', 'Jordan Taiko', 'Dash', 'Carkill + troll / vient discord pour ton déban !', '1585356529', '1585356529', 1),
('steam:110000115706f04', 'license:70bf61b64be221b3ee406ec25e66fe06eea46efc', 'no info', 'no info', 'discord:463316055130112000', 'ip:176.169.140.33', 'tim poli', 'Bobby Shaaw', 'cheater', '1567609276', '1598713276', 0),
('steam:110000115d577fe', 'license:5b7b60c7f47b8ac87783f9283dfad5593da4f399', 'no info', 'no info', 'discord:511166939012399106', 'ip:92.141.126.224', 'Moulouh', 'Amado Fuentes', 'Moddeur', '1565919175', '1591839175', 0),
('steam:110000115e4ff2c', 'license:4cae7ec324c98932afaf3481c6e188d9e06ff490', 'no info', 'no info', 'discord:256825012336590848', 'ip:86.253.9.137', 'Guardians', 'Bob Marlouf', 'Moddeur', '1568982091', '1568982091', 1),
('steam:110000116042a45', 'license:9faed6b41d6a500f27afc507e4754071d00c5c3f', 'live:1055518569786102', 'xbl:2535422196060479', 'no info', 'ip:83.202.142.85', 'Leo Toxic', 'Jack Grimms', '.', '1585351966', '1585351966', 1),
('steam:11000011615d25e', 'license:ee2ad6b7e016de38ae11704f4d1097b0f845caad', 'no info', 'no info', 'discord:524256471131881472', 'ip:212.239.196.175', 'David Urscov', 'Enzo Alvs', 'Moddeur ( Toute les armes du jeux )', '1567860113', '1567860113', 1),
('steam:1100001161a9040', 'license:4da900cf38b17d4ef96b36dcbd0dd4e637d327bd', 'no info', 'no info', 'discord:645038077991059466', 'ip:78.200.81.63', 'KILLER QUEEN', 'Anatoly Liches', 'vole une arme e deco', '1585150773', '1585496373', 0),
('steam:11000011659b0ee', 'license:7ebf649f93b700c7537a30e0e679a16b2822fda5', 'live:1759222022720958', 'xbl:2533275012786622', 'discord:237199337661136896', 'ip:91.167.119.71', 'Brownie Darson', 'Enzo Alvs', 'Moddeur', '1567448738', '1598552738', 0),
('steam:1100001166cce0b', 'license:d27918e9acf05ed21bb44b7e72050aec1d328aa7', 'live:914802226813571', 'no info', 'discord:602881794282618890', 'ip:85.5.223.48', 'Vladimir Abarnikov', 'dani', 'nike ta tante', '1585084348', '1585084348', 1),
('steam:1100001168fd7d8', 'license:8d96c00d42bed4ae6f152b3d4b07645abc6b5bdf', 'no info', 'no info', 'discord:420305957076074496', 'ip:90.93.245.146', '✪Is_Maxxs✪', 'Tyler Manson Crown', 'power/ troll / nofear', '1585418289', '1585504689', 0),
('steam:110000117212f6a', 'license:70d709231e01e113cf9ec0a294fdd3f283d68d47', 'live:985153939177920', 'xbl:2535472705225135', 'discord:355382853137072130', 'ip:176.145.31.114', 'Ludo Cortez', 'Roofters', 'pareil', '1585172461', '1585172461', 1),
('steam:1100001175f4b59', 'license:7ec0a17c3c27177c8c2f3fd3e9c6687196dfac54', 'no info', 'no info', 'discord:391614348642222082', 'ip:85.168.153.86', 'Akim Baux', 'Amado Fuentes', 'carkill moddeur', '1565979426', '1565979426', 1),
('steam:110000117729319', 'license:2389dfa75e3240518574a86a980f7a32919cfce7', 'live:1055518314009728', 'no info', 'discord:461917018463928325', 'ip:89.92.188.68', 'trystan pinto', 'Amado Fuentes', 'Modeur', '1566176299', '1597280299', 0),
('steam:11000011789e571', 'license:e90f67db4b3c37d0749def0d729f683495b9fb0b', 'live:844425413812681', 'xbl:2535413949110149', 'discord:406924001139752982', 'ip:93.29.213.54', 'Antoine Kiel', 'Roofters', 'ntr trolleur', '1585073173', '1585073173', 1),
('steam:1100001178df2f5', 'license:ed5b2b60499659b3e4a6711b3030d342f25ff65c', 'no info', 'no info', 'discord:293114652215214081', 'ip:176.180.178.174', 'Jessica Morelo', 'Enzo Alvs', 'Moddeur', '1568145279', '1599249279', 0),
('steam:110000117c9c4ad', 'license:689943462c93f34b83b9b64a7b8a9926f645f78c', 'no info', 'no info', 'discord:506925341185409024', 'ip:85.190.76.218', 'Mark Lewis', 'Amado Fuentes', 'moddeur', '1567628874', '1598732874', 0),
('steam:110000117ce91af', 'license:7a747ce2aca039bc4fcba0162365fa076137048c', 'live:844429211217462', 'xbl:2535473083510724', 'discord:259296555427823616', 'ip:176.132.208.193', 'André Madon', 'Mamadou Mbapet', 'troll', '1585431322', '1585604122', 0),
('steam:110000117e17f60', 'license:7e1317ee2614be5c6482c4dbe395a1767aa00174', 'live:914802200583240', 'no info', 'no info', 'ip:109.21.186.190', 'Bozo Dezinguer', '[H] Bob Bob', 'Raison Inconnue', '1585434995', '1585434995', 1),
('steam:1100001182f302d', 'license:88c3500881a73a4161513ad27b45250f044fd2f0', 'live:985154328283607', 'xbl:2535429446162415', 'discord:333610815431376897', 'ip:165.169.35.44', 'Wallis Lajoye', 'Enzo Alvs', 'Moddeur', '1567875559', '1567875559', 1),
('steam:110000118e67613', 'license:31c3a1559371420b909473dcbc47c4a43712adb0', 'live:1055518592221372', 'xbl:2535409760794601', 'discord:529991237533564938', 'ip:212.194.104.142', 'ivfinisteriv', 'Mamadou Mbapet', 'car kill', '1585078626', '1585337826', 0),
('steam:11000011cc2b122', 'license:12c19daf596481a9b3a3777cda12543aabe6fe71', 'live:985153992585429', 'xbl:2535432635687332', 'no info', 'ip:94.107.12.155', 'Karim', 'Lucas Pignon', 'mod menu', '1585449777', '1611369777', 0),
('steam:11000011cd6c324', 'license:23ae9abdd01b833d8677ed736035dd0b6030c56f', 'no info', 'no info', 'no info', 'ip:176.167.11.213', 'JohnBacker', 'Dash', 'Carkill + troll / vient discord pour ton déban !', '1585356899', '1585356899', 1),
('steam:11000013228d4dc', 'license:0c9647096717b2c534a6533cd7cae31b80d6490d', 'live:985153850337394', 'xbl:2535427169157747', 'no info', 'ip:195.36.207.100', '???????????????????????? ????', 'TONY NAGEL', 'mod menu', '1585526824', '1585526824', 1),
('steam:1100001324c1813', 'license:7af5f1d0305b5213142d07593521ec980046b4b6', 'no info', 'no info', 'discord:353618755064168450', 'ip:91.160.16.114', 'Alison Lewis', 'William Calaway', 'Achète véhicule d\'occasion à 1$ (cheat)', '1568460737', '1569065537', 0),
('steam:110000132614fe9', 'license:b22068ab9c595857ee305cbb6b54a997dac9f5c9', 'live:1055518806030770', 'no info', 'discord:468862417888083975', 'ip:70.83.158.54', 'Jacob Murphy', 'Tyler Manson Crown', 'fear', '1585192979', '1585538579', 0),
('steam:11000013273cdbd', 'license:2bbdf6e61386d727a7bc15fe5570247d08cf5760', 'no info', 'no info', 'discord:682596825940623397', 'ip:85.26.96.231', 'Roulioo.', 'Tyler Manson Crown', 'nofear troll power eta', '1585418639', '1585505039', 0),
('steam:110000132a82652', 'license:df957354c8c9e5948eec0d0bbd68e53820dae3ef', 'live:914798314477055', 'no info', 'discord:401645848838144003', 'ip:188.154.166.210', 'JES Skyzz', 'Sebastien Benitez', 'vas pub ailleur', '1585154506', '1602434506', 0),
('steam:110000132e39d2a', 'license:0706853698a9019bf6f01c9493675fcbcf384fd7', 'live:914798199322407', 'no info', 'discord:295144870803275776', 'ip:91.91.243.203', 'Feu2Glace', 'Mamadou Mbapet', 'vol de voiture de police', '1585444062', '1585616862', 0),
('steam:110000132e6e6ba', 'license:727eab680d1c0bc0a2bd28771eeda002aaef1c80', 'live:914801396941252', 'xbl:2535451685343315', 'discord:659325323120345124', 'ip:77.203.228.121', 'Juan Don Quijote', '[H] Bob Bob', 'troll', '1585436139', '1585436139', 1),
('steam:110000133d3d284', 'license:3d4c9e96631326ba8a8cf049ca235bf61294b50a', 'live:844427636799220', 'xbl:2535453880814648', 'discord:464737196096618497', 'ip:80.200.212.49', 'MIGUZZ', 'Zek Kingston', 'Raison Inconnue', '1585448630', '1585535030', 0),
('steam:1100001342a956f', 'license:2273d87252bba5f64efd700971703e2e2f4a5b57', 'live:985157855447652', 'xbl:2535427575623770', 'discord:523943770086047746', 'ip:78.237.168.127', 'Nito Tavares', 'Tyler Manson Crown', 'power nofear trash radio (discord pour ton deban)', '1585506095', '1585592495', 0),
('steam:1100001342f5a01', 'license:80f08fba94f37806054f8ea470c752929f98c7ea', 'no info', 'no info', 'discord:419140572083650590', 'ip:194.59.249.20', 'Mohammed Sosa', 'Jack Grimms', 'troll', '1585172777', '1585345577', 0),
('steam:11000013463a88f', 'license:f66ae76a56931862fc355335eb2d53da7f646a0c', 'no info', 'no info', 'discord:452370806773907467', 'ip:93.22.138.63', 'Youssouf Benzette', 'William Calaway', 'Moddeur', '1568572827', '1568572827', 1),
('steam:11000013465e474', 'license:ac3f9fef0ecccab2e8892bb253b5383c32e27e01', 'no info', 'no info', 'discord:383639305790423040', 'ip:88.162.217.113', 'mathieudiril30', 'Bobby Shaaw', 'Moddeur', '1567541519', '1567627919', 0),
('steam:110000134beed36', 'license:f2f1830a85f467242c1b5456bf52abb7dba48b44', 'no info', 'no info', 'discord:462891921581408268', 'ip:31.31.55.90', 'Arouf ou Selem', 'Sebastien Benitez', 'vas pub ailleur', '1585154451', '1602434451', 0),
('steam:110000134f80c7e', 'license:edcd10183fdc05bec0c7da7484bc393b39f0cb85', 'no info', 'no info', 'discord:470621892403920908', 'ip:176.164.84.130', 'Eddie Sanchez', 'Bobby Shaaw', 'moddeur', '1567953917', '1599057917', 0),
('steam:110000134f89024', 'license:44765cf19e65ae0c1e4b15fb4e40348b09863137', 'no info', 'no info', 'discord:396326398542741508', 'ip:93.10.143.79', 'Jack Sparrow', 'Jonhson William', 'hack', '1567616391', '1567616391', 1),
('steam:110000134fffb74', 'license:79b3821bf0fa4719a836198ad8534f5561b5b63a', 'live:985154218888113', 'xbl:2535463959957522', 'discord:536588501244837888', 'ip:78.224.34.2', 'Akil Lucci', 'Anatoly Liches', 'troll', '1585067487', '1585499487', 0),
('steam:1100001352633ad', 'license:1a06bed53470bb978a16c881ebc58cc2488a73be', 'live:844424981024370', 'xbl:2535406773915378', 'no info', 'ip:93.26.106.184', 'Michel LaGazelle', 'Dash', 'Carkill + troll / vient discord pour ton déban !', '1585356854', '1585356854', 1),
('steam:110000135ab8b69', 'license:bf9cb24d77b8bf197266407084eaf2a9d64fad6c', 'live:914802190110390', 'xbl:2535434728155325', 'discord:405365427481346061', 'ip:79.81.80.147', 'Pedro Ferrera', 'Amado Fuentes', 'give arme', '1567629259', '1598733259', 0),
('steam:110000135b68a85', 'license:fa3af3d8cb0959df63da6a8c8e3a7d323c3280f5', 'live:1055521885729333', 'no info', 'discord:486410356567179265', 'ip:90.119.128.178', 'Dwayne Johnson', 'Amado Fuentes', 'modeur', '1567195363', '1567195363', 1),
('steam:110000135f4a48a', 'license:a29a2a15af91d45c5ad784ae40b64c27af04183c', 'no info', 'no info', 'discord:362295153895145485', 'ip:37.165.186.196', 'Walid Kort', 'Bobby Shaaw', 'cheat', '1567359036', '1598463036', 0),
('steam:11000013605048b', 'license:8cf84f2a662fe2c10d42e10be7c693c30ad4f426', 'live:985154309236042', 'no info', 'discord:307523714101149708', 'ip:31.10.174.153', 'Dimitri Abarnikov', 'dani', 'nike ta tante', '1585084342', '1585084342', 1),
('steam:11000013613e221', 'license:531232c0683b8eb7e3827da82e62bfea685ed7d8', 'no info', 'no info', 'discord:580005929076916224', 'ip:81.49.209.169', 'Daryl', 'Bobby Shaaw', 'Moddeur', '1567777257', '1567777257', 1),
('steam:110000136172b36', 'license:98b0fd2dd3301f5c4258c2ae7a4873e6533ebcc4', 'live:914798230687145', 'xbl:2535408797459928', 'discord:645454105422069760', 'ip:82.64.86.141', 'Chico Escobar', 'TONY NAGEL', '0', '1585177184', '1585177184', 1),
('steam:1100001361c4033', 'license:ad4b59545e409603363378e9100f27d8629f48ca', 'live:914801758374459', 'xbl:2535408385283506', 'no info', 'ip:83.157.109.157', 'Jerry Gustavo', 'Tyler Manson Crown', 'troll no fear', '1585337509', '1585337509', 1),
('steam:1100001361e0b45', 'license:76b5296d5c83c699a8374f2f21297bea48ea0245', 'live:914798233524995', 'xbl:2535419871937125', 'no info', 'ip:213.55.221.15', 'Emilio Rojas', 'Sebastien Benitez', 'salut frerot', '1585154661', '1602434661', 0),
('steam:11000013626601c', 'license:4404205f2342468da27cc0efe1b6a6e45d0bc02f', 'no info', 'no info', 'discord:504773003972968449', 'ip:87.231.136.177', 'La saulai 69', 'Jonhson William', 'hack', '1567299386', '1567904186', 0),
('steam:11000013647c998', 'license:dec74ceaf20c763111ee4ec88ddeeec6d43c33a4', 'live:914801311020380', 'xbl:2535440624027736', 'discord:513221389944094730', 'ip:74.14.185.1', 'Omar Mohamed', 'Tyler Manson Crown', 'fear', '1585192963', '1585538563', 0),
('steam:110000136515af9', 'license:aea842adc4514ab0b9bae8c904edae1fb349f722', 'no info', 'no info', 'discord:675255245093339147', 'ip:82.102.18.114', 'Kévin Dumas', 'Lucas Pignon', 'prend moi pour une frite', '1585265576', '1585351976', 0),
('steam:110000136536bc8', 'license:16b7e478d13f234ff0c3e48965c027d5b36f3a8f', 'live:985154329667716', 'xbl:2535414360250383', 'no info', 'ip:86.192.197.195', 'Eddy Blasva', 'Enzo Alvs', 'Moddeur', '1568913176', '1600017176', 0),
('steam:11000013654caa4', 'license:55add7ece89476475c82b6a6308bc63716d81f6f', 'live:844425392204570', 'no info', 'discord:397560936786821120', 'ip:213.111.40.115', 'Mike Arist', 'William Calaway', 'moddeur', '1567605437', '1598709437', 0),
('steam:1100001365a992b', 'license:192007cfae8eee40f939f2ba30b5ecba93c20615', 'live:1055518467828530', 'xbl:2535431217058809', 'discord:433588485039849482', 'ip:92.170.93.17', 'Wilson Anderson', 'TONY NAGEL', 'trool', '1585438572', '1585438572', 1),
('steam:110000136667e4d', 'license:f7a47574574e5e645338c63a292f48446fdfe14b', 'live:844425317964689', 'xbl:2535458687455129', 'discord:434759154415042560', 'ip:85.190.76.233', 'Miguel Garciia', 'Enzo Alvs', 'Moddeur', '1568498323', '1599602323', 0),
('steam:1100001366b63c6', 'license:aa58d66c2fe03c739ca6113376174774e1d244ce', 'live:1055518706957892', 'xbl:2535405558223386', 'no info', 'ip:176.184.135.132', 'Adama Thaore', 'Sebastien Benitez', 'modmenu', '1585438543', '1585438543', 1),
('steam:110000136895a41', 'license:b84e54f712318a35e424edbb3f89c1518e475357', 'live:844425368000585', 'no info', 'no info', 'ip:85.168.0.232', 'Hmidou Menace', 'TONY NAGEL', 'trool', '1585353836', '1585353836', 1),
('steam:110000136b1fc06', 'license:8046162c761eed4805aaf02af83425f38de2f0ce', 'live:1055521890820919', 'xbl:2535465180557677', 'discord:171276248197103617', 'ip:90.62.245.35', 'Florian Demille', 'Enzo Alvs', 'Moddeur', '1567819116', '1567819116', 1),
('steam:110000136fd83af', 'license:e9afa4d053f5e3347e491e4ec145a1f97797ba87', 'live:914798341781568', 'xbl:2535445982592094', 'discord:528202573057097729', 'ip:91.170.46.122', 'Arthur Beaurain', 'William Calaway', 'moddeur', '1568912032', '1568912032', 1),
('steam:110000137d2cece', 'license:447c03f0ec474f422cf0d26edcbb6898cb0c9680', 'live:985154484160646', 'xbl:2535433295435528', 'discord:541300879639183360', 'ip:128.78.58.134', 'Fares Akra', 'MXME1', 'moddeur', '1585272614', '1585272614', 1),
('steam:110000138bc7d5b', 'license:03181ac7831f5974bbef4451a3fbb514bb7ed170', 'live:914802072492467', 'no info', 'discord:218445163779850251', 'ip:90.118.143.143', 'thomas tylors', 'Roofters', 'freekill troll avec bus', '1585073050', '1585677850', 0),
('steam:110000139b156ed', 'license:4126af9086ee3059463db3dc4c62cde619f5b6f0', 'live:1055521932931122', 'xbl:2535453963549647', 'discord:488398402200010753', 'ip:81.164.93.111', 'Raphael Ralam', 'Enzo Alvs', 'Moddeur Anonymous ?', '1567871787', '1567871787', 1),
('steam:11000013a922b5a', 'license:8bd4116a1abf01b90b576a787b9731a25336fcd0', 'no info', 'no info', 'no info', 'ip:176.58.224.159', 'mitsarask88', 'BIENglace', 'troll', '1585451015', '1605755015', 0),
('steam:11000013aa7e6cf', 'license:0078c7b0d2c4d9d8ba2633807436b90d18da0a2b', 'live:985154315439361', 'no info', 'no info', 'ip:91.207.57.252', 'Ayoub Babil', 'Roofters', 'modmenu', '1585351948', '1585351948', 1),
('steam:11000013ad1ca16', 'license:3c513c08945551e912805ffad7f3d388b96426b2', 'no info', 'no info', 'discord:460064152405147688', 'ip:109.29.230.44', 'patrice62500', 'Jackson Manson Crown', 'carkill + troll', '1585529649', '1585616049', 0),
('steam:11000013b6911dc', 'license:ecfa3f09c302d6e69f673ff07d98b88a5008a7e1', 'live:1055518741579399', 'xbl:2535470342310164', 'discord:634034117415272448', 'ip:94.111.59.63', 'georges.melanitis', 'SaYoNaraa', 'carkill / troll', '1585415819', '1594055819', 0),
('steam:11000013bc7a11f', 'license:24f3bab08ad160504d67e64439b660d64578ea17', 'no info', 'no info', 'discord:575333173483798560', 'ip:88.125.144.37', 'Raven Weiss', 'TONY NAGEL', 'moddeur', '1585089745', '1585089745', 1),
('steam:11000013bce82c2', 'license:96aba64f714945e62797742c5fb1cf431a308e13', 'live:914801469653698', 'xbl:2535465815045686', 'discord:331079185546215425', 'ip:176.180.85.53', 'Chris Force', 'Amado Fuentes', 'moddeur', '1567370258', '1598474258', 0),
('steam:11000013bcf9cff', 'license:c964d922fadeaacc04263421de1b11243ec55ed7', 'live:1055518540317414', 'xbl:2535415922187157', 'discord:270958242421538816', 'ip:128.78.120.39', 'John White', 'TONY NAGEL', 'Modeeur 2000', '1585178627', '1602458627', 0),
('steam:11000013bfed992', 'license:38d67fc4a9b77bee6ed0c4b7a2fb1a20f8608288', 'no info', 'no info', 'discord:444797105568088064', 'ip:91.160.170.217', 'Lorenzo Delmez', 'TONY NAGEL', '0', '1585177208', '1585177208', 1),
('steam:11000013c072309', 'license:85b715f4118ad2e5c806da8336b2c842f84bf630', 'no info', 'no info', 'discord:510821079527456788', 'ip:91.173.178.174', 'Skorez', 'Tyler Manson Crown', 'troll nofear', '1585524724', '1585611124', 0),
('steam:11000013c075326', 'license:d50ada85f9eaa85a01f1a965313838b9e0c556a3', 'live:914798568522475', 'no info', 'discord:690519647765921793', 'ip:93.8.111.131', 'MOHAMED', 'BIENglace', 'give de arme', '1585081335', '1585686135', 0),
('steam:11000013c1a8245', 'license:5c2e563eb616ea35c3710c19986a1178b3c45d09', 'no info', 'no info', 'no info', 'ip:82.227.171.52', 'Karim Narvalo', 'Dash', 'Pub notre discord bonne continuation l\'amis !', '1585349655', '1585349655', 1),
('steam:11000013c26f07a', 'license:42825b99565413fe3831687b5e20659d424fcb94', 'no info', 'no info', 'discord:588441634006368257', 'ip:85.171.47.70', 'Matt Sanders', 'Bobby Shaaw', 'CHEATEr', '1567339538', '1598443538', 0),
('steam:11000013c32c3a8', 'license:cec8e2f549ae3e95aa0f6b51fa2146ca1c6dc4ac', 'no info', 'no info', 'no info', 'ip:82.246.124.238', 'Edouard Oslo', 'Mamadou Mbapet', 'tire et free kil', '1585434958', '1585521358', 0),
('steam:11000013c3f7d2a', 'license:e00d6e6e4784721c9f370a68b341ee0f98abd0d4', 'no info', 'no info', 'discord:419910015412076544', 'ip:90.119.51.71', 'Said Boogy', 'Amado Fuentes', 'moddeur', '1567193128', '1567193128', 1),
('steam:11000013c46c5e3', 'license:851f46387e99d1f82a96618a2f28c09f51470bd0', 'no info', 'no info', 'discord:264058047280709633', 'ip:93.1.64.147', 'Jean José', 'Amado Fuentes', 'Cheat Bye bye tes potes vont etre remis a 0 a cause de toi ;)', '1565914225', '1565914225', 1),
('steam:11000013c4f94e9', 'license:c57d70584e286217c142f6ac6f2f3ba233821c1e', 'live:985154237832498', 'no info', 'discord:591729599918899220', 'ip:41.251.166.105', 'Pablo Garcia', 'Amado Fuentes', 'Moddeur', '1565969116', '1565969116', 1),
('steam:11000013c7945c3', 'license:68bdb76d08ad75b445c1c6740778bf2ca5923243', 'live:1055518846829943', 'xbl:2535451559870568', 'discord:620247183341387776', 'ip:88.139.4.137', 'Fermandos Costa', 'MXME1', 'moddeur', '1585272739', '1585272739', 1),
('steam:11000013cac34b6', 'license:06d9faffc4e6277836d7e57cda8e502001f31719', 'live:1055518350101014', 'no info', 'discord:450258686133272576', 'ip:91.160.138.51', 'GUCCI', 'TONY NAGEL', 'No fear', '1585504107', '1585590507', 0),
('steam:11000013cb22393', 'license:c1085c8c36f92ce00b6c62ecd76456c1ae43a797', 'no info', 'no info', 'discord:689891052907528284', 'ip:77.151.234.213', 'Romain', 'Chuck Ortiz', 'Pourquoi utiliser un mod menu ?', '1585423796', '1585596596', 0),
('steam:11000013d27faf6', 'license:125d5bea52ec80c30f4fe3321985086fa01f8349', 'no info', 'no info', 'discord:375738453985460225', 'ip:90.49.115.190', 'Dawson Joe', 'Bobby Shaaw', 'CHEAT', '1567206159', '1567810959', 0),
('steam:11000013d3b1e78', 'license:d5592c298ff0b153337fffe4a044a402a208fb37', 'no info', 'no info', 'discord:389077719276847124', 'ip:83.141.144.247', 'gaetan.gissinger', 'Amado Fuentes', 'moddeur', '1567369526', '1598473526', 0),
('steam:11000013d409d77', 'license:6d4af8c0e720ab1f3825a421a7fb9920fb833fc7', 'no info', 'no info', 'no info', 'ip:91.132.136.84', 'Thomas Nas', 'Dash', 'troll', '1585263421', '1602543421', 0),
('steam:11000013d6a4456', 'license:6b5a5ef28972615e05064cb769f8e0a87169346f', 'live:985154488175795', 'xbl:2535421870219451', 'discord:622464438699819067', 'ip:78.125.245.75', 'tony mendez', 'TONY NAGEL', 'moddeur', '1585089754', '1585089754', 1),
('steam:11000013e699150', 'license:7ffb4efd7ea57b9ecc81c399a77b9100074375e5', 'live:914801508691108', 'xbl:2535454528398236', 'discord:599925907414581269', 'ip:2.4.98.254', '[R] Emilio', 'MXME1', 'moddeur', '1585263808', '1585263808', 1),
('steam:11000013ece0fba', 'license:42b9acd7fa6a16e6a5254d0abce46a8eb31e6ae3', 'live:844428431887648', 'xbl:2535428659846350', 'discord:658406955546705920', 'ip:176.136.100.158', 'Jhon Pablito', 'MXME1', 'moddeur', '1585272619', '1585272619', 1),
('steam:11000013ee38f13', 'license:fe35cc6c4564a5fbc2f345f113ae88f467082fe3', 'live:914798313418586', 'xbl:2535415281724744', 'no info', 'ip:82.246.49.55', 'Mac', 'TONY NAGEL', 'trool', '1585344506', '1585430906', 0),
('steam:11000013f2cdb8e', 'license:91ad96ec4beec8f008a54fcab40b93eae80b38b9', 'live:1055521585026406', 'xbl:2535439572793091', 'no info', 'ip:83.197.102.109', 'Oleg Halfdanarson', 'TONY NAGEL', 'trool', '1585344503', '1585430903', 0),
('steam:11000013f2dcfce', 'license:e4332d12e17c1f99041cceba9f84ef4b2ade3c3e', 'live:1829582493583178', 'xbl:2535468547021492', 'discord:534076168857583628', 'ip:92.93.181.126', 'enzovazzoler94', 'TONY NAGEL', 'trool', '1585077292', '1585077292', 1),
('steam:11000013f7b4715', 'license:140432619bec62c01aed9dd2276801f24e1ea73f', 'live:914798541154434', 'no info', 'discord:678337767968866341', 'ip:109.136.184.150', 'Renard Sef', 'Lucas Pignon', 'mod menu vien discord pour t\'(expliquer', '1585447988', '1611367988', 0),
('steam:11000013fcc27f4', 'license:714859068cfce24658d4e4426726103696d349fc', 'no info', 'no info', 'discord:474237155275964447', 'ip:86.225.73.29', 'TinTinio De Juarez', 'TONY NAGEL', 'trool', '1585452462', '1585452462', 1),
('steam:11000013fd22c35', 'license:f5cb2f273076c15f239f9a801796a647f7bb8565', 'live:1759221927341677', 'xbl:2535446470424160', 'no info', 'ip:91.167.22.175', 'calvin Desiles', 'Lucas Pignon', 'mod menu', '1585449752', '1611369752', 0),
('steam:11000013fd84250', 'license:96fdc01bf3ec40703a264118d28d7365ec54de2f', 'live:1055518837886543', 'no info', 'discord:543727834099744783', 'ip:78.243.229.55', 'eliepezzotti9', 'TONY NAGEL', 'trool', '1585499185', '1585499185', 1),
('steam:11000013fff12cf', 'license:05e7af188b38da84389ba1379539467452076340', 'no info', 'no info', 'no info', 'ip:82.225.131.65', 'Louis kevin', 'TONY NAGEL', 'trool', '1585353845', '1585353845', 1),
('steam:11000014041b883', 'license:8fe1b63c1043afbcf373fd03aa83cb63734ae9ee', 'no info', 'no info', 'discord:401862425957367808', 'ip:90.79.44.35', 'KHAMEL MENELE', '[H] Bob Bob', 'carkill', '1585497533', '1585497533', 1),
('steam:110000140575f11', 'license:7a5245350cfd2629e433e7f3609cf17aac9bd9b5', 'no info', 'no info', 'discord:430304668447539200', 'ip:94.104.218.142', 'tuncer3mrah', 'Tyler Manson Crown', 'no fear troll power', '1585409019', '1585495419', 0);

-- --------------------------------------------------------

--
-- Structure de la table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `banlisthistory`
--

INSERT INTO `banlisthistory` (`id`, `identifier`, `license`, `liveid`, `xblid`, `discord`, `playerip`, `targetplayername`, `sourceplayername`, `reason`, `timeat`, `added`, `expiration`, `permanent`) VALUES
(1, 'steam:110000134fffb74', 'license:79b3821bf0fa4719a836198ad8534f5561b5b63a', 'live:985154218888113', 'xbl:2535463959957522', 'discord:536588501244837888', 'ip:78.224.34.2', 'Akil Lucci', 'Anatoly Liches', 'troll', 1585067487, 'Tue Mar 24 17:31:27 2020', 1585499487, 0),
(2, 'steam:110000138bc7d5b', 'license:03181ac7831f5974bbef4451a3fbb514bb7ed170', 'live:914802072492467', 'no info', 'discord:218445163779850251', 'ip:90.118.143.143', 'thomas tylors', 'Roofters', 'freekill troll avec bus', 1585073050, 'Tue Mar 24 19:04:10 2020', 1585677850, 0),
(3, 'steam:11000011789e571', 'license:e90f67db4b3c37d0749def0d729f683495b9fb0b', 'live:844425413812681', 'xbl:2535413949110149', 'discord:406924001139752982', 'ip:93.29.213.54', 'Antoine Kiel', 'Roofters', 'ntr trolleur', 1585073173, 'Tue Mar 24 19:06:13 2020', 1585073173, 1),
(4, 'steam:11000013f2dcfce', 'license:e4332d12e17c1f99041cceba9f84ef4b2ade3c3e', 'live:1829582493583178', 'xbl:2535468547021492', 'discord:534076168857583628', 'ip:92.93.181.126', 'enzovazzoler94', 'TONY NAGEL', 'trool', 1585077292, 'Tue Mar 24 20:14:52 2020', 1585077292, 1),
(5, 'steam:110000118e67613', 'license:31c3a1559371420b909473dcbc47c4a43712adb0', 'live:1055518592221372', 'xbl:2535409760794601', 'discord:529991237533564938', 'ip:212.194.104.142', 'ivfinisteriv', 'Mamadou Mbapet', 'car kill', 1585078626, 'Tue Mar 24 20:37:06 2020', 1585337826, 0),
(6, 'steam:11000013c075326', 'license:d50ada85f9eaa85a01f1a965313838b9e0c556a3', 'live:914798568522475', 'no info', 'discord:690519647765921793', 'ip:93.8.111.131', 'MOHAMED', 'BIENglace', 'give de arme', 1585081335, 'Tue Mar 24 21:22:15 2020', 1585686135, 0),
(7, 'steam:11000013d0556a3', 'license:087a3b6bad2895961939915b60dce2617fa5a9b8', 'no info', 'no info', 'discord:611262760163999757', 'ip:37.170.233.139', 'Emilio Caster', 'TONY NAGEL', 'trool', 1585083310, 'Tue Mar 24 21:55:10 2020', 1585083310, 1),
(8, 'steam:11000013605048b', 'license:8cf84f2a662fe2c10d42e10be7c693c30ad4f426', 'live:985154309236042', 'no info', 'discord:307523714101149708', 'ip:31.10.174.153', 'Dimitri Abarnikov', 'dani', 'nike ta tante', 1585084342, 'Tue Mar 24 22:12:22 2020', 1585084342, 1),
(9, 'steam:1100001166cce0b', 'license:d27918e9acf05ed21bb44b7e72050aec1d328aa7', 'live:914802226813571', 'no info', 'discord:602881794282618890', 'ip:85.5.223.48', 'Vladimir Abarnikov', 'dani', 'nike ta tante', 1585084348, 'Tue Mar 24 22:12:28 2020', 1585084348, 1),
(10, 'steam:11000013bc7a11f', 'license:24f3bab08ad160504d67e64439b660d64578ea17', 'no info', 'no info', 'discord:575333173483798560', 'ip:88.125.144.37', 'Raven Weiss', 'TONY NAGEL', 'moddeur', 1585089745, 'Tue Mar 24 23:42:25 2020', 1585089745, 1),
(11, 'steam:11000013d6a4456', 'license:6b5a5ef28972615e05064cb769f8e0a87169346f', 'live:985154488175795', 'xbl:2535421870219451', 'discord:622464438699819067', 'ip:78.125.245.75', 'tony mendez', 'TONY NAGEL', 'moddeur', 1585089754, 'Tue Mar 24 23:42:34 2020', 1585089754, 1),
(12, 'steam:11000010c3e5a7f', 'license:9c3a4159d235c2b7e8cd4af3ad5394e3f00922c7', 'live:1899946063977166', 'xbl:2533274849287280', 'discord:401304638856364034', 'ip:90.66.204.9', 'Ironhides', 'Chuck Ortiz', 'troll', 1585090979, 'Wed Mar 25 00:02:59 2020', 1585090979, 1),
(13, 'steam:110000100f86fb9', 'license:62b1a779bac58c32a84492d6ce6e2f0badb7b047', 'live:1055521733721576', 'xbl:2535439251000296', 'discord:355769943666589706', 'ip:86.246.19.171', 'lil purple_noob', 'Mamadou Mbapet', 'trol', 1585139616, 'Wed Mar 25 13:33:36 2020', 1585139616, 1),
(14, 'steam:1100001161a9040', 'license:4da900cf38b17d4ef96b36dcbd0dd4e637d327bd', 'no info', 'no info', 'discord:645038077991059466', 'ip:78.200.81.63', 'KILLER QUEEN', 'Anatoly Liches', 'vole une arme e deco', 1585150773, 'Wed Mar 25 16:39:33 2020', 1585496373, 0),
(15, 'steam:11000010a4893fe', 'license:b778bb4bd596c67f35f96c60cb8867eb5be1588c', 'no info', 'no info', 'discord:285490148039196672', 'ip:176.181.95.70', 'Abelino Flores', 'Anatoly Liches', 'mod menu', 1585151427, 'Wed Mar 25 16:50:27 2020', 1602431427, 0),
(16, 'steam:110000134beed36', 'license:f2f1830a85f467242c1b5456bf52abb7dba48b44', 'no info', 'no info', 'discord:462891921581408268', 'ip:31.31.55.90', 'Arouf ou Selem', 'Sebastien Benitez', 'vas pub ailleur', 1585154451, 'Wed Mar 25 17:40:51 2020', 1602434451, 0),
(17, 'steam:110000132a82652', 'license:df957354c8c9e5948eec0d0bbd68e53820dae3ef', 'live:914798314477055', 'no info', 'discord:401645848838144003', 'ip:188.154.166.210', 'JES Skyzz', 'Sebastien Benitez', 'vas pub ailleur', 1585154506, 'Wed Mar 25 17:41:46 2020', 1602434506, 0),
(18, 'steam:1100001361e0b45', 'license:76b5296d5c83c699a8374f2f21297bea48ea0245', 'live:914798233524995', 'xbl:2535419871937125', 'no info', 'ip:213.55.221.15', 'Emilio Rojas', 'Sebastien Benitez', 'salut frerot', 1585154661, 'Wed Mar 25 17:44:21 2020', 1602434661, 0),
(19, 'steam:11000013cac34b6', 'license:06d9faffc4e6277836d7e57cda8e502001f31719', 'live:1055518350101014', 'no info', 'discord:450258686133272576', 'ip:91.160.138.51', 'GUCCI', 'Anatoly Liches', 'ALT F4', 1585155374, 'Wed Mar 25 17:56:14 2020', 1585328174, 0),
(20, 'steam:110000117212f6a', 'license:70d709231e01e113cf9ec0a294fdd3f283d68d47', 'live:985153939177920', 'xbl:2535472705225135', 'discord:355382853137072130', 'ip:176.145.31.114', 'Ludo Cortez', 'Roofters', 'pareil', 1585172461, 'Wed Mar 25 22:41:01 2020', 1585172461, 1),
(21, 'steam:11000010bb02af6', 'license:d76569bfc6ca26ec0660dffffa2f5608aa0ae3ec', 'live:1055518612258384', 'xbl:2535430416130710', 'discord:442014387327336458', 'ip:51.91.22.235', 'Fred Martino', 'Roofters', 'nique t(a tante', 1585172519, 'Wed Mar 25 22:41:59 2020', 1585172519, 1),
(22, 'steam:1100001342f5a01', 'license:80f08fba94f37806054f8ea470c752929f98c7ea', 'no info', 'no info', 'discord:419140572083650590', 'ip:194.59.249.20', 'Mohammed Sosa', 'Jack Grimms', 'troll', 1585172777, 'Wed Mar 25 22:46:17 2020', 1585345577, 0),
(23, 'steam:1100001342f5a01', 'license:80f08fba94f37806054f8ea470c752929f98c7ea', 'no info', 'no info', 'discord:419140572083650590', 'ip:194.59.249.20', 'Mohammed Sosa', 'Anatoly Liches', 'vol arme et alt F4', 1585172820, 'Wed Mar 25 22:47:00 2020', 1602452820, 0),
(24, 'steam:11000013d8f3e13', 'license:7dcc9a91aec5e2a00a54570778a626f0b3b7db38', 'live:844425149746590', 'no info', 'discord:609759239090733066', 'ip:82.255.152.1', 'Anatoly Liches', 'TONY NAGEL', 'je t\'avais prévenu', 1585174812, 'Wed Mar 25 23:20:12 2020', 1586038812, 0),
(25, 'steam:1100001350b2c9c', 'license:6170d37768ae3bbafea7c9c96314b4277e750549', 'live:1759221321819607', 'xbl:2535432967762695', 'discord:291449476932173834', 'ip:109.134.221.135', 'Williams Smith', 'BIENglace', 'nofear', 1585176853, 'Wed Mar 25 23:54:13 2020', 1585185493, 0),
(26, 'steam:110000136172b36', 'license:98b0fd2dd3301f5c4258c2ae7a4873e6533ebcc4', 'live:914798230687145', 'xbl:2535408797459928', 'discord:645454105422069760', 'ip:82.64.86.141', 'Chico Escobar', 'TONY NAGEL', '0', 1585177184, 'Wed Mar 25 23:59:44 2020', 1585177184, 1),
(27, 'steam:11000013bfed992', 'license:38d67fc4a9b77bee6ed0c4b7a2fb1a20f8608288', 'no info', 'no info', 'discord:444797105568088064', 'ip:91.160.170.217', 'Lorenzo Delmez', 'TONY NAGEL', '0', 1585177208, 'Thu Mar 26 00:00:08 2020', 1585177208, 1),
(28, 'steam:11000013bcf9cff', 'license:c964d922fadeaacc04263421de1b11243ec55ed7', 'live:1055518540317414', 'xbl:2535415922187157', 'discord:270958242421538816', 'ip:128.78.120.39', 'John White', 'TONY NAGEL', 'Modeeur 2000', 1585178627, 'Thu Mar 26 00:23:47 2020', 1602458627, 0),
(29, 'steam:11000013647c998', 'license:dec74ceaf20c763111ee4ec88ddeeec6d43c33a4', 'live:914801311020380', 'xbl:2535440624027736', 'discord:513221389944094730', 'ip:74.14.185.1', 'Omar Mohamed', 'Tyler Manson Crown', 'fear', 1585192963, 'Thu Mar 26 04:22:43 2020', 1585538563, 0),
(30, 'steam:110000132614fe9', 'license:b22068ab9c595857ee305cbb6b54a997dac9f5c9', 'live:1055518806030770', 'no info', 'discord:468862417888083975', 'ip:70.83.158.54', 'Jacob Murphy', 'Tyler Manson Crown', 'fear', 1585192979, 'Thu Mar 26 04:22:59 2020', 1585538579, 0),
(31, 'steam:11000011c9d8f3b', 'license:6b167570b98ed2de06a3eae71a4563c4a236e1ce', 'live:985153999179911', 'xbl:2535435692410557', 'discord:383266401722433546', 'ip:91.69.15.83', 'Giuseppe Guzmán', 'Dash', 'AltF4', 1585236274, 'Thu Mar 26 16:24:34 2020', 1585322674, 0),
(32, 'steam:11000011779ed88', 'license:35d6e15fe846d5964f1e6aa492db879591b0032a', 'live:844425417073922', 'no info', 'discord:480318356738670592', 'ip:89.159.171.1', 'Luicchi Guzman', 'Dash', 'AltF4', 1585236306, 'Thu Mar 26 16:25:06 2020', 1585322706, 0),
(33, 'steam:11000013e6da3b5', 'license:82f6c4b6592e8c6a3de8f485b8abd014d912b4b4', 'live:1055518677140402', 'no info', 'discord:678297230884470818', 'ip:176.188.113.9', 'Larry CiteBlanch', 'SaYoNaraa', 'Insulte HRP + Alt F4 en scène + no fear (récidive)', 1585246942, 'Thu Mar 26 19:22:22 2020', 1602526942, 0),
(34, 'steam:11000013e5af256', 'license:50717843eea8009d669654a46dd5a228ca1f0f4d', 'live:844425566291849', 'no info', 'discord:322756318622515202', 'ip:91.173.196.124', 'Aaron Nach', 'Zek Kingston', 'non respect des regles no fear alt f4 hrp incoherent', 1585250330, 'Thu Mar 26 20:18:50 2020', 1593890330, 0),
(35, 'steam:1100001006020a5', 'license:6b5ab9c5583733cf2dc38110cda1d0206ebba0ce', 'no info', 'no info', 'discord:263423259977056256', 'ip:176.176.42.133', 'Tr@nxen', 'MXME1', 'troll', 1585263420, 'Thu Mar 26 23:57:00 2020', 1602543420, 0),
(36, 'steam:11000013d409d77', 'license:6d4af8c0e720ab1f3825a421a7fb9920fb833fc7', 'no info', 'no info', 'no info', 'ip:91.132.136.84', 'Thomas Nas', 'Dash', 'troll', 1585263421, 'Thu Mar 26 23:57:01 2020', 1602543421, 0),
(37, 'steam:110000101b5e717', 'license:c38f385f563333ff60a2f597d65c1a7e219a3cee', 'live:844427721318259', 'no info', 'discord:679165396166901761', 'ip:79.84.175.178', 'Laurent JALABERT', 'MXME1', 'troll', 1585263435, 'Thu Mar 26 23:57:15 2020', 1602543435, 0),
(38, 'steam:11000013e699150', 'license:7ffb4efd7ea57b9ecc81c399a77b9100074375e5', 'live:914801508691108', 'xbl:2535454528398236', 'discord:599925907414581269', 'ip:2.4.98.254', '[R] Emilio', 'MXME1', 'moddeur', 1585263808, 'Fri Mar 27 00:03:28 2020', 1585263808, 1),
(39, 'steam:110000136515af9', 'license:aea842adc4514ab0b9bae8c904edae1fb349f722', 'no info', 'no info', 'discord:675255245093339147', 'ip:82.102.18.114', 'Kévin Dumas', 'Lucas Pignon', 'prend moi pour une frite', 1585265576, 'Fri Mar 27 00:32:56 2020', 1585351976, 0),
(40, 'steam:110000137d2cece', 'license:447c03f0ec474f422cf0d26edcbb6898cb0c9680', 'live:985154484160646', 'xbl:2535433295435528', 'discord:541300879639183360', 'ip:128.78.58.134', 'Fares Akra', 'MXME1', 'moddeur', 1585272614, 'Fri Mar 27 02:30:14 2020', 1585272614, 1),
(41, 'steam:11000013ece0fba', 'license:42b9acd7fa6a16e6a5254d0abce46a8eb31e6ae3', 'live:844428431887648', 'xbl:2535428659846350', 'discord:658406955546705920', 'ip:176.136.100.158', 'Jhon Pablito', 'MXME1', 'moddeur', 1585272619, 'Fri Mar 27 02:30:19 2020', 1585272619, 1),
(42, 'steam:11000013c7945c3', 'license:68bdb76d08ad75b445c1c6740778bf2ca5923243', 'live:1055518846829943', 'xbl:2535451559870568', 'discord:620247183341387776', 'ip:88.139.4.137', 'Fermandos Costa', 'MXME1', 'moddeur', 1585272739, 'Fri Mar 27 02:32:19 2020', 1585272739, 1),
(43, 'steam:1100001361c4033', 'license:ad4b59545e409603363378e9100f27d8629f48ca', 'live:914801758374459', 'xbl:2535408385283506', 'no info', 'ip:83.157.109.157', 'Jerry Gustavo', 'Tyler Manson Crown', 'troll no fear', 1585337509, 'Fri Mar 27 20:31:49 2020', 1585337509, 1),
(44, 'steam:1100001128965f9', 'license:0d9fc97b1be5bc47293575b05d993dc16aa7b63f', 'live:985154447544884', 'xbl:2535447542775208', 'no info', 'ip:90.119.210.26', 'La Quica', 'Tyler Manson Crown', 'troll no fear', 1585337587, 'Fri Mar 27 20:33:07 2020', 1585337587, 1),
(45, 'steam:11000013f2cdb8e', 'license:91ad96ec4beec8f008a54fcab40b93eae80b38b9', 'live:1055521585026406', 'xbl:2535439572793091', 'no info', 'ip:83.197.102.109', 'Oleg Halfdanarson', 'TONY NAGEL', 'trool', 1585344503, 'Fri Mar 27 22:28:23 2020', 1585430903, 0),
(46, 'steam:11000013ee38f13', 'license:fe35cc6c4564a5fbc2f345f113ae88f467082fe3', 'live:914798313418586', 'xbl:2535415281724744', 'no info', 'ip:82.246.49.55', 'Mac', 'TONY NAGEL', 'trool', 1585344506, 'Fri Mar 27 22:28:26 2020', 1585430906, 0),
(47, 'steam:11000013273cdbd', 'license:2bbdf6e61386d727a7bc15fe5570247d08cf5760', 'no info', 'no info', 'no info', 'ip:85.26.96.231', 'Roulioo.', 'Tyler Manson Crown', 'Troll', 1585348532, 'Fri Mar 27 23:35:32 2020', 1585434932, 0),
(48, 'steam:11000011b3bdf73', 'license:35b9d519ecb592bd39ad97c3da6bfdd10e00d14f', 'live:844425464954948', 'no info', 'no info', 'ip:82.124.202.252', 'Sxftii_', 'Tyler Manson Crown', 'Troll', 1585348542, 'Fri Mar 27 23:35:42 2020', 1585434942, 0),
(49, 'steam:11000013c1a8245', 'license:5c2e563eb616ea35c3710c19986a1178b3c45d09', 'no info', 'no info', 'no info', 'ip:82.227.171.52', 'Karim Narvalo', 'Dash', 'Pub notre discord bonne continuation l\'amis !', 1585349655, 'Fri Mar 27 23:54:15 2020', 1585349655, 1),
(50, 'steam:11000013aa7e6cf', 'license:0078c7b0d2c4d9d8ba2633807436b90d18da0a2b', 'live:985154315439361', 'no info', 'no info', 'ip:91.207.57.252', 'Ayoub Babil', 'Roofters', 'modmenu', 1585351948, 'Sat Mar 28 00:32:28 2020', 1585351948, 1),
(51, 'steam:11000010e124481', 'license:84bfc696524a676b1162fc51d394436fab32ee58', 'live:914798440712415', 'xbl:2535446069423716', 'no info', 'ip:90.70.249.55', 'Jean Plouk', 'Roofters', 'modemenu', 1585351965, 'Sat Mar 28 00:32:45 2020', 1585351965, 1),
(52, 'steam:110000116042a45', 'license:9faed6b41d6a500f27afc507e4754071d00c5c3f', 'live:1055518569786102', 'xbl:2535422196060479', 'no info', 'ip:83.202.142.85', 'Leo Toxic', 'Jack Grimms', '.', 1585351966, 'Sat Mar 28 00:32:46 2020', 1585351966, 1),
(53, 'steam:11000011190700c', 'license:738133497233baa2dd86dc77f0af4fe888bb4cbb', 'no info', 'no info', 'no info', 'ip:89.2.222.209', 'Igor Balor', 'Jack Grimms', '.', 1585351975, 'Sat Mar 28 00:32:55 2020', 1585351975, 1),
(54, 'steam:11000013aa7e6cf', 'license:0078c7b0d2c4d9d8ba2633807436b90d18da0a2b', 'live:985154315439361', 'no info', 'no info', 'ip:91.207.57.252', 'Ayoub Babil', 'Lucas Pignon', 'va trool ailleurs', 1585352690, 'Sat Mar 28 00:44:50 2020', 1611272690, 0),
(55, 'steam:11000010e13f83b', 'license:e63a57152a416e335d2ecb428def3c472627f1cb', 'live:914798541934839', 'xbl:2535422414355891', 'no info', 'ip:90.70.249.55', 'Dimitri Smitch', 'Lucas Pignon', 'va trool ailleurs', 1585352726, 'Sat Mar 28 00:45:26 2020', 1611272726, 0),
(56, 'steam:11000010e124481', 'license:84bfc696524a676b1162fc51d394436fab32ee58', 'live:914798440712415', 'xbl:2535446069423716', 'no info', 'ip:90.70.249.55', 'Jean Plouk', 'Lucas Pignon', 'va trool ailleurs', 1585352744, 'Sat Mar 28 00:45:44 2020', 1611272744, 0),
(57, 'steam:11000011190700c', 'license:738133497233baa2dd86dc77f0af4fe888bb4cbb', 'no info', 'no info', 'no info', 'ip:89.2.222.209', 'Igor Balor', 'Lucas Pignon', 'va trool ailleurs', 1585352758, 'Sat Mar 28 00:45:58 2020', 1611272758, 0),
(58, 'steam:110000136895a41', 'license:b84e54f712318a35e424edbb3f89c1518e475357', 'live:844425368000585', 'no info', 'no info', 'ip:85.168.0.232', 'Hmidou Menace', 'TONY NAGEL', 'trool', 1585353836, 'Sat Mar 28 01:03:56 2020', 1585353836, 1),
(59, 'steam:11000013fff12cf', 'license:05e7af188b38da84389ba1379539467452076340', 'no info', 'no info', 'no info', 'ip:82.225.131.65', 'Louis kevin', 'TONY NAGEL', 'trool', 1585353845, 'Sat Mar 28 01:04:05 2020', 1585353845, 1),
(60, 'steam:11000010b22426c', 'license:96ebfd407abe291861dd59737f8cd6ce39fcad7d', 'live:1829581636423397', 'xbl:2535447453730098', 'no info', 'ip:92.139.224.109', 'Mathias Zinto', 'Dash', 'Carkill + troll / vient discord pour ton déban !', 1585356503, 'Sat Mar 28 01:48:23 2020', 1585356503, 1),
(61, 'steam:1100001153a0b44', 'license:e9b622511ae50ef6a4ed2f8370fd634e3e7215f5', 'live:985154198709507', 'xbl:2535451971815756', 'no info', 'ip:85.190.77.9', 'Jordan Taiko', 'Dash', 'Carkill + troll / vient discord pour ton déban !', 1585356529, 'Sat Mar 28 01:48:49 2020', 1585356529, 1),
(62, 'steam:1100001153a0b44', 'license:e9b622511ae50ef6a4ed2f8370fd634e3e7215f5', 'live:985154198709507', 'xbl:2535451971815756', 'no info', 'ip:85.190.77.9', 'Jordan Taiko', 'Dash', 'Carkill', 1585356558, 'Sat Mar 28 01:49:18 2020', 1585356558, 1),
(63, 'steam:11000010b22426c', 'license:96ebfd407abe291861dd59737f8cd6ce39fcad7d', 'live:1829581636423397', 'xbl:2535447453730098', 'no info', 'ip:92.139.224.109', 'Mathias Zinto', 'Dash', 'troll / carkill / vient discord pour ton déban !', 1585356608, 'Sat Mar 28 01:50:08 2020', 1585356608, 1),
(64, 'steam:1100001352633ad', 'license:1a06bed53470bb978a16c881ebc58cc2488a73be', 'live:844424981024370', 'xbl:2535406773915378', 'no info', 'ip:93.26.106.184', 'Michel LaGazelle', 'Dash', 'Carkill + troll / vient discord pour ton déban !', 1585356854, 'Sat Mar 28 01:54:14 2020', 1585356854, 1),
(65, 'steam:11000011cd6c324', 'license:23ae9abdd01b833d8677ed736035dd0b6030c56f', 'no info', 'no info', 'no info', 'ip:176.167.11.213', 'JohnBacker', 'Dash', 'Carkill + troll / vient discord pour ton déban !', 1585356899, 'Sat Mar 28 01:54:59 2020', 1585356899, 1),
(66, 'steam:11000010388f992', 'license:715266734a30564daa8a94a1b175be690d7caf16', 'no info', 'no info', 'no info', 'ip:89.87.8.81', 'Brandone Scott', 'Dash', 'Troll / Carkill', 1585359184, 'Sat Mar 28 02:33:04 2020', 1585359184, 1),
(67, 'steam:1100001153596cf', 'license:f9544bdd767a8c89bab48549060aef3d6aee82a2', 'live:1688853531836291', 'xbl:2535414541633831', 'no info', 'ip:193.250.243.34', 'Dixon Scott', 'Dash', 'Troll / Carkill', 1585359202, 'Sat Mar 28 02:33:22 2020', 1585359202, 1),
(68, 'steam:110000140575f11', 'license:7a5245350cfd2629e433e7f3609cf17aac9bd9b5', 'no info', 'no info', 'discord:430304668447539200', 'ip:94.104.218.142', 'tuncer3mrah', 'Tyler Manson Crown', 'no fear troll power', 1585409019, 'Sat Mar 28 16:23:39 2020', 1585495419, 0),
(69, 'steam:11000013cac34b6', 'license:06d9faffc4e6277836d7e57cda8e502001f31719', 'live:1055518350101014', 'no info', 'discord:450258686133272576', 'ip:91.160.138.51', 'GUCCI', 'Dash', 'Nofear / Frekill Zonesafe / Vient discord pour ton unban !', 1585409962, 'Sat Mar 28 16:39:22 2020', 1585496362, 0),
(70, 'steam:11000013b6911dc', 'license:ecfa3f09c302d6e69f673ff07d98b88a5008a7e1', 'live:1055518741579399', 'xbl:2535470342310164', 'discord:634034117415272448', 'ip:94.111.59.63', 'georges.melanitis', 'SaYoNaraa', 'carkill / troll', 1585415819, 'Sat Mar 28 18:16:59 2020', 1594055819, 0),
(71, 'steam:11000011b3bdf73', 'license:35b9d519ecb592bd39ad97c3da6bfdd10e00d14f', 'live:844425464954948', 'no info', 'discord:527191898583203850', 'ip:82.124.202.252', 'Sxftii_', 'Roofters', 'no fear no pain manque de respect', 1585415968, 'Sat Mar 28 18:19:28 2020', 1585502368, 0),
(72, 'steam:1100001168fd7d8', 'license:8d96c00d42bed4ae6f152b3d4b07645abc6b5bdf', 'no info', 'no info', 'discord:420305957076074496', 'ip:90.93.245.146', '✪Is_Maxxs✪', 'Tyler Manson Crown', 'power/ troll / nofear', 1585418289, 'Sat Mar 28 18:58:09 2020', 1585504689, 0),
(73, 'steam:11000013273cdbd', 'license:2bbdf6e61386d727a7bc15fe5570247d08cf5760', 'no info', 'no info', 'discord:682596825940623397', 'ip:85.26.96.231', 'Roulioo.', 'Tyler Manson Crown', 'nofear troll power eta', 1585418639, 'Sat Mar 28 19:03:59 2020', 1585505039, 0),
(74, 'steam:11000013cb22393', 'license:c1085c8c36f92ce00b6c62ecd76456c1ae43a797', 'no info', 'no info', 'discord:689891052907528284', 'ip:77.151.234.213', 'Romain', 'Chuck Ortiz', 'Pourquoi utiliser un mod menu ?', 1585423796, 'Sat Mar 28 20:29:56 2020', 1585596596, 0),
(75, 'steam:11000011779ed88', 'license:35d6e15fe846d5964f1e6aa492db879591b0032a', 'live:844425417073922', 'no info', 'no info', 'ip:89.159.171.1', 'Luicchi Guzman', 'Mamadou Mbapet', 'tire au pc', 1585426508, 'Sat Mar 28 21:15:08 2020', 1585512908, 0),
(76, 'steam:11000010af61c55', 'license:d5c90ec37426523bfc936756d5d7bee47151c9f2', 'no info', 'no info', 'no info', 'ip:176.156.77.101', 'Lucas lamon', 'Tyler Manson Crown', 'troll nofear power', 1585430110, 'Sat Mar 28 22:15:10 2020', 1585516510, 0),
(77, 'steam:110000105625cce', 'license:0098f46c6b8e053212f29e6ef519b63a7ba4932d', 'no info', 'no info', 'discord:611637434106773555', 'ip:62.35.18.47', 'weaked76', 'Tyler Manson Crown', 'troll no fear power', 1585430713, 'Sat Mar 28 22:25:13 2020', 1585517113, 0),
(78, 'steam:110000113b6fcbe', 'license:a3eaac8fbe6a1ae1de3d5ad345ddfce94b7f978f', 'live:985154179161294', 'xbl:2535457068288844', 'discord:510803646980685824', 'ip:90.30.178.5', 'ZrEExX // Frank Madon', 'TONY NAGEL', 'carkill', 1585431110, 'Sat Mar 28 22:31:50 2020', 1586295110, 0),
(79, 'steam:110000117ce91af', 'license:7a747ce2aca039bc4fcba0162365fa076137048c', 'live:844429211217462', 'xbl:2535473083510724', 'discord:259296555427823616', 'ip:176.132.208.193', 'André Madon', 'Mamadou Mbapet', 'troll', 1585431322, 'Sat Mar 28 22:35:22 2020', 1585604122, 0),
(80, 'steam:11000010f61fad5', 'license:ec5892fc9a1d119630414059e06ef2530dab1f99', 'live:1759221653267090', 'xbl:2533274877460074', 'no info', 'ip:91.162.226.113', 'LokiBaay', 'Dash', 'Mod menu Godmod', 1585431960, 'Sat Mar 28 22:46:00 2020', 1585431960, 1),
(81, 'steam:11000010d2ed26e', 'license:cdc0f5a1ff58058bb22ac7d57b173c8e8e982664', 'no info', 'no info', 'discord:234029684134772737', 'ip:78.230.128.200', 'Joachim Malek', '[H] Bob Bob', 'troll', 1585433640, 'Sat Mar 28 23:14:00 2020', 1611353640, 0),
(82, 'steam:110000113beed95', 'license:86a7550a7a5390897b2685ddcebdeda43b031cd5', 'live:1055521998510712', 'xbl:2535423237221088', 'no info', 'ip:90.103.198.29', 'Benoit Mlk', '[H] Bob Bob', 'troll', 1585433645, 'Sat Mar 28 23:14:05 2020', 1611353645, 0),
(83, 'steam:11000011312af2a', 'license:58898e13ec7e24780402ef01ab1df544d7197860', 'live:985157206780499', 'no info', 'no info', 'ip:90.103.119.253', 'Rachid Teurki', '[H] Bob Bob', 'troll', 1585433651, 'Sat Mar 28 23:14:11 2020', 1611353651, 0),
(84, 'steam:11000013c32c3a8', 'license:cec8e2f549ae3e95aa0f6b51fa2146ca1c6dc4ac', 'no info', 'no info', 'no info', 'ip:82.246.124.238', 'Edouard Oslo', 'Mamadou Mbapet', 'tire et free kil', 1585434958, 'Sat Mar 28 23:35:58 2020', 1585521358, 0),
(85, 'steam:110000117e17f60', 'license:7e1317ee2614be5c6482c4dbe395a1767aa00174', 'live:914802200583240', 'no info', 'no info', 'ip:109.21.186.190', 'Bozo Dezinguer', '[H] Bob Bob', 'Raison Inconnue', 1585434995, 'Sat Mar 28 23:36:35 2020', 1585434995, 1),
(86, 'steam:110000132e6e6ba', 'license:727eab680d1c0bc0a2bd28771eeda002aaef1c80', 'live:914801396941252', 'xbl:2535451685343315', 'discord:659325323120345124', 'ip:77.203.228.121', 'Juan Don Quijote', '[H] Bob Bob', 'troll', 1585436139, 'Sat Mar 28 23:55:39 2020', 1585436139, 1),
(87, 'steam:110000113873b76', 'license:bbc34cb4dbbbeb44b7ea54054a31113662441357', 'live:1759222414763280', 'xbl:2535413768675039', 'no info', 'ip:86.248.240.23', 'Pablo Don Quijotte', '[H] Bob Bob', 'troll', 1585436241, 'Sat Mar 28 23:57:21 2020', 1585436241, 1),
(88, 'steam:1100001366b63c6', 'license:aa58d66c2fe03c739ca6113376174774e1d244ce', 'live:1055518706957892', 'xbl:2535405558223386', 'no info', 'ip:176.184.135.132', 'Adama Thaore', 'Sebastien Benitez', 'modmenu', 1585438543, 'Sun Mar 29 00:35:43 2020', 1585438543, 1),
(89, 'steam:1100001365a992b', 'license:192007cfae8eee40f939f2ba30b5ecba93c20615', 'live:1055518467828530', 'xbl:2535431217058809', 'discord:433588485039849482', 'ip:92.170.93.17', 'Wilson Anderson', 'TONY NAGEL', 'trool', 1585438572, 'Sun Mar 29 00:36:12 2020', 1585438572, 1),
(90, 'steam:11000010c6031d4', 'license:e4c5f618ae26b7559fa8fc47027b210015401358', 'live:985154221866876', 'xbl:2535414802350177', 'discord:238687163569537036', 'ip:90.40.194.2', 'Alex Price', 'Mamadou Mbapet', 'vol de voiture de police', 1585443994, 'Sun Mar 29 03:06:34 2020', 1585616794, 0),
(91, 'steam:110000132e39d2a', 'license:0706853698a9019bf6f01c9493675fcbcf384fd7', 'live:914798199322407', 'no info', 'discord:295144870803275776', 'ip:91.91.243.203', 'Feu2Glace', 'Mamadou Mbapet', 'vol de voiture de police', 1585444062, 'Sun Mar 29 03:07:42 2020', 1585616862, 0),
(92, 'steam:11000011270f029', 'license:2ed4cb78c656d0a86dcd32fcfe34e444a8e6b328', 'live:914801449561199', 'xbl:2535455521666466', 'discord:228539856198828043', 'ip:92.107.212.236', 'Kidz Carter', 'Dash', 'Mod menu', 1585444156, 'Sun Mar 29 03:09:16 2020', 1585444156, 1),
(93, 'steam:110000138db80be', 'license:556b2ea9c31af7d4bbc568eb9411a2670bfb16ee', 'live:985154076468718', 'xbl:2535455839634675', 'discord:368737198075412481', 'ip:83.77.9.69', 'Marco Salvatore', 'Dash', 'Mod menu', 1585444250, 'Sun Mar 29 03:10:50 2020', 1585444250, 1),
(94, 'steam:11000010afa4797', 'license:4490da3ad540df1ce01163a01d982916fe209b87', 'live:1055521868865342', 'xbl:2535467240226080', 'discord:323651676844195843', 'ip:78.121.121.186', 'Enzo ????????', 'TONY NAGEL', 'trool', 1585446528, 'Sun Mar 29 03:48:48 2020', 1585446528, 1),
(95, 'steam:110000113f91420', 'license:c26715b073da23c2879f589624792715c3d9e32a', 'live:985157310533175', 'xbl:2535418934282445', 'discord:331163074545451016', 'ip:90.108.156.112', 'Tex', 'TONY NAGEL', 'trool', 1585446806, 'Sun Mar 29 03:53:26 2020', 1585446806, 1),
(96, 'steam:11000013f7b4715', 'license:140432619bec62c01aed9dd2276801f24e1ea73f', 'live:914798541154434', 'no info', 'discord:678337767968866341', 'ip:109.136.184.150', 'Renard Sef', 'Lucas Pignon', 'mod menu vien discord pour t\'(expliquer', 1585447988, 'Sun Mar 29 04:13:08 2020', 1611367988, 0),
(97, 'steam:110000107225a4c', 'license:81560a57ba34b9c57bf1db2622dafa7dfb1c91fb', 'no info', 'no info', 'discord:203470277647007745', 'ip:81.247.145.24', 'M.', 'Zek Kingston', 'Raison Inconnue', 1585448619, 'Sun Mar 29 04:23:39 2020', 1585535019, 0),
(98, 'steam:110000133d3d284', 'license:3d4c9e96631326ba8a8cf049ca235bf61294b50a', 'live:844427636799220', 'xbl:2535453880814648', 'discord:464737196096618497', 'ip:80.200.212.49', 'MIGUZZ', 'Zek Kingston', 'Raison Inconnue', 1585448630, 'Sun Mar 29 04:23:50 2020', 1585535030, 0),
(99, 'steam:11000013eb06dbe', 'license:293235dc4861198db78bc55559062ff0654e86d6', 'no info', 'no info', 'discord:657577909380317184', 'ip:93.22.26.9', 'al capone', 'Lucas Pignon', 'trool', 1585448933, 'Sun Mar 29 04:28:53 2020', 1585535333, 0),
(100, 'steam:11000013fd22c35', 'license:f5cb2f273076c15f239f9a801796a647f7bb8565', 'live:1759221927341677', 'xbl:2535446470424160', 'no info', 'ip:91.167.22.175', 'calvin Desiles', 'Lucas Pignon', 'mod menu', 1585449752, 'Sun Mar 29 04:42:32 2020', 1611369752, 0),
(101, 'steam:11000010ba1295d', 'license:124075af016737135fbfec9c052f21a4d2e52f17', 'live:1055521190224254', 'no info', 'no info', 'ip:81.241.155.21', 'Abdel_Crime', 'Lucas Pignon', 'mod menu', 1585449760, 'Sun Mar 29 04:42:40 2020', 1611369760, 0),
(102, 'steam:11000011cc2b122', 'license:12c19daf596481a9b3a3777cda12543aabe6fe71', 'live:985153992585429', 'xbl:2535432635687332', 'no info', 'ip:94.107.12.155', 'Karim', 'Lucas Pignon', 'mod menu', 1585449777, 'Sun Mar 29 04:42:57 2020', 1611369777, 0),
(103, 'steam:11000013a922b5a', 'license:8bd4116a1abf01b90b576a787b9731a25336fcd0', 'no info', 'no info', 'no info', 'ip:176.58.224.159', 'mitsarask88', 'BIENglace', 'troll', 1585451015, 'Sun Mar 29 05:03:35 2020', 1605755015, 0),
(104, 'steam:11000010a82f7e2', 'license:ee53cccd1933d396cb98dfcd96f34355714eb92e', 'live:1899945727823124', 'no info', 'discord:460648140437979136', 'ip:82.226.100.74', 'John', 'TONY NAGEL', 'trool', 1585452114, 'Sun Mar 29 05:21:54 2020', 1585452114, 1),
(105, 'steam:11000013fcc27f4', 'license:714859068cfce24658d4e4426726103696d349fc', 'no info', 'no info', 'discord:474237155275964447', 'ip:86.225.73.29', 'TinTinio De Juarez', 'TONY NAGEL', 'trool', 1585452462, 'Sun Mar 29 05:27:42 2020', 1585452462, 1),
(106, 'steam:11000014041b883', 'license:8fe1b63c1043afbcf373fd03aa83cb63734ae9ee', 'no info', 'no info', 'discord:401862425957367808', 'ip:90.79.44.35', 'KHAMEL MENELE', '[H] Bob Bob', 'carkill', 1585497533, 'Sun Mar 29 17:58:53 2020', 1585497533, 1),
(107, 'steam:11000013fd84250', 'license:96fdc01bf3ec40703a264118d28d7365ec54de2f', 'live:1055518837886543', 'no info', 'discord:543727834099744783', 'ip:78.243.229.55', 'eliepezzotti9', 'TONY NAGEL', 'trool', 1585499185, 'Sun Mar 29 18:26:25 2020', 1585499185, 1),
(108, 'steam:11000011d30e815', 'license:6798e80454aeb759a2d13e22f1d5c4a75cd8a053', 'live:985154497641003', 'xbl:2535428660188851', 'discord:549889012077166602', 'ip:89.84.0.105', 'Gustavo Guzmán', 'TONY NAGEL', 'reflechi par la suite a faire nimp', 1585502512, 'Sun Mar 29 19:21:52 2020', 1585588912, 0),
(109, 'steam:11000013cac34b6', 'license:06d9faffc4e6277836d7e57cda8e502001f31719', 'live:1055518350101014', 'no info', 'discord:450258686133272576', 'ip:91.160.138.51', 'GUCCI', 'TONY NAGEL', 'No fear', 1585504107, 'Sun Mar 29 19:48:27 2020', 1585590507, 0),
(110, 'steam:1100001342a956f', 'license:2273d87252bba5f64efd700971703e2e2f4a5b57', 'live:985157855447652', 'xbl:2535427575623770', 'discord:523943770086047746', 'ip:78.237.168.127', 'Nito Tavares', 'Tyler Manson Crown', 'power nofear trash radio (discord pour ton deban)', 1585506095, 'Sun Mar 29 20:21:35 2020', 1585592495, 0),
(111, 'steam:11000013c072309', 'license:85b715f4118ad2e5c806da8336b2c842f84bf630', 'no info', 'no info', 'discord:510821079527456788', 'ip:91.173.178.174', 'Skorez', 'Tyler Manson Crown', 'troll nofear', 1585524724, 'Mon Mar 30 01:32:04 2020', 1585611124, 0),
(112, 'steam:11000013228d4dc', 'license:0c9647096717b2c534a6533cd7cae31b80d6490d', 'live:985153850337394', 'xbl:2535427169157747', 'no info', 'ip:195.36.207.100', '???????????????????????? ????', 'TONY NAGEL', 'mod menu', 1585526824, 'Mon Mar 30 02:07:04 2020', 1585526824, 1),
(113, 'steam:11000013ad1ca16', 'license:3c513c08945551e912805ffad7f3d388b96426b2', 'no info', 'no info', 'discord:460064152405147688', 'ip:109.29.230.44', 'patrice62500', 'Jackson Manson Crown', 'carkill + troll', 1585529649, 'Mon Mar 30 02:54:09 2020', 1585616049, 0),
(114, 'steam:110000110a29248', 'license:682b97c5caf8a642982d9ab683258a411444bc40', 'live:844424992778150', 'xbl:2535457528168731', 'no info', 'ip:90.116.106.62', 'Tany Zampa', 'Jackson Manson Crown', 'carkill + troll', 1585529692, 'Mon Mar 30 02:54:52 2020', 1585616092, 0),
(115, 'steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', NULL, NULL, 'discord:268092633216188416', 'ip:25.2.86.181', 'SaYoNaraa', 'SaYoNaraa', 'Test', 1586176384, 'Mon Apr  6 14:33:04 2020', 1603456384, 0),
(116, 'steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 'no info', 'no info', 'discord:268092633216188416', 'ip:25.2.86.181', 'SaYoNaraa', 'SaYoNaraa', 'test', 1586177189, 'Mon Apr  6 14:46:29 2020', 1586263589, 0),
(117, 'steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 'no info', 'no info', 'discord:268092633216188416', 'ip:25.2.86.181', 'SaYoNaraa', 'SaYoNaraa', 'Test', 1586177308, 'Mon Apr  6 14:48:28 2020', 1586263708, 0),
(118, 'steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 'no info', 'no info', 'discord:268092633216188416', 'ip:25.2.86.181', 'SaYoNaraa', 'SaYoNaraa', 'Test', 1586177699, 'Mon Apr  6 14:54:59 2020', 1586350499, 0),
(119, 'steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 'no info', 'no info', 'discord:268092633216188416', 'ip:25.2.86.181', 'SaYoNaraa', 'SaYoNaraa', 'ezrgerehgerhe', 1586177860, 'Mon Apr  6 14:57:40 2020', 1586264260, 0);

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(2, 'steam:11000010a351d4a', 'steam:11000010a351d4a', 'society', 'society_police', 'ertgerg', 10),
(3, 'steam:11000010a351d4a', 'steam:11000010a351d4a', 'society', 'society_police', 'Ces pas bien de pas partager !', 5000),
(4, 'steam:11000010a351d4a', 'steam:11000010a351d4a', 'society', 'society_police', 'Test', 10),
(5, 'steam:11000010a351d4a', 'steam:11000010a351d4a', 'society', 'society_police', '0000000000000000000000000000000000000000', 5000),
(6, 'steam:11000010a351d4a', 'steam:11000010a351d4a', 'society', 'society_police', '000000000000000000000000000000', 10);

-- --------------------------------------------------------

--
-- Structure de la table `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(2, 'steam:11000013d4a73ae', 'Suka', 'Blyat', '16/09/1995', 'm', '182'),
(3, 'steam:11000010dc8ae6a', 'Jim', 'Cisco', '16/09/1995', 'm', '182'),
(30, 'steam:1100001029c253e', 'Tony', 'Nagel', '15/11/1998', 'm', '200'),
(71, 'steam:11000010a351d4a', 'Aeaze', 'Azeazea', '625429684', 'm', '172'),
(72, 'steam:11000010a351d4a', 'Alexy', 'Keyzer', '03/01/1972', 'm', '172'),
(73, 'steam:1100001003d06ec', 'Prof', 'PHPJS', '05/05/2020', 'm', '175');

-- --------------------------------------------------------

--
-- Structure de la table `darkshops`
--

CREATE TABLE `darkshops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `darkshops`
--

INSERT INTO `darkshops` (`id`, `store`, `item`, `price`) VALUES
(3, 'DarkShop', 'silencieux', 50),
(5, 'DarkShop', 'cagoule', 25),
(6, 'DarkShop', 'blowtorch', 2000),
(7, 'DarkShop', 'c4_bank', 1000),
(8, 'DarkShop', 'raspberry', 2000);

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Avocat', 1),
('society_bahama', 'bahama', 1),
('society_blackmarket', 'BlackMarker', 1),
('society_gouv', 'gouv', 1),
('society_orpailleurs', 'Orpailleurs', 1),
('society_police', 'Police', 1),
('society_sheriff', 'Sheriff', 1),
('society_tabac', 'tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0),
('vault', 'Vault', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_avocat', NULL, '{}'),
(3, 'society_bahama', NULL, '{}'),
(4, 'society_blackmarket', NULL, '{}'),
(5, 'society_gouv', NULL, '{}'),
(6, 'society_orpailleurs', NULL, '{}'),
(7, 'society_police', NULL, '{}'),
(8, 'society_sheriff', NULL, '{}'),
(9, 'society_tabac', NULL, '{}'),
(10, 'society_taxi', NULL, '{}'),
(11, 'society_unicorn', NULL, '{}'),
(12, 'society_vigne', NULL, '{}'),
(13, 'property', 'steam:11000010a351d4a', '{\"dressing\":[{\"label\":\"EZAAEAZEZA\",\"skin\":{\"arms\":0,\"mask_1\":0,\"nose_peak_hight\":0,\"eyebrown_high\":0,\"complexion_2\":1,\"torso_1\":16,\"decals_1\":0,\"helmet_2\":0,\"lipstick_1\":0,\"eyes_openning\":0,\"blush_3\":0,\"makeup_2\":0,\"chain_2\":0,\"shoes_1\":48,\"eyebrows_3\":0,\"bracelets_2\":0,\"glasses_1\":3,\"eye_color\":0,\"blemishes_1\":0,\"pants_2\":0,\"jaw_bone_width\":0,\"hair_color_2\":0,\"beard_1\":0,\"chest_1\":0,\"lips_thickness\":0,\"mask_2\":0,\"beard_3\":50,\"tshirt_1\":15,\"watches_1\":22,\"sex\":0,\"hair_2\":0,\"nose_width\":0,\"bags_1\":0,\"nose_peak_lenght\":0,\"helmet_1\":109,\"lipstick_3\":0,\"complexion_1\":0,\"shoes_2\":0,\"hair_color_1\":0,\"chimp_bone_lenght\":0,\"glasses_2\":0,\"nose_bone_high\":0,\"jaw_bone_back_lenght\":0,\"makeup_4\":0,\"eyebrown_forward\":0,\"age_1\":0,\"cheeks_width\":0,\"chimp_bone_width\":0,\"bags_2\":0,\"skin\":12,\"pants_1\":5,\"sun_2\":0,\"eyebrows_1\":0,\"cheeks_bone_high\":0,\"beard_2\":10,\"neck_thikness\":0,\"chest_3\":0,\"beard_4\":0,\"eyebrows_2\":10,\"bodyb_1\":0,\"ears_1\":9,\"lipstick_2\":0,\"decals_2\":0,\"face\":6,\"age_2\":0,\"sun_1\":0,\"chain_1\":0,\"makeup_3\":0,\"hair_1\":5,\"torso_2\":2,\"watches_2\":0,\"nose_peak_lowering\":0,\"lipstick_4\":0,\"bproof_2\":0,\"blemishes_2\":0,\"ears_2\":0,\"bodyb_2\":0,\"moles_2\":1,\"blush_1\":0,\"makeup_1\":0,\"cheeks_bone_width\":0,\"nose_bone_twist\":0,\"chimp_hole\":0,\"blush_2\":0,\"chest_2\":0,\"tshirt_2\":0,\"eyebrows_4\":0,\"moles_1\":0,\"bracelets_1\":-1,\"bproof_1\":0,\"arms_2\":0,\"chimp_bone_lowering\":0}}]}'),
(14, 'user_ears', 'steam:11000010a351d4a', '{\"hasEars\":true,\"skin\":{\"ears_1\":9,\"ears_2\":0}}'),
(15, 'user_mask', 'steam:11000010a351d4a', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":0}}'),
(16, 'user_glasses', 'steam:11000010a351d4a', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":3,\"glasses_2\":0}}'),
(17, 'user_helmet', 'steam:11000010a351d4a', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":109},\"hasHelmet\":true}'),
(18, 'property', 'steam:1100001029c253e', '{}'),
(19, 'user_ears', 'steam:1100001029c253e', '{}'),
(20, 'user_glasses', 'steam:1100001029c253e', '{}'),
(21, 'user_helmet', 'steam:1100001029c253e', '{}'),
(22, 'user_mask', 'steam:1100001029c253e', '{}'),
(23, 'vault', 'steam:11000010a351d4a', '{}'),
(24, 'vault', 'steam:1100001029c253e', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) NOT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:1100001029c253e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010a351d4a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 200, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 800, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 6000, 0),
(17, 'Excès de vitesse < 5 kmh', 150, 0),
(18, 'Excès de vitesse 5-15 kmh', 300, 0),
(19, 'Excès de vitesse 15-30 kmh', 450, 0),
(20, 'Excès de vitesse > 30 kmh', 600, 0),
(21, 'Entrave de la circulation', 1000, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 2000, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 3000, 1),
(27, 'Menace verbale ou intimidation envers civil', 800, 1),
(28, 'Menace verbale ou intimidation envers policier', 1600, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 5000, 1),
(31, 'Arme blanche sortie en ville', 1000, 2),
(32, 'Arme léthale sortie en ville', 3000, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 25000, 2),
(34, 'Port d\'arme illégal', 40000, 2),
(35, 'Pris en flag lockpick', 500, 2),
(36, 'Vol de voiture', 5000, 2),
(37, 'Possession de drogue > 30', 15000, 2),
(38, 'Possession de drogue > 10', 10000, 2),
(39, 'Possession de drogue < 10', 2000, 2),
(40, 'Prise d\'ôtage civil', 40000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 50000, 2),
(42, 'Braquage particulier', 10000, 2),
(43, 'Braquage magasin', 25000, 2),
(44, 'Braquage de banque', 80000, 2),
(45, 'Tir sur civil', 20000, 3),
(46, 'Tir sur agent de l\'état', 30000, 3),
(47, 'Tentative de meurtre sur civil', 30000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 30000, 3),
(49, 'Meurtre sur civil', 60000, 3),
(50, 'Meurte sur agent de l\'état', 65000, 3),
(51, 'Meurtre involontaire', 40000, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2),
(53, 'Fabrication de drogue', 2500, 2),
(54, 'Vente de drogue', 15000, 2),
(55, 'Usurpation d\'identité', 5000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('acetone', 'Acetone', 50, 0, 1),
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('beer', 'Bière', 15, 0, 1),
('billet', 'Papier', 50, 0, 1),
('billet_pooch', 'Faux Billet', 10, 0, 1),
('ble', 'Blé', 40, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('blowtorch', 'Chalumeau', -1, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bread', 'Pain', 15, 0, 1),
('burger', 'Hamburger', 5, 0, 1),
('c4_bank', 'Pain de C4', -1, 0, 1),
('cagoule', 'Cagoule', 5, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('cheese', 'Fromage', 5, 0, 1),
('chocolate', 'Chocolat', 10, 0, 1),
('cigarett', 'Cigarette', 20, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('cocacola', 'Coca-cola', 15, 0, 1),
('coffe', 'Café', 15, 0, 1),
('coke', 'Coke', 50, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('coyotte', 'Coyotte', 1, 0, 1),
('crack', 'Crack', 50, 0, 1),
('crack_pooch', 'Pochon de Crack', 10, 0, 1),
('croquettes', 'Croquettes', 20, 0, 1),
('cupcake', 'Cupcake', 15, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('ecstasy', 'Ecstasy', 50, 0, 1),
('ecstasy_pooch', 'Pochon decstasy', 10, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('farine', 'Farine', 40, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gitanes', 'Gitanes', 20, 0, 1),
('gold', 'Or', 21, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('icetea', 'Ice-tea', 15, 0, 1),
('iron', 'Fer', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jewels', 'Bijoux', -1, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('ketamine', 'Ketamine', 50, 0, 1),
('ketamine_pooch', 'Pochon de ketamine', 10, 0, 1),
('licenseplate', 'License plate', -1, 0, 1),
('lighter', 'Briquet', 1, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('lingot_dor', 'Lingot Dor', -1, 0, 1),
('lithium', 'Lithium', 50, 0, 1),
('malbora', 'Malbora', 20, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth', 'Meth', 50, 0, 1),
('methlab', 'Methilamine', 50, 0, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('milk', 'Lait', 15, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('opium', 'Opium', 50, 0, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1),
('orange', 'Orange', -1, 0, 1),
('orangep', 'Jus d\'orange', -1, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('pepite_dor', 'Pepite dor', -1, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('phone', 'Téléphone', -1, 0, 1),
('radio', 'Radio', 1, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('raspberry', 'Raspberry', -1, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('sandwich', 'Sandwich', 15, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('sim', 'Carte Sim', 5, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('sniffer', 'Détecteur (Bracelet)', 1, 0, 1),
('soda', 'Soda', 5, 0, 1),
('spliff', 'Spliff de weed', -1, 0, 1),
('steak', 'Steak', 5, 0, 1),
('steel', 'Acier', 25, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('tabac', 'Tabac', 20, 0, 1),
('tabacsec', 'Tabac Sèché', 20, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 15, 0, 1),
('tracker', 'Bracelet Electronique', 5, 0, 0),
('vine', 'Vin', -1, 0, 1),
('vodka', 'Vodka', 15, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', 'Eau', 5, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1),
('whisky', 'Whisky', -1, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wine', 'Vin', 15, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1),
('yusuf', 'Skin de luxe', -1, 0, 1),
('ziptie', 'Corde', 5, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job2_grades`
--

CREATE TABLE `job2_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job2_grades`
--

INSERT INTO `job2_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed2', 0, 'unemployed2', 'Sans Emploi', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('avocat', 'AVOCAT', 1),
('bahama', 'bahama', 1),
('bennys', 'Benny\'s', 1),
('carauto', 'Concessionnaire Auto', 0),
('cardealer', 'Concessionnaire Luxe', 1),
('fermier', 'Fermier', 0),
('fisherman', 'Pêcheur', 1),
('fueler', 'Raffineur', 0),
('gouv', 'Gouvernement', 1),
('lowrider', 'Concessionnaire Lowrider', 1),
('lumberjack', 'Bûcheron', 0),
('mechanic', 'Mécano', 1),
('mechanic66', 'Mécano', 0),
('miner', 'Mineur', 0),
('orpailleurs', 'Orpailleurs', 1),
('police', 'LSPD', 1),
('reporter', 'Journaliste', 1),
('sheriff', 'BCSO', 1),
('slaughterer', 'Abatteur', 0),
('tabac', 'Tabagiste', 1),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 1),
('unemployed', 'Chômeur', 0),
('unicorn', 'Unicorn', 1),
('usedcar', 'Mosleys', 1),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs2`
--

CREATE TABLE `jobs2` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jobs2`
--

INSERT INTO `jobs2` (`name`, `label`, `whitelisted`) VALUES
('unemployed2', 'Sans Activiter', 0);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Sans Emploi', 100, '{}', '{}'),
(2, 'police', 0, 'recruit', 'Cadet', 800, '{}', '{}'),
(3, 'police', 1, 'officer', 'Officier', 1200, '{}', '{}'),
(4, 'police', 2, 'sergeant', 'Sergent', 1600, '{}', '{}'),
(5, 'police', 3, 'intendent', 'Sergent-Chef', 2200, '{}', '{}'),
(6, 'police', 4, 'lieutenant', 'Lieutenant', 2600, '{}', '{}'),
(7, 'police', 5, 'boss', 'Capitaine', 3000, '{}', '{}'),
(8, 'ambulance', 0, 'ambulance', 'Ambulancier', 1450, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(9, 'ambulance', 1, 'doctor', 'Medecin', 1750, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(10, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 2000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(11, 'ambulance', 3, 'boss', 'Chirurgien', 3000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(12, 'mechanic', 0, 'recrue', 'Recrue', 200, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(13, 'mechanic', 1, 'novice', 'Novice', 250, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(14, 'mechanic', 2, 'experimente', 'Experimente', 300, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(15, 'mechanic', 3, 'chief', 'Chef d\'équipe', 350, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(16, 'mechanic', 4, 'boss', 'Patron', 400, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(17, 'lumberjack', 0, 'employee', 'Intérimaire', 100, '{}', '{}'),
(18, 'fisherman', 0, 'employee', 'Intérimaire', 100, '{}', '{}'),
(19, 'fueler', 0, 'employee', 'Intérimaire', 100, '{}', '{}'),
(20, 'reporter', 0, 'employee', 'Intérimaire', 100, '{}', '{}'),
(21, 'tailor', 0, 'employee', 'Intérimaire', 100, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(22, 'miner', 0, 'employee', 'Intérimaire', 100, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(23, 'slaughterer', 0, 'employee', 'Intérimaire', 100, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(24, 'cardealer', 0, 'recruit', 'Recrue', 500, '{}', '{}'),
(25, 'cardealer', 1, 'novice', 'Novice', 700, '{}', '{}'),
(26, 'cardealer', 2, 'experienced', 'Experimente', 900, '{}', '{}'),
(27, 'cardealer', 3, 'boss', 'Patron', 1100, '{}', '{}'),
(28, 'tabac', 0, 'recrue', 'Recrue', 300, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(29, 'tabac', 1, 'novice', 'Tabagiste', 600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(30, 'tabac', 2, 'cdisenior', 'Sous-Chef', 900, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(31, 'tabac', 3, 'boss', 'Patron', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(36, 'fermier', 0, 'employee', 'Intérimaire', 100, '{}', '{}'),
(37, 'usedcar', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(38, 'usedcar', 1, 'novice', 'Novice', 600, '{}', '{}'),
(39, 'usedcar', 2, 'experienced', 'Experimente', 900, '{}', '{}'),
(40, 'usedcar', 3, 'boss', 'Patron', 1200, '{}', '{}'),
(45, 'taxi', 0, 'recrue', 'Recrue', 300, '{\"tshirt_1\":34,\"tshirt_2\":1,\"torso_1\":60,\"torso_2\":2,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":24, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":21,\"tshirt_2\":0,\"torso_1\":57,\"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":23, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(46, 'taxi', 1, 'novice', 'Novice', 600, '{\"tshirt_1\":34,\"tshirt_2\":1,\"torso_1\":60,\"torso_2\":2,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":24, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":21,\"tshirt_2\":0,\"torso_1\":57,\"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":23, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(47, 'taxi', 2, 'experimente', 'Experimente', 900, '{\"tshirt_1\":34,\"tshirt_2\":1,\"torso_1\":60,\"torso_2\":2,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":24, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":21,\"tshirt_2\":0,\"torso_1\":57,\"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":23, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(48, 'taxi', 3, 'uber', 'Uber', 1200, '{\"tshirt_1\":34,\"tshirt_2\":1,\"torso_1\":60,\"torso_2\":2,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":24, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":21,\"tshirt_2\":0,\"torso_1\":57,\"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":23, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(49, 'taxi', 4, 'boss', 'Patron', 1500, '{\"tshirt_1\":34,\"tshirt_2\":1,\"torso_1\":60,\"torso_2\":2,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":24, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":21,\"tshirt_2\":0,\"torso_1\":57,\"torso_2\":0,\"shoes_1\":10,\"shoes_2\":0,\"pants_1\":23, \"pants_2\":0, \"arms\":5, \"helmet_1\":-1, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(56, 'gouv', 0, 'garde', 'Garde du Corps', 1000, '{}', '{}'),
(57, 'gouv', 1, 'judge', 'Juge', 2000, '{}', '{}'),
(58, 'gouv', 2, 'manager', 'Ministre', 3000, '{}', '{}'),
(59, 'gouv', 3, 'boss', 'Président', 4000, '{}', '{}'),
(91, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(92, 'vigne', 1, 'novice', 'Vigneron', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(93, 'vigne', 2, 'cdisenior', 'Chef de chai', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(94, 'vigne', 3, 'boss', 'Patron', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(95, 'avocat', 0, 'recruit', 'Recrue', 20, '{\"tshirt_1\":76,\"torso_1\":35,\"arms\":14,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":72,\"torso_1\":52,\"shoes\":24,\"pants_1\":36,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":1,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":11}'),
(96, 'avocat', 1, 'boss', 'Patron', 100, '{\"tshirt_1\":76,\"torso_1\":35,\"arms\":14,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":72,\"torso_1\":52,\"shoes\":24,\"pants_1\":36,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":1,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":11}'),
(97, 'orpailleurs', 0, 'recrue', 'Orpailleurs débutant', 500, '{}', '{}'),
(98, 'orpailleurs', 1, 'novice', 'Orpailleurs Semi-Qualifié', 750, '{}', '{}'),
(99, 'orpailleurs', 2, 'cdisenior', 'Orpailleurs Qualifié', 1200, '{}', '{}'),
(100, 'orpailleurs', 3, 'boss', 'Patron Orpailleurs', 1600, '{}', '{}'),
(107, 'sheriff', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(108, 'sheriff', 1, 'officer', 'Deputy', 40, '{}', '{}'),
(109, 'sheriff', 2, 'sergeant', 'Major', 60, '{}', '{}'),
(110, 'sheriff', 3, 'lieutenant', 'Sheriff-Adjoint', 85, '{}', '{}'),
(111, 'sheriff', 4, 'boss', 'Sheriff', 100, '{}', '{}'),
(112, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(113, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(114, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(115, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(116, 'bahama', 0, 'barman', 'Barman', 300, '{}', '{}'),
(117, 'bahama', 1, 'dj', 'DJ', 300, '{}', '{}'),
(118, 'bahama', 2, 'secu', 'Sécurité', 300, '{}', '{}'),
(119, 'bahama', 3, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(120, 'bahama', 4, 'boss', 'Gérant', 600, '{}', '{}'),
(121, 'lowrider', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(122, 'lowrider', 1, 'novice', 'Novice', 25, '{}', '{}'),
(123, 'lowrider', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(124, 'lowrider', 3, 'boss', 'Patron', 0, '{}', '{}'),
(125, 'bennys', 0, 'recrue', 'Recrue', 12, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(126, 'bennys', 1, 'novice', 'Novice', 24, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(127, 'bennys', 2, 'experimente', 'Experimente', 36, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(128, 'bennys', 3, 'chief', 'Chef d\'équipe', 48, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(129, 'bennys', 4, 'boss', 'Patron', 0, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(130, 'mechanic66', 0, 'recrue', 'Recrue', 12, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(131, 'mechanic66', 1, 'novice', 'Novice', 24, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(132, 'mechanic66', 2, 'experimente', 'Experimente', 36, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(133, 'mechanic66', 3, 'chief', 'Chef d\'équipe', 48, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(134, 'mechanic66', 4, 'boss', 'Patron', 0, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":0, \"arms\":11, \"pants_1\":98, \"pants_2\":22, \"shoes_1\":63, \"shoes_2\":6}', '{}'),
(135, 'carauto', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(136, 'carauto', 1, 'novice', 'Novice', 25, '{}', '{}'),
(137, 'carauto', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(138, 'carauto', 3, 'boss', 'Patron', 0, '{}', '{}'),
(139, 'carauto', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(140, 'carauto', 1, 'novice', 'Novice', 25, '{}', '{}'),
(141, 'carauto', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(142, 'carauto', 3, 'boss', 'Patron', 0, '{}', '{}'),
(143, 'carauto', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(144, 'carauto', 1, 'novice', 'Novice', 25, '{}', '{}'),
(145, 'carauto', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(146, 'carauto', 3, 'boss', 'Patron', 0, '{}', '{}'),
(147, 'carauto', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(148, 'carauto', 1, 'novice', 'Novice', 25, '{}', '{}'),
(149, 'carauto', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(150, 'carauto', 3, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Structure de la table `lowridercardealer_vehicles`
--

CREATE TABLE `lowridercardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lowridervehicle_categories`
--

CREATE TABLE `lowridervehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lowridervehicle_categories`
--

INSERT INTO `lowridervehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `lowridervehicle_sold`
--

CREATE TABLE `lowridervehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lowrider_rented_vehicles`
--

CREATE TABLE `lowrider_rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lowrider_vehicles`
--

CREATE TABLE `lowrider_vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lowrider_vehicles`
--

INSERT INTO `lowrider_vehicles` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Asea', 'asea', 5500, 'sedans'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Hustler', 'hustler', 625000, 'muscle'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Minivan', 'minivan', 13000, 'vans'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('riata', 'riata', 380000, 'offroad'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stretch', 'stretch', 90000, 'sedans'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surfer', 'surfer', 12000, 'vans'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Vader', 'vader', 7200, 'motorcycles'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'ANNONCE',
  `title` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `type`, `title`, `content`, `url_img`, `date`) VALUES
(1, 'MISE A JOUR', 'Vigneron 0.2', 'Augmenter le prix des bouteilles.<br/>\r\nModification du poids des raisin, bouteille de vin & jus de raisin<br/>\r\nChaque Trajets complet = 25 minutes environs. \r\n', 'https://www.covigneron.com/wp-content/uploads/2016/11/Image012.jpg', NULL),
(2, 'MISE A JOUR', 'Vigneron 0.2', 'Augmenter le prix des bouteilles.<br/>\r\nModification du poids des raisin, bouteille de vin & jus de raisin<br/>\r\nChaque Trajets complet = 25 minutes environs. \r\n', 'https://www.covigneron.com/wp-content/uploads/2016/11/Image012.jpg', NULL),
(3, 'MISE A JOUR', 'Vigneron 0.2', 'Augmenter le prix des bouteilles.<br/>\r\nModification du poids des raisin, bouteille de vin & jus de raisin<br/>\r\nChaque Trajets complet = 25 minutes environs. \r\n', 'https://www.covigneron.com/wp-content/uploads/2016/11/Image012.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

CREATE TABLE `open_car` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `open_car`
--

INSERT INTO `open_car` (`id`, `identifier`, `label`, `value`, `got`, `NB`) VALUES
(2, 'steam:11000010a351d4a', 'Cles', 'LQF 594', 'true', 1),
(3, 'steam:11000010a351d4a', 'Cles', 'NXV 594', 'true', 1),
(4, 'steam:11000010a351d4a', 'Cles', 'GJM 348', 'true', 1);

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garageperso` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Garage Personnel',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Centre',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) NOT NULL DEFAULT 'voiture',
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`vehicle`, `owner`, `state`, `garageperso`, `stored`, `garage_name`, `fourrieremecano`, `vehiclename`, `plate`, `type`, `job`) VALUES
('{\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"color2\":121,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modWindows\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"model\":-1883002148,\"modAerials\":-1,\"extras\":{\"12\":false,\"11\":false,\"10\":true},\"dirtLevel\":11.0,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"wheels\":2,\"windowTint\":-1,\"modTrunk\":-1,\"modTank\":-1,\"pearlescentColor\":0,\"modGrille\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"color1\":46,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"plate\":\"GJM 348\",\"plateIndex\":2,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"health\":1000,\"modStruts\":-1,\"modAirFilter\":-1,\"wheelColor\":156,\"modTransmission\":-1,\"modExhaust\":-1,\"modSpoilers\":-1}', 'steam:11000010a351d4a', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'GJM 322', 'car', NULL),
('{\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"color2\":121,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modWindows\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"model\":-1883002148,\"modAerials\":-1,\"extras\":{\"12\":false,\"11\":false,\"10\":true},\"dirtLevel\":11.0,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"wheels\":2,\"windowTint\":-1,\"modTrunk\":-1,\"modTank\":-1,\"pearlescentColor\":0,\"modGrille\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"color1\":46,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"plate\":\"GJM 348\",\"plateIndex\":2,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"health\":1000,\"modStruts\":-1,\"modAirFilter\":-1,\"wheelColor\":156,\"modTransmission\":-1,\"modExhaust\":-1,\"modSpoilers\":-1}', 'steam:1100001003d06ec', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'GJM 348', 'car', NULL),
('{\"modSpeakers\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modSuspension\":-1,\"color2\":0,\"model\":-344943009,\"modFrame\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modSteeringWheel\":-1,\"plate\":\"LQF 594\",\"tyreSmokeColor\":[255,255,255],\"wheels\":0,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"dirtLevel\":7.0196390151978,\"modPlateHolder\":-1,\"health\":1000,\"modSpoilers\":-1,\"color1\":6,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modXenon\":false,\"modTrunk\":-1,\"extras\":{\"10\":false,\"12\":true},\"modEngine\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"wheelColor\":156,\"modRightFender\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modSmokeEnabled\":1,\"modHood\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"modStruts\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modHydrolic\":-1}', 'steam:11000010a351d4a', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'LQF 521', 'car', NULL),
('{\"modSpeakers\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modSuspension\":-1,\"color2\":0,\"model\":-344943009,\"modFrame\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modSteeringWheel\":-1,\"plate\":\"LQF 594\",\"tyreSmokeColor\":[255,255,255],\"wheels\":0,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"modAPlate\":-1,\"dirtLevel\":7.0196390151978,\"modPlateHolder\":-1,\"health\":1000,\"modSpoilers\":-1,\"color1\":6,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modXenon\":false,\"modTrunk\":-1,\"extras\":{\"10\":false,\"12\":true},\"modEngine\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"wheelColor\":156,\"modRightFender\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modSmokeEnabled\":1,\"modHood\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"modStruts\":-1,\"modGrille\":-1,\"plateIndex\":0,\"modHydrolic\":-1}', 'steam:11000013d4a73ae', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'LQF 594', 'car', NULL),
('{\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"color2\":0,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modWindows\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"model\":628003514,\"modAerials\":-1,\"extras\":[],\"dirtLevel\":2.0,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"wheels\":0,\"windowTint\":-1,\"modTrunk\":-1,\"modTank\":-1,\"pearlescentColor\":7,\"modGrille\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"color1\":6,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"plate\":\"NXV 594\",\"plateIndex\":0,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"health\":1000,\"modStruts\":-1,\"modAirFilter\":-1,\"wheelColor\":12,\"modTransmission\":-1,\"modExhaust\":-1,\"modSpoilers\":-1}', 'steam:11000013dce7633', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'NXV 520', 'car', NULL),
('{\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"color2\":0,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modWindows\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"model\":628003514,\"modAerials\":-1,\"extras\":[],\"dirtLevel\":2.0,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"wheels\":0,\"windowTint\":-1,\"modTrunk\":-1,\"modTank\":-1,\"pearlescentColor\":7,\"modGrille\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"color1\":6,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"plate\":\"NXV 594\",\"plateIndex\":0,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"health\":1000,\"modStruts\":-1,\"modAirFilter\":-1,\"wheelColor\":12,\"modTransmission\":-1,\"modExhaust\":-1,\"modSpoilers\":-1}', 'steam:1100001003d06ec', 1, 0, 0, 'Garage_Centre', 0, 'voiture', 'NXV 594', 'car', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(1, '555-5242', '541-4749', 1, '2020-04-19 21:19:22', 1),
(2, '541-4749', '555-5242', 0, '2020-04-19 21:19:22', 1),
(3, '555-5242', '541-4749', 1, '2020-04-19 21:19:23', 1),
(4, '541-4749', '555-5242', 0, '2020-04-19 21:19:23', 1),
(5, '541-4749', '555-5242', 1, '2020-04-19 21:20:20', 1),
(6, '555-5242', '541-4749', 0, '2020-04-19 21:20:20', 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_ch_reddit`
--

CREATE TABLE `phone_ch_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(1, '555-5242', '541-4749', 'tzetze', '2020-04-19 21:19:09', 1, 0),
(2, '541-4749', '555-5242', 'tzetze', '2020-04-19 21:19:09', 1, 1),
(3, '541-4749', '555-5242', 'noob', '2020-04-19 21:19:15', 1, 0),
(4, '555-5242', '541-4749', 'noob', '2020-04-19 21:19:15', 1, 1),
(5, '555-5242', '541-4749', 'https://upload.fivemturk.com/resim/19-04-2020_23-07-56_7077516089.jpg', '2020-04-19 23:07:56', 0, 0),
(6, '541-4749', '555-5242', 'https://upload.fivemturk.com/resim/19-04-2020_23-07-56_7077516089.jpg', '2020-04-19 23:07:56', 1, 1),
(7, '555-5242', '541-4749', 'https://upload.fivemturk.com/resim/19-04-2020_23-08-17_1635378418.jpg', '2020-04-19 23:08:17', 0, 0),
(8, '541-4749', '555-5242', 'https://upload.fivemturk.com/resim/19-04-2020_23-08-17_1635378418.jpg', '2020-04-19 23:08:17', 1, 1),
(9, '555-5242', '541-4749', 'GPS: -190.31246948242, -932.91766357422', '2020-04-19 23:08:21', 0, 0),
(10, '541-4749', '555-5242', 'GPS: -190.31246948242, -932.91766357422', '2020-04-19 23:08:22', 1, 1),
(11, 'ambulance', '555-5242', 'De #555-5242 : azrazer 301.50518798828, -596.23278808594', '2020-04-19 23:18:36', 1, 0),
(12, 'police', '804-7595', 'De #804-7595 : fzefze 222.85992431641, -824.77117919922', '2020-04-28 19:29:38', 1, 0),
(13, 'ambulance', '804-7595', 'De #804-7595 : Soins médicaux requis : citoyen inconscient ! 238.48690795898, -641.17547607422', '2020-05-01 20:23:46', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_reddit`
--

CREATE TABLE `phone_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_shops`
--

CREATE TABLE `phone_shops` (
  `id` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `phone_shops`
--

INSERT INTO `phone_shops` (`id`, `store`, `item`, `price`, `label`) VALUES
(18, 'https://img.pngio.com/sim-card-png-clipart-sim-cards-png-1483_1162.png', 'sim', 50, 'SIM CARD');

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(1, 'steam:11000010a351d4a', '541-4749', 'Nouveau Contact');

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Structure de la table `racket_organisation`
--

CREATE TABLE `racket_organisation` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `racket_organisation`
--

INSERT INTO `racket_organisation` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 8000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'chocolate', 10),
(8, 'RobsLiquor', 'chocolate', 10),
(9, 'LTDgasoline', 'chocolate', 10),
(10, 'TwentyFourSeven', 'sandwich', 10),
(11, 'RobsLiquor', 'sandwich', 10),
(12, 'LTDgasoline', 'sandwich', 10),
(16, 'TwentyFourSeven', 'cupcake', 10),
(17, 'RobsLiquor', 'cupcake', 10),
(18, 'LTDgasoline', 'cupcake', 10),
(19, 'TwentyFourSeven', 'cocacola', 15),
(20, 'RobsLiquor', 'cocacola', 15),
(21, 'LTDgasoline', 'cocacola', 15),
(22, 'TwentyFourSeven', 'icetea', 10),
(23, 'RobsLiquor', 'icetea', 10),
(24, 'LTDgasoline', 'icetea', 10),
(25, 'TwentyFourSeven', 'coffe', 10),
(26, 'RobsLiquor', 'coffe', 10),
(27, 'LTDgasoline', 'coffe', 10),
(28, 'TwentyFourSeven', 'milk', 15),
(29, 'RobsLiquor', 'milk', 15),
(30, 'LTDgasoline', 'milk', 15),
(31, 'RobsLiquor', 'cigarett', 15),
(32, 'RobsLiquor', 'lighter', 10),
(33, 'LTDgasoline', 'cigarett', 15),
(34, 'LTDgasoline', 'lighter', 10),
(35, 'TwentyFourSeven', 'cigarett', 15),
(36, 'TwentyFourSeven', 'lighter', 10),
(37, 'Bar', 'beer', 30),
(38, 'Bar', 'wine', 25),
(39, 'Bar', 'vodka', 60),
(40, 'Bar', 'tequila', 40),
(41, 'Bar', 'whisky', 50),
(42, 'Bar', 'cigarett', 30),
(43, 'Bar', 'lighter', 25),
(44, 'Disco', 'beer', 30),
(45, 'Disco', 'wine', 25),
(46, 'Disco', 'vodka', 60),
(47, 'Disco', 'tequila', 40),
(48, 'Disco', 'whisky', 50),
(49, 'Disco', 'cigarett', 30),
(50, 'Disco', 'lighter', 25),
(51, 'TwentyFourSeven', 'phone', 500),
(52, 'RobsLiquor', 'phone', 500),
(53, 'LTDgasoline', 'phone', 500),
(57, 'TwentyFourSeven', 'sim', 50),
(58, 'RobsLiquor', 'sim', 50),
(59, 'LTDgasoline', 'sim', 50),
(60, 'LTDgasoline', 'croquettes', 100);

-- --------------------------------------------------------

--
-- Structure de la table `shops2`
--

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `shops2`
--

INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'yusuf', 3000),
(2, 'narekshop', 'grip', 3000),
(3, 'narekshop', 'flashlight', 3000),
(5, 'narekshop', 'clip', 200);

-- --------------------------------------------------------

--
-- Structure de la table `sim`
--

CREATE TABLE `sim` (
  `id` int(11) UNSIGNED NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `label` varchar(15) DEFAULT 'Carte Sim'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sim`
--

INSERT INTO `sim` (`id`, `identifier`, `phone_number`, `label`) VALUES
(1, 'steam:11000013dce7633', '555-4031', 'SIM 555-4031'),
(2, 'steam:11000010a351d4a', '555-4353', 'SIM 555-4353'),
(0, 'steam:11000010a351d4a', '55594509', 'SIM 55594509');

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job2` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job_grade` int(11) DEFAULT 0,
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `isDead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `pet` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `nbr_Up` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job2`, `job_grade`, `job2_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `isDead`, `phone_number`, `status`, `last_property`, `tattoos`, `pet`, `nbr_Up`) VALUES
('steam:1100001003d06ec', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 1200, 'ProfPHP', '{\"makeup_3\":0,\"blemishes_2\":0,\"bodyb_1\":0,\"hair_1\":0,\"moles_2\":0,\"bproof_2\":0,\"face\":4,\"makeup_1\":0,\"makeup_2\":0,\"tshirt_1\":0,\"chest_1\":0,\"hair_color_2\":0,\"shoes_1\":0,\"helmet_1\":-1,\"helmet_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"ears_2\":0,\"eyebrows_4\":0,\"blush_1\":0,\"sex\":0,\"age_1\":0,\"complexion_1\":0,\"watches_2\":0,\"age_2\":0,\"chain_2\":0,\"beard_4\":0,\"eye_color\":0,\"hair_2\":0,\"eyebrows_1\":0,\"chest_2\":0,\"bracelets_1\":-1,\"bodyb_2\":0,\"chest_3\":0,\"chain_1\":0,\"tshirt_2\":0,\"beard_3\":0,\"bproof_1\":0,\"glasses_2\":0,\"watches_1\":-1,\"torso_1\":0,\"eyebrows_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"sun_2\":0,\"decals_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"makeup_4\":0,\"mask_1\":0,\"blush_2\":0,\"lipstick_1\":0,\"bags_1\":0,\"skin\":3,\"lipstick_2\":0,\"glasses_1\":0,\"beard_1\":0,\"pants_1\":0,\"blemishes_1\":0,\"torso_2\":0,\"shoes_2\":0,\"ears_1\":-1,\"hair_color_1\":0,\"sun_1\":0,\"bags_2\":0,\"arms_2\":0,\"decals_1\":0,\"mask_2\":0,\"moles_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"arms\":0}', 'police', 'unemployed2', 2, 0, '[]', '{\"y\":6329.7,\"x\":83.4,\"z\":31.2}', 50000, 4, 'superadmin', 'Prof', 'PHPJS', '05/05/2020', 'm', '175', 0, '220-8781', '[{\"val\":316100,\"name\":\"hunger\",\"percent\":31.61},{\"val\":487075,\"name\":\"thirst\",\"percent\":48.7075},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, NULL, NULL, 345),
('steam:1100001029c253e', 'license:528c5eb97b938ca270505b47baba6117fb1db75a', 4750, 'jack daniels', '{\"makeup_3\":0,\"shoes_2\":0,\"hair_color_2\":0,\"beard_3\":0,\"age_1\":0,\"skin\":3,\"makeup_2\":0,\"bags_1\":0,\"pants_2\":0,\"chain_2\":0,\"glasses_2\":0,\"sex\":0,\"eyebrows_1\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"torso_2\":0,\"arms_2\":0,\"ears_1\":-1,\"chest_1\":0,\"mask_1\":0,\"bproof_2\":0,\"arms\":0,\"helmet_2\":0,\"chest_2\":0,\"hair_1\":0,\"sun_2\":0,\"torso_1\":0,\"shoes_1\":0,\"blush_1\":0,\"makeup_4\":0,\"bracelets_2\":0,\"blush_2\":0,\"eyebrows_2\":0,\"complexion_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"moles_1\":0,\"makeup_1\":0,\"lipstick_4\":0,\"bproof_1\":0,\"helmet_1\":-1,\"eyebrows_4\":0,\"hair_2\":0,\"lipstick_1\":0,\"tshirt_1\":0,\"blush_3\":0,\"beard_4\":0,\"complexion_2\":0,\"chain_1\":0,\"bodyb_1\":0,\"eye_color\":0,\"glasses_1\":0,\"pants_1\":0,\"decals_1\":0,\"watches_2\":0,\"beard_1\":0,\"ears_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"sun_1\":0,\"watches_1\":-1,\"decals_2\":0,\"bracelets_1\":-1,\"face\":4,\"chest_3\":0,\"beard_2\":0,\"moles_2\":0,\"tshirt_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"lipstick_2\":0}', 'unemployed', 'unemployed2', 0, 0, '[]', '{\"x\":121.5,\"y\":-1110.1,\"z\":35.7}', 45100, 4, 'superadmin', 'Tony', 'Nagel', '15/11/1998', 'm', '200', 0, '541-4749', '[{\"val\":773900,\"percent\":77.39,\"name\":\"hunger\"},{\"val\":830425,\"percent\":83.0425,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, NULL, NULL, 10),
('steam:11000010a351d4a', 'license:88fa041731c1df91525e9989b886d9b5ad6a823e', 550, 'SaYoNaraa', '{\"makeup_3\":0,\"blemishes_2\":0,\"bodyb_1\":0,\"hair_1\":0,\"moles_2\":0,\"bproof_2\":0,\"face\":4,\"makeup_1\":0,\"makeup_2\":0,\"tshirt_1\":0,\"chest_1\":0,\"hair_color_2\":0,\"shoes_1\":0,\"helmet_1\":-1,\"helmet_2\":0,\"lipstick_4\":0,\"blush_3\":0,\"ears_2\":0,\"eyebrows_4\":0,\"blush_1\":0,\"sex\":0,\"age_1\":0,\"complexion_1\":0,\"watches_2\":0,\"age_2\":0,\"chain_2\":0,\"beard_4\":0,\"eye_color\":0,\"hair_2\":0,\"eyebrows_1\":0,\"chest_2\":0,\"bracelets_1\":-1,\"bodyb_2\":0,\"chest_3\":0,\"chain_1\":0,\"tshirt_2\":0,\"beard_3\":0,\"bproof_1\":0,\"glasses_2\":0,\"watches_1\":-1,\"torso_1\":0,\"eyebrows_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"sun_2\":0,\"decals_2\":0,\"lipstick_3\":0,\"beard_2\":0,\"makeup_4\":0,\"mask_1\":0,\"blush_2\":0,\"lipstick_1\":0,\"bags_1\":0,\"skin\":3,\"lipstick_2\":0,\"glasses_1\":0,\"beard_1\":0,\"pants_1\":0,\"blemishes_1\":0,\"torso_2\":0,\"shoes_2\":0,\"ears_1\":-1,\"hair_color_1\":0,\"sun_1\":0,\"bags_2\":0,\"arms_2\":0,\"decals_1\":0,\"mask_2\":0,\"moles_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"arms\":0}', 'lowrider', 'unemployed2', 2, 0, '[]', '{\"y\":6329.7,\"x\":83.4,\"z\":31.2}', 4500, 4, 'superadmin', 'Alexy', 'Keyzer', '03/01/1972', 'm', '172', 0, '220-8781', '[{\"val\":316100,\"name\":\"hunger\",\"percent\":31.61},{\"val\":487075,\"name\":\"thirst\",\"percent\":48.7075},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, NULL, NULL, 345),
('steam:11000010dc8ae6a', 'license:fa41954b5a90de279f01a97d34175dea2556f877', 5000, 'JimFromRH', '{\"shoes_1\":0,\"blush_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"ears_2\":0,\"blush_3\":0,\"arms\":0,\"makeup_2\":0,\"face\":6,\"helmet_2\":0,\"arms_2\":0,\"mask_1\":0,\"decals_2\":0,\"pants_2\":0,\"chest_2\":0,\"eyebrows_2\":0,\"lipstick_2\":0,\"hair_2\":4,\"tshirt_2\":0,\"complexion_1\":0,\"bags_2\":0,\"glasses_1\":0,\"moles_1\":0,\"age_1\":0,\"moles_2\":0,\"bproof_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"sun_1\":0,\"skin\":7,\"tshirt_1\":0,\"makeup_3\":0,\"beard_4\":0,\"eyebrows_3\":0,\"lipstick_3\":0,\"hair_1\":13,\"watches_2\":0,\"beard_2\":0,\"lipstick_4\":0,\"chain_2\":0,\"chain_1\":0,\"makeup_1\":0,\"chest_3\":0,\"pants_1\":0,\"chest_1\":0,\"sun_2\":0,\"glasses_2\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"ears_1\":-1,\"age_2\":0,\"bodyb_1\":0,\"bodyb_2\":0,\"beard_3\":0,\"beard_1\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"complexion_2\":0,\"bags_1\":0,\"blush_1\":0,\"shoes_2\":0,\"mask_2\":0,\"blemishes_2\":0,\"torso_1\":0,\"eyebrows_1\":0,\"sex\":0,\"eye_color\":0,\"torso_2\":0,\"watches_1\":-1,\"hair_color_1\":0,\"blemishes_1\":0,\"hair_color_2\":0}', 'unemployed', 'unemployed2', 0, 0, '[]', '{\"y\":6448.1999999992,\"x\":-71.799999999988,\"z\":31.400000000002}', 45100, 0, 'superadmin', 'Jim', 'Cisco', '16/09/1995', 'm', '182', 0, NULL, '[{\"val\":931100,\"name\":\"hunger\",\"percent\":93.11},{\"val\":948325,\"name\":\"thirst\",\"percent\":94.8325},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', NULL, NULL, NULL, 20),
('steam:11000013d4a73ae', 'license:fa41954b5a90de279f01a97d34175dea2556f877', 4285, 'jimcisco', '{\"beard_1\":0,\"chain_2\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"bracelets_1\":-1,\"arms_2\":0,\"beard_2\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"age_2\":0,\"blemishes_2\":0,\"helmet_2\":0,\"torso_1\":0,\"decals_1\":0,\"moles_1\":0,\"blush_1\":0,\"decals_2\":0,\"bodyb_1\":0,\"glasses_1\":0,\"lipstick_2\":0,\"hair_1\":0,\"bodyb_2\":0,\"hair_color_2\":0,\"glasses_2\":0,\"watches_1\":-1,\"skin\":0,\"pants_1\":0,\"blemishes_1\":0,\"sun_2\":0,\"eyebrows_3\":0,\"chain_1\":0,\"bracelets_2\":0,\"mask_1\":0,\"bproof_1\":0,\"watches_2\":0,\"chest_3\":0,\"torso_2\":0,\"blush_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"ears_2\":0,\"pants_2\":0,\"eyebrows_2\":0,\"face\":0,\"bproof_2\":0,\"beard_4\":0,\"tshirt_1\":0,\"lipstick_1\":0,\"bags_2\":0,\"arms\":0,\"complexion_2\":0,\"chest_2\":0,\"sun_1\":0,\"hair_2\":0,\"age_1\":0,\"makeup_4\":0,\"sex\":0,\"shoes_2\":0,\"eye_color\":0,\"makeup_2\":0,\"bags_1\":0,\"tshirt_2\":0,\"chest_1\":0,\"beard_3\":0,\"blush_3\":0,\"moles_2\":0,\"hair_color_1\":0,\"mask_2\":0,\"helmet_1\":-1,\"lipstick_3\":0,\"ears_1\":-1,\"shoes_1\":0}', 'sheriff', 'unemployed2', 5, 0, '[{\"ammo\":107,\"label\":\"Fusil d\'assaut\",\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"]}]', '{\"x\":-198.0,\"z\":37.199999999998,\"y\":6214.0}', 45000, 4, 'superadmin', 'Suka', 'Blyat', '16/09/1995', 'm', '182', 0, NULL, '[{\"percent\":37.67,\"val\":376700,\"name\":\"hunger\"},{\"percent\":40.7525,\"val\":407525,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL, NULL, NULL, 5),
('steam:11000013dce7633', 'license:36c10b5e67a0352ab41ee9cf12fa0cccb8a495a5', 5000, 'Roofters', '{\"beard_2\":0,\"sun_1\":0,\"glasses_1\":0,\"hair_color_2\":0,\"skin\":0,\"eyebrows_2\":0,\"bproof_2\":0,\"eye_color\":0,\"lipstick_3\":0,\"arms_2\":0,\"arms\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"watches_2\":0,\"torso_1\":0,\"pants_2\":0,\"eyebrows_4\":0,\"decals_2\":0,\"bags_2\":0,\"bags_1\":0,\"makeup_3\":0,\"beard_3\":0,\"hair_2\":0,\"beard_4\":0,\"age_2\":0,\"chest_2\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"eyebrows_3\":0,\"age_1\":0,\"tshirt_1\":0,\"face\":0,\"helmet_2\":0,\"tshirt_2\":0,\"pants_1\":0,\"blush_3\":0,\"chest_3\":0,\"complexion_1\":0,\"hair_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"decals_1\":0,\"mask_2\":0,\"ears_1\":-1,\"chain_1\":0,\"bproof_1\":0,\"shoes_1\":0,\"bracelets_1\":-1,\"moles_1\":0,\"bodyb_2\":0,\"torso_2\":0,\"blemishes_1\":0,\"makeup_2\":0,\"makeup_1\":0,\"chain_2\":0,\"hair_color_1\":0,\"sun_2\":0,\"bodyb_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"mask_1\":0,\"blush_1\":0,\"blush_2\":0,\"bracelets_2\":0,\"moles_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"lipstick_4\":0,\"beard_1\":0,\"sex\":0,\"chest_1\":0,\"ears_2\":0}', 'bennys', 'unemployed2', 4, 0, '[]', '{\"z\":43.3,\"y\":-585.2,\"x\":319.3}', 2147483647, 4, 'superadmin', 'Jhon', 'Thompson', '30/10/1999', 'm', '190', 0, NULL, '[{\"percent\":50.0,\"name\":\"hunger\",\"val\":500000},{\"percent\":50.0,\"name\":\"thirst\",\"val\":500000},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, NULL, 'berger', 250);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:11000010a351d4a', 'black_money', 0),
(2, 'steam:11000013dce7633', 'black_money', 0),
(3, 'steam:11000013d4a73ae', 'black_money', 0),
(4, 'steam:11000010dc8ae6a', 'black_money', 0),
(5, 'steam:11000013e7cdc6b', 'black_money', 0),
(6, 'steam:1100001029c253e', 'black_money', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:11000010a351d4a', 'yusuf', 0),
(2, 'steam:11000010a351d4a', 'drpepper', 0),
(3, 'steam:11000010a351d4a', 'flashlight', 0),
(4, 'steam:11000010a351d4a', 'gitanes', 0),
(5, 'steam:11000010a351d4a', 'stone', 0),
(6, 'steam:11000010a351d4a', 'vine', 0),
(7, 'steam:11000010a351d4a', 'essence', 0),
(8, 'steam:11000010a351d4a', 'wool', 0),
(9, 'steam:11000010a351d4a', 'chocolate', 0),
(10, 'steam:11000010a351d4a', 'saucisson', 0),
(11, 'steam:11000010a351d4a', 'meth', 0),
(12, 'steam:11000010a351d4a', 'wood', 0),
(13, 'steam:11000010a351d4a', 'energy', 0),
(14, 'steam:11000010a351d4a', 'fixkit', 18),
(15, 'steam:11000010a351d4a', 'blowtorch', 0),
(16, 'steam:11000010a351d4a', 'ketamine_pooch', 0),
(17, 'steam:11000010a351d4a', 'ble', 0),
(18, 'steam:11000010a351d4a', 'clip', 0),
(19, 'steam:11000010a351d4a', 'bolpistache', 0),
(20, 'steam:11000010a351d4a', 'crack', 0),
(21, 'steam:11000010a351d4a', 'wine', 0),
(22, 'steam:11000010a351d4a', 'radio', 0),
(23, 'steam:11000010a351d4a', 'whisky', 0),
(24, 'steam:11000010a351d4a', 'cocacola', 0),
(25, 'steam:11000010a351d4a', 'weed_pooch', 0),
(26, 'steam:11000010a351d4a', 'farine', 0),
(27, 'steam:11000010a351d4a', 'tequila', 0),
(28, 'steam:11000010a351d4a', 'weed', 0),
(29, 'steam:11000010a351d4a', 'golem', 0),
(30, 'steam:11000010a351d4a', 'water', 0),
(31, 'steam:11000010a351d4a', 'coke', 0),
(32, 'steam:11000010a351d4a', 'washed_stone', 0),
(33, 'steam:11000010a351d4a', 'vodkafruit', 0),
(34, 'steam:11000010a351d4a', 'whiskycoca', 0),
(35, 'steam:11000010a351d4a', 'icetea', 0),
(36, 'steam:11000010a351d4a', 'slaughtered_chicken', 0),
(37, 'steam:11000010a351d4a', 'ecstasy', 0),
(38, 'steam:11000010a351d4a', 'bolcacahuetes', 0),
(39, 'steam:11000010a351d4a', 'acetone', 0),
(40, 'steam:11000010a351d4a', 'vodka', 0),
(41, 'steam:11000010a351d4a', 'tracker', 0),
(42, 'steam:11000010a351d4a', 'packaged_chicken', 0),
(43, 'steam:11000010a351d4a', 'billet_pooch', 0),
(44, 'steam:11000010a351d4a', 'jusfruit', 0),
(45, 'steam:11000010a351d4a', 'cutted_wood', 0),
(46, 'steam:11000010a351d4a', 'teqpaf', 0),
(47, 'steam:11000010a351d4a', 'billet', 0),
(48, 'steam:11000010a351d4a', 'tabacsec', 0),
(49, 'steam:11000010a351d4a', 'raspberry', 0),
(50, 'steam:11000010a351d4a', 'tabac', 0),
(51, 'steam:11000010a351d4a', 'steel', 0),
(52, 'steam:11000010a351d4a', 'fish', 0),
(53, 'steam:11000010a351d4a', 'gold', 0),
(54, 'steam:11000010a351d4a', 'steak', 0),
(55, 'steam:11000010a351d4a', 'bolnoixcajou', 0),
(56, 'steam:11000010a351d4a', 'gazbottle', 0),
(57, 'steam:11000010a351d4a', 'limonade', 0),
(58, 'steam:11000010a351d4a', 'soda', 0),
(59, 'steam:11000010a351d4a', 'sniffer', 0),
(60, 'steam:11000010a351d4a', 'rhumfruit', 0),
(61, 'steam:11000010a351d4a', 'phone', 0),
(62, 'steam:11000010a351d4a', 'sim', 0),
(63, 'steam:11000010a351d4a', 'methlab', 0),
(64, 'steam:11000010a351d4a', 'sandwich', 0),
(65, 'steam:11000010a351d4a', 'crack_pooch', 0),
(66, 'steam:11000010a351d4a', 'c4_bank', 0),
(67, 'steam:11000010a351d4a', 'rhum', 0),
(68, 'steam:11000010a351d4a', 'grand_cru', 0),
(69, 'steam:11000010a351d4a', 'raisin', 0),
(70, 'steam:11000010a351d4a', 'petrol', 0),
(71, 'steam:11000010a351d4a', 'vodkaenergy', 0),
(72, 'steam:11000010a351d4a', 'meth_pooch', 0),
(73, 'steam:11000010a351d4a', 'silencieux', 0),
(74, 'steam:11000010a351d4a', 'mojito', 0),
(75, 'steam:11000010a351d4a', 'coke_pooch', 0),
(76, 'steam:11000010a351d4a', 'pepite_dor', 0),
(77, 'steam:11000010a351d4a', 'packaged_plank', 0),
(78, 'steam:11000010a351d4a', 'opium_pooch', 0),
(79, 'steam:11000010a351d4a', 'cagoule', 0),
(80, 'steam:11000010a351d4a', 'cheese', 0),
(81, 'steam:11000010a351d4a', 'alive_chicken', 0),
(82, 'steam:11000010a351d4a', 'fabric', 0),
(83, 'steam:11000010a351d4a', 'cigarett', 0),
(84, 'steam:11000010a351d4a', 'bread', 0),
(85, 'steam:11000010a351d4a', 'mixapero', 0),
(86, 'steam:11000010a351d4a', 'copper', 0),
(87, 'steam:11000010a351d4a', 'coffe', 0),
(88, 'steam:11000010a351d4a', 'milk', 0),
(89, 'steam:11000010a351d4a', 'burger', 0),
(90, 'steam:11000010a351d4a', 'cupcake', 0),
(91, 'steam:11000010a351d4a', 'lithium', 0),
(92, 'steam:11000010a351d4a', 'petrol_raffin', 0),
(93, 'steam:11000010a351d4a', 'menthe', 0),
(94, 'steam:11000010a351d4a', 'beer', 0),
(95, 'steam:11000010a351d4a', 'medikit', 0),
(96, 'steam:11000010a351d4a', 'martini', 0),
(97, 'steam:11000010a351d4a', 'lighter', 0),
(98, 'steam:11000010a351d4a', 'jewels', 0),
(99, 'steam:11000010a351d4a', 'iron', 0),
(100, 'steam:11000010a351d4a', 'malbora', 0),
(101, 'steam:11000010a351d4a', 'lingot_dor', 0),
(102, 'steam:11000010a351d4a', 'grapperaisin', 0),
(103, 'steam:11000010a351d4a', 'blowpipe', 0),
(104, 'steam:11000010a351d4a', 'spliff', 0),
(105, 'steam:11000010a351d4a', 'ice', 0),
(106, 'steam:11000010a351d4a', 'ketamine', 0),
(107, 'steam:11000010a351d4a', 'jus_raisin', 0),
(108, 'steam:11000010a351d4a', 'ecstasy_pooch', 0),
(109, 'steam:11000010a351d4a', 'grip', 0),
(110, 'steam:11000010a351d4a', 'jagercerbere', 0),
(111, 'steam:11000010a351d4a', 'bandage', 0),
(112, 'steam:11000010a351d4a', 'opium', 0),
(113, 'steam:11000010a351d4a', 'jager', 0),
(114, 'steam:11000010a351d4a', 'carokit', 0),
(115, 'steam:11000010a351d4a', 'licenseplate', 0),
(116, 'steam:11000010a351d4a', 'metreshooter', 0),
(117, 'steam:11000010a351d4a', 'coyotte', 0),
(118, 'steam:11000010a351d4a', 'clothe', 0),
(119, 'steam:11000010a351d4a', 'bolchips', 0),
(120, 'steam:11000010a351d4a', 'rhumcoca', 0),
(121, 'steam:11000010a351d4a', 'diamond', 0),
(122, 'steam:11000010a351d4a', 'carotool', 0),
(123, 'steam:11000010a351d4a', 'jagerbomb', 0),
(124, 'steam:11000010a351d4a', 'croquettes', 0),
(125, 'steam:11000010a351d4a', 'fixtool', 0),
(126, 'steam:11000013d4a73ae', 'fish', 0),
(127, 'steam:11000013d4a73ae', 'fixkit', 0),
(128, 'steam:11000013d4a73ae', 'meth', 0),
(129, 'steam:11000013d4a73ae', 'burger', 0),
(130, 'steam:11000013d4a73ae', 'ketamine_pooch', 0),
(131, 'steam:11000013d4a73ae', 'clothe', 0),
(132, 'steam:11000013d4a73ae', 'crack_pooch', 0),
(133, 'steam:11000013d4a73ae', 'yusuf', 0),
(134, 'steam:11000013d4a73ae', 'energy', 0),
(135, 'steam:11000013d4a73ae', 'wool', 0),
(136, 'steam:11000013d4a73ae', 'spliff', 0),
(137, 'steam:11000013d4a73ae', 'billet', 0),
(138, 'steam:11000013d4a73ae', 'opium_pooch', 0),
(139, 'steam:11000013d4a73ae', 'methlab', 0),
(140, 'steam:11000013d4a73ae', 'vodkafruit', 0),
(141, 'steam:11000013d4a73ae', 'gazbottle', 0),
(142, 'steam:11000013d4a73ae', 'fabric', 0),
(143, 'steam:11000013d4a73ae', 'clip', 0),
(144, 'steam:11000013d4a73ae', 'fixtool', 0),
(145, 'steam:11000013d4a73ae', 'raisin', 0),
(146, 'steam:11000013d4a73ae', 'raspberry', 0),
(147, 'steam:11000013d4a73ae', 'cocacola', 0),
(148, 'steam:11000013d4a73ae', 'weed_pooch', 0),
(149, 'steam:11000013d4a73ae', 'slaughtered_chicken', 0),
(150, 'steam:11000013d4a73ae', 'pepite_dor', 0),
(151, 'steam:11000013d4a73ae', 'weed', 0),
(152, 'steam:11000013d4a73ae', 'golem', 0),
(153, 'steam:11000013d4a73ae', 'crack', 0),
(154, 'steam:11000013d4a73ae', 'water', 0),
(155, 'steam:11000013d4a73ae', 'cagoule', 0),
(156, 'steam:11000013d4a73ae', 'wine', 0),
(157, 'steam:11000013d4a73ae', 'ecstasy_pooch', 0),
(158, 'steam:11000013d4a73ae', 'essence', 0),
(159, 'steam:11000013d4a73ae', 'mixapero', 0),
(160, 'steam:11000013d4a73ae', 'chocolate', 0),
(161, 'steam:11000013d4a73ae', 'vodkaenergy', 0),
(162, 'steam:11000013d4a73ae', 'grapperaisin', 0),
(163, 'steam:11000013d4a73ae', 'blowtorch', 0),
(164, 'steam:11000013d4a73ae', 'ecstasy', 0),
(165, 'steam:11000013d4a73ae', 'grand_cru', 0),
(166, 'steam:11000013d4a73ae', 'farine', 0),
(167, 'steam:11000013d4a73ae', 'vodka', 0),
(168, 'steam:11000013d4a73ae', 'vine', 0),
(169, 'steam:11000013d4a73ae', 'drpepper', 0),
(170, 'steam:11000013d4a73ae', 'tracker', 0),
(171, 'steam:11000013d4a73ae', 'tequila', 0),
(172, 'steam:11000013d4a73ae', 'packaged_plank', 0),
(173, 'steam:11000013d4a73ae', 'teqpaf', 0),
(174, 'steam:11000013d4a73ae', 'tabacsec', 0),
(175, 'steam:11000013d4a73ae', 'coyotte', 0),
(176, 'steam:11000013d4a73ae', 'tabac', 0),
(177, 'steam:11000013d4a73ae', 'alive_chicken', 0),
(178, 'steam:11000013d4a73ae', 'lingot_dor', 0),
(179, 'steam:11000013d4a73ae', 'lithium', 0),
(180, 'steam:11000013d4a73ae', 'steel', 0),
(181, 'steam:11000013d4a73ae', 'malbora', 0),
(182, 'steam:11000013d4a73ae', 'soda', 0),
(183, 'steam:11000013d4a73ae', 'copper', 0),
(184, 'steam:11000013d4a73ae', 'jager', 0),
(185, 'steam:11000013d4a73ae', 'jus_raisin', 0),
(186, 'steam:11000013d4a73ae', 'sniffer', 0),
(187, 'steam:11000013d4a73ae', 'sim', 0),
(188, 'steam:11000013d4a73ae', 'silencieux', 0),
(189, 'steam:11000013d4a73ae', 'saucisson', 0),
(190, 'steam:11000013d4a73ae', 'bolpistache', 0),
(191, 'steam:11000013d4a73ae', 'coke', 0),
(192, 'steam:11000013d4a73ae', 'sandwich', 0),
(193, 'steam:11000013d4a73ae', 'radio', 0),
(194, 'steam:11000013d4a73ae', 'rhumcoca', 0),
(195, 'steam:11000013d4a73ae', 'packaged_chicken', 0),
(196, 'steam:11000013d4a73ae', 'opium', 0),
(197, 'steam:11000013d4a73ae', 'whiskycoca', 0),
(198, 'steam:11000013d4a73ae', 'rhumfruit', 0),
(199, 'steam:11000013d4a73ae', 'c4_bank', 0),
(200, 'steam:11000013d4a73ae', 'petrol_raffin', 0),
(201, 'steam:11000013d4a73ae', 'blowpipe', 0),
(202, 'steam:11000013d4a73ae', 'petrol', 0),
(203, 'steam:11000013d4a73ae', 'ice', 0),
(204, 'steam:11000013d4a73ae', 'carokit', 0),
(205, 'steam:11000013d4a73ae', 'medikit', 0),
(206, 'steam:11000013d4a73ae', 'rhum', 0),
(207, 'steam:11000013d4a73ae', 'mojito', 0),
(208, 'steam:11000013d4a73ae', 'diamond', 0),
(209, 'steam:11000013d4a73ae', 'jusfruit', 0),
(210, 'steam:11000013d4a73ae', 'jewels', 0),
(211, 'steam:11000013d4a73ae', 'metreshooter', 0),
(212, 'steam:11000013d4a73ae', 'croquettes', 0),
(213, 'steam:11000013d4a73ae', 'meth_pooch', 0),
(214, 'steam:11000013d4a73ae', 'wood', 0),
(215, 'steam:11000013d4a73ae', 'icetea', 0),
(216, 'steam:11000013d4a73ae', 'martini', 0),
(217, 'steam:11000013d4a73ae', 'jagerbomb', 0),
(218, 'steam:11000013d4a73ae', 'steak', 0),
(219, 'steam:11000013d4a73ae', 'stone', 0),
(220, 'steam:11000013d4a73ae', 'limonade', 0),
(221, 'steam:11000013d4a73ae', 'ble', 0),
(222, 'steam:11000013d4a73ae', 'gold', 0),
(223, 'steam:11000013d4a73ae', 'bandage', 0),
(224, 'steam:11000013d4a73ae', 'lighter', 0),
(225, 'steam:11000013d4a73ae', 'licenseplate', 0),
(226, 'steam:11000013d4a73ae', 'gitanes', 0),
(227, 'steam:11000013d4a73ae', 'bolcacahuetes', 0),
(228, 'steam:11000013d4a73ae', 'menthe', 0),
(229, 'steam:11000013d4a73ae', 'bolchips', 0),
(230, 'steam:11000013d4a73ae', 'milk', 0),
(231, 'steam:11000013d4a73ae', 'coke_pooch', 0),
(232, 'steam:11000013d4a73ae', 'ketamine', 0),
(233, 'steam:11000013d4a73ae', 'jagercerbere', 0),
(234, 'steam:11000013d4a73ae', 'whisky', 0),
(235, 'steam:11000013d4a73ae', 'billet_pooch', 0),
(236, 'steam:11000013d4a73ae', 'coffe', 0),
(237, 'steam:11000013d4a73ae', 'iron', 0),
(238, 'steam:11000013d4a73ae', 'bolnoixcajou', 0),
(239, 'steam:11000013d4a73ae', 'phone', 0),
(240, 'steam:11000013d4a73ae', 'beer', 0),
(241, 'steam:11000013d4a73ae', 'grip', 0),
(242, 'steam:11000013d4a73ae', 'carotool', 0),
(243, 'steam:11000013d4a73ae', 'washed_stone', 0),
(244, 'steam:11000013d4a73ae', 'cheese', 0),
(245, 'steam:11000013d4a73ae', 'flashlight', 0),
(246, 'steam:11000013d4a73ae', 'cutted_wood', 0),
(247, 'steam:11000013d4a73ae', 'bread', 0),
(248, 'steam:11000013d4a73ae', 'acetone', 0),
(249, 'steam:11000013d4a73ae', 'cigarett', 0),
(250, 'steam:11000013d4a73ae', 'cupcake', 0),
(251, 'steam:11000010dc8ae6a', 'golem', 0),
(252, 'steam:11000010dc8ae6a', 'water', 0),
(253, 'steam:11000010dc8ae6a', 'ketamine_pooch', 0),
(254, 'steam:11000010dc8ae6a', 'licenseplate', 0),
(255, 'steam:11000010dc8ae6a', 'rhumcoca', 0),
(256, 'steam:11000010dc8ae6a', 'cupcake', 0),
(257, 'steam:11000010dc8ae6a', 'yusuf', 0),
(258, 'steam:11000010dc8ae6a', 'coyotte', 0),
(259, 'steam:11000010dc8ae6a', 'jager', 0),
(260, 'steam:11000010dc8ae6a', 'wool', 0),
(261, 'steam:11000010dc8ae6a', 'weed_pooch', 0),
(262, 'steam:11000010dc8ae6a', 'wine', 0),
(263, 'steam:11000010dc8ae6a', 'beer', 0),
(264, 'steam:11000010dc8ae6a', 'menthe', 0),
(265, 'steam:11000010dc8ae6a', 'ketamine', 0),
(266, 'steam:11000010dc8ae6a', 'vine', 0),
(267, 'steam:11000010dc8ae6a', 'whiskycoca', 0),
(268, 'steam:11000010dc8ae6a', 'coke_pooch', 0),
(269, 'steam:11000010dc8ae6a', 'whisky', 0),
(270, 'steam:11000010dc8ae6a', 'lingot_dor', 0),
(271, 'steam:11000010dc8ae6a', 'carokit', 0),
(272, 'steam:11000010dc8ae6a', 'fabric', 0),
(273, 'steam:11000010dc8ae6a', 'petrol', 0),
(274, 'steam:11000010dc8ae6a', 'wood', 0),
(275, 'steam:11000010dc8ae6a', 'flashlight', 0),
(276, 'steam:11000010dc8ae6a', 'slaughtered_chicken', 0),
(277, 'steam:11000010dc8ae6a', 'c4_bank', 0),
(278, 'steam:11000010dc8ae6a', 'blowpipe', 0),
(279, 'steam:11000010dc8ae6a', 'bolcacahuetes', 0),
(280, 'steam:11000010dc8ae6a', 'fixkit', 0),
(281, 'steam:11000010dc8ae6a', 'bolnoixcajou', 0),
(282, 'steam:11000010dc8ae6a', 'mojito', 0),
(283, 'steam:11000010dc8ae6a', 'washed_stone', 0),
(284, 'steam:11000010dc8ae6a', 'meth_pooch', 0),
(285, 'steam:11000010dc8ae6a', 'vodkafruit', 0),
(286, 'steam:11000010dc8ae6a', 'coke', 0),
(287, 'steam:11000010dc8ae6a', 'cigarett', 0),
(288, 'steam:11000010dc8ae6a', 'vodkaenergy', 0),
(289, 'steam:11000010dc8ae6a', 'farine', 0),
(290, 'steam:11000010dc8ae6a', 'gitanes', 0),
(291, 'steam:11000010dc8ae6a', 'jewels', 0),
(292, 'steam:11000010dc8ae6a', 'vodka', 0),
(293, 'steam:11000010dc8ae6a', 'sim', 0),
(294, 'steam:11000010dc8ae6a', 'tracker', 0),
(295, 'steam:11000010dc8ae6a', 'clothe', 0),
(296, 'steam:11000010dc8ae6a', 'billet_pooch', 0),
(297, 'steam:11000010dc8ae6a', 'tabac', 0),
(298, 'steam:11000010dc8ae6a', 'teqpaf', 0),
(299, 'steam:11000010dc8ae6a', 'alive_chicken', 0),
(300, 'steam:11000010dc8ae6a', 'tequila', 0),
(301, 'steam:11000010dc8ae6a', 'stone', 0),
(302, 'steam:11000010dc8ae6a', 'steel', 0),
(303, 'steam:11000010dc8ae6a', 'tabacsec', 0),
(304, 'steam:11000010dc8ae6a', 'steak', 0),
(305, 'steam:11000010dc8ae6a', 'billet', 0),
(306, 'steam:11000010dc8ae6a', 'carotool', 0),
(307, 'steam:11000010dc8ae6a', 'grip', 0),
(308, 'steam:11000010dc8ae6a', 'jus_raisin', 0),
(309, 'steam:11000010dc8ae6a', 'ice', 0),
(310, 'steam:11000010dc8ae6a', 'raspberry', 0),
(311, 'steam:11000010dc8ae6a', 'cheese', 0),
(312, 'steam:11000010dc8ae6a', 'opium', 0),
(313, 'steam:11000010dc8ae6a', 'silencieux', 0),
(314, 'steam:11000010dc8ae6a', 'copper', 0),
(315, 'steam:11000010dc8ae6a', 'saucisson', 0),
(316, 'steam:11000010dc8ae6a', 'spliff', 0),
(317, 'steam:11000010dc8ae6a', 'martini', 0),
(318, 'steam:11000010dc8ae6a', 'crack_pooch', 0),
(319, 'steam:11000010dc8ae6a', 'grand_cru', 0),
(320, 'steam:11000010dc8ae6a', 'opium_pooch', 0),
(321, 'steam:11000010dc8ae6a', 'malbora', 0),
(322, 'steam:11000010dc8ae6a', 'sniffer', 0),
(323, 'steam:11000010dc8ae6a', 'essence', 0),
(324, 'steam:11000010dc8ae6a', 'weed', 0),
(325, 'steam:11000010dc8ae6a', 'sandwich', 0),
(326, 'steam:11000010dc8ae6a', 'iron', 0),
(327, 'steam:11000010dc8ae6a', 'rhum', 0),
(328, 'steam:11000010dc8ae6a', 'grapperaisin', 0),
(329, 'steam:11000010dc8ae6a', 'meth', 0),
(330, 'steam:11000010dc8ae6a', 'rhumfruit', 0),
(331, 'steam:11000010dc8ae6a', 'raisin', 0),
(332, 'steam:11000010dc8ae6a', 'bolpistache', 0),
(333, 'steam:11000010dc8ae6a', 'lithium', 0),
(334, 'steam:11000010dc8ae6a', 'jagerbomb', 0),
(335, 'steam:11000010dc8ae6a', 'pepite_dor', 0),
(336, 'steam:11000010dc8ae6a', 'phone', 0),
(337, 'steam:11000010dc8ae6a', 'packaged_plank', 0),
(338, 'steam:11000010dc8ae6a', 'petrol_raffin', 0),
(339, 'steam:11000010dc8ae6a', 'ecstasy', 0),
(340, 'steam:11000010dc8ae6a', 'crack', 0),
(341, 'steam:11000010dc8ae6a', 'mixapero', 0),
(342, 'steam:11000010dc8ae6a', 'cutted_wood', 0),
(343, 'steam:11000010dc8ae6a', 'diamond', 0),
(344, 'steam:11000010dc8ae6a', 'acetone', 0),
(345, 'steam:11000010dc8ae6a', 'metreshooter', 0),
(346, 'steam:11000010dc8ae6a', 'jusfruit', 0),
(347, 'steam:11000010dc8ae6a', 'milk', 0),
(348, 'steam:11000010dc8ae6a', 'methlab', 0),
(349, 'steam:11000010dc8ae6a', 'medikit', 0),
(350, 'steam:11000010dc8ae6a', 'blowtorch', 0),
(351, 'steam:11000010dc8ae6a', 'radio', 0),
(352, 'steam:11000010dc8ae6a', 'bandage', 0),
(353, 'steam:11000010dc8ae6a', 'limonade', 0),
(354, 'steam:11000010dc8ae6a', 'lighter', 0),
(355, 'steam:11000010dc8ae6a', 'jagercerbere', 0),
(356, 'steam:11000010dc8ae6a', 'icetea', 0),
(357, 'steam:11000010dc8ae6a', 'croquettes', 0),
(358, 'steam:11000010dc8ae6a', 'burger', 0),
(359, 'steam:11000010dc8ae6a', 'gazbottle', 0),
(360, 'steam:11000010dc8ae6a', 'drpepper', 0),
(361, 'steam:11000010dc8ae6a', 'energy', 0),
(362, 'steam:11000010dc8ae6a', 'soda', 0),
(363, 'steam:11000010dc8ae6a', 'bolchips', 0),
(364, 'steam:11000010dc8ae6a', 'clip', 0),
(365, 'steam:11000010dc8ae6a', 'cocacola', 0),
(366, 'steam:11000010dc8ae6a', 'gold', 0),
(367, 'steam:11000010dc8ae6a', 'fixtool', 0),
(368, 'steam:11000010dc8ae6a', 'ble', 0),
(369, 'steam:11000010dc8ae6a', 'coffe', 0),
(370, 'steam:11000010dc8ae6a', 'bread', 0),
(371, 'steam:11000010dc8ae6a', 'cagoule', 0),
(372, 'steam:11000010dc8ae6a', 'fish', 0),
(373, 'steam:11000010dc8ae6a', 'chocolate', 0),
(374, 'steam:11000010dc8ae6a', 'packaged_chicken', 0),
(375, 'steam:11000010dc8ae6a', 'ecstasy_pooch', 0),
(376, 'steam:11000013e7cdc6b', 'limonade', 0),
(377, 'steam:11000013e7cdc6b', 'essence', 0),
(378, 'steam:11000013e7cdc6b', 'rhum', 0),
(379, 'steam:11000013e7cdc6b', 'icetea', 0),
(380, 'steam:11000013e7cdc6b', 'coyotte', 0),
(381, 'steam:11000013e7cdc6b', 'bandage', 0),
(382, 'steam:11000013e7cdc6b', 'gold', 0),
(383, 'steam:11000013e7cdc6b', 'sim', 0),
(384, 'steam:11000013e7cdc6b', 'yusuf', 0),
(385, 'steam:11000013e7cdc6b', 'wool', 0),
(386, 'steam:11000013e7cdc6b', 'wood', 0),
(387, 'steam:11000013e7cdc6b', 'beer', 0),
(388, 'steam:11000013e7cdc6b', 'ble', 0),
(389, 'steam:11000013e7cdc6b', 'wine', 0),
(390, 'steam:11000013e7cdc6b', 'jager', 0),
(391, 'steam:11000013e7cdc6b', 'carokit', 0),
(392, 'steam:11000013e7cdc6b', 'whiskycoca', 0),
(393, 'steam:11000013e7cdc6b', 'whisky', 0),
(394, 'steam:11000013e7cdc6b', 'fixtool', 0),
(395, 'steam:11000013e7cdc6b', 'drpepper', 0),
(396, 'steam:11000013e7cdc6b', 'fixkit', 0),
(397, 'steam:11000013e7cdc6b', 'jewels', 0),
(398, 'steam:11000013e7cdc6b', 'billet_pooch', 0),
(399, 'steam:11000013e7cdc6b', 'malbora', 0),
(400, 'steam:11000013e7cdc6b', 'cigarett', 0),
(401, 'steam:11000013e7cdc6b', 'vodka', 0),
(402, 'steam:11000013e7cdc6b', 'golem', 0),
(403, 'steam:11000013e7cdc6b', 'cagoule', 0),
(404, 'steam:11000013e7cdc6b', 'licenseplate', 0),
(405, 'steam:11000013e7cdc6b', 'grip', 0),
(406, 'steam:11000013e7cdc6b', 'jusfruit', 0),
(407, 'steam:11000013e7cdc6b', 'alive_chicken', 0),
(408, 'steam:11000013e7cdc6b', 'radio', 0),
(409, 'steam:11000013e7cdc6b', 'methlab', 0),
(410, 'steam:11000013e7cdc6b', 'water', 0),
(411, 'steam:11000013e7cdc6b', 'washed_stone', 0),
(412, 'steam:11000013e7cdc6b', 'vodkafruit', 0),
(413, 'steam:11000013e7cdc6b', 'vodkaenergy', 0),
(414, 'steam:11000013e7cdc6b', 'acetone', 0),
(415, 'steam:11000013e7cdc6b', 'cupcake', 0),
(416, 'steam:11000013e7cdc6b', 'weed', 0),
(417, 'steam:11000013e7cdc6b', 'billet', 0),
(418, 'steam:11000013e7cdc6b', 'phone', 0),
(419, 'steam:11000013e7cdc6b', 'grand_cru', 0),
(420, 'steam:11000013e7cdc6b', 'tracker', 0),
(421, 'steam:11000013e7cdc6b', 'tequila', 0),
(422, 'steam:11000013e7cdc6b', 'crack', 0),
(423, 'steam:11000013e7cdc6b', 'ketamine_pooch', 0),
(424, 'steam:11000013e7cdc6b', 'jagercerbere', 0),
(425, 'steam:11000013e7cdc6b', 'tabacsec', 0),
(426, 'steam:11000013e7cdc6b', 'martini', 0),
(427, 'steam:11000013e7cdc6b', 'lighter', 0),
(428, 'steam:11000013e7cdc6b', 'mixapero', 0),
(429, 'steam:11000013e7cdc6b', 'petrol', 0),
(430, 'steam:11000013e7cdc6b', 'spliff', 0),
(431, 'steam:11000013e7cdc6b', 'crack_pooch', 0),
(432, 'steam:11000013e7cdc6b', 'lingot_dor', 0),
(433, 'steam:11000013e7cdc6b', 'tabac', 0),
(434, 'steam:11000013e7cdc6b', 'ice', 0),
(435, 'steam:11000013e7cdc6b', 'bolchips', 0),
(436, 'steam:11000013e7cdc6b', 'soda', 0),
(437, 'steam:11000013e7cdc6b', 'slaughtered_chicken', 0),
(438, 'steam:11000013e7cdc6b', 'jagerbomb', 0),
(439, 'steam:11000013e7cdc6b', 'bolcacahuetes', 0),
(440, 'steam:11000013e7cdc6b', 'flashlight', 0),
(441, 'steam:11000013e7cdc6b', 'silencieux', 0),
(442, 'steam:11000013e7cdc6b', 'medikit', 0),
(443, 'steam:11000013e7cdc6b', 'saucisson', 0),
(444, 'steam:11000013e7cdc6b', 'vine', 0),
(445, 'steam:11000013e7cdc6b', 'copper', 0),
(446, 'steam:11000013e7cdc6b', 'sandwich', 0),
(447, 'steam:11000013e7cdc6b', 'ketamine', 0),
(448, 'steam:11000013e7cdc6b', 'ecstasy_pooch', 0),
(449, 'steam:11000013e7cdc6b', 'gitanes', 0),
(450, 'steam:11000013e7cdc6b', 'blowtorch', 0),
(451, 'steam:11000013e7cdc6b', 'raspberry', 0),
(452, 'steam:11000013e7cdc6b', 'iron', 0),
(453, 'steam:11000013e7cdc6b', 'raisin', 0),
(454, 'steam:11000013e7cdc6b', 'cocacola', 0),
(455, 'steam:11000013e7cdc6b', 'rhumfruit', 0),
(456, 'steam:11000013e7cdc6b', 'petrol_raffin', 0),
(457, 'steam:11000013e7cdc6b', 'coke', 0),
(458, 'steam:11000013e7cdc6b', 'stone', 0),
(459, 'steam:11000013e7cdc6b', 'mojito', 0),
(460, 'steam:11000013e7cdc6b', 'blowpipe', 0),
(461, 'steam:11000013e7cdc6b', 'clothe', 0),
(462, 'steam:11000013e7cdc6b', 'packaged_plank', 0),
(463, 'steam:11000013e7cdc6b', 'menthe', 0),
(464, 'steam:11000013e7cdc6b', 'coke_pooch', 0),
(465, 'steam:11000013e7cdc6b', 'packaged_chicken', 0),
(466, 'steam:11000013e7cdc6b', 'grapperaisin', 0),
(467, 'steam:11000013e7cdc6b', 'fabric', 0),
(468, 'steam:11000013e7cdc6b', 'croquettes', 0),
(469, 'steam:11000013e7cdc6b', 'energy', 0),
(470, 'steam:11000013e7cdc6b', 'opium', 0),
(471, 'steam:11000013e7cdc6b', 'meth', 0),
(472, 'steam:11000013e7cdc6b', 'pepite_dor', 0),
(473, 'steam:11000013e7cdc6b', 'lithium', 0),
(474, 'steam:11000013e7cdc6b', 'metreshooter', 0),
(475, 'steam:11000013e7cdc6b', 'farine', 0),
(476, 'steam:11000013e7cdc6b', 'bolpistache', 0),
(477, 'steam:11000013e7cdc6b', 'milk', 0),
(478, 'steam:11000013e7cdc6b', 'carotool', 0),
(479, 'steam:11000013e7cdc6b', 'meth_pooch', 0),
(480, 'steam:11000013e7cdc6b', 'jus_raisin', 0),
(481, 'steam:11000013e7cdc6b', 'steak', 0),
(482, 'steam:11000013e7cdc6b', 'teqpaf', 0),
(483, 'steam:11000013e7cdc6b', 'rhumcoca', 0),
(484, 'steam:11000013e7cdc6b', 'steel', 0),
(485, 'steam:11000013e7cdc6b', 'cheese', 0),
(486, 'steam:11000013e7cdc6b', 'fish', 0),
(487, 'steam:11000013e7cdc6b', 'chocolate', 0),
(488, 'steam:11000013e7cdc6b', 'ecstasy', 0),
(489, 'steam:11000013e7cdc6b', 'weed_pooch', 0),
(490, 'steam:11000013e7cdc6b', 'c4_bank', 0),
(491, 'steam:11000013e7cdc6b', 'clip', 0),
(492, 'steam:11000013e7cdc6b', 'sniffer', 0),
(493, 'steam:11000013e7cdc6b', 'bolnoixcajou', 0),
(494, 'steam:11000013e7cdc6b', 'diamond', 0),
(495, 'steam:11000013e7cdc6b', 'coffe', 0),
(496, 'steam:11000013e7cdc6b', 'gazbottle', 0),
(497, 'steam:11000013e7cdc6b', 'burger', 0),
(498, 'steam:11000013e7cdc6b', 'opium_pooch', 0),
(499, 'steam:11000013e7cdc6b', 'bread', 0),
(500, 'steam:11000013e7cdc6b', 'cutted_wood', 0),
(501, 'steam:11000010a351d4a', 'ziptie', 0),
(502, 'steam:1100001029c253e', 'menthe', 0),
(503, 'steam:1100001029c253e', 'lingot_dor', 0),
(504, 'steam:1100001029c253e', 'alive_chicken', 0),
(505, 'steam:1100001029c253e', 'teqpaf', 0),
(506, 'steam:1100001029c253e', 'phone', 1),
(507, 'steam:1100001029c253e', 'fixtool', 0),
(508, 'steam:1100001029c253e', 'cheese', 0),
(509, 'steam:1100001029c253e', 'flashlight', 0),
(510, 'steam:1100001029c253e', 'cutted_wood', 0),
(511, 'steam:1100001029c253e', 'jewels', 0),
(512, 'steam:1100001029c253e', 'energy', 0),
(513, 'steam:1100001029c253e', 'yusuf', 0),
(514, 'steam:1100001029c253e', 'ble', 0),
(515, 'steam:1100001029c253e', 'fabric', 0),
(516, 'steam:1100001029c253e', 'gold', 0),
(517, 'steam:1100001029c253e', 'bolcacahuetes', 0),
(518, 'steam:1100001029c253e', 'grand_cru', 0),
(519, 'steam:1100001029c253e', 'wood', 0),
(520, 'steam:1100001029c253e', 'martini', 0),
(521, 'steam:1100001029c253e', 'meth_pooch', 0),
(522, 'steam:1100001029c253e', 'drpepper', 0),
(523, 'steam:1100001029c253e', 'silencieux', 0),
(524, 'steam:1100001029c253e', 'mojito', 0),
(525, 'steam:1100001029c253e', 'lithium', 0),
(526, 'steam:1100001029c253e', 'sim', 4),
(527, 'steam:1100001029c253e', 'weed', 0),
(528, 'steam:1100001029c253e', 'coke', 0),
(529, 'steam:1100001029c253e', 'ecstasy_pooch', 0),
(530, 'steam:1100001029c253e', 'water', 0),
(531, 'steam:1100001029c253e', 'rhumcoca', 0),
(532, 'steam:1100001029c253e', 'tracker', 0),
(533, 'steam:1100001029c253e', 'vodkaenergy', 0),
(534, 'steam:1100001029c253e', 'c4_bank', 0),
(535, 'steam:1100001029c253e', 'saucisson', 0),
(536, 'steam:1100001029c253e', 'vodka', 0),
(537, 'steam:1100001029c253e', 'ziptie', 0),
(538, 'steam:1100001029c253e', 'vodkafruit', 0),
(539, 'steam:1100001029c253e', 'soda', 0),
(540, 'steam:1100001029c253e', 'tequila', 0),
(541, 'steam:1100001029c253e', 'essence', 0),
(542, 'steam:1100001029c253e', 'grip', 0),
(543, 'steam:1100001029c253e', 'milk', 0),
(544, 'steam:1100001029c253e', 'ketamine_pooch', 0),
(545, 'steam:1100001029c253e', 'acetone', 0),
(546, 'steam:1100001029c253e', 'billet', 0),
(547, 'steam:1100001029c253e', 'copper', 0),
(548, 'steam:1100001029c253e', 'petrol_raffin', 0),
(549, 'steam:1100001029c253e', 'bolpistache', 0),
(550, 'steam:1100001029c253e', 'iron', 0),
(551, 'steam:1100001029c253e', 'methlab', 0),
(552, 'steam:1100001029c253e', 'tabac', 0),
(553, 'steam:1100001029c253e', 'stone', 0),
(554, 'steam:1100001029c253e', 'blowpipe', 0),
(555, 'steam:1100001029c253e', 'fixkit', 0),
(556, 'steam:1100001029c253e', 'crack', 0),
(557, 'steam:1100001029c253e', 'jus_raisin', 0),
(558, 'steam:1100001029c253e', 'beer', 0),
(559, 'steam:1100001029c253e', 'medikit', 0),
(560, 'steam:1100001029c253e', 'grapperaisin', 0),
(561, 'steam:1100001029c253e', 'bolchips', 0),
(562, 'steam:1100001029c253e', 'steak', 0),
(563, 'steam:1100001029c253e', 'spliff', 0),
(564, 'steam:1100001029c253e', 'coffe', 0),
(565, 'steam:1100001029c253e', 'sniffer', 0),
(566, 'steam:1100001029c253e', 'pepite_dor', 0),
(567, 'steam:1100001029c253e', 'gitanes', 0),
(568, 'steam:1100001029c253e', 'fish', 0),
(569, 'steam:1100001029c253e', 'slaughtered_chicken', 0),
(570, 'steam:1100001029c253e', 'weed_pooch', 0),
(571, 'steam:1100001029c253e', 'jager', 0),
(572, 'steam:1100001029c253e', 'whiskycoca', 0),
(573, 'steam:1100001029c253e', 'licenseplate', 0),
(574, 'steam:1100001029c253e', 'clothe', 0),
(575, 'steam:1100001029c253e', 'lighter', 0),
(576, 'steam:1100001029c253e', 'jagercerbere', 0),
(577, 'steam:1100001029c253e', 'sandwich', 0),
(578, 'steam:1100001029c253e', 'bread', 0),
(579, 'steam:1100001029c253e', 'rhumfruit', 0),
(580, 'steam:1100001029c253e', 'washed_stone', 0),
(581, 'steam:1100001029c253e', 'diamond', 0),
(582, 'steam:1100001029c253e', 'cigarett', 0),
(583, 'steam:1100001029c253e', 'raspberry', 0),
(584, 'steam:1100001029c253e', 'carokit', 0),
(585, 'steam:1100001029c253e', 'carotool', 0),
(586, 'steam:1100001029c253e', 'packaged_plank', 0),
(587, 'steam:1100001029c253e', 'radio', 0),
(588, 'steam:1100001029c253e', 'coyotte', 0),
(589, 'steam:1100001029c253e', 'petrol', 0),
(590, 'steam:1100001029c253e', 'icetea', 0),
(591, 'steam:1100001029c253e', 'opium_pooch', 0),
(592, 'steam:1100001029c253e', 'opium', 0),
(593, 'steam:1100001029c253e', 'whisky', 0),
(594, 'steam:1100001029c253e', 'mixapero', 0),
(595, 'steam:1100001029c253e', 'gazbottle', 0),
(596, 'steam:1100001029c253e', 'cupcake', 0),
(597, 'steam:1100001029c253e', 'metreshooter', 0),
(598, 'steam:1100001029c253e', 'farine', 0),
(599, 'steam:1100001029c253e', 'limonade', 0),
(600, 'steam:1100001029c253e', 'wine', 0),
(601, 'steam:1100001029c253e', 'vine', 0),
(602, 'steam:1100001029c253e', 'cagoule', 0),
(603, 'steam:1100001029c253e', 'ketamine', 0),
(604, 'steam:1100001029c253e', 'steel', 0),
(605, 'steam:1100001029c253e', 'burger', 0),
(606, 'steam:1100001029c253e', 'jusfruit', 0),
(607, 'steam:1100001029c253e', 'chocolate', 0),
(608, 'steam:1100001029c253e', 'bolnoixcajou', 0),
(609, 'steam:1100001029c253e', 'coke_pooch', 0),
(610, 'steam:1100001029c253e', 'jagerbomb', 0),
(611, 'steam:1100001029c253e', 'croquettes', 0),
(612, 'steam:1100001029c253e', 'blowtorch', 0),
(613, 'steam:1100001029c253e', 'packaged_chicken', 0),
(614, 'steam:1100001029c253e', 'clip', 0),
(615, 'steam:1100001029c253e', 'billet_pooch', 0),
(616, 'steam:1100001029c253e', 'ice', 0),
(617, 'steam:1100001029c253e', 'tabacsec', 0),
(618, 'steam:1100001029c253e', 'raisin', 0),
(619, 'steam:1100001029c253e', 'bandage', 0),
(620, 'steam:1100001029c253e', 'crack_pooch', 0),
(621, 'steam:1100001029c253e', 'meth', 0),
(622, 'steam:1100001029c253e', 'wool', 0),
(623, 'steam:1100001029c253e', 'golem', 0),
(624, 'steam:1100001029c253e', 'cocacola', 0),
(625, 'steam:1100001029c253e', 'malbora', 0),
(626, 'steam:1100001029c253e', 'ecstasy', 0),
(627, 'steam:1100001029c253e', 'rhum', 0),
(628, 'steam:11000010a351d4a', 'orange', 0),
(629, 'steam:11000010a351d4a', 'orangep', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'dmv', 'steam:11000010a351d4a'),
(2, 'dmv', 'steam:11000010a351d4a');

-- --------------------------------------------------------

--
-- Structure de la table `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `plate` varchar(60) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zone` longtext DEFAULT NULL,
  `vehicle` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 700000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 550000, 'sportsclassics'),
('Autarch', 'autarch', 600000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Comet', 'comet2', 65000, 'sports'),
('Comet', 'comet3', 80000, 'sports'),
('Comet 5', 'comet5', 550000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Elegy', 'elegy', 55000, 'sports'),
('Elegy', 'elegy2', 38500, 'sports'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 750000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Pariah', 'pariah', 700000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('X80 Proto', 'prototipo', 1250000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 700000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Savestra', 'savestra', 600000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Surano', 'surano', 50000, 'sports'),
('T20', 't20', 300000, 'super'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 1250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Z190', 'z190', 600000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 20000),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 5000),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(43, 'BlackWeashop', 'WEAPON_PISTOL50', 1000),
(44, 'BlackWeashop', 'WEAPON_HEAVYPISTOL', 500),
(46, 'BlackWeashop', 'WEAPON_SMG', 1700),
(47, 'BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', 1700),
(48, 'BlackWeashop', 'GADGET_PARACHUTE', 1700),
(49, 'BlackWeashop', 'WEAPON_COMPACTRIFLE', 1700);

-- --------------------------------------------------------

--
-- Structure de la table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(70) NOT NULL,
  `last_connection` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ban_reason` text DEFAULT NULL,
  `ban_until` timestamp NULL DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `autocar`
--
ALTER TABLE `autocar`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `autocar_categories`
--
ALTER TABLE `autocar_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `autocar_sold`
--
ALTER TABLE `autocar_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `autocar_vehicles`
--
ALTER TABLE `autocar_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `darkshops`
--
ALTER TABLE `darkshops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `dpkeybinds`
--
ALTER TABLE `dpkeybinds`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job2_grades`
--
ALTER TABLE `job2_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs2`
--
ALTER TABLE `jobs2`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `lowridercardealer_vehicles`
--
ALTER TABLE `lowridercardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lowridervehicle_categories`
--
ALTER TABLE `lowridervehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `lowridervehicle_sold`
--
ALTER TABLE `lowridervehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `lowrider_rented_vehicles`
--
ALTER TABLE `lowrider_rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `lowrider_vehicles`
--
ALTER TABLE `lowrider_vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Index pour la table `open_car`
--
ALTER TABLE `open_car`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `vehsowned` (`owner`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_shops`
--
ALTER TABLE `phone_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `racket_organisation`
--
ALTER TABLE `racket_organisation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shops2`
--
ALTER TABLE `shops2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sim`
--
ALTER TABLE `sim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `autocar_vehicles`
--
ALTER TABLE `autocar_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `darkshops`
--
ALTER TABLE `darkshops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `job2_grades`
--
ALTER TABLE `job2_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `lowridercardealer_vehicles`
--
ALTER TABLE `lowridercardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `open_car`
--
ALTER TABLE `open_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_shops`
--
ALTER TABLE `phone_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `racket_organisation`
--
ALTER TABLE `racket_organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `shops2`
--
ALTER TABLE `shops2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
