-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: child_db
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `LAMA_NIVASA_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_OF_REGISTRATION` datetime DEFAULT NULL,
  `CODE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FULL_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_OF_BIRTH` datetime DEFAULT NULL,
  `SEX_TYPE` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `RACE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELIGION` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISABLE` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE_OF_DISABILITY` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCHOOL` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GRADE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BIRTH_CERTIFICATE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROFORMA` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VACCINATION_CARD` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENTS_AVAILABILITY` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INTAKE_METHOD` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINAL_PROBATION_UNIT` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HISTORY` text COLLATE utf8_unicode_ci,
  `COMMENT` text COLLATE utf8_unicode_ci,
  `STATUS` int(1) DEFAULT '0',
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LAMA_NIVASA_ID` (`LAMA_NIVASA_ID`),
  CONSTRAINT `child_ibfk_1` FOREIGN KEY (`LAMA_NIVASA_ID`) REFERENCES `lama_nivasa` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `child_careplan`
--

DROP TABLE IF EXISTS `child_careplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_careplan` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `STATUS` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRE_NOTE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_TAKEN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_NOTE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHILD_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CHILD_ID` (`CHILD_ID`),
  CONSTRAINT `child_carepan_ibfk_1` FOREIGN KEY (`CHILD_ID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `child_guardian`
--

DROP TABLE IF EXISTS `child_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_guardian` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `GUARDIAN_STATUS` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEPHONE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIONSHIP` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATH_TO_HOME` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHILD_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CHILD_ID` (`CHILD_ID`),
  CONSTRAINT `child_guardian_ibfk_1` FOREIGN KEY (`CHILD_ID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `child_picture`
--

