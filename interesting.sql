-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 07:16 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `ID` int(11) NOT NULL,
  `mainTitle` text COLLATE utf8_turkish_ci NOT NULL,
  `Title` text COLLATE utf8_turkish_ci NOT NULL,
  `Content` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`ID`, `mainTitle`, `Title`, `Content`) VALUES
(1, 'Health', 'Wanted: Top doctor to care for 7 billion people', 'Health ministers and officials from 194 countries are due to vote for a new director general of the World Health Organization in Geneva on Tuesday.\nThe UN agency, founded in 1948, describes itself as the "global guardian of public health", but it lost a great deal of credibility and trust over its handling of the Ebola crisis in 2014.\nThe new boss could make or break the WHO, which is still trying to prove it is fit for purpose after admitting it was slow to respond to what became the worst Ebola outbreak in history.\nHowever, dealing with epidemics is just part of what WHO does.\nIts stated goal is to ensure "the highest attainable level of health for all people".\nIn practice, that means everything from trying to wipe out deadly diseases for good, to trying to deal with the growing number of obesity and diabetes epidemics, to reducing deaths on the roads and saving the lives of mothers and babies during childbirth.'),
(3, 'Politics', 'How can voters influence who the British PM is?', 'As the people of the UK get ready to go to the polls, many are talking about who they want to be Prime Minister.\nSo if the Americans and French can vote for their Presidents, how do the British decide who will be living at 10 Downing Street?\nHere we explain the process of how the PM is selected.'),
(5, 'Technology', 'Leaks expose peculiar Facebook moderation policy', 'It said the manuals revealed the criteria used to judge if posts were too violent, sexual, racist, hateful or supported terrorism.'),
(6, 'Technology', 'Bringing techno to the temple', 'In a small temple in Japan, DJ-turned-priest Gyosen Asakura is using his DJ skills.'),
(8, 'Art', 'Dr. Oetker compensates Jewish heirs for silver windmill cup in collection', 'Dr Oetker, a family-owned German manufacturer of food products, says it has reached an agreement to compensate the heirs of Emma Budge for a 17th-century silver cup in the shape of a windmill that was sold by the Nazis in 1937 and wound up in the companyâ€™s art collection.'),
(9, 'Economics', 'The worst news for the economy might be coming from banks, not retail', 'Barry Sternlicht	Starwood Capital CEO: We have the inverse Trump effect in the economy  \nMonday, 15 May 2017 | 8:09 AM ET | 03:30\nDespite high levels of economic confidence expressed by business owners and consumers, one key indicator shows that it has not translated into much action yet.'),
(11, 'Fashion', 'We Asked a Fashion Psychologist the One Question Everyone Wants to Know', 'we spoke to two fashion psychologists, Shakaila Forbes-Bell from Psychology of Fashion and Dawnn Karen, and both agreed that there is one colour that is scientifically proven to be more attractive, and it might even get you more swipes on Tinder. As expected, this colour is red.'),
(12, 'Sport', 'Liverpool v Sydney FC squad: Reds name strong group for ANZ Stadium clash', 'LIVERPOOL has named a strong squad for its post-season friendly against Sydney FC, with Philippe Coutinho, Emre Can and the injured duo of Jordan Henderson and Sadio Mane the only significant omissions from the 25-man group.'),
(13, 'Science', '40 more intelligence genes found', 'Historically, intelligence research has been mired in controversy, says neuroscientist Richard Haier of the University of California, Irvine. Scientists disagreed on whether intelligence could actually be measured and if so, whether genes had anything at all to do with the trait, as opposed to education and other life experiences. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `name`) VALUES
(1, 'caglakal2009@hotmail.com', '1517', 'Cagla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
