-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 15. September 2014 um 20:00
-- Server Version: 5.1.44
-- PHP-Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `projectbilling`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `table` int(11) NOT NULL,
  `address_detail` int(11) NOT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address_details`
--

DROP TABLE IF EXISTS `address_details`;
CREATE TABLE IF NOT EXISTS `address_details` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creater` varchar(50) DEFAULT NULL,
  `address_details_line1` varchar(100) DEFAULT NULL,
  `address_details_line2` varchar(100) DEFAULT NULL,
  `address_details_line3` varchar(100) DEFAULT NULL,
  `address_details_line4` varchar(100) DEFAULT NULL,
  `address_details_line5` varchar(100) DEFAULT NULL,
  `address_details_line6` varchar(100) DEFAULT NULL,
  `address_details_line7` varchar(100) DEFAULT NULL,
  `address_details_mail` varchar(100) DEFAULT NULL,
  `address_details_www` varchar(100) DEFAULT NULL,
  `address_details_phone` varchar(50) DEFAULT NULL,
  `address_details_fax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address_plus`
--

DROP TABLE IF EXISTS `address_plus`;
CREATE TABLE IF NOT EXISTS `address_plus` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creater` varchar(50) DEFAULT NULL,
  `address_details_line1` varchar(100) DEFAULT NULL,
  `address_details_line2` varchar(100) DEFAULT NULL,
  `address_details_line3` varchar(100) DEFAULT NULL,
  `address_details_line4` varchar(100) DEFAULT NULL,
  `address_details_line5` varchar(100) DEFAULT NULL,
  `address_details_line6` varchar(100) DEFAULT NULL,
  `address_details_line7` varchar(100) DEFAULT NULL,
  `address_details_mail` varchar(100) DEFAULT NULL,
  `address_details_www` varchar(100) DEFAULT NULL,
  `address_details_phone` varchar(50) DEFAULT NULL,
  `address_details_fax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address_types`
--

DROP TABLE IF EXISTS `address_types`;
CREATE TABLE IF NOT EXISTS `address_types` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `address_type` varchar(50) DEFAULT NULL,
  `creater` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `contact_number` int(11) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `contact_firstname` varchar(50) DEFAULT NULL,
  `contact_description` text,
  `contact_birthday` date DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creater` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contacts_contact`
--

DROP TABLE IF EXISTS `contacts_contact`;
CREATE TABLE IF NOT EXISTS `contacts_contact` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `table` int(11) NOT NULL,
  `contact_uid` int(11) NOT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
CREATE TABLE IF NOT EXISTS `contact_details` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `contact_details_type` int(11) DEFAULT NULL,
  `contact_details_info` varchar(50) DEFAULT NULL,
  `contact_details_description` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creater` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact_types`
--

DROP TABLE IF EXISTS `contact_types`;
CREATE TABLE IF NOT EXISTS `contact_types` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(50) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creater` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
