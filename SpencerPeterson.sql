-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: bsu-gimm260-fall-2021.cwtgn0g8zxfm.us-west-2.rds.amazonaws.com
-- Generation Time: May 04, 2022 at 06:28 PM
-- Server version: 8.0.23
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SpencerPeterson`
--

-- --------------------------------------------------------

--
-- Table structure for table `Armor_in_Guild_Wars_2`
--

CREATE TABLE `Armor_in_Guild_Wars_2` (
  `Year` int NOT NULL,
  `Forgemasters_Talons_of_the_Cavalier` int NOT NULL,
  `Sentinels_Feathered_Headpiece` int NOT NULL,
  `Gloves_of_the_Flame_Sculptor_of_the_Cavalier` int NOT NULL,
  `Sentinels_Barbaric_Headpiece` int NOT NULL,
  `Invisible_Stompers` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Armor_in_Guild_Wars_2`
--

INSERT INTO `Armor_in_Guild_Wars_2` (`Year`, `Forgemasters_Talons_of_the_Cavalier`, `Sentinels_Feathered_Headpiece`, `Gloves_of_the_Flame_Sculptor_of_the_Cavalier`, `Sentinels_Barbaric_Headpiece`, `Invisible_Stompers`) VALUES
(2018, 750, 90, 450, 240, 3850),
(2019, 284, 75, 244, 220, 4000),
(2020, 560, 162, 451, 552, 10874);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int NOT NULL,
  `card_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color_id` int NOT NULL,
  `type_id` int NOT NULL,
  `year_id` int NOT NULL,
  `cmc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `card_name`, `color_id`, `type_id`, `year_id`, `cmc`) VALUES
(1, 'Goldmaw Champion', 1, 2, 2, '3'),
(2, 'Mists of Littjara', 2, 2, 2, '2'),
(3, 'Golden-Tail Disciple', 1, 2, 3, '3'),
(4, 'Kami of Restless Shadows', 3, 1, 3, '5'),
(5, 'Jukai Preserver', 5, 2, 3, '4'),
(6, 'Season of Renewal', 5, 3, 3, '3'),
(7, 'Canyon Jerboa', 1, 1, 1, '3'),
(8, 'Cleric of Chill Depths', 2, 1, 1, '2'),
(9, 'Shatterskull Minotaur', 4, 1, 1, '6'),
(10, 'Dream Devourer', 3, 1, 2, '2'),
(11, 'Binding the Old Gods', 3, 2, 2, '4'),
(12, 'Ancestral Katana', 1, 4, 3, '2'),
(13, 'Born to Drive', 1, 2, 3, '3'),
(14, 'Awakened Awareness', 2, 2, 3, '3'),
(15, 'Mobilizer Mech', 2, 4, 3, '2'),
(16, 'Explosive Entry', 4, 1, 3, '2'),
(17, 'Axgard Braggart', 1, 1, 2, '4'),
(18, 'Bound in Gold', 1, 2, 2, '3'),
(19, 'Giant Ox', 1, 1, 2, '2'),
(20, 'Master Skald', 1, 1, 2, '5'),
(21, 'Revitalize', 1, 3, 2, '2'),
(22, 'Spectral Steel', 1, 2, 2, '2'),
(23, 'Story Seeker', 1, 1, 2, '2'),
(24, 'Annul', 2, 3, 2, '1'),
(25, 'Ascendant Spirit', 2, 1, 2, '1'),
(26, 'Bind the Monster', 2, 2, 2, '1'),
(27, 'Frost Augur', 2, 1, 2, '1'),
(28, 'Giant\'s Amulet', 2, 4, 2, '1'),
(29, 'Graven Lore', 2, 3, 2, '5'),
(30, 'Icebind Pillar', 2, 4, 2, '3'),
(31, 'Mistwalker', 2, 1, 2, '3'),
(32, 'Bloodsky Berserker', 3, 1, 2, '2'),
(33, 'Dogged Pursuit', 3, 2, 2, '4'),
(34, 'Draugr\'s Helm', 3, 4, 2, '2'),
(35, 'Dread Rider', 3, 1, 2, '6'),
(36, 'Duskwielder', 3, 1, 2, '1'),
(37, 'Grim Draugr', 3, 1, 2, '3'),
(38, 'Infernal Pet', 3, 1, 2, '3'),
(39, 'Koma\'s Faithful', 3, 1, 2, '3'),
(40, 'Village Rites', 3, 3, 2, '1'),
(41, 'Withercrown', 3, 2, 2, '2'),
(42, 'Demon Bolt', 4, 3, 2, '3'),
(43, 'Tergrid\'s Shadow', 3, 3, 2, '5'),
(44, 'Hagi Mob', 4, 1, 2, '5'),
(45, 'Goldspan Dragon', 4, 1, 2, '5'),
(46, 'Quakebringer', 4, 1, 2, '5'),
(47, 'Run Amok', 4, 1, 2, '2'),
(48, 'Rune of Speed', 4, 2, 2, '2'),
(49, 'Squash', 4, 3, 2, '5'),
(50, 'Tibalt\'s Trickery', 4, 3, 2, '2'),
(51, 'Vault Robber', 4, 1, 2, '2'),
(52, 'Arachnoform', 5, 2, 2, '2'),
(53, 'Battle Mammoth', 5, 1, 2, '5'),
(54, 'Boreal Outrider', 5, 1, 2, '3'),
(55, 'Broken Wings', 5, 3, 2, '3'),
(56, 'Elderleaf Mentor', 5, 1, 2, '4'),
(57, 'Elven Bow', 5, 4, 2, '1'),
(58, 'Allied Assault', 1, 3, 1, '3'),
(59, 'Angel of Destiny', 1, 1, 1, '5'),
(60, 'Archon of Emeria', 1, 1, 1, '3'),
(61, 'Disenchant', 1, 3, 1, '2'),
(62, 'Expedition Healer', 1, 1, 1, '2'),
(63, 'Fearless Fledgling', 1, 1, 1, '2'),
(64, 'Kor Blademaster', 1, 1, 1, '2'),
(65, 'Kor Celebrant', 1, 1, 1, '2'),
(66, 'Luminarch Aspirant', 1, 1, 1, '2'),
(67, 'Mesa Lynx', 1, 1, 1, '2'),
(68, 'Skyclave Cleric', 1, 1, 1, '2'),
(69, 'Anticognition', 2, 3, 1, '2'),
(70, 'Beyeen Veil', 2, 3, 1, '2'),
(71, 'Negate', 2, 3, 1, '2'),
(72, 'Bubble Snare', 2, 2, 1, '1'),
(73, 'Chilling Trap', 2, 3, 1, '1'),
(74, 'Deliberate', 2, 3, 1, '2'),
(75, 'Roost of Drakes', 2, 2, 1, '1'),
(76, 'Ruin Crab', 2, 1, 1, '1'),
(77, 'Zulaport Duelist', 2, 1, 1, '1'),
(78, 'Acquisitions Expert', 3, 1, 1, '2'),
(79, 'Blackbloom Rogue', 3, 1, 1, '3'),
(80, 'Deadly Alliance', 3, 3, 1, '5'),
(81, 'Demon\'s Disciple', 3, 1, 1, '3'),
(82, 'Akoum Hellhound', 4, 1, 1, '1'),
(83, 'Akoum Warrior ', 4, 1, 1, '5'),
(84, 'Ardent Electromancer', 4, 1, 1, '3'),
(85, 'Expedition Champion', 4, 1, 1, '3'),
(86, 'Fireblade Charger', 4, 1, 1, '1'),
(87, 'Fissure Wizard', 4, 1, 1, '2'),
(88, 'Goma Fada Vanguard', 4, 1, 1, '2'),
(89, 'Grotag Bug-Catcher', 4, 1, 1, '2'),
(90, 'Grotag Night-Runner', 4, 1, 1, '3'),
(91, 'Bamboo Grove Archer', 5, 1, 3, '2'),
(92, 'Bearer of Memory', 5, 1, 3, '3'),
(93, 'Blossom Prancer', 5, 1, 3, '5'),
(94, 'Boon of Boseiju', 5, 3, 3, '2'),
(95, 'Coiling Stalker', 5, 1, 3, '2'),
(96, 'Fang of Shigeki', 5, 1, 3, '1'),
(97, 'Generous Visitor', 5, 1, 3, '1'),
(98, 'Geothermal Kami', 5, 1, 3, '4'),
(99, 'Greater Tanuki', 5, 1, 3, '6'),
(100, 'Jukai Trainee', 5, 1, 3, '2'),
(101, 'Roaring Earth', 5, 2, 3, '2'),
(121, 'dafdf', 1, 2, 2, '2'),
(124, 'Chambers', 1, 1, 3, '11');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `color_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color_name`) VALUES
(1, 'White'),
(2, 'Blue'),
(3, 'Black'),
(4, 'Red'),
(5, 'Green');

-- --------------------------------------------------------

--
-- Table structure for table `Non-Discontinued Hondas Before 2000`
--

CREATE TABLE `Non-Discontinued Hondas Before 2000` (
  `Car` varchar(256) NOT NULL,
  `Engine size (CC)` int NOT NULL,
  `FWD` tinyint NOT NULL,
  `ID` int NOT NULL,
  `Year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Non-Discontinued Hondas Before 2000`
--

INSERT INTO `Non-Discontinued Hondas Before 2000` (`Car`, `Engine size (CC)`, `FWD`, `ID`, `Year`) VALUES
('City', 1231, 1, 1, 1981),
('Civic', 1169, 1, 2, 1972),
('Accord', 1600, 1, 3, 1976),
('Insight', 1000, 1, 4, 1999),
('Legend', 2000, 1, 5, 1985),
('Odyssey', 2200, 1, 6, 1994),
('Stepwgn', 2000, 1, 7, 1996),
('CR-V', 2000, 0, 8, 1995),
('HR-V', 1600, 1, 9, 1998),
('Passport', 2600, 0, 10, 1993),
('Civic Type R', 1600, 1, 11, 1997),
('NSX', 3000, 0, 12, 1990);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `type_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type_name`) VALUES
(1, 'Creature'),
(2, 'Enchantment'),
(3, 'Instant'),
(4, 'Artifact');

-- --------------------------------------------------------

--
-- Table structure for table `WOWdata`
--

CREATE TABLE `WOWdata` (
  `Year` int NOT NULL,
  `Wolfshead_Helm` int NOT NULL,
  `Skullflame_Shield` int NOT NULL,
  `Treads_of_the_Veteran_Smith` int NOT NULL,
  `Deeptide_Cuffs` int NOT NULL,
  `Deeptide_Amice` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WOWdata`
--

INSERT INTO `WOWdata` (`Year`, `Wolfshead_Helm`, `Skullflame_Shield`, `Treads_of_the_Veteran_Smith`, `Deeptide_Cuffs`, `Deeptide_Amice`) VALUES
(2018, 350137, 198866, 5308, 330725, 19360),
(2019, 397883, 225984, 6032, 375824, 22000),
(2020, 452140, 256800, 6855, 427072, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int NOT NULL,
  `set_name` varchar(256) NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `set_name`, `year`) VALUES
(1, 'Zendikar Rising', 2020),
(2, 'Kaldheim', 2021),
(3, 'Neon Dynasty', 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Armor_in_Guild_Wars_2`
--
ALTER TABLE `Armor_in_Guild_Wars_2`
  ADD PRIMARY KEY (`Year`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Non-Discontinued Hondas Before 2000`
--
ALTER TABLE `Non-Discontinued Hondas Before 2000`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `WOWdata`
--
ALTER TABLE `WOWdata`
  ADD PRIMARY KEY (`Year`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Non-Discontinued Hondas Before 2000`
--
ALTER TABLE `Non-Discontinued Hondas Before 2000`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