DROP TABLE IF EXISTS `child_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_picture` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `CHILD_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `FILE_CONTENT` mediumblob NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CHILD_ID` (`CHILD_ID`),
  CONSTRAINT `child_picture_ibfk_1` FOREIGN KEY (`CHILD_ID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `child_record`
--

DROP TABLE IF EXISTS `child_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_record` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `RECORD_DATE` datetime NOT NULL,
  `COMMENT` text COLLATE utf8_unicode_ci,
  `CHILD_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CHILD_ID` (`CHILD_ID`),
  CONSTRAINT `child_record_ibfk_1` FOREIGN KEY (`CHILD_ID`) REFERENCES `child` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PROVINCE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PROVINCE` (`PROVINCE`),
  CONSTRAINT `district_ibfk_1` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `divisional_secretariat`
--

DROP TABLE IF EXISTS `divisional_secretariat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisional_secretariat` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DISTRICT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DISTRICT_ID` (`DISTRICT_ID`),
  CONSTRAINT `divisional_secretariat_ibfk_1` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `district` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generic_category`
--

DROP TABLE IF EXISTS `generic_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_category` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generic_list`
--

DROP TABLE IF EXISTS `generic_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_list` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `GENERIC_CATEGORY_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `LIST_KEY` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `LIST_VALUE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `GENERIC_CATEGORY_ID` (`GENERIC_CATEGORY_ID`),
  CONSTRAINT `generic_list_ibfk_1` FOREIGN KEY (`GENERIC_CATEGORY_ID`) REFERENCES `generic_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grama_sevaka`
--

DROP TABLE IF EXISTS `grama_sevaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grama_sevaka` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_NUMBER` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grama_sevaka_division`
--

DROP TABLE IF EXISTS `grama_sevaka_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grama_sevaka_division` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIVISIONAL_SECRETARIAT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DIVISIONAL_SECRETARIAT_ID` (`DIVISIONAL_SECRETARIAT_ID`),
  CONSTRAINT `grama_sevaka_division_ibfk_1` FOREIGN KEY (`DIVISIONAL_SECRETARIAT_ID`) REFERENCES `divisional_secretariat` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lama_nivasa`
--

DROP TABLE IF EXISTS `lama_nivasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lama_nivasa` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PROBATION_UNIT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `PROBATION_OFFICER` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIVISIONAL_SECRETARIAT_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GRAMA_SEVAKA_DIVISION_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_OF_ESTABLISHMENT` datetime DEFAULT NULL,
  `ADDRESS` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORY` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `RELIGION` char(32) COLLATE utf8_unicode_ci DEFAULT 'BUDDHISM',
  `TELEPHONE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAX` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_AGE` int(3) DEFAULT NULL,
  `MAX_AGE` int(3) DEFAULT NULL,
  `NUMBER_OF_CHILDREN` int(3) DEFAULT NULL,
  `REGISTRATION_STATUS` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGISTRATION_NUMBER` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGISTRATION_DATE` datetime DEFAULT NULL,
  `FUNDING_METHOD` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPARTMENT_FUNDING` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMBER_OF_OFFICERS` int(3) DEFAULT NULL,
  `COMMENT` text COLLATE utf8_unicode_ci,
  `STATUS` int(1) DEFAULT '0',
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PROBATION_UNIT_ID` (`PROBATION_UNIT_ID`),
  KEY `DIVISIONAL_SECRETARIAT_ID` (`DIVISIONAL_SECRETARIAT_ID`),
  KEY `FK_gramasevaka_id` (`GRAMA_SEVAKA_DIVISION_ID`),
  CONSTRAINT `lama_nivasa_ibfk_1` FOREIGN KEY (`PROBATION_UNIT_ID`) REFERENCES `probation_unit` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `monthly_data`
--

DROP TABLE IF EXISTS `monthly_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_data` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `YEAR` int(11) DEFAULT NULL,
  `MONTH` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAMA_NIVASA_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NUM_OF_MALE_CHILDREN` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_CHILDREN` int(11) DEFAULT NULL,
  `NUM_OF_OFFICERS` int(11) DEFAULT NULL,
  `NUM_OF_VACANT_OFFICERS` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_REUNIFICATION` int(11) DEFAULT NULL,
  `NUM_OF_MALE_REUNIFICATION` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_TRANSFERS` int(11) DEFAULT NULL,
  `NUM_OF_MALE_TRANSFERS` int(11) DEFAULT NULL,
  `NUM_OF_PROFORMA_FEMALE` int(11) DEFAULT NULL,
  `NUM_OF_PROFORMA_MALE` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_NO_GUARDIANS` int(11) DEFAULT NULL,
  `NUM_OF_MALE_NO_GUARDIANS` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_TERMINATES` int(11) DEFAULT NULL,
  `NUM_OF_MALE_TERMINATES` int(11) DEFAULT NULL,
  `NUM_OF_FEMALE_HAVING_SPECIAL_REQUIREMENTS` int(11) DEFAULT NULL,
  `MUN_OF_MALE_HAVING_SPECIAL_REQUIREMENTS` int(11) DEFAULT NULL,
  `NUM_OF_MEETINGS_UPTO_NOW` int(11) DEFAULT NULL,
  `NUM_OF_INTAKES` int(11) DEFAULT '0',
  `INTAKE_FROM_COURT` int(11) DEFAULT '0',
  `INTAKE_FROM_DEPARTMENT` int(11) DEFAULT '0',
  `INTAKE_FROM_PARENTS` int(11) DEFAULT '0',
  `INTAKE_FROM_ORGANIZATIONS` int(11) DEFAULT '0',
  `INTAKE_FROM_OTHER` int(11) DEFAULT '0',
  `NUM_TO_ADOPTION` int(11) DEFAULT '0',
  `NUM_TO_PARENT` int(11) DEFAULT '0',
  `NUM_TO_MARRAGE` int(11) DEFAULT '0',
  `NUM_TO_EMPLOYEMENT` int(11) DEFAULT '0',
  `NUM_TO_VOCATIONAL` int(11) DEFAULT '0',
  `NUM_TO_SELF_EMPLOYEMENT` int(11) DEFAULT '0',
  `NUM_TO_OTHER` int(11) DEFAULT '0',
  `NUM_NO_CHILD_PLANS` int(3) DEFAULT '0',
  `NUM_DEVIATED_CHILD_PLANS` int(3) DEFAULT '0',
  `PROBATION_OFFICER_VISITED_DATE` datetime DEFAULT NULL,
  `COUNSELLOR_VISITED_DATE` datetime DEFAULT NULL,
  `DEPARTMENT_COMMISSIONER_VISITED_DATE` datetime DEFAULT NULL,
  `DEPARTMENT_PROBATION_OFFICER_VISITED_DATE` datetime DEFAULT NULL,
  `DEPARTMENT_OF_CHILD_DEVELOPMENT_OFFICER_VISITED_DATE` datetime DEFAULT NULL,
  `THE_LAST_MEETING_HELD_ON` datetime DEFAULT NULL,
  `PLACEMENT_COMMITTEE` datetime DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LAMA_NIVASA_ID` (`LAMA_NIVASA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `police_station`
--

DROP TABLE IF EXISTS `police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_station` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEPHONE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAX` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `probation_unit`
--

DROP TABLE IF EXISTS `probation_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `probation_unit` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `DISTRICT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMBER_OF_OFFICERS` int(3) DEFAULT NULL,
  `TELEPHONE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FAX` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POLICE_STATION_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `POLICE_STATION_ID` (`POLICE_STATION_ID`),
  CONSTRAINT `probation_unit_ibfk_1` FOREIGN KEY (`POLICE_STATION_ID`) REFERENCES `police_station` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `probationunit_policestation`
--

DROP TABLE IF EXISTS `probationunit_policestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `probationunit_policestation` (
  `PROBATION_UNIT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `POLICE_STATION_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PROBATION_UNIT_ID`,`POLICE_STATION_ID`),
  KEY `POLICE_STATION_ID` (`POLICE_STATION_ID`),
  CONSTRAINT `probationunit_policestation_ibfk_1` FOREIGN KEY (`PROBATION_UNIT_ID`) REFERENCES `probation_unit` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `probationunit_policestation_ibfk_2` FOREIGN KEY (`POLICE_STATION_ID`) REFERENCES `police_station` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `USERNAME` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `USER_PASSWORD` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ROLE` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `POST` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELEPHONE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MOBILE` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS_TEMPORARY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEX` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFERENCE_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` int(1) DEFAULT '0',
  `SORT_ORDER` int(4) DEFAULT NULL,
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-03 12:32:37
