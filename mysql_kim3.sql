-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 03, 2020 at 07:44 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kim3`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(8) NOT NULL,
  `commentOnId` int(8) NOT NULL,
  `commentOnType` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `userId` int(8) NOT NULL,
  `numLikes` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for the comments on the art';

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `commentOnId`, `commentOnType`, `comment`, `userId`, `numLikes`) VALUES
(1, 58, 'artwork', 'a_ This piece of artwork is super cool! I really like it!', 1, 2),
(2, 5838, 'artwork', 'a_ what is oatmeal?', 2, 4),
(3, 392, 'artwork', 'a_ yoooo you should listen to my music', 1, 3),
(4, 322, 'artwork', 'a_ hi', 4, 10),
(5, 3223, 'artwork', 'a_ sejin kinda smells', 3, 23),
(6, 1000, 'artwork', 'a_ Be nice to Sejin', 125, 60),
(7, 17556, 'artwork', 'Nice hat.', 100, 0),
(9, 15516, 'artwork', 'dfgnm', 103, 0),
(12, 17556, 'artwork', 'Looks nice!', 100, 0),
(13, 45085, 'artwork', '', 105, 0),
(14, 17556, 'artwork', 'I like it!', 100, 0),
(15, 17557, 'artwork', 'Love love it!', 100, 0),
(16, 17559, 'artwork', 'Is that a boat?', 105, 0),
(17, 1, 'artwork', 'That looks like a lion!', 94, 0),
(18, 29388, 'artwork', 'I like lilies.', 105, 0),
(19, 29, 'artwork', 'Erie!!!', 108, 0),
(20, 29, 'artwork', 'nice!', 108, 0),
(21, 20713, 'artwork', 'nice!', 108, 0),
(22, 214, 'artwork', 'dsdsds', 108, 0),
(23, 214, 'artwork', 'xccvx', 108, 0);

-- --------------------------------------------------------

--
-- Table structure for table `follower`
--

CREATE TABLE `follower` (
  `prikey` int(8) NOT NULL,
  `account` varchar(21) DEFAULT NULL,
  `name` varchar(29) DEFAULT NULL,
  `sport` varchar(11) DEFAULT NULL,
  `mw` varchar(5) DEFAULT NULL,
  `class` varchar(7) DEFAULT NULL,
  `assc` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `follower`
--

INSERT INTO `follower` (`prikey`, `account`, `name`, `sport`, `mw`, `class`, `assc`) VALUES
(2, 'gpropp7', 'Greta Propp', 'basketball', 'women', 'athlete', 'Kenyon'),
(3, 'jakkietomlinson', 'Jakkie Tomlinson', 'basketball', 'women', 'athlete', 'Kenyon'),
(4, '305coachk', 'Tom Klosowski', 'lacrosse', 'men', 'coach', 'Kenyon'),
(5, 'willrobbs', 'Will Robbins', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(6, 'jackgiuffre07', 'Jack', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(7, 'jacksrin4', 'Jack Srinivasan', 'basketball', 'men', 'athlete', 'Kenyon'),
(8, 'samhump7', 'null', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(9, 'michaelasuncion_', 'Michael Asuncion', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(10, 'c_w_doughty', 'connordoughty', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(11, 'sebastian_seabass_57', 'Sebastian Winther', 'football', 'men', 'athlete', 'Kenyon'),
(12, 'r_thors', 'Rex Thors', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(13, 'lukethompson24', 'Luke Thomson', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(14, 'bowtiedtight', 'Chris McClellan', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(15, 'kenyonwommenssoccer', 'Kenyon College Women\'s Soccer', 'soccer', 'women', 'team', 'Kenyon'),
(16, 'kenyonswimdive', 'Kenyon Swimming & Diving', 'swim', 'both', 'team', 'Kenyon'),
(17, 'shrop_shire', 'Ben Shropshire', 'swim', 'men', 'athlete', 'Kenyon'),
(18, 'harriganw', 'Will Harrigan', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(19, 'kevennc', 'Keven Cosgel', 'soccer', 'men', 'athlete', 'Kenyon'),
(20, 'christian_scotto1', 'Christian scotto', 'football', 'men', 'athlete', 'Kenyon'),
(21, 'n8duggins', 'James Nathan Duggins IV', 'basketball', 'men', 'athlete', 'Kenyon'),
(22, 'pants8012', 'Matt Pantalon', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(23, 'bridget.molnar', 'Bridget', 'basketball', 'women', 'athlete', 'Kenyon'),
(24, 'sofialnso', 'Sofia Alonso', 'tennis', 'women', 'athlete', 'Kenyon'),
(25, 'lcg.19', 'Lauren Graf', 'softball', 'women', 'athlete', 'Kenyon'),
(26, 'joelbiery', 'Joel Biery', 'baseball', 'men', 'athlete', 'Kenyon'),
(27, 'clarekelleyy', 'Clare Kelley', 'basketball', 'women', 'athlete', 'Kenyon'),
(28, 'amandacarroll_', 'AKC', 'basketball', 'women', 'athlete', 'Kenyon'),
(29, 'alex__212', 'Alex Boyd', 'basketball', 'men', 'athlete', 'Kenyon'),
(30, 'nicklewis_15', 'Nick', 'basketball', 'men', 'athlete', 'Kenyon'),
(31, 'maggiegrabs', 'Maggie Grabowski', 'lacrosse', 'women', 'athlete', 'Kenyon'),
(32, 'kasec13', 'Kase Cronin', 'basketball', 'men', 'athlete', 'Kenyon'),
(33, 'samwalch44', 'Sam Walch', 'basketball', 'men', 'athlete', 'Kenyon'),
(34, 'kmo1019', 'Katie Orefice', 'basketball', 'women', 'athlete', 'Kenyon'),
(35, 'schnarre_3', 'Andrew Schnarre', 'football', 'men', 'athlete', 'Kenyon'),
(36, 'brickoval', 'B:rice:', 'soccer', 'men', 'athlete', 'Kenyon'),
(37, 'cha_bru5', 'Chayne Bruneau', 'soccer', 'men', 'athlete', 'Kenyon'),
(38, 'rydog1028', 'Ryan O\'Neil', 'basketball', 'men', 'athlete', 'Kenyon'),
(39, 'patrickn3', 'Patrick Nally', 'soccer', 'men', 'athlete', 'Kenyon'),
(40, 'kenyon_saac', 'KSAAC', 'null', 'both', 'team', 'Kenyon'),
(41, '__upton', 'Scottie', 'soccer', 'men', 'athlete', 'Kenyon'),
(42, 'zachg_59', 'Zachary Grumbach', 'soccer', 'men', 'athlete', 'Kenyon'),
(43, 'macvt', 'Francis Nardiello Smith', 'soccer', 'men', 'athlete', 'Kenyon'),
(44, 'philippestengel', 'null', 'soccer', 'men', 'athlete', 'Kenyon'),
(45, 'ianturf513', 'Ian McInturf', 'soccer', 'men', 'athlete', 'Kenyon'),
(46, 'ianturf513', 'Ian McInturf', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(47, 'aidan_schoell', 'Aiden Schoellkopf', 'soccer', 'men', 'athlete', 'Kenyon'),
(48, 'adamsilberg', 'Asilly', 'soccer', 'men', 'athlete', 'Kenyon'),
(49, 'isaac.j0hns0n', 'Isaac Johnson', 'soccer', 'men', 'athlete', 'Kenyon'),
(50, 'willie.j', 'Willie Johnson', 'football', 'men', 'athlete', 'Kenyon'),
(51, 'sam.h_q', 'Sam Hosmer-Quint', 'soccer', 'men', 'athlete', 'Kenyon'),
(52, 'jack.cohen5', 'Jack Cohen', 'soccer', 'men', 'athlete', 'Kenyon'),
(53, 'elijahf10', 'Elijah Friedman', 'basketball', 'men', 'athlete', 'Kenyon'),
(54, 'gunnerfound', 'gunnerfound', 'soccer', 'men', 'athlete', 'Kenyon'),
(55, 'joihrafn99', 'Johann Hrafn Johannsson', 'soccer', 'men', 'athlete', 'Kenyon'),
(56, 'nbjacobson98', 'Nathaniel Burton Jacobson 1st', 'football', 'men', 'athlete', 'Kenyon'),
(57, 'mattyu72', 'Matt Ullstrom', 'football', 'men', 'athlete', 'Kenyon'),
(58, 'paigemilhon', 'Paige Milhon', 'volleyball', 'women', 'athlete', 'Kenyon'),
(59, 'paigemilhon', 'Paige Milhon', 'softball', 'women', 'athlete', 'Kenyon'),
(60, 'sebab2101', 'Sebastian Brylka', 'soccer', 'men', 'athlete', 'Kenyon'),
(61, 'finnmurray11', 'Finn Murray', 'football', 'men', 'athlete', 'Kenyon'),
(62, 'joebo22', 'Joe Bolea', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(63, 'big_kirol', 'Chase Kirol', 'football', 'men', 'athlete', 'Kenyon'),
(64, 'jimmy__lane', 'James Michael Lane III', 'football', 'men', 'athlete', 'Kenyon'),
(65, 'dj_shands', 'Darryl Shands', 'football', 'men', 'athlete', 'Kenyon'),
(66, 'j_pro24', 'Jack Provenza', 'football', 'men', 'athlete', 'Kenyon'),
(67, '__jb5__', 'Justin Bosch :football:', 'football', 'men', 'athlete', 'Kenyon'),
(68, 'adampollock57', 'Adam Pollock', 'football', 'men', 'athlete', 'Kenyon'),
(69, '_picone', 'Michael Picone Jr.', 'football', 'men', 'athlete', 'Kenyon'),
(70, 'samdickey98', 'Sam Dickey', 'football', 'men', 'athlete', 'Kenyon'),
(71, 'mattjolliffe_', 'Matthew Jolliffe', 'football', 'men', 'athlete', 'Kenyon'),
(72, 'lmutes8', 'Luke Muther', 'soccer', 'men', 'athlete', 'Kenyon'),
(73, 'nathanjunk', 'Nathan Junk', 'football', 'men', 'athlete', 'Kenyon'),
(74, 'nathanjunk', 'Nathan Junk', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(75, 'trvrjglsn', 'trevor gleason', 'soccer', 'men', 'athlete', 'Kenyon'),
(76, 'tomas_munoz10', 'Tomas Munoz Reyes', 'soccer', 'men', 'athlete', 'Kenyon'),
(77, 'kiele.anderson', 'Kiele Layne Anderson', 'soccer', 'women', 'athlete', 'Kenyon'),
(78, 'kiele.anderson', 'Kiele Layne Anderson', 'basketball', 'women', 'athlete', 'Kenyon'),
(79, 'willmo.10', 'Will Mohrmann', 'soccer', 'men', 'athlete', 'Kenyon'),
(80, 'atlihrafnkels', 'Atli Hrafnkelsson', 'soccer', 'men', 'athlete', 'Kenyon'),
(81, '_minka.s', 'Minkael S.', 'soccer', 'men', 'athlete', 'Kenyon'),
(82, 'kenyoncollegefh', 'Kenyon College Field Hockey', 'fieldhockey', 'women', 'team', 'Kenyon'),
(83, 'sam.carson', 'Sam Carson', 'soccer', 'men', 'athlete', 'Kenyon'),
(84, 'aj_allen111', 'AJ Allen', 'football', 'men', 'athlete', 'Kenyon'),
(85, 'brousek70', 'Alex Brousek', 'football', 'men', 'athlete', 'Kenyon'),
(86, 'willkoslo', 'Will Koslo', 'football', 'men', 'athlete', 'Kenyon'),
(87, 'kcmsoccer', 'Kenyon College Mens Soccer', 'soccer', 'men', 'team', 'Kenyon'),
(88, 'esluciani', 'ellie', 'volleyball', 'women', 'athlete', 'Kenyon'),
(89, 'hannahartshorn', 'Hannah Hartshorn', 'fieldhockey', 'women', 'athlete', 'Kenyon'),
(90, 'benski80', 'Ben Stillions', 'xc', 'men', 'athlete', 'Kenyon'),
(91, 'quinncowden', 'Quinn', 'soccer', 'men', 'athlete', 'Grady'),
(92, 'a.lambert', 'Aaron', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(93, 'kenyomlax', 'Kenyon College Men�s Lacrosse', 'lacrosse', 'men', 'team', 'Kenyon'),
(94, 'weinstockcaleb', 'Caleb Weinstock', 'soccer', 'men', 'athlete', 'Grady'),
(95, 'rb_the_db', 'Ryan Banko', 'football', 'men', 'athlete', 'Kenyon'),
(96, 'maxohnesorge', 'Max Ohnesorge', 'soccer', 'men', 'athlete', 'Kenyon'),
(97, 'jeremy_juggles', 'Jeremy Baier', 'xc', 'men', 'athlete', 'Kenyon'),
(98, 'joe__woody', 'joe__woody', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(99, '_joneill', 'Jed O�Neill', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(100, 'kenyoncollegebaseball', 'Lords Baseball', 'baseball', 'men', 'team', 'Kenyon'),
(101, 'jleds10', 'Joseph Ledwin', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(102, 'iangoby_2', 'Ian Gobron', 'lacrosse', 'men', 'athlete', 'Kenyon'),
(103, 'cat.gonz', 'Cat Gonzalez', 'basketball', 'women', 'athlete', 'Kenyon'),
(104, 'schaube11', 'Ellie Schaube', 'basketball', 'women', 'athlete', 'Kenyon'),
(105, 'cattoni99', 'Holden Cattoni', 'lacrosse', 'men', 'athlete', 'pro'),
(106, 'alex9334', 'Alex Cate', 'basketball', 'men', 'athlete', 'Kenyon'),
(107, 'konrad.christian34', 'Konrad', 'basketball', 'men', 'athlete', 'Kenyon'),
(108, 'cjwatanabe', 'Christian Wantanabe', 'basketball', 'men', 'athlete', 'Kenyon'),
(109, 'powell_c3', 'Carter Powell', 'basketball', 'men', 'athlete', 'Kenyon'),
(110, 'matt_shirfrin', 'Matt Shirfrin', 'basketball', 'men', 'athlete', 'Kenyon'),
(111, 'rea.suave', 'Elijah Vaughn Davis', 'basketball', 'men', 'athlete', 'Kenyon'),
(112, 'nathanfanta53', 'Nathan Fanta', 'football', 'men', 'athlete', 'Kenyon'),
(113, 'max_taylor98', 'Max', 'soccer', 'men', 'athlete', 'Kenyon'),
(114, 'goodmoneysniper', 'Dan Eipp', 'lacrosse', 'men', 'athlete', 'pro'),
(115, 'maddie_ladd14', 'Maddie Ladd', 'soccer', 'women', 'athlete', 'Kenyon'),
(116, 'caroline_mcneer', 'Caroline', 'soccer', 'women', 'athlete', 'Kenyon'),
(117, 'bret_on', 'Bret Lowry', 'soccer', 'men', 'athlete', 'Kenyon'),
(118, 'maxman9', 'Max Adler', 'lacrosse', 'men', 'athlete', 'pro'),
(119, 'tpalasek', 'Tom Palasek', 'lacrosse', 'men', 'athlete', 'pro'),
(120, 'jnardss', 'Joe Nardella', 'lacrosse', 'men', 'athlete', 'pro'),
(121, 'mb63_lacrosse', 'Mike Begley', 'lacrosse', 'men', 'athlete', 'pro'),
(122, 's1msm1th', 'Simeon Smith', 'lacrosse', 'men', 'athlete', 'Grady'),
(123, 'atlantablazemll', 'Atlanta Blaze', 'lacrosse', 'men', 'team', 'pro'),
(124, 'scottratliff2', 'Scott Ratliff', 'lacrosse', 'men', 'athlete', 'pro'),
(125, 'itsmattgibson', 'null', 'lacrosse', 'men', 'athlete', 'pro'),
(126, 'k.edwards_17', 'Kevin Edwards', 'lacrosse', 'men', 'athlete', 'Grady'),
(127, 'mateinhoficial', 'Mateinho', 'soccer', 'men', 'athlete', 'Grady'),
(128, 'gradylacrosse', 'Grady Boys Lacrosse', 'lacrosse', 'men', 'team', 'Grady'),
(129, 'willtanner_5', 'Will T', 'lacrosse', 'men', 'athlete', 'Grady'),
(130, 'jmthomas119', 'Jordan Marshall Thomas', 'lacrosse', 'men', 'athlete', 'Grady'),
(131, 'timmykopp', 'TK', 'lacrosse', 'men', 'athlete', 'Grady'),
(132, 'j.chris.martin', 'Christian Martin', 'lacrosse', 'men', 'athlete', 'Grady'),
(133, 'joe.norman', 'Joe Norman', 'soccer', 'men', 'athlete', 'Grady'),
(134, 'alex.langan', 'Alex Langan', 'baseball', 'men', 'athlete', 'Grady'),
(135, 'charlietoole_', 'Charlie Toole', 'soccer', 'men', 'athlete', 'Grady'),
(136, 'djourdan.gj', 'Djourdan Gomes-Johnson', 'soccer', 'men', 'athlete', 'Grady'),
(137, 'nathanielward49', 'Nathaniel', 'soccer', 'men', 'athlete', 'Grady'),
(138, 'reedf06', 'Reed Fazenbaker', 'soccer', 'men', 'athlete', 'Grady'),
(139, 'nichocucchi', 'Nicho', 'soccer', 'men', 'athlete', 'Grady'),
(140, 'cory_dillard', 'Cory Dillard', 'soccer', 'men', 'athlete', 'Grady'),
(141, 'colin.thomasson', 'Colin Thomasson', 'soccer', 'men', 'athlete', 'Grady');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(8) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table to hold the user information';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `password`, `email`) VALUES
(1, 'Bob Dylan', 'iamgreat', 'bobdylan@kanyon.edu'),
(2, 'Sejin Kim', 'beeeeeees', 'kim3@kanyon.edu'),
(3, 'Michaela Brydon', 'hi', 'brydon1@kenyon.edu'),
(4, 'Ryan Schultz', '5chu1tzryan', 'schultz4@kenyon.edu'),
(5, 'Jim Skon', 'philchase', 'skonjp@kanyon.edu'),
(6, 'user1', 'password', 'email@email.com'),
(7, 'sarah2', 'passwered', 's2@gmail.com'),
(68, 'schultz4', '12345678', 'schultz4@kenyon.edu'),
(82, 'mary', 'little', 'had@little.lamb'),
(85, 'newMe', 'sos', 'me@ready.com'),
(87, 'amelia', 'can', 'amelia@airheart.com'),
(88, 'Candy', 'Ilovecandy', 'candy@corn.com'),
(89, 'Samuel', 'sam', 'Samuel@samtheman.com'),
(90, 'seggie', 'veg', 'seggie@theveggie.com'),
(91, 'math', 'math', 'mathIsCool@gmail.com'),
(92, 'Redmaker', 'red', 'red@reddit.com'),
(93, 'Paola', 'paocor', 'pao@cor.com'),
(94, 'rusty', 'rust', 'ruster@rust.com'),
(95, 'Kenny', 'for', 'ken@ryan.com'),
(96, 'henry', 'ford', 'hen@ford.com'),
(97, 'freddy', 'fred', 'fred@gmail.com'),
(98, 'Bryce', 'Bmoney', 'btmort@gmail.com'),
(99, 'Freda', 'terry', 'marg@gmail.com'),
(100, 'Sarah', 'fork', 'green@gmail.com'),
(101, 'cameron', 'camcam', 'suor@gmail.com'),
(103, 'hello', 'qwerty', 'hello@knyon.edu'),
(105, 'kim3', 'bees', 'kim3@kenyon.edu'),
(107, 'tory', '', 'find@gmail.com'),
(108, 'jim', '1234', 'skonjp@kenyon.edu'),
(109, 'mikkibry125', 'sammy', 'mikki@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`prikey`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `follower`
--
ALTER TABLE `follower`
  MODIFY `prikey` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `Phonebook`
--
ALTER TABLE `users`
  MODIFY `userId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
