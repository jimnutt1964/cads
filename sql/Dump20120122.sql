CREATE DATABASE  IF NOT EXISTS `ClassifiedAds` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ClassifiedAds`;
-- MySQL dump 10.13  Distrib 5.5.16, for Linux (i686)
--
-- Host: localhost    Database: ClassifiedAds
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `Ads`
--

DROP TABLE IF EXISTS `Ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ads` (
  `AdsID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text,
  `Price` decimal(10,2) DEFAULT NULL,
  `ContactID` int(11) DEFAULT NULL,
  `DatePosted` date DEFAULT NULL,
  `LastUpdated` timestamp NULL DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `NumberViews` int(11) DEFAULT NULL,
  `LocationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AdsID`),
  KEY `idxTitle` (`Title`),
  KEY `fk_ContactID` (`ContactID`),
  KEY `fk_LocationID` (`LocationID`),
  CONSTRAINT `fk_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `Contacts` (`ContactID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_LocationID` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ads`
--

LOCK TABLES `Ads` WRITE;
/*!40000 ALTER TABLE `Ads` DISABLE KEYS */;
INSERT INTO `Ads` VALUES (1,'Sammamish Rambler','The only house in Sammamish at this price with vinyl windows, 40 year roof and wired for generator. Built in 1974.  3 Bedroom, 2 Bath, Family Room off kitchen, solarium windows, gas fireplace, newer carpeting, furnace and hot water tank. Dishwasher, Gas Range/Oven, Refrigerator, Compactor. 2 Car Garage.\n\n<br>Private patio with arbor in private fenced rear yard with soaring evergreens. Drought resistant landscaping and no lawn to mow. Storage building.\n<br>Good school district with library close by, close to Beaver Lake &amp; Pine Lake plus numerous parks.\n<br>Close to bus and Park &amp; Ride.\n<br>MLS # 302345\n<br>Owner/Agent',339950.00,1,'2012-01-16','2012-01-19 08:00:00','2012-07-16',NULL,1),(2,'1984 Honda Civic CRX HF/SI','Hey, I\'m selling my 84 CRX HF with an SI head, for $1450 obo. It has about 100k on the bottom end, and a newly-milled head from a 86 crx si for $1450 obo. The car has 227K on the body/chasis and runs/drives great. New parts on this car include: head gasket, rear brakes, thermostat, water pump, timing belt, valve cover gasket, front main seal, spark plugs, cap &amp; rotor, antifreeze, driver\'s side seat belt retractor, tires, and clutch. I also have a new alternator belt (uninstalled) which will take less than 2 minutes to loosen the old one, take it off, and change it out. I just don\'t have the time to do it. The body is a 9/10, very straight. This car has a CD player. It gets great gas mileage (30+).....I was getting 35 mpg before I had to let the vehicle warm up because of cold weather. When I put the SI head on it, I did not get the chance to hunt down the valve stem guides, so there\'s a little blow-by as far as oil goes, causing it to smoke some. It\'s an easy fix for someone with tools and the knowledge, I just don\'t have the time to do it now. It\'s been a great car. I had planned on keeping it, but due to recent plans and acquiring a new project vehicle, I\'m selling it.Texting me gets the fastest response, but I return voicemails at my earliest convenience. My number is 425-273-3568.',1450.00,2,'2012-01-09','2012-01-19 08:00:00','2012-07-09',NULL,1),(3,'Director of Search Marketing - ClassifiedAds.com','Are you looking for an opportunity to direct search marketing campaigns at massive scale? Are you both analytical and a creative marketer, someone with experience scaling SEM campaigns in a cost-effective way that drives ROI? Do you want to utilize your exceptional management skills to lead a SEM team? Do you want to join one of <a href=\"http://www.seattle20.com/startup-index.aspx\" rel=\"nofollow\">Seattle\'s top startups</a>, an <a href=\"http://www.inc.com/inc5000/profile/classifiedadscom\" rel=\"nofollow\">Inc 5000 Fastest Growing Company</a>? If so, read on! <br><br><b>Who Are We? </b><br>ClassifiedAds.com is one of the largest classified ads websites, with over 3 million monthly unique visitors. Based in downtown Bellevue, we\'re fast growing and we\'re continually profitable. We\'re a small startup but we\'re a major player in the online classifieds space. Our size enables us to be nimble and to do very exciting things when we smell opportunity. Our core company philosophy is to hire the best people possible, give them clear objectives, and let them flex their creative muscles without being micromanaged. <br><br><b>What\'s the Job?</b><br>Reporting directly to the COO of ClassifiedAds.com, you will lead our search marketing efforts. We do our marketing at scale, managing hundreds of thousands of keywords across thousands of campaigns with a virtually unlimited marketing budget for effective ad spend. Our marketing directly impacts the financial performance of the business so this is a highly visible and high impact role. <br><br>You will define our SEM strategy; create, manage and grow campaigns; recruit, hire and manage the SEM team; analyze website performance; monitor market trends and identify potential growth opportunities. This is a hands-on role, so you will be expected to direct both the strategy and the execution of our SEM campaigns to ensure optimal performance. You will utilize your solid understanding of online marketing strategies, both search and display, to drive top-line revenue and gross profit. <br><br><b>Who are we looking for?</b><br>If you\'re web savvy, self-motivated, comfortable in a fast-paced environment, have an analytical mind-set, and are willing to roll up your sleeves to get the job done, this is the ideal role for you. Specific required qualifications include: <br>&bull; Minimum 2 years in a marketing management position; proven leadership skills.<br>&bull; Minimum 5 years of search marketing experience, including hands-on experience with Google AdWords and MS AdCenter (building, optimizing and analyzing PPC campaigns at scale).<br>&bull; Proven ability to analyze large amounts of data, identify trends/opportunities/issues and take appropriate action. <br>&bull; Self-directed and able to work independently with minimal direct supervision, but recognize the value of contributing in a team environment. <br>&bull; Strong communication and organizational skills; proven ability to effectively manage a small team.<br>&bull; Advanced knowledge of Excel. <br>&bull; Previous startup experience a plus. <br>&bull; Passion for search marketing and the Internet is a must!<br>&bull; Bachelor\'s degree. <br><br>If you\'re up for the challenge you should join us. This is a full-time position based in Bellevue. <br><br>Please submit a cover letter and resume to <b>jobs AT classifiedads DOT com</b>.',NULL,4,'2011-12-09','2012-01-17 08:00:00','2012-06-12',NULL,1),(4,'Search Marketing Manager - ClassifiedAds.com','Are you looking for an opportunity to utilize your search marketing experience to manage campaigns at massive scale? Are you both analytical and a creative marketer, someone with experience scaling campaigns in a cost-effective way that drives ROI? Do you want to join one of <a href=\"http://www.seattle20.com/startup-index.aspx\" rel=\"nofollow\">Seattle\'s top startups</a>, an <a href=\"http://www.inc.com/inc5000/profile/classifiedadscom\" rel=\"nofollow\">Inc 5000 Fastest Growing Company</a>? If so, read on!  <br><br><b>Who Are We? </b><br>ClassifiedAds.com is one of the largest classified ads websites, with over 3 million monthly unique visitors. Based in downtown Bellevue, we\'re fast growing and we\'re continually profitable. We\'re a small startup but we\'re a major player in the online classifieds space. Our size enables us to be nimble and to do very exciting things when we smell opportunity. Our core company philosophy is to hire the best people possible, give them clear objectives, and let them flex their creative muscles without being micromanaged. <br><br><b>What\'s the Job?</b><br>You will join a world-class search marketing team responsible for creating, managing and growing PPC campaigns in Google AdWords and/or Microsoft AdCenter. You will manage a \"portfolio\" of campaigns across multiple categories, monitoring results daily and optimizing as necessary for revenue and profitability. You will utilize your search marketing experience to investigate, identify and resolve day-to-day campaign performance issues and opportunities, including adjusting bids, writing and testing ad copy, keyword expansion and landing page optimization. <br><br><b>Who are we looking for?</b><br>If you are web savvy, self-driven, comfortable in a fast-paced environment, have an analytical mind-set, and are willing to roll up your sleeves to get the job done, this is the ideal role for you. Specific required qualifications include: <br>&bull; Two+ years of hands-on experience with Google AdWords and/or Microsoft AdCenter, including building, optimizing and analyzing PPC campaigns. <br>&bull; Proven success in executing various bidding tactics to reach goals. <br>&bull; Proven success optimizing ad copy and landing pages for increased CTR, conversion rate and quality score. <br>&bull; Experience with large accounts would be an asset. <br>&bull; Self-directed and able to work independently with minimal direct supervision, but recognize the value of contributing in a team environment. <br>&bull; Strong communication and organizational skills. <br>&bull; Advanced knowledge of Excel.<br>&bull; Previous startup experience a plus. <br>&bull; Passion for search marketing and the Internet is a must!<br>&bull; Bachelor\'s degree. <br><br>If you\'re up for the challenge you should join us. This is a full-time position based in Bellevue. <br><br>Please submit a cover letter and resume to jobs AT classifiedads DOT com.',NULL,4,'2012-01-17',NULL,'2012-07-17',NULL,1),(5,'Senior Software Engineer - ClassifiedAds.com','Do you want to work on projects you have real control over? Do you like to be involved in technology and design choices? Do you want to join one of <a href=\"http://www.seattle20.com/startup-index.aspx\" rel=\"nofollow\">Seattle\'s top startups</a>, an <a href=\"http://www.inc.com/inc5000/profile/classifiedadscom\" rel=\"nofollow\">Inc 5000 Fastest Growing Company</a>? ClassifiedAds.com is looking for talented developers who are passionate about writing good code, solving complex problems and making an impact.\n\n<br><br><b>Who Are We?</b>\n<br>ClassifiedAds.com is one of the largest classified ads websites, with over 3 million monthly unique visitors. Based in downtown Bellevue, we\'re fast growing and we\'re continually profitable. We\'re a small startup - there are less than 20 of us - but we\'re a major player in the online classifieds space. Our size enables us to be nimble and to do very exciting things when we smell opportunity. We hire talented, motivated people and hand them big problems to solve.<br><br><b>What’s the Job?</b><br>We\'re looking for a developer experienced with open source technologies to work on both user-facing and internal systems. Reporting directly to the VP Engineering, you\'ll work as part of a small team and see your code ship in short development cycles. You must be comfortable with both designing and implementing good, clean solutions to difficult and interesting problems ranging from analytics to scalability to search.<br><br>You will often be in a position to choose the best tools for the job, including platforms and languages. The majority of our existing codebase is PHP, and we use Git for version control.<br><br>Our systems also include major components using HTML/CSS/Javascript with jQuery (of course!), PHP, Python, C, Bash, Awk, MySQL, Sphinx, and Memcached. Your experience with these or similar technologies is a plus.<br><br>Our developers choose their own workstations, including hardware, OS, and whatever else is needed to get the job done.<br><br><b>Who are we looking for?</b><br>&bull; Extensive experience with Linux and PHP.<br>&bull; Extensive experience with MySQL or similar relational databases.<br>&bull; Experience with Apache or other web server software.<br>&bull; Good understanding of web security.<br>&bull; Experience with additional languages such as Javascript/jQuery, Python, C, Bash, Awk, ... a plus.<br>&bull; Experience with the Unix toolset a plus.<br>&bull; Ability to identify and capitalize on opportunities. You won\'t always be coding to a spec.<br>&bull; Excellent communication skills, including ability to clearly document code, and to work effectively with a small team.<br>&bull; Strong background in math, statistics and analysis a plus.<br>&bull; Genuine interest in software development and other tech stuff is a must!<br>&bull; Previous startup experience a plus.<br><br>If you\'re up for the challenge you should join us. This is a full-time position based in downtown Bellevue.<br><br>Please submit a cover letter and resume to <b>jobs AT classifiedads DOT com</b>',NULL,4,'2012-01-05',NULL,'2012-07-05',NULL,1);
/*!40000 ALTER TABLE `Ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contacts`
--

DROP TABLE IF EXISTS `Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contacts` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(255) DEFAULT NULL,
  `ContactPhone` varchar(45) DEFAULT NULL,
  `ContactCity` varchar(255) DEFAULT NULL,
  `ContactZip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  KEY `idxContactName` (`ContactName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacts`
--

LOCK TABLES `Contacts` WRITE;
/*!40000 ALTER TABLE `Contacts` DISABLE KEYS */;
INSERT INTO `Contacts` VALUES (1,'Jim Nutt','425-555-1212','Sammamish','98075'),(2,'Fred Davis','425-444-1111','Bellevue','98075'),(3,'John Doe','503-555-1212','Tacoma','98041'),(4,'Hiring Manager',NULL,'Bellevue','98004');
/*!40000 ALTER TABLE `Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `AltText` varchar(255) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ImageID`),
  KEY `idx_Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,'10707783_TKjKAg.png','Sammamish Rambler',60,80,'images/'),(2,'10377918_4IEILQ.png','Honda Civic_1',60,80,'images/'),(3,'10377918_5PdxjQ.png','Honda Civic_2',60,80,'images/'),(4,'10377918_ClwIrg.png','Honda Civic_3',60,80,'images/'),(5,'10377918_XHy4eQ.png','Honda Civic_4',60,80,'images/'),(6,'classifiedads_small.png','Director of Search Engine Marketing',60,80,'images/'),(7,'classifiedads_small.png','Search Engine Manager',60,80,'images/');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdsJoinCategories`
--

DROP TABLE IF EXISTS `AdsJoinCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdsJoinCategories` (
  `AdsJoinCategoriesID` int(11) NOT NULL AUTO_INCREMENT,
  `AdsID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AdsJoinCategoriesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdsJoinCategories`
--

LOCK TABLES `AdsJoinCategories` WRITE;
/*!40000 ALTER TABLE `AdsJoinCategories` DISABLE KEYS */;
INSERT INTO `AdsJoinCategories` VALUES (1,1,14),(2,2,26),(3,3,46),(4,4,46),(5,5,43);
/*!40000 ALTER TABLE `AdsJoinCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdsJoinImages`
--

DROP TABLE IF EXISTS `AdsJoinImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdsJoinImages` (
  `AdsJoinImagesID` int(11) NOT NULL AUTO_INCREMENT,
  `AdsID` int(11) DEFAULT NULL,
  `ImageID` int(11) DEFAULT NULL,
  `Thumbnail` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`AdsJoinImagesID`),
  KEY `fk_AdsID` (`AdsID`),
  KEY `fk_ImageID` (`ImageID`),
  CONSTRAINT `fk_AdsID` FOREIGN KEY (`AdsID`) REFERENCES `Ads` (`AdsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ImageID` FOREIGN KEY (`ImageID`) REFERENCES `Images` (`ImageID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdsJoinImages`
--

LOCK TABLES `AdsJoinImages` WRITE;
/*!40000 ALTER TABLE `AdsJoinImages` DISABLE KEYS */;
INSERT INTO `AdsJoinImages` VALUES (1,1,1,1),(2,2,2,1),(6,3,6,1),(7,4,7,1),(8,5,6,1);
/*!40000 ALTER TABLE `AdsJoinImages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) DEFAULT NULL,
  `ParentCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`),
  KEY `idxCategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Root',1),(2,'Real Estate',1),(11,'Commercial Real Estate',2),(12,'Condos For Sale',2),(13,'Farms & Ranches',2),(14,'Homes For Sale',2),(15,'Land For Sale',2),(16,'Manufactured Homes',2),(17,'Other Real Estate',2),(18,'Real Estate Services',2),(19,'Time Shares',2),(20,'Townhomes For Sale',2),(21,'Vacation Homes',2),(22,'Vehicles',1),(23,'Aircraft',22),(24,'Automotive Items & Parts',22),(25,'Boats & Watercraft',22),(26,'Cars',22),(27,'Classic Cars',22),(28,'Commercial Trucks & Tractor Trailers',22),(29,'Motorcycles',22),(30,'Off Road Vehicles',22),(31,'RV & Motor Homes',22),(32,'SUVs',22),(33,'Trucks',22),(34,'Utility & Work Trailers',22),(35,'Vans',22),(36,'Vehicles Wanted',22),(37,'Jobs & Employment',1),(38,'Accounting & Bookkeeping Jobs',37),(39,'Business Opportunities',37),(40,'Cleaning Jobs',37),(41,'Contruction Work',37),(42,'Creative Jobs',37),(43,'IT Jobs',37),(44,'Labor Jobs',37),(45,'Management Jobs',37),(46,'Marketing Jobs',37),(47,'Medical Jobs',37),(48,'Office Jobs',37),(49,'Other Jobs',37),(50,'People Seeking Jobs',37),(51,'Restaurant Jobs',37),(52,'Retail Jobs',37),(53,'Sales Jobs',37),(54,'Security Jobs',37),(55,'Skillled Trade Jobs',37),(56,'Transportation Jobs',37);
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `LocationCountry` varchar(255) DEFAULT NULL,
  `LocationState` varchar(255) DEFAULT NULL,
  `LocationArea` varchar(255) DEFAULT NULL,
  `LocationZip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  KEY `idx_Country` (`LocationCountry`),
  KEY `idx_State` (`LocationState`),
  KEY `idx_Area` (`LocationArea`),
  KEY `idx_Zip` (`LocationZip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'USA','Washington','Seattle: Eastside - Bellevue','98075'),(2,'USA','Washington','Tacoma','98401');
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ClassifiedAds'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `GetAd`(AdsID int)
BEGIN

SELECT Ads.AdsID, Ads.Title, Ads.Description, Ads.Price, Ads.DatePosted, Ads.LastUpdated, Ads.ExpirationDate, Images.Name, Images.Path, ContactName, ContactPhone, ContactCity, ContactZip
FROM Ads
JOIN AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
JOIN Images ON AdsJoinImages.ImageID = Images.ImageID
JOIN Contacts ON Ads.ContactID = Contacts.ContactID
WHERE 
    Ads.AdsID = AdsID

AND 
    AdsJoinImages.Thumbnail =1;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `GetAds`()
BEGIN

SELECT Ads.AdsID, Ads.Title, Ads.Description, Images.Path, Images.Name
FROM Ads
JOIN AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
JOIN Images ON AdsJoinImages.ImageID = Images.ImageID
WHERE AdsJoinImages.Thumbnail =1;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAdsbyCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `GetAdsbyCategory`(CategoryId int)
BEGIN

-- is this a parent category? (i.e. it's parent is root -1)
-- if so we are going to get all the jobs for the subcategories
Declare PCatID int;

SELECT ParentCategoryID INTO PCatID FROM ClassifiedAds.Categories Categories
WHERE Categories.CategoryID = CategoryId;

-- SELECT PCatID;

IF (PCatID = 1) THEN
    -- get all the ads where the parentcategoryid = CategoryID
    SELECT Ads.AdsID, Ads.Title, Ads.Description, Images.Path, Images.Name
    FROM Ads
    JOIN AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
    JOIN Images ON AdsJoinImages.ImageID = Images.ImageID
    JOIN AdsJoinCategories ON AdsJoinCategories.AdsID = Ads.AdsID
    JOIN Categories ON Categories.CategoryID = AdsJoinCategories.CategoryID
    WHERE 
        Categories.ParentCategoryID = CategoryId
    AND 
        AdsJoinImages.Thumbnail =1;

ELSE
    -- other wise we get all the ads for the subcategory
    SELECT Ads.AdsID, Ads.Title, Ads.Description, Images.Path, Images.Name
    FROM Ads
    JOIN AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
    JOIN Images ON AdsJoinImages.ImageID = Images.ImageID
    JOIN AdsJoinCategories ON AdsJoinCategories.AdsID = Ads.AdsID
    WHERE 
        AdsJoinCategories.CategoryId = CategoryId
    AND      
        AdsJoinImages.Thumbnail =1;
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchAds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `SearchAds`(Searchfor varchar(255),ParentCategoryID int)
BEGIN

-- is this a parent category? (i.e. it's parent is root -1)
-- if so we are going to get all the jobs for the subcategories
-- Declare PCatID int;
Declare Pattern varchar(255);

Set Pattern = CONCAT('%',Searchfor,'%');

-- SELECT ParentCategoryID INTO PCatID FROM ClassifiedAds.Categories Categories
-- WHERE Categories.CategoryID = CategoryId;

-- SELECT PCatID;

IF (ParentCategoryID = 1) THEN
    -- If we are searching all categories then no need to filter on them
    SELECT Ads.AdsID, Ads.Title, Ads.Description, Images.Path, Images.Name
    FROM ClassifiedAds.Ads Ads
    JOIN ClassifiedAds.AdsJoinImages AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
    JOIN ClassifiedAds.Images Images ON AdsJoinImages.ImageID = Images.ImageID
    JOIN ClassifiedAds.AdsJoinCategories AdsJoinCategories ON AdsJoinCategories.AdsID = Ads.AdsID
    WHERE 
        AdsJoinImages.Thumbnail =1
    AND 
        Ads.Title LIKE Pattern OR Ads.Description LIKE Pattern;

ELSE
    -- we are passed a categoryid so filter on it, and get all the results for the child
    -- categories
    SELECT Ads.AdsID, Ads.Title, Ads.Description, Images.Path, Images.Name
    FROM ClassifiedAds.Ads Ads
    JOIN ClassifiedAds.AdsJoinImages AdsJoinImages ON Ads.AdsID = AdsJoinImages.AdsID
    JOIN ClassifiedAds.Images Images ON AdsJoinImages.ImageID = Images.ImageID
    JOIN ClassifiedAds.AdsJoinCategories AdsJoinCategories ON AdsJoinCategories.AdsID = Ads.AdsID
    JOIN ClassifiedAds.Categories Categories ON Categories.CategoryID = AdsJoinCategories.CategoryID
    WHERE 
        Categories.ParentCategoryID = ParentCategoryId
    AND 
        AdsJoinImages.Thumbnail =1
    AND 
        Ads.Title LIKE Pattern OR Ads.Description LIKE Pattern;


END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-02 14:37:52
