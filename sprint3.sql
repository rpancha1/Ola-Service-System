-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: fall2018dbmullang.cpy1xlmanckc.us-east-2.rds.amazonaws.com    Database: OlaService
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `Car`
--

DROP TABLE IF EXISTS `Car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Car` (
  `car_number` varchar(255) NOT NULL,
  `car_model` varchar(50) NOT NULL,
  `car_color` varchar(30) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `owner_id` varchar(255) NOT NULL,
  PRIMARY KEY (`car_number`),
  KEY `car_type` (`car_type`),
  KEY `driver_id` (`driver_id`),
  KEY `owner_id_idx` (`owner_id`),
  CONSTRAINT `car_type` FOREIGN KEY (`car_type`) REFERENCES `RateChart` (`car_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `CarOwner` (`owner_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car`
--

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;
INSERT INTO `Car` VALUES ('CAL0000','2500','Yellow','Hatchback','wtooland','acouvertd'),('CAL1111','Legend','Teal','Hatchback','fcasbolte','acouvertd'),('CAL1234','Mazda3','Crimson','Premium','lrhymesb','acouvertd'),('CAL2222','Suburban 2500','Turquoise','Premium','ajardeinf','oblannf'),('CAL2728','Dakota','Goldenrod','Premium','nstorton5','oblannf'),('CAL3333','9000','Crimson','Hatchback','ybasireg','oblannf'),('CAL4444','Silverado 2500','Yellow','Premium','trosenauh','oblannf'),('CAL8910','S-Class','Maroon','Premium','epellitt6','nhabbon6'),('CLT1043','Town Car','Teal','Premium','kpitney8','rdrane8'),('CLT1299','Altima','Orange','Premium','hfealey9','mrozalski9'),('CLT2639','Quattro','Teal','suv','nrubenczyk7','rrenshaw7'),('NYC2010','3 Series','Maroon','suv','ichazerand0','qcranmer0'),('NYC2011','MX-6','Aquamarine','Hatchback','gpadwick1','mpate1'),('NYC2012','G35','Indigo','suv','cmosedall2','jcunniffe2'),('NYC3274','GT-R','Purple','Premium','ebraync','mcomelloc'),('NYC7777','Sequoia','Goldenrod','Premium','mspellwortha','fdrancea'),('NYC7828','Fox','Maroon','suv','baugie3','lwhiteley3'),('NYC8392','SL-Class','Green','Premium','nbeeby4','jdoulden4'),('NYC9998','Focus','Indigo','Hatchback','pgerratyj','ccamseyj'),('NYC9999','Intrepid','Teal','Premium','mlocketi','mbardi');
/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CarOwner`
--

DROP TABLE IF EXISTS `CarOwner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CarOwner` (
  `owner_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CarOwner`
--

LOCK TABLES `CarOwner` WRITE;
/*!40000 ALTER TABLE `CarOwner` DISABLE KEYS */;
INSERT INTO `CarOwner` VALUES ('abusm','Abbye','Bus','ynjOarID','Female','1 Vermont Drive','59099 Lukken Junction','Omaha','Nebraska',68105),('acicuttol','Adele','Cicutto','bTjPeG4ng','Female','38 Dennis Plaza','6866 Londonderry Avenue','Spartanburg','South Carolina',29319),('acouvertd','Agustin','Couvert','0zIhwzx','Male','9 Garrison Plaza','4250 Forest Court','Garland','Texas',75049),('agradwellx','Andria','Gradwell','pWyR73uiJ','Female','65 Havey Circle','0718 Northridge Hill','Beaufort','South Carolina',29905),('amadge2b','Angel','Madge','Hh7mqJ0h','Male','3124 Hintze Point','32667 Boyd Terrace','Denver','Colorado',80249),('amccreary28','Allison','McCreary','xIC5SF9','Female','1 Utah Place','694 Daystar Point','Melbourne','Florida',32919),('amotto1w','Alexandrina','Motto','AvhaKRg','Female','16 Dorton Junction','7 Cottonwood Court','Erie','Pennsylvania',16534),('arhead2l','Amelina','Rhead','hv9tlWTQty','Female','50 Grim Trail','75215 Cascade Point','Sacramento','California',94286),('astenningsn','Ambrosi','Stennings','TUL6OB3guDTF','Male','129 Mandrake Avenue','381 Hanover Center','Toledo','Ohio',43666),('bbockett11','Blakelee','Bockett','6sOUrEd4l','Female','8 Porter Point','4706 Main Junction','Fayetteville','North Carolina',28305),('belesh','Brandise','Eles','G0UdhtSt95S','Female','814 Hermina Plaza','109 Everett Circle','Oklahoma City','Oklahoma',73190),('bespino1v','Blythe','Espino','vPDc3kOSLVC','Female','2 Tony Street','921 Anzinger Drive','Dallas','Texas',75265),('bhampeb','Brooks','Hampe','Po243nOsZ8','Male','54 Brentwood Drive','0 Roxbury Point','Lancaster','Pennsylvania',17605),('bmacmillan1d','Blancha','MacMillan','CRAYuyeV','Female','2081 Kingsford Parkway','28748 Clemons Park','Gulfport','Mississippi',39505),('cbrazer1x','Clive','Brazer','6jJWVyiUw','Male','0163 Derek Plaza','94 Bonner Trail','Mobile','Alabama',36605),('ccamseyj','Christin','Camsey','c1iyxrQfhrZ1','Female','8 Saint Paul Trail','5522 Shasta Plaza','Evansville','Indiana',47732),('cfishlyz','Caro','Fishly','y3PhYppHNaX','Female','0231 Hoard Way','2 Glendale Park','Aiken','South Carolina',29805),('cheustice1p','Carlie','Heustice','nohv3oz9Ov5','Male','74011 Paget Trail','928 Derek Drive','Dearborn','Michigan',48126),('ckershow25','Cam','Kershow','JxMjA5mjVI','Female','1421 Messerschmidt Road','2 School Circle','Austin','Texas',78710),('crappa2q','Corrine','Rappa','bqvVkY9YocAU','Female','68 Merry Street','014 Granby Plaza','Cleveland','Ohio',44197),('cspieck2d','Clayborn','Spieck','PvpfX2iD','Male','66734 Sullivan Hill','2 Carpenter Place','Vancouver','Washington',98687),('cwistancek','Cassaundra','Wistance','oJJCbMYnG','Female','9023 Loomis Parkway','02 Golf View Pass','Berkeley','California',94705),('ddalligans','Dorthea','Dalligan','iVlppT2YR','Female','810 Northwestern Drive','23800 Merrick Street','North Hollywood','California',91616),('dfantone2g','Dedie','Fantone','UJhHPz','Female','837 Bartillon Avenue','1 Veith Drive','Idaho Falls','Idaho',83405),('dhoy1k','Darcie','Hoy','8AQoT98vO','Female','509 Golf View Avenue','8 Messerschmidt Avenue','New York City','New York',10165),('dnewens5','Dorice','Newens','CCyQVH','Female','63 Eastlawn Trail','6 Larry Point','Trenton','New Jersey',8650),('dsiege26','Domingo','Siege','jEw0oFOrzXr3','Male','453 Pawling Plaza','2 Jenifer Plaza','Miami','Florida',33153),('ebohje15','Euphemia','Bohje','RQGIYMrrRva','Female','825 Killdeer Plaza','82 Warrior Alley','Salt Lake City','Utah',84110),('ecoggill2n','Ellswerth','Coggill','ufWrVGwz','Male','71523 Pearson Street','8560 Cottonwood Point','Duluth','Georgia',30195),('eeingerfield2e','Elsi','Eingerfield','CTMK9qaM','Female','79987 Bay Hill','76973 Nova Center','Kansas City','Missouri',64160),('estyant20','Edwin','Styant','9jqS4TS','Male','0 Jenna Crossing','5 Melody Trail','Chicago','Illinois',60614),('faylmero','Ford','Aylmer','CfgwFjFcHnn','Male','96 Milwaukee Center','93408 Eastwood Place','Washington','District of Columbia',20205),('fdrancea','Ferdie','Drance','NZ6H3qr','Male','17 Lukken Plaza','85 Schmedeman Parkway','Indianapolis','Indiana',46254),('gallcott1i','Giacomo','Allcott','Le0j0AzfPLJ','Male','45 Fair Oaks Plaza','24 Delladonna Crossing','Longview','Texas',75605),('gcapner10','Garv','Capner','T4pAqH2cz','Male','1 Killdeer Parkway','45 Mitchell Drive','Raleigh','North Carolina',27635),('gnichep','Garrard','Niche','dUTfNHPZS','Male','3468 Briar Crest Way','0 Novick Crossing','Phoenix','Arizona',85035),('gpeaker1f','Gerrie','Peaker','cOC6lMgBgrGP','Male','507 Sachs Trail','635 Bayside Alley','Houston','Texas',77005),('hdowne19','Hedwiga','Downe','7zJ9KkBHom','Female','5387 Alpine Lane','7338 Manufacturers Avenue','Athens','Georgia',30605),('ileebetter21','Izaak','Leebetter','qasxRLFLZ','Male','9241 Darwin Circle','835 Buhler Lane','Salt Lake City','Utah',84135),('imacneill1h','Ivor','MacNeill','uQ0tFCT','Male','03 Ridge Oak Pass','16155 Kim Park','New Haven','Connecticut',6510),('jantonucci18','Jeffie','Antonucci','26AxzK','Male','8559 Montana Alley','1117 West Crossing','Ridgely','Maryland',21684),('jcunniffe2','Jorey','Cunniffe','CTWUUffssoyQ','Female','5216 Hooker Plaza','41082 Clemons Parkway','Spokane','Washington',99205),('jdoulden4','Jabez','Doulden','mPc6Utw','Male','27 Orin Parkway','5 Schiller Lane','Chattanooga','Tennessee',37416),('jfrancesconi16','Julita','Francesconi','sEKP6o5L3','Female','85 Elgar Drive','7783 Lien Place','Austin','Texas',78778),('jsouthway12','Jeannine','Southway','2E9mjI','Female','6471 Daystar Pass','1927 Oak Junction','Madison','Wisconsin',53785),('kdiegan2m','Kittie','Diegan','npxjRu','Female','5 Mifflin Park','34 Magdeline Circle','Hollywood','Florida',33028),('kdoyly29','Kimberli','D\'Oyly','vTrGdJTjyk','Female','8809 American Park','83 Hermina Hill','Oklahoma City','Oklahoma',73109),('kedards1q','Katherine','Edards','uSN42NMSRvg','Female','7 Vera Crossing','37917 Welch Circle','Houston','Texas',77212),('kferguson1r','Kiersten','Ferguson','Eu8xyMPamll','Female','89098 Hintze Court','61185 Badeau Park','Boca Raton','Florida',33499),('kmelling1y','Kelcie','Melling','1yEhcLemSXz','Female','50224 Grasskamp Junction','2 Commercial Avenue','Huntington','West Virginia',25770),('ksantev','Kermie','Sante','uBnRHHSMv4Me','Male','7907 Hoepker Avenue','2699 Arizona Alley','New Haven','Connecticut',6520),('kspleving2f','Kip','Spleving','254YMrfAS','Female','35 Tomscot Avenue','921 Darwin Park','Newark','Delaware',19725),('kveldstra1a','Kimmi','Veldstra','XbsxFHFG','Female','958 Roxbury Way','411 Brentwood Point','Tacoma','Washington',98481),('lbagniuk2a','Laryssa','Bagniuk','GNh1LWtCO','Female','654 Jenifer Junction','433 Mcbride Center','Jacksonville','Florida',32209),('ldonnelt','Larry','Donnel','LJpPfGm','Male','0389 Vahlen Court','0 Fremont Parkway','Berkeley','California',94705),('lfelten1o','Latrena','Felten','kEYvRK','Female','2108 Sundown Junction','125 Transport Way','Fort Wayne','Indiana',46852),('lharmer1t','Leopold','Harmer','JEQiBH','Male','9598 Hansons Terrace','7322 Oak Valley Point','Garland','Texas',75044),('lrenzullo2j','Lolly','Renzullo','Fryc5L1MqTd','Female','2911 Sutherland Lane','97750 Menomonie Lane','Los Angeles','California',90101),('lwhiteley3','Lauren','Whiteley','lrt0e8Wev2','Female','00 Monterey Parkway','13889 Lindbergh Drive','Minneapolis','Minnesota',55446),('mbardi','Mozes','Bard','76BmC2gJnUtI','Male','66 American Ash Center','2 Shelley Parkway','Wilmington','Delaware',19892),('mbaszkiewicz13','Marguerite','Baszkiewicz','wUXJzuGCEYc8','Female','16 Veith Road','20 Sommers Lane','Hartford','Connecticut',6140),('mcawsby1m','Mordy','Cawsby','gGvDVxaF31rC','Male','52297 Manitowish Lane','6037 Reinke Street','Fort Lauderdale','Florida',33330),('mcloake1l','Mychal','Cloake','8XybGOKdEi','Male','57649 Anthes Parkway','35754 Twin Pines Park','Los Angeles','California',90076),('mcomelloc','Moss','Comello','C4H6fZv','Male','82804 Laurel Circle','99 Schmedeman Point','Everett','Washington',98206),('mdambrogio1z','Mariana','D\'Ambrogio','YZ3EYw','Female','079 Summit Street','2 Morningstar Crossing','Wichita Falls','Texas',76305),('mlabram23','Major','Labram','RQdfokjvfrCH','Male','83 Lillian Center','1 Tennessee Parkway','Grand Rapids','Michigan',49510),('mmassard24','Meggy','Massard','OMr1waPMBKD','Female','72616 Bunker Hill Plaza','26 Mockingbird Hill','Northridge','California',91328),('mpate1','Maureen','Pate','oUn9uE','Female','6 Bellgrove Parkway','827 Jenna Trail','Modesto','California',95354),('mrozalski9','Mead','Rozalski','VHbwqaQJBB68','Female','22140 Russell Plaza','8 Tony Lane','San Rafael','California',94913),('mruprecht2k','Marshal','Ruprecht','Oz4gnpc','Male','99 Hayes Plaza','2 Hoffman Circle','Dayton','Ohio',45414),('mszachniewicz1g','Matthus','Szachniewicz','8xvgwf4bAlw','Male','3014 Morning Pass','56 Ronald Regan Road','Hartford','Connecticut',6183),('ncordes1j','Noak','Cordes','NNzQqBkvOVto','Male','21968 Fairview Point','58794 Fremont Trail','Bethesda','Maryland',20892),('nhabbon6','Nell','Habbon','UKYNRX','Female','579 Sherman Crossing','696 Sullivan Trail','New Castle','Pennsylvania',16107),('npedrielli1b','Nadeen','Pedrielli','KIPiPBv','Female','1 Rockefeller Alley','89 Fairview Alley','Houston','Texas',77065),('npilbeam1u','Noe','Pilbeam','fcZObQALj6YW','Male','8282 Namekagon Street','4227 Spohn Hill','Denver','Colorado',80249),('nskiggsq','Nanny','Skiggs','dKAMmLS9VIL6','Female','949 Susan Circle','14589 Sage Terrace','Tallahassee','Florida',32314),('oblannf','Oliver','Blann','qmdaInd0RiVp','Male','489 Porter Alley','8 Ohio Court','Panama City','Florida',32412),('odilland17','Odilia','Dilland','A0uP7pDmssS','Female','5 Gulseth Court','8980 Sauthoff Park','Nashville','Tennessee',37205),('oknibbs2c','Oberon','Knibbs','xCxsZ4','Male','08994 Straubel Alley','05 Prairieview Way','Orlando','Florida',32885),('psawdene','Philippe','Sawden','Dpb9JXocmz7','Female','3597 Moland Terrace','11 Weeping Birch Road','New York City','New York',10110),('pwilfingery','Pascale','Wilfinger','hL5irqmoBxJ','Male','717 Barby Lane','699 Ronald Regan Point','Myrtle Beach','South Carolina',29579),('qcranmer0','Queenie','Cranmer','BcEbL3wDY','Female','74 Arrowood Terrace','963 Vahlen Street','Houston','Texas',77240),('rbeswetherickr','Randa','Beswetherick','1N1CFJksqpOp','Female','7 North Point','34 Moose Center','Oakland','California',94622),('rcanton22','Roda','Canton','AiNEeo9t0','Female','863 Quincy Avenue','7 Columbus Center','Bronx','New York',10459),('rchamp1e','Renell','Champ','zOia2jSxf4K','Female','7 Clemons Place','329 Delaware Crossing','San Diego','California',92160),('rdrane8','Rab','Drane','j92B9s','Male','54 Portage Court','8 Arizona Road','Cincinnati','Ohio',45208),('rfarishu','Reena','Farish','Z3uxqaV','Female','9797 Hallows Junction','2 Debra Terrace','Salinas','California',93907),('rrenshaw7','Roda','Renshaw','8ZnIReWpYu','Female','706 Mifflin Parkway','7 Eagan Circle','Orlando','Florida',32854),('sapdell1n','Sheffy','Apdell','qjftie1nm','Male','2899 Butterfield Circle','50701 Johnson Plaza','Corpus Christi','Texas',78405),('sbris1s','Serena','Bris','r1yO8NTSg','Female','18401 Graceland Street','15 Bunker Hill Court','Youngstown','Ohio',44555),('sgotmann2i','Sayre','Gotmann','o40cKqSN5Nk','Male','519 Oneill Place','52621 Maple Plaza','San Diego','California',92165),('tdudney14','Tricia','Dudney','yYml7JQ519','Female','81 Pond Court','5366 Saint Paul Court','Spartanburg','South Carolina',29305),('thimsworthg','Teodoor','Himsworth','rDwBdyrkcV','Male','77 Upham Crossing','175 Leroy Parkway','Jackson','Tennessee',38308),('tmatthews27','Thia','Matthews','a5BN0xOsGHvO','Female','5 Oneill Court','0907 Kipling Alley','Aurora','Colorado',80045),('tpotzold2o','Theo','Potzold','N5A4QR','Female','3799 2nd Street','822 Miller Avenue','Kalamazoo','Michigan',49048),('vburkinw','Vincent','Burkin','6vlliQPGb','Male','366 Karstens Park','4 Blue Bill Park Terrace','Lancaster','Pennsylvania',17622),('voxer2r','Virgie','Oxer','2AosA9M','Male','9 Valley Edge Court','725 Hudson Junction','Mobile','Alabama',36689),('vtissington1c','Virgil','Tissington','nlbncGMdsU9','Male','04 Dexter Lane','8068 Havey Trail','Lubbock','Texas',79491),('wdible2p','Wanda','Dible','7PTjs8F','Female','653 Kinsman Center','98 Summit Alley','Wilmington','North Carolina',28405),('zstollen2h','Zackariah','Stollen','4DiuB15ziMIV','Male','653 Kinsman Center','98 Summit Alley','Wilmington','North Carolina',28405);
/*!40000 ALTER TABLE `CarOwner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customer_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('abambe','Abey','Bamb','EFWfEQdTSH','abambe@bloomberg.com','+66 517 988 1','2000-02-03','Male'),('ahowchin19','Anna','Howchin','9o7UYD','ahowchin19@1688.com','+7 605 977 33','1972-10-15','Female'),('alearmount20','Angelica','Learmount','gfHqN7D5ruO','alearmount20@google.com.au','+86 559 702 5','1975-11-21','Female'),('askase1w','Annmaria','Skase','Q64OUf8uS7z','askase1w@jiathis.com','+351 125 587 ','1983-06-12','Female'),('avonbrookh','Arne','Von Brook','ooB9vL','avonbrookh@cloudflare.com','+86 976 481 9','1986-08-21','Male'),('babrahamson1z','Branden','Abrahamson','b7cOHLqn','babrahamson1z@xrea.com','+235 849 491 ','1999-01-03','Male'),('bchamg','Brittan','Cham','WjChRH5jn9l','bchamg@facebook.com','+7 163 502 96','1973-11-10','Female'),('BDS','dbs','abc','4IYrHoSN3rt12b8OxWslEA==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('blapping2c','Birdie','Lapping','B8yGANZz5wmz','blapping2c@usgs.gov','+216 915 848 ','2007-05-02','Female'),('bmatevosian29','Bartel','Matevosian','thlDztTC','bmatevosian29@oakley.com','+93 854 850 5','1992-08-28','Male'),('btumulty2h','Bret','Tumulty','PM3wrk','btumulty2h@cargocollective.com','+1 734 532 95','1984-05-22','Male'),('bwicklingp','Bone','Wickling','XWcEm8S','bwicklingp@intel.com','+850 916 981 ','2003-05-22','Male'),('cbarfordj','Caroljean','Barford','Ld6fudTQczYZ','cbarfordj@a8.net','+86 369 336 8','2003-03-03','Female'),('ccrabb2g','Corabella','Crabb','YyFPpH','ccrabb2g@walmart.com','+7 867 151 38','1988-11-05','Female'),('cingamells1e','Codie','Ingamells','0WgZRWOt30Tk','cingamells1e@sourceforge.net','+20 591 570 5','2008-12-18','Female'),('cklageman1k','Clemente','Klageman','tB7LvB7','cklageman1k@ucla.edu','+62 398 630 8','1994-05-04','Male'),('cmacgregor2k','Claudetta','MacGregor','0SOKEA','cmacgregor2k@hud.gov','+49 725 225 3','1971-11-05','Female'),('cpendelly','Conni','Pendell','KbGaO9Vc','cpendelly@howstuffworks.com','+86 630 413 4','1977-04-19','Female'),('cvandecastelel','Consalve','Van de Castele','w4OJ5B','cvandecastelel@macromedia.com','+30 751 895 6','1979-01-02','Male'),('dbulloch1u','Dell','Bulloch','N1PyB4YHnjqk','dbulloch1u@aboutads.info','+967 318 132 ','1970-04-05','Male'),('dhartright8','Dorris','Hartright','2Sq5YW1fT0gp','dhartright8@pagesperso-orange.fr','+86 338 800 9','1999-12-26','Female'),('djouannin2n','Demetri','Jouannin','yQqZf6gS7IEl','djouannin2n@va.gov','+81 362 993 8','2000-06-09','Male'),('dkemwall0','Drusilla','Kemwall','7uUk5yHUAKZm','dkemwall0@npr.org','+992 187 219 ','1984-05-04','Female'),('dmcvie26','Dannie','McVie','5Jn0ppbnO','dmcvie26@bloglines.com','+1 789 413 10','1981-04-10','Female'),('dmolnarb','Deeyn','Molnar','rOpab11php','dmolnarb@privacy.gov.au','+86 586 296 9','1995-07-13','Female'),('dteffrey2o','Dorothea','Teffrey','W9Pedyvdg','dteffrey2o@blogger.com','+46 848 762 9','1976-07-05','Female'),('dutridge2f','Daile','Utridge','6qwFra','dutridge2f@blog.com','+255 227 545 ','1999-07-26','Female'),('dwhellams3','Den','Whellams','LOYNMbNx5','dwhellams3@istockphoto.com','+351 702 822 ','1980-04-13','Male'),('eambresin17','Erhard','Ambresin','JA6cAG6DyUft','eambresin17@va.gov','+86 788 738 7','2007-06-20','Male'),('equincey1r','Ethelyn','Quincey','cozmU8','equincey1r@mozilla.org','+62 836 851 3','2005-03-25','Female'),('fbrolechan5','Fritz','Brolechan','pwBnZ50','fbrolechan5@drupal.org','+86 758 577 2','1990-10-13','Male'),('fdockrell9','Franklin','Dockrell','87RPyU','fdockrell9@sakura.ne.jp','+1 814 755 19','2003-09-04','Male'),('fmcdowall22','Forster','McDowall','k2My3mG','fmcdowall22@w3.org','+48 994 692 1','2006-11-13','Male'),('framard1b','Fiann','Ramard','6eBB9MTkDBJ','framard1b@livejournal.com','+62 352 704 9','1980-09-28','Female'),('fwoolway23','Francklin','Woolway','wK0SLB9zke','fwoolway23@slashdot.org','+86 915 413 3','1979-05-27','Male'),('gattrilli','Giulia','Attrill','otBSAF','gattrilli@eventbrite.com','+92 521 208 3','1970-11-12','Female'),('gblumer2d','Genovera','Blumer','uFYoUwZUJ','gblumer2d@google.pl','+54 509 639 6','1991-03-01','Female'),('gepgraven','Gaile','Epgrave','2sqM17DTRD','gepgraven@tiny.cc','+47 257 184 3','2010-07-18','Male'),('ggurgeq','Georgine','Gurge','WpPfQ31mZ','ggurgeq@aboutads.info','+1 441 128 08','1990-03-12','Female'),('gingle1x','Gordon','Ingle','keUvD1p','gingle1x@sohu.com','+86 861 322 8','2003-05-02','Male'),('gjedrzejewicz1c','Giorgio','Jedrzejewicz','1iEWM6Df9W','gjedrzejewicz1c@ted.com','+62 724 777 0','1971-05-13','Male'),('gmaccolganv','Griz','MacColgan','SdgauXEL6a1','gmaccolganv@omniture.com','+46 572 984 9','1980-07-21','Male'),('gpinck7','Gill','Pinck','3dTnjS','gpinck7@cbslocal.com','+374 530 522 ','1983-10-21','Male'),('gwhiskerd2m','Gannon','Whiskerd','fWPXPsT4','gwhiskerd2m@kickstarter.com','+51 946 740 3','1973-07-27','Male'),('hbaythorp1i','Hayden','Baythorp','kD98HP','hbaythorp1i@trellian.com','+381 386 740 ','1982-07-27','Male'),('hvondraceka','Hyman','Vondracek','CU9kp3o8','hvondraceka@com.com','+62 727 931 5','1983-08-03','Male'),('imalia15','Ikey','Malia','TkVFjt','imalia15@adobe.com','+261 446 172 ','1981-02-02','Male'),('jcarrivick1n','Jayne','Carrivick','fh9MUzxz','jcarrivick1n@pcworld.com','+86 823 788 2','1973-12-10','Female'),('jdabs25','Jasmina','Dabs','r5uyEg','jdabs25@state.gov','+81 917 975 9','2004-12-07','Female'),('jdorning1a','Jen','Dorning','zjYOqGA','jdorning1a@skype.com','+63 498 872 9','1970-08-23','Female'),('jpaddingdon1g','Justus','Paddingdon','GdDzi5FRA','jpaddingdon1g@uiuc.edu','+63 794 636 2','1988-02-03','Male'),('jsantorini28','Jacquette','Santorini','WBeT46A1ET','jsantorini28@4shared.com','+86 729 374 0','1977-03-17','Female'),('kbarzen4','Kettie','Barzen','Chh0mhiU101Z','kbarzen4@blogspot.com','+95 937 411 9','1982-10-09','Female'),('kdamrell2p','Katey','Damrell','riRJKbVqy','kdamrell2p@google.com.hk','+212 351 538 ','1989-02-24','Female'),('kfeldhammer1l','Krystalle','Feldhammer','psrAFD','kfeldhammer1l@jimdo.com','+62 409 464 3','1973-07-08','Female'),('klepine1o','Kissiah','Le Pine','FetXA88d','klepine1o@toplist.cz','+420 131 697 ','1993-02-25','Female'),('ktolan1s','Kayley','Tolan','v0sC6C','ktolan1s@github.io','+54 966 298 0','1985-05-09','Female'),('kvenarto','Karina','Venart','xAlPbXIf','kvenarto@blinklist.com','+225 725 489 ','2005-12-24','Female'),('kyorstonm','Kara-lynn','Yorston','bwP7c72e','kyorstonm@intel.com','+502 312 962 ','1982-04-05','Female'),('lbeach2l','Laney','Beach','D8a3xr','lbeach2l@fda.gov','+1 202 869 98','2001-05-08','Female'),('lbumpus2i','Leontine','Bumpus','8qJahk','lbumpus2i@tripod.com','+976 570 433 ','1983-04-13','Female'),('ljoannic16','Leonelle','Joannic','LXUPJEhA','ljoannic16@pagesperso-orange.fr','+46 229 213 3','1981-09-05','Female'),('madcock18','Mendie','Adcock','ZlGdYT8ICOv','madcock18@typepad.com','+86 304 946 9','1979-03-25','Male'),('mballes','Marcello','Balle','UwwfcXoH','mballes@skype.com','+86 674 334 1','2010-08-15','Male'),('mcreekd','Millard','Creek','sB4DwvhMk3DM','mcreekd@netscape.com','+381 392 338 ','2005-08-09','Male'),('mdanser1f','Maddy','Danser','KoH6E1Lcl','mdanser1f@tamu.edu','+420 712 667 ','2005-10-18','Male'),('mfifootf','Minerva','Fifoot','ofSe1kZkOvT','mfifootf@ucoz.ru','+62 427 452 5','2004-07-03','Female'),('mhelmkek','Miof mela','Helmke','LCx2DFVUfqa','mhelmkek@istockphoto.com','+46 791 951 3','1976-12-22','Female'),('mhuncote1t','Myra','Huncote','PLB2x4b2Foa1','mhuncote1t@sina.com.cn','+63 133 524 4','2003-04-25','Female'),('mpargeter21','Merridie','Pargeter','YfRnalXt','mpargeter21@meetup.com','+86 991 549 7','1996-05-14','Female'),('mrothery1j','Marleah','Rothery','JZA1f5B85y','mrothery1j@squarespace.com','+93 874 180 2','1996-08-29','Female'),('msnoxall1','Minny','Snoxall','Iofo7x2XdiIB','msnoxall1@mashable.com','+55 410 699 4','1983-06-28','Female'),('mtattoo1v','Markus','Tattoo','yf0UQaSSN','mtattoo1v@flickr.com','+86 202 496 0','1979-11-25','Male'),('npabst6','Nicolette','Pabst','6e7AsRk9QdJ','npabst6@photobucket.com','+86 593 238 6','1980-11-25','Female'),('oromayn2r','Osborn','Romayn','EOv6z941mB','oromayn2r@parallels.com','+63 243 955 4','2006-03-10','Male'),('pbrobyn2','Pepillo','Brobyn','bea8duR5jR5g','pbrobyn2@de.vu','+373 630 247 ','2007-05-07','Male'),('pdunbobin11','Paige','Dunbobin','FAI8b1KTuzk','pdunbobin11@dagondesign.com','+86 828 617 6','1974-06-16','Male'),('pmelato1q','Pet','Melato','R1U4BM0d7ONt','pmelato1q@reddit.com','+370 833 835 ','1980-03-27','Female'),('ppalumbou','Pincus','Palumbo','leraqnoz1D','ppalumbou@drupal.org','+86 692 223 7','2010-07-01','Male'),('Raj123','Raj','Jani','bxDooU0Fa1C34tyD3KE1NA==','rjani@uncc.edu','+19898989899','1992-01-21','Male'),('rarnholtzr','Randa','Arnholtz','l5o1ihGP9YGL','rarnholtzr@istockphoto.com','+55 114 382 7','2010-12-15','Female'),('rbarleez','Robinetta','Barlee','b7YEUdour','rbarleez@technorati.com','+47 414 977 0','2004-06-13','Female'),('rbraisher1y','Raynard','Braisher','ErmA6q5QHk','rbraisher1y@cam.ac.uk','+593 750 396 ','1987-05-02','Male'),('rbreacher10','Rab','Breacher','QB3FJmE3BL','rbreacher10@engadget.com','+81 433 391 0','1976-09-12','Male'),('rdunkleec','Rollin','Dunklee','VmNxbmqG','rdunkleec@zimbio.com','+27 857 152 9','1980-02-14','Male'),('rgrennan2b','Rodrigo','Grennan','Z2KnDUvexPH','rgrennan2b@geocities.com','+86 696 307 0','1997-08-01','Male'),('rid@34','Riddhi','Patil','eJ0/LFXfPye6B7DO7QFXsw==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi123','Riddhi','Patil','1ZSPxSP3pm3bWvViD9i0/Q==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi1234','Riddhi','Patil','jsVx6yXp3Nd/b5Q5zfe6aQ==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi1235','Riddhi','Patil','PVcWBjferil76rUlek1CZA==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi12356','Riddhi','Patil','DnBTPOVXAeDeP6FBM+AKBw==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi12389','Riddhi','Patil','zwIwqaAvKYsTldY4+H1TTA==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('Riddhi345','Riddhi','Patil','W7ATi1EOgCXHA9fqc2Va4w==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('riddhi@03','Riddhi','Patil','9v0B9EDJtYvuhxHdm/jEUQ==','riddhi.patil92@gmail.com','9802052684','1992-01-21','Female'),('rjerromesw','Randy','Jerromes','VDPQ5VYYxU','rjerromesw@hostgator.com','+7 599 735 46','1974-08-15','Female'),('rpoelt','Robin','Poel','zFSH62X','rpoelt@businessinsider.com','+502 673 802 ','1989-08-18','Male'),('rtomczynski27','Ragnar','Tomczynski','vT1Fgx0QGT','rtomczynski27@theguardian.com','+86 775 824 1','1982-02-19','Male'),('saguirre12','Sidonnie','Aguirre','go7VrcSJ8K','saguirre12@usnews.com','+351 237 785 ','2000-09-21','Female'),('seliesco2e','Swen','Eliesco','IcSTU1O','seliesco2e@ibm.com','+86 125 533 7','1984-03-30','Male'),('svanbrugx','Svend','Van Brug','oUiVM43XqF','svanbrugx@un.org','+98 780 488 4','1981-11-22','Male'),('twhatley1d','Terrill','Whatley','RvTdgZBbJCzV','twhatley1d@cdc.gov','+55 211 144 4','2005-01-07','Male'),('uphilippe24','Umberto','Philippe','cvZ1Glnjgz','uphilippe24@google.com.br','+351 265 956 ','1984-02-28','Male'),('vargrave1p','Vance','Argrave','2FtUUVyyIH','vargrave1p@goodreads.com','+420 605 438 ','1974-07-19','Male'),('vmozzetti2q','Violette','Mozzetti','7gqLqm','vmozzetti2q@cocolog-nifty.com','+62 643 340 5','1972-09-28','Female'),('vshoebotham2a','Verena','Shoebotham','JTJghV9wZM','vshoebotham2a@istockphoto.com','+7 187 898 06','1971-10-28','Female'),('wsictornes1h','Wrennie','Sictornes','mgW6oQ','wsictornes1h@huffingtonpost.com','+84 281 220 5','1975-08-02','Female'),('wwippermann14','Weylin','Wippermann','gBCgJJeTCE','wwippermann14@newyorker.com','+62 843 273 9','1995-05-19','Male'),('ygulberg2j','Yetta','Gulberg','uqgy26z','ygulberg2j@gov.uk','+86 494 643 3','1987-06-07','Female'),('ystuffins1m','Yves','Stuffins','oOE1V22UCB','ystuffins1m@nhs.uk','+95 135 165 6','1989-08-21','Male'),('zdymott13','Zenia','Dymott','izK4NkUhaWhQ','zdymott13@chron.com','+593 510 739 ','1994-02-27','Female');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerCard`
--

DROP TABLE IF EXISTS `CustomerCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerCard` (
  `card_number` bigint(20) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `card_name` varchar(80) DEFAULT NULL,
  `card_expiry` date DEFAULT NULL,
  `card_cvv` char(4) DEFAULT NULL,
  PRIMARY KEY (`card_number`),
  UNIQUE KEY `card_number` (`card_number`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `CustomerCard_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerCard`
--

LOCK TABLES `CustomerCard` WRITE;
/*!40000 ALTER TABLE `CustomerCard` DISABLE KEYS */;
INSERT INTO `CustomerCard` VALUES (4017950720151,'fbrolechan5','visa','Fritz Brolechan','2027-07-23','1443'),(4041373463769,'mfifootf','visa','Minerva Fifoot','2020-07-23','6780'),(4369077000417,'lbeach2l','visa','Laney Beach','2030-08-02','6066'),(30007979716312,'uphilippe24','diners-club-carte-blanche','Umberto Philippe','2023-02-23','378'),(30146284625576,'djouannin2n','diners-club-carte-blanche','Demetri Jouannin','2029-11-18','3326'),(30312796453523,'fmcdowall22','diners-club-carte-blanche','Forster McDowall','2026-11-21','8414'),(30363094372550,'gpinck7','diners-club-carte-blanche','Gill Pinck','2027-10-15','3989'),(201940865984912,'alearmount20','diners-club-enroute','Angelica Learmount','2030-06-22','7272'),(337941897386255,'wsictornes1h','americanexpress','Wrennie Sictornes','2026-02-12','8118'),(346780039754825,'cklageman1k','americanexpress','Clemente Klageman','2029-01-20','9490'),(348868514534180,'pbrobyn2','americanexpress','Pepillo Brobyn','2028-01-18','5381'),(372301572831321,'mhelmkek','americanexpress','Miof mela Helmke','2025-01-23','5181'),(374283358734523,'jdorning1a','americanexpress','Jen Dorning','2022-10-02','6027'),(374622737961093,'bmatevosian29','americanexpress','Bartel Matevosian','2026-01-20','365'),(3530943288047140,'dbulloch1u','jcb','Dell Bulloch','2020-05-19','5149'),(3531043256837910,'rpoelt','jcb','Robin Poel','2028-04-02','8603'),(3532135820648520,'abambe','jcb','Abey Bamb','2026-11-05','3709'),(3532461134679860,'zdymott13','jcb','Zenia Dymott','2028-03-08','25'),(3534317379888960,'fdockrell9','jcb','Franklin Dockrell','2020-10-25','133'),(3536460719910170,'rtomczynski27','jcb','Ragnar Tomczynski','2027-06-24','8720'),(3539491554191410,'gwhiskerd2m','jcb','Gannon Whiskerd','2022-03-27','909'),(3539631880488490,'babrahamson1z','jcb','Branden Abrahamson','2026-06-25','735'),(3540001032544750,'kbarzen4','jcb','Kettie Barzen','2026-01-26','5762'),(3540458003746800,'dhartright8','jcb','Dorris Hartright','2021-11-16','5611'),(3542385553607680,'pdunbobin11','jcb','Paige Dunbobin','2029-09-25','3770'),(3542851622946030,'dutridge2f','jcb','Daile Utridge','2028-12-04','1178'),(3543250473702050,'lbumpus2i','jcb','Leontine Bumpus','2020-07-05','6018'),(3543930218173370,'pmelato1q','jcb','Pet Melato','2029-04-27','3169'),(3545139978138530,'vmozzetti2q','jcb','Violette Mozzetti','2020-12-26','3125'),(3548470350316520,'gepgraven','jcb','Gaile Epgrave','2024-12-04','7626'),(3550711153112140,'mballes','jcb','Marcello Balle','2026-09-08','3946'),(3551419135330860,'wwippermann14','jcb','Weylin Wippermann','2021-04-10','7349'),(3552461987061950,'bwicklingp','jcb','Bone Wickling','2023-01-18','6252'),(3554978691824050,'bchamg','jcb','Brittan Cham','2027-06-08','3166'),(3556600061939100,'madcock18','jcb','Mendie Adcock','2022-04-30','9018'),(3557164420630920,'ggurgeq','jcb','Georgine Gurge','2021-06-04','3045'),(3558306644210060,'rarnholtzr','jcb','Randa Arnholtz','2024-06-14','2565'),(3558854572716810,'jsantorini28','jcb','Jacquette Santorini','2030-03-29','6222'),(3559128571233310,'mhuncote1t','jcb','Myra Huncote','2025-07-22','4561'),(3559534793165820,'framard1b','jcb','Fiann Ramard','2027-09-06','4833'),(3561263747193830,'vargrave1p','jcb','Vance Argrave','2029-10-29','4149'),(3563472123012460,'kvenarto','jcb','Karina Venart','2025-09-23','7003'),(3568567097521320,'mtattoo1v','jcb','Markus Tattoo','2021-04-27','476'),(3570066612121540,'ktolan1s','jcb','Kayley Tolan','2030-04-06','7561'),(3572561977953480,'svanbrugx','jcb','Svend Van Brug','2020-03-28','9840'),(3573410483051620,'eambresin17','jcb','Erhard Ambresin','2020-01-02','2542'),(3574911292154140,'rdunkleec','jcb','Rollin Dunklee','2022-05-14','7848'),(3579131498153140,'npabst6','jcb','Nicolette Pabst','2028-03-07','7702'),(3580071338877660,'mdanser1f','jcb','Maddy Danser','2021-12-30','9702'),(3580481050390310,'klepine1o','jcb','Kissiah Le Pine','2022-04-04','8247'),(3580544272617350,'cingamells1e','jcb','Codie Ingamells','2020-01-17','209'),(3580966801693800,'kdamrell2p','jcb','Katey Damrell','2024-06-07','995'),(3582315890104160,'hbaythorp1i','jcb','Hayden Baythorp','2030-09-05','4102'),(3583771566649970,'jcarrivick1n','jcb','Jayne Carrivick','2025-04-28','9318'),(3584727244533110,'dmcvie26','jcb','Dannie McVie','2027-08-29','5349'),(3588421877557580,'rjerromesw','jcb','Randy Jerromes','2029-03-29','6104'),(3589780037717000,'twhatley1d','jcb','Terrill Whatley','2024-10-22','9165'),(3589924927220770,'mpargeter21','jcb','Merridie Pargeter','2025-05-02','7176'),(4017951231643030,'ccrabb2g','visa','Corabella Crabb','2024-03-27','1614'),(4017955545181080,'cpendelly','visa','Conni Pendell','2029-02-03','2470'),(4026074444575830,'fwoolway23','visa-electron','Francklin Woolway','2029-07-14','9352'),(4026209011976690,'ppalumbou','visa-electron','Pincus Palumbo','2029-03-17','5202'),(4041590384894070,'askase1w','visa','Annmaria Skase','2022-06-19','2821'),(4175007237938000,'ystuffins1m','visa-electron','Yves Stuffins','2027-07-28','5001'),(4903290068783190,'blapping2c','switch','Birdie Lapping','2026-08-18','398'),(4917142776671960,'mrothery1j','visa-electron','Marleah Rothery','2028-02-02','5619'),(5002352921589310,'vshoebotham2a','mastercard','Verena Shoebotham','2029-10-20','4829'),(5007665147426660,'cbarfordj','mastercard','Caroljean Barford','2022-12-01','1936'),(5038809268729460,'dwhellams3','maestro','Den Whellams','2030-02-09','140'),(5100137439551470,'dmolnarb','mastercard','Deeyn Molnar','2019-10-22','7761'),(5100148793490520,'jdabs25','mastercard','Jasmina Dabs','2020-03-16','6812'),(5100174708191360,'gblumer2d','mastercard','Genovera Blumer','2025-07-24','8749'),(5211852446346990,'cmacgregor2k','mastercard','Claudetta MacGregor','2028-05-07','6473'),(5385446778528100,'rbreacher10','mastercard','Rab Breacher','2022-10-07','5708'),(5389699823406690,'saguirre12','mastercard','Sidonnie Aguirre','2027-03-25','3341'),(5495830986469360,'msnoxall1','diners-club-us-ca','Minny Snoxall','2025-06-24','6327'),(5550754539195570,'ahowchin19','mastercard','Anna Howchin','2026-05-06','7610'),(5602213804222470,'hvondraceka','bankcard','Hyman Vondracek','2028-05-14','6461'),(5602238909064950,'ygulberg2j','china-unionpay','Yetta Gulberg','2026-04-11','2764'),(5602243994215000,'dteffrey2o','bankcard','Dorothea Teffrey','2027-07-20','5141'),(5602246456427450,'jpaddingdon1g','china-unionpay','Justus Paddingdon','2030-05-11','3654'),(5610527759803390,'mcreekd','bankcard','Millard Creek','2030-02-23','9601'),(6333730445408440,'dkemwall0','switch','Drusilla Kemwall','2021-10-27','718'),(6333773772042250,'gingle1x','switch','Gordon Ingle','2028-01-01','9086'),(6372530535198300,'equincey1r','instapayment','Ethelyn Quincey','2030-03-14','5993'),(6386275956253870,'cvandecastelel','instapayment','Consalve Van de Castele','2030-05-10','6799'),(6391066363983180,'gmaccolganv','instapayment','Griz MacColgan','2020-03-28','9851'),(56022176081441400,'rgrennan2b','china-unionpay','Rodrigo Grennan','2025-09-20','2100'),(63048036301417800,'rbraisher1y','maestro','Raynard Braisher','2020-07-03','8907'),(67097690741650500,'imalia15','laser','Ikey Malia','2020-01-18','3709'),(67598461343691900,'kfeldhammer1l','maestro','Krystalle Feldhammer','2021-02-24','3651'),(502053910744518000,'oromayn2r','maestro','Osborn Romayn','2026-11-25','4032'),(560225863484394000,'btumulty2h','china-unionpay','Bret Tumulty','2024-01-12','8162'),(633330620155073000,'avonbrookh','switch','Arne Von Brook','2024-01-14','550'),(670936946115952000,'gjedrzejewicz1c','laser','Giorgio Jedrzejewicz','2022-11-11','5689'),(675935084968221000,'kyorstonm','switch','Kara-lynn Yorston','2026-02-08','4945'),(676714389894296000,'gattrilli','solo','Giulia Attrill','2019-12-19','9719'),(5602249880815160000,'ljoannic16','china-unionpay','Leonelle Joannic','2026-08-07','19'),(6333478454678940000,'seliesco2e','switch','Swen Eliesco','2027-03-24','3570'),(6761024201396720000,'rbarleez','maestro','Robinetta Barlee','2030-04-16','8147');
/*!40000 ALTER TABLE `CustomerCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Driver` (
  `driver_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `license_number` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `rating` float(3,2) DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES ('aaldis13','Arabele','Riddhi','qUkBFm8VJRI','aaldis13@nyu.edu','85241 Del Sol Terrace','16712 Valley Edge Place','Providence','Rhode Island',2912,'+1 401 638 33','655094','1988-06-06','Female',NULL),('adight2h','Alica','Dight','FEYT5iaUc3','adight2h@forbes.com','5586 Delladonna Lane','572 Center Way','Spokane','Washington',99215,'+1 509 430 63','681381','1991-12-28','Female',NULL),('agiovannelli2d','Artair','Giovannelli','Uuyh8CPea','agiovannelli2d@ftc.gov','30 Vera Pass','550 Golf View Circle','Albany','New York',12237,'+1 518 785 39','019741','1995-10-10','Male',NULL),('ajardeinf','Allyson','Jardein','PORz2FY','ajardeinf@blogs.com','373 Lunder Terrace','92 Nelson Point','Sacramento','California',95865,'+1 916 753 72','834295','1998-07-28','Female',NULL),('aloveredge1x','Amby','Loveredge','2MgnIMDd','aloveredge1x@europa.eu','21 Doe Crossing Circle','418 Twin Pines Hill','Bethesda','Maryland',20892,'+1 301 727 77','190969','1995-01-27','Male',NULL),('amckea1c','Alfi','McKea','Zfr44t','amckea1c@imageshack.us','39533 Portage Street','27 Clyde Gallagher Street','Roanoke','Virginia',24029,'+1 540 393 80','420678','1991-09-06','Female',NULL),('baugie3','Binky','Augie','w4fdO57','baugie3@flavors.me','84823 Susan Trail','07786 Armistice Drive','Atlanta','Georgia',30392,'+1 404 321 15','132954','1990-11-12','Male',NULL),('ccardenoso1b','Chadwick','Cardenoso','pFcfCnL','ccardenoso1b@google.nl','7845 Paget Place','011 Browning Street','Berkeley','California',94705,'+1 510 644 29','004028','1978-08-26','Male',NULL),('cfasler15','Craig','Fasler','555mduMHi','cfasler15@loc.gov','9090 Kipling Plaza','491 Pond Center','Pasadena','California',91117,'+1 626 875 72','854669','1982-09-22','Male',NULL),('cgrinval28','Colan','Grinval','uZXaSAt','cgrinval28@dmoz.org','64319 Nancy Road','71 Nobel Center','Gainesville','Florida',32627,'+1 352 111 71','324049','1975-05-26','Male',NULL),('clynnett2l','Chrissy','Lynnett','nKtPyCslcQk1','clynnett2l@github.io','3656 Springs Terrace','0728 Bluejay Place','Montgomery','Alabama',36195,'+1 334 572 27','882928','1976-02-19','Male',NULL),('cmosedall2','Cornie','Mosedall','Xwksa6U','cmosedall2@narod.ru','112 Lukken Point','17866 Cardinal Junction','Silver Spring','Maryland',20910,'+1 202 346 34','044165','1999-01-24','Female',NULL),('cswainson1d','Caralie','Swainson','efmMf7YWPo','cswainson1d@howstuffworks.com','6652 Graedel Circle','5401 Fairfield Trail','Jamaica','New York',11447,'+1 718 675 41','711819','1996-02-11','Female',NULL),('ctoft1k','Charmine','Toft','dMobEI6HjH','ctoft1k@ebay.com','5293 Oak Valley Street','4 Rutledge Road','Amarillo','Texas',79105,'+1 806 907 82','215795','1996-09-03','Female',NULL),('dbiernackim','Dorie','Biernacki','v4sCYj7sz','dbiernackim@noaa.gov','39629 Fisk Lane','27 Fisk Avenue','Montgomery','Alabama',36114,'+1 334 438 79','154829','1998-03-29','Female',NULL),('dboyton12','Danit','Boyton','ClKueb9mpdH','dboyton12@unesco.org','59925 Hoard Trail','289 Golf Course Circle','San Francisco','California',94137,'+1 415 286 17','766583','1991-10-07','Female',NULL),('droz1a','Dane','Roz','GVkDDSj','droz1a@npr.org','8510 Clove Park','3 Comanche Place','Norfolk','Virginia',23509,'+1 757 646 07','157803','1993-12-07','Male',NULL),('dtreweke2g','Darline','Treweke','8xvb4tdLoWe','dtreweke2g@joomla.org','335 Thierer Lane','7 Kinsman Court','Appleton','Wisconsin',54915,'+1 920 390 29','350602','1980-10-23','Female',NULL),('ebraync','Enrika','Brayn','3ZxsjAi','ebraync@over-blog.com','61 Moland Hill','966 Evergreen Parkway','Tampa','Florida',33661,'+1 813 705 21','490072','1980-08-01','Female',NULL),('egrowden2b','Erny','Growden','g0QWOnCP6At','egrowden2b@jugem.jp','2158 Esker Avenue','0782 Schmedeman Circle','San Antonio','Texas',78230,'+1 830 530 97','175214','1996-05-08','Male',NULL),('epellitt6','Easter','Pellitt','cJcS1o9Ny1','epellitt6@google.com','55 Hoepker Trail','347 Magdeline Street','Youngstown','Ohio',44511,'+1 330 176 03','599152','1977-03-27','Female',NULL),('eskehens2c','Everett','Skehens','7uywIi','eskehens2c@1und1.de','3 Meadow Vale Road','9 Portage Drive','Santa Clara','California',95054,'+1 650 323 86','090186','1977-03-16','Male',NULL),('fbonnicky','Ferguson','Bonnick','ErDkNQTOAAVR','fbonnicky@dedecms.com','23 Division Plaza','80 Dayton Trail','Pinellas Park','Florida',34665,'+1 850 962 56','329693','1993-05-19','Male',NULL),('fcasbolte','Ferdinand','Casbolt','aWuMyziA','fcasbolte@moonfruit.com','85529 Kensington Terrace','342 Claremont Center','New York City','New York',10120,'+1 212 356 79','665433','1985-11-14','Male',NULL),('gcaplan11','Gilly','Caplan','NkrH1XBfQ','gcaplan11@nhs.uk','0684 2nd Park','98 Sunbrook Park','Mobile','Alabama',36628,'+1 251 195 09','117511','1986-06-29','Female',NULL),('geddolls2e','Garrett','Eddolls','Q2e2vSPAYOjU','geddolls2e@google.cn','50060 Shoshone Street','99182 Monument Road','Phoenix','Arizona',85072,'+1 602 653 51','562869','1982-10-17','Male',NULL),('gpadwick1','Gertruda','Padwick','KP88Xhi9chA','gpadwick1@skype.com','2 Hovde Court','45 Village Avenue','Peoria','Illinois',61640,'+1 309 808 60','452695','1996-05-30','Female',NULL),('gsemrad1h','Gill','Semrad','jZE144LuJ','gsemrad1h@yelp.com','3436 Evergreen Crossing','4 Duke Point','Dayton','Ohio',45440,'+1 937 863 98','951484','1981-06-20','Male',NULL),('gstickford21','Gabi','Stickford','FiW8LMKJy','gstickford21@nyu.edu','87539 Ohio Avenue','939 Westerfield Way','Henderson','Nevada',89074,'+1 702 570 50','207101','1982-04-21','Male',NULL),('gwastall23','Giorgio','Wastall','gXzmnojGlW6V','gwastall23@state.tx.us','112 Dayton Street','26 Northland Circle','Mobile','Alabama',36616,'+1 251 738 20','732762','1983-03-23','Male',NULL),('hbaconl','Harley','Bacon','dCCNIP04Lk','hbaconl@opensource.org','2 Del Mar Circle','6 Cottonwood Place','Wilkes Barre','Pennsylvania',18768,'+1 570 946 13','306987','1970-04-26','Female',NULL),('hcollie1s','Hanni','Collie','WcMg55w','hcollie1s@gmpg.org','60091 Meadow Valley Center','3 Tennyson Point','Lake Charles','Louisiana',70616,'+1 337 471 94','481326','1997-01-14','Female',NULL),('hfealey9','Helli','Fealey','t58z3wB5yU','hfealey9@bandcamp.com','32 Fair Oaks Avenue','99 Clove Road','Tallahassee','Florida',32309,'+1 850 989 26','809007','1971-02-18','Female',NULL),('hlewsamx','Hope','Lewsam','Cqt6RR','hlewsamx@tripadvisor.com','0202 Stuart Park','160 East Lane','Richmond','Virginia',23293,'+1 804 507 55','649103','1993-03-04','Female',NULL),('ichazerand0','Iver','Chazerand','qu6J9X3GWE','ichazerand0@ted.com','21307 Fuller Plaza','692 Jana Circle','Denver','Colorado',80228,'+1 720 718 12','790165','1976-02-19','Male',NULL),('iglisane1q','Issie','Glisane','bmZvxS3k','iglisane1q@hatena.ne.jp','6 Rusk Lane','9 Sachtjen Place','Washington','District of Columbia',20005,'+1 202 314 89','790365','1978-11-26','Female',NULL),('jbeese2n','Jamima','Beese','7j1eeDWg0','jbeese2n@opera.com','44 Maywood Road','4 1st Place','Lubbock','Texas',79415,'+1 806 693 15','491482','1972-12-13','Female',NULL),('jclapshaw14','Jenda','Clapshaw','mBJwIiApi','jclapshaw14@gov.uk','8360 Mccormick Road','476 Mesta Hill','El Paso','Texas',79945,'+1 915 465 50','556438','1986-01-23','Female',NULL),('jholehouse1r','Jennica','Holehouse','TuFzZgug','jholehouse1r@nasa.gov','411 Lakeland Point','0865 Maywood Parkway','Jefferson City','Missouri',65105,'+1 573 907 11','918696','1998-04-05','Female',NULL),('jprodrick1z','Jeno','Prodrick','XhmXdFx','jprodrick1z@istockphoto.com','4 Mesta Pass','26454 Green Trail','Tucson','Arizona',85710,'+1 520 477 91','404670','1998-06-06','Male',NULL),('jsheepy2i','Janeta','Sheepy','towjcY','jsheepy2i@usda.gov','89094 Bartillon Circle','1 Brown Street','Los Angeles','California',90065,'+1 323 432 83','738558','1992-05-23','Female',NULL),('kchstney26','Krishna','Chstney','kUR584','kchstney26@gov.uk','2274 Hanover Hill','7 Grayhawk Hill','Mobile','Alabama',36628,'+1 251 933 42','790321','1978-07-16','Male',NULL),('kkellog2p','Kristal','Kellog','ohIp4rspAbJ','kkellog2p@chron.com','05247 Sage Center','53792 Cardinal Place','Fort Myers','Florida',33994,'+1 239 539 57','743087','1984-08-14','Female',NULL),('klowselyu','Kattie','Lowsely','BySt9SH3','klowselyu@cloudflare.com','3271 Spohn Drive','15 Emmet Drive','Schenectady','New York',12325,'+1 518 135 12','691481','2000-08-05','Female',NULL),('kpitney8','Kizzie','Pitney','DwWwVlzoP','kpitney8@npr.org','5429 Vidon Terrace','61 Nevada Hill','Birmingham','Alabama',35215,'+1 205 556 69','804656','1975-06-15','Female',NULL),('ksaice17','Kerwinn','Saice','bGQhvHTE','ksaice17@parallels.com','1152 Westerfield Terrace','40900 Blue Bill Park Place','Baltimore','Maryland',21265,'+1 410 816 40','253276','1998-12-16','Male',NULL),('kthexton1g','Katya','Thexton','t8QaAHw','kthexton1g@msn.com','31005 Bonner Road','70 Hanover Crossing','El Paso','Texas',79999,'+1 915 832 30','685731','1988-05-15','Female',NULL),('kwaggitt2m','Kennan','Waggitt','MQau3GxmRW','kwaggitt2m@amazon.com','2 Arrowood Terrace','248 Nelson Pass','Portland','Oregon',97216,'+1 503 966 16','805635','1999-05-27','Male',NULL),('lemm2q','Lorrie','Emm','di0Qhc1xm','lemm2q@skype.com','12 Judy Center','80842 Marquette Hill','Denver','Colorado',80291,'+1 303 162 78','643572','1980-02-23','Female',NULL),('lgavint','Lem','Gavin','7EYUKP','lgavint@huffingtonpost.com','38 Mayfield Trail','776 Nobel Drive','Honolulu','Hawaii',96815,'+1 808 634 22','142950','1994-11-03','Male',NULL),('lrhymesb','Lyle','Rhymes','b5qtKfk14','lrhymesb@huffingtonpost.com','931 Talmadge Crossing','0 Mccormick Plaza','Providence','Rhode Island',2905,'+1 401 339 98','769962','1991-03-13','Male',NULL),('lskoulingz','Levon','Skouling','iiFyZaZJNfj','lskoulingz@xing.com','32 7th Plaza','3269 Wayridge Hill','Jamaica','New York',11436,'+1 718 429 96','046130','1983-06-07','Male',NULL),('ltoten1n','Lay','Toten','E45vTHkgqm','ltoten1n@slashdot.org','3 Hoepker Lane','3142 Northland Terrace','Monticello','Minnesota',55585,'+1 763 107 16','607325','1986-01-01','Male',NULL),('ltreamayne27','Leonora','Treamayne','ws7LSQJeRO','ltreamayne27@seattletimes.com','3906 Haas Plaza','9389 Eastlawn Parkway','Seattle','Washington',98133,'+1 206 589 48','847318','1995-06-09','Female',NULL),('lupstone1o','Loise','Upstone','rcxkvc','lupstone1o@yahoo.com','671 Hovde Hill','5707 Haas Park','Grand Rapids','Michigan',49544,'+1 616 935 72','301717','1997-05-04','Female',NULL),('marghent2j','Moina','Arghent','bmpBtt','marghent2j@archive.org','50017 Washington Plaza','16060 Rockefeller Place','Grand Rapids','Michigan',49505,'+1 616 992 92','618294','1995-09-24','Female',NULL),('mdelyth2r','Melita','Delyth','DOuonnpG','mdelyth2r@youtu.be','0 Luster Avenue','34 Judy Avenue','Newport News','Virginia',23612,'+1 757 941 73','039328','1979-07-22','Female',NULL),('mickeringillo','Marigold','Ickeringill','UVwXBY','mickeringillo@i2i.jp','7386 Pennsylvania Alley','5 Talmadge Crossing','Peoria','Illinois',61635,'+1 309 153 11','844212','1978-10-16','Female',NULL),('mlidden1v','Morlee','Lidden','WapgSagfLZ','mlidden1v@youtu.be','1 Orin Street','15516 Harbort Drive','Columbia','Missouri',65218,'+1 573 472 14','612089','1982-01-16','Male',NULL),('mlocketi','Marwin','Locket','yoZrzuz','mlocketi@nytimes.com','7 Northport Point','9 Hanover Street','Durham','North Carolina',27705,'+1 919 841 83','446011','1991-02-15','Male',NULL),('mlongworthy1f','Mychal','Longworthy','NljTAkfKNt','mlongworthy1f@mediafire.com','770 Esker Junction','21 Dennis Street','Shreveport','Louisiana',71166,'+1 318 641 70','954579','1982-03-06','Male',NULL),('mpersence22','Madelene','Persence','D96zh3xO7','mpersence22@fema.gov','6 Hayes Crossing','2573 Kennedy Drive','Seattle','Washington',98115,'+1 206 836 15','794367','1972-08-08','Female',NULL),('mregenhardtn','Mable','Regenhardt','WqF7wiUpm3j','mregenhardtn@wix.com','6 Maryland Trail','5378 3rd Trail','Charlotte','North Carolina',28278,'+1 704 338 59','386893','1997-04-20','Female',NULL),('mspellwortha','Moise','Spellworth','1BBLmobk','mspellwortha@xinhuanet.com','44722 Mayer Place','018 Pankratz Trail','Santa Barbara','California',93150,'+1 805 298 75','163661','1998-05-17','Male',NULL),('nbeeby4','Nilson','Beeby','QXTWQvmcHCS','nbeeby4@opensource.org','5 Straubel Place','5 Eastlawn Crossing','Kansas City','Missouri',64199,'+1 816 423 31','186321','1996-07-23','Male',NULL),('nchittie16','Nettie','Chittie','zfBMGb','nchittie16@tuttocitta.it','4 Sloan Circle','3407 Vera Hill','Reno','Nevada',89519,'+1 775 909 94','734905','1975-09-13','Female',NULL),('ncouzens1l','Niki','Couzens','gUqcYcn4y','ncouzens1l@bloglovin.com','476 Johnson Lane','99 Reindahl Alley','Irvine','California',92710,'+1 714 996 62','217238','1988-06-25','Male',NULL),('nharbar1e','Nat','Harbar','QxSf2ICtt5nI','nharbar1e@google.com.hk','84 Jana Circle','3 Veith Terrace','Peoria','Arizona',85383,'+1 602 284 62','901694','1976-03-25','Male',NULL),('nkovalski18','Ned','Kovalski','0iI6WbHahBY','nkovalski18@buzzfeed.com','6591 Sundown Park','69096 Meadow Vale Point','Tampa','Florida',33694,'+1 813 573 42','233931','1982-10-12','Male',NULL),('nrubenczyk7','Nickolai','Rubenczyk','Sw4Mge4hd3','nrubenczyk7@statcounter.com','1498 Bunker Hill Pass','3806 Moose Pass','Jamaica','New York',11470,'+1 917 136 39','227394','1987-01-13','Male',NULL),('nstorton5','Nissy','Storton','phuoShu','nstorton5@pagesperso-orange.fr','92844 Forest Dale Parkway','5572 Southridge Point','Chattanooga','Tennessee',37450,'+1 423 859 51','653553','1990-10-23','Female',NULL),('nstrettell20','Nataline','Strettell','I2g7iXC','nstrettell20@twitpic.com','2 Gateway Park','26 Forest Center','Las Vegas','Nevada',89130,'+1 702 421 67','214840','1983-05-30','Female',NULL),('pgerratyj','Porter','Gerraty','bmgyu0bN2','pgerratyj@symantec.com','01 Luster Junction','24333 Prentice Hill','Oklahoma City','Oklahoma',73157,'+1 405 369 26','346207','1985-09-29','Male',NULL),('pstandbridge2a','Pyotr','Standbridge','tkl7eBKo','pstandbridge2a@dmoz.org','6696 Delladonna Plaza','3 Vera Point','Saint Paul','Minnesota',55188,'+1 651 326 84','641108','1980-06-07','Male',NULL),('pstarcks1i','Patrizia','Starcks','gvoTxeBMnS2','pstarcks1i@macromedia.com','950 Thackeray Hill','3 Calypso Point','Saint Petersburg','Florida',33710,'+1 727 938 20','231854','1986-04-03','Female',NULL),('qarnowicz1p','Quincy','Arnowicz','24cecu1','qarnowicz1p@census.gov','5537 Havey Trail','401 Hovde Lane','Newark','New Jersey',7188,'+1 862 159 66','507363','1984-07-09','Male',NULL),('rcollcott29','Raimund','Collcott','5slnXA4','rcollcott29@washingtonpost.com','58055 David Crossing','17455 Northridge Center','Hicksville','New York',11854,'+1 516 425 97','255192','1974-05-07','Male',NULL),('rculvey25','Roberta','Culvey','0a7hwZ42','rculvey25@bloglines.com','2853 Welch Court','2558 Sunnyside Point','Miami','Florida',33111,'+1 786 514 69','062433','1995-05-22','Female',NULL),('rgiorgini24','Raynard','Giorgini','E1jADUq','rgiorgini24@youku.com','97 Brown Circle','5899 Surrey Road','Charleston','West Virginia',25305,'+1 304 790 42','949172','1981-04-20','Male',NULL),('rgrinyakin1u','Reinald','Grinyakin','O7bscDv4GGE','rgrinyakin1u@scientificamerican.com','865 Bobwhite Hill','2 Spenser Terrace','North Little Rock','Arkansas',72118,'+1 501 511 15','840005','1995-03-06','Male',NULL),('rhuggard2f','Rowan','Huggard','61nwDDJ6Kjj1','rhuggard2f@about.com','2 Shopko Road','19905 Lotheville Junction','Louisville','Kentucky',40266,'+1 502 495 31','892997','1989-07-31','Male',NULL),('rmcbean1t','Roxanna','McBean','zjMRJRpqGR','rmcbean1t@netvibes.com','01085 Warrior Lane','87 Oak Trail','Springfield','Missouri',65805,'+1 417 227 73','464986','1974-07-24','Female',NULL),('rrockey1w','Rafaela','Rockey','Dyn8hnpB1z','rrockey1w@google.de','94700 Eastwood Park','0429 Messerschmidt Junction','Dallas','Texas',75231,'+1 214 153 18','471112','1980-05-17','Female',NULL),('rwarke10','Reece','Warke','vOgyiH','rwarke10@mapy.cz','78713 Northland Junction','77643 Scott Crossing','Chicago','Illinois',60619,'+1 312 252 99','421037','1973-04-25','Male',NULL),('sgalloway2k','Seamus','Galloway','L8XTdS','sgalloway2k@phpbb.com','4 Huxley Lane','47 Continental Street','Chicago','Illinois',60609,'+1 312 947 65','600156','1984-08-11','Male',NULL),('smingard1m','Scarface','Mingard','S9SCvL1nA','smingard1m@tumblr.com','1 Grover Plaza','2 Declaration Lane','Arlington','Virginia',22244,'+1 571 748 95','751792','1983-06-04','Male',NULL),('spaddleq','Susanne','Paddle','ZYeBpiLv3GCA','spaddleq@sciencedaily.com','13 Grayhawk Alley','4 Shelley Street','Wichita Falls','Texas',76305,'+1 940 671 73','741854','1977-04-20','Female',NULL),('spointer1y','Shaylah','Pointer','qxYunj','spointer1y@about.com','7039 Stephen Point','69131 Melrose Street','Montgomery','Alabama',36119,'+1 334 783 68','204375','1981-11-10','Female',NULL),('sramalho19','Sutherlan','Ramalho','xkdqJVUCfT','sramalho19@microsoft.com','00 Walton Park','79 Rockefeller Pass','Waltham','Massachusetts',2453,'+1 774 642 47','761871','1981-02-05','Male',NULL),('ssecrettk','Sumner','Secrett','TOHCGnNr','ssecrettk@rediff.com','319 Bowman Drive','1108 Eliot Center','Amarillo','Texas',79159,'+1 806 280 16','638497','1990-09-27','Male',NULL),('sshaperow','Skell','Shapero','MXMH0VF6m','sshaperow@cnet.com','6059 Jenna Lane','26575 Bay Court','Chicago','Illinois',60697,'+1 312 605 45','535568','1991-04-21','Male',NULL),('sspelmans','Silvano','Spelman','LlyKz6dl0','sspelmans@reverbnation.com','0 Susan Park','2772 Ridgeview Terrace','El Paso','Texas',88530,'+1 915 986 27','564512','1981-03-16','Male',NULL),('tlytton1j','Tamiko','Lytton','9oVHdYOt','tlytton1j@miibeian.gov.cn','350 Granby Junction','1577 Coolidge Avenue','Knoxville','Tennessee',37924,'+1 865 119 90','819255','1971-03-09','Female',NULL),('trosenauh','Timoteo','Rosenau','9mbDugrRm','trosenauh@sbwire.com','03 Harper Alley','24 Marquette Drive','Beaufort','South Carolina',29905,'+1 843 302 95','143154','1973-08-10','Male',NULL),('tsansamr','Tove','Sansam','qBXvmZcAbmC','tsansamr@oracle.com','52933 Tony Lane','39979 Grasskamp Avenue','Paterson','New Jersey',7505,'+1 973 137 37','639377','1975-11-21','Female',NULL),('tyeskin2o','Teriann','Yeskin','drXEI1tV','tyeskin2o@yolasite.com','93 Lukken Parkway','2 Bultman Avenue','Baton Rouge','Louisiana',70826,'+1 225 314 68','103034','1995-08-12','Female',NULL),('wnaullsp','Waverly','Naulls','pfq7hD6cCWWi','wnaullsp@bandcamp.com','76196 Mockingbird Court','38 Moose Avenue','Katy','Texas',77493,'+1 281 182 74','153353','1990-01-28','Male',NULL),('wshimminv','Whitney','Shimmin','obGHm5cqG8i','wshimminv@economist.com','5 Sherman Place','296 Donald Court','Midland','Texas',79705,'+1 432 385 97','141796','1984-02-10','Male',NULL),('wtooland','Wilow','Toolan','VUbWSr0nC1Vj','wtooland@drupal.org','1677 Manitowish Pass','98381 West Center','Irving','Texas',75062,'+1 214 902 58','284430','1977-11-22','Female',NULL),('ybasireg','York','Basire','PUeovTVXeRX1','ybasireg@amazon.co.uk','3395 Basil Drive','3 East Center','Cincinnati','Ohio',45271,'+1 513 966 44','306756','1993-11-02','Male',NULL);
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback`
--

DROP TABLE IF EXISTS `Feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `number_of_stars` int(11) DEFAULT NULL,
  `customer_review` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `Feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `Feedback_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `Driver` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback`
--

LOCK TABLES `Feedback` WRITE;
/*!40000 ALTER TABLE `Feedback` DISABLE KEYS */;
INSERT INTO `Feedback` VALUES (1,'dkemwall0','ichazerand0',4,'good'),(2,'msnoxall1','gpadwick1',5,'awesomly crappy'),(3,'msnoxall1','ichazerand0',5,'keep it up'),(4,'msnoxall1','ichazerand0',5,'keep it up'),(5,'msnoxall1','ichazerand0',5,'Keep it up'),(6,'msnoxall1','ichazerand0',3,'Keep it up'),(7,'msnoxall1','ichazerand0',3,'Keep it up'),(8,'msnoxall1','ichazerand0',2,'Keep it up');
/*!40000 ALTER TABLE `Feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotion`
--

DROP TABLE IF EXISTS `Promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promotion` (
  `voucher_code` varchar(100) NOT NULL,
  `validity_start_date` date NOT NULL,
  `validity_end_date` date NOT NULL,
  `discount` int(11) NOT NULL,
  `max_discount` int(11) NOT NULL,
  PRIMARY KEY (`voucher_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotion`
--

LOCK TABLES `Promotion` WRITE;
/*!40000 ALTER TABLE `Promotion` DISABLE KEYS */;
INSERT INTO `Promotion` VALUES ('birthday10','2018-07-07','2018-07-10',10,200),('ola10','2018-07-07','2018-07-10',10,200),('ola20','2018-01-08','2018-03-07',20,300),('ola25','2018-03-08','2019-03-08',25,200),('ola40','2018-02-08','2018-03-08',40,400);
/*!40000 ALTER TABLE `Promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RateChart`
--

DROP TABLE IF EXISTS `RateChart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RateChart` (
  `car_type` varchar(255) NOT NULL,
  `car_capacity` int(11) NOT NULL,
  `rate_per_mile` float(3,2) NOT NULL,
  PRIMARY KEY (`car_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RateChart`
--

LOCK TABLES `RateChart` WRITE;
/*!40000 ALTER TABLE `RateChart` DISABLE KEYS */;
INSERT INTO `RateChart` VALUES ('Hatchback',4,7.00),('Premium',4,9.00),('suv',6,9.99);
/*!40000 ALTER TABLE `RateChart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ride`
--

DROP TABLE IF EXISTS `Ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ride` (
  `ride_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `car_number` varchar(255) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `pickup_location` varchar(50) DEFAULT NULL,
  `drop_location` varchar(50) DEFAULT NULL,
  `voucher_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ride_id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_number` (`car_number`),
  KEY `driver_id` (`driver_id`),
  KEY `voucher_code` (`voucher_code`),
  CONSTRAINT `Ride_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `Ride_ibfk_2` FOREIGN KEY (`car_number`) REFERENCES `Car` (`car_number`),
  CONSTRAINT `Ride_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `Driver` (`driver_id`),
  CONSTRAINT `Ride_ibfk_4` FOREIGN KEY (`voucher_code`) REFERENCES `Promotion` (`voucher_code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ride`
--

LOCK TABLES `Ride` WRITE;
/*!40000 ALTER TABLE `Ride` DISABLE KEYS */;
INSERT INTO `Ride` VALUES (1,'dkemwall0','NYC2010','ichazerand0','2018-10-10 13:10:10','2018-10-10 13:45:11','ashford','UT',NULL),(2,'msnoxall1','NYC2011','gpadwick1','2018-11-10 16:00:00','2018-11-10 16:15:00','ashford','UT',NULL),(3,'pbrobyn2','NYC2012','cmosedall2','2018-09-10 13:20:00','2018-09-10 13:40:00','UT','Uptown charlotte',NULL),(4,'dwhellams3','NYC7828','baugie3','2018-11-10 13:00:00','2018-11-10 13:25:00','Uptown charlotte','UNCC',NULL),(5,'kbarzen4','NYC8392','nbeeby4','2018-11-10 15:15:00','2018-11-10 15:30:00','UT','ashford',NULL),(6,'fbrolechan5','CAL2728','nstorton5','2018-10-10 12:00:00','2018-10-10 12:44:00','ashford','UT',NULL),(9,'dhartright8','CLT1043','kpitney8','2018-07-06 09:00:00','2018-07-06 09:50:00','Uptown charlotte','UNCC',NULL),(10,'fdockrell9','CLT1299','hfealey9','2018-06-05 08:00:00','2018-06-05 08:30:00','Uptown charlotte','UNCC',NULL),(11,'BDS','NYC2010','ichazerand0','2018-10-10 13:10:10','2018-10-10 13:45:11','Mumbai','Delhi',NULL),(14,'msnoxall1','NYC2011','gpadwick1','2018-12-01 22:16:31','2016-12-01 22:16:51','UT','UNCC',NULL),(15,'msnoxall1','NYC2011','gpadwick1','2018-12-01 22:19:43','2016-12-01 22:57:49','UT','NCSU',NULL);
/*!40000 ALTER TABLE `Ride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscribers`
--

DROP TABLE IF EXISTS `Subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscribers` (
  `customer_id` varchar(250) NOT NULL,
  `subscription_id` varchar(250) NOT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`subscription_id`),
  KEY `subscription_id` (`subscription_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `subscription_id` FOREIGN KEY (`subscription_id`) REFERENCES `Subscription` (`subscription_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscribers`
--

LOCK TABLES `Subscribers` WRITE;
/*!40000 ALTER TABLE `Subscribers` DISABLE KEYS */;
INSERT INTO `Subscribers` VALUES ('abambe','#6c40e1','2018-10-20','2019-10-19'),('ahowchin19','#b72a32','2018-10-12','2018-01-11'),('alearmount20','#6c40e1','2018-09-22','2018-10-21'),('askase1w','#b72a32','2018-11-13','2019-11-12'),('avonbrookh','#e120ed','2018-03-15','2018-06-14'),('babrahamson1z','#1f0d41','2018-03-02','2018-04-01');
/*!40000 ALTER TABLE `Subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscription_id` varchar(250) NOT NULL,
  `period` varchar(255) NOT NULL,
  `subscriptiton_cost` int(11) NOT NULL,
  `availability` int(11) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES ('#05026a','monthly',150,10),('#073a6f','quarterly',500,10),('#084b18','quarterly',500,10),('#0def33','annual',1000,10),('#0f71d0','quarterly',500,10),('#10c280','monthly',150,10),('#17b76f','annual',1000,10),('#1814bd','annual',1000,10),('#1f0d41','monthly',150,10),('#23a3a2','monthly',150,10),('#241858','annual',1000,10),('#293170','monthly',150,10),('#344d29','annual',1000,10),('#3551f4','annual',1000,10),('#3f65a9','quarterly',500,10),('#402c2c','annual',1000,10),('#42e1c5','annual',1000,10),('#4450ca','monthly',150,10),('#48f229','annual',1000,10),('#4ac7e1','quarterly',500,10),('#4b1af5','quarterly',500,10),('#4b3720','annual',1000,10),('#4dbe86','quarterly',500,10),('#512829','quarterly',500,10),('#5a518e','quarterly',500,10),('#5a7357','monthly',150,10),('#5e04c0','quarterly',500,10),('#5e9852','monthly',150,10),('#5f9c0e','annual',1000,10),('#610c85','annual',1000,10),('#633071','annual',1000,10),('#640ebd','monthly',150,10),('#65d967','monthly',150,10),('#68b10b','annual',1000,10),('#6c40e1','monthly',150,10),('#7162ea','annual',1000,10),('#770787','quarterly',500,10),('#7789ff','monthly',150,10),('#77d0d1','monthly',150,10),('#7b40a0','annual',1000,10),('#7bf815','monthly',150,10),('#7ceb2e','quarterly',500,10),('#7d6728','quarterly',500,10),('#7eb98d','quarterly',500,10),('#8187dd','annual',1000,10),('#83fc19','annual',1000,10),('#8af4d4','quarterly',500,10),('#8ce21a','annual',1000,10),('#8fe602','monthly',150,10),('#8h0891','annual',1000,10),('#91a336','annual',1000,10),('#923482','monthly',150,10),('#928257','monthly',150,10),('#958bfa','quarterly',500,10),('#96e5da','annual',1000,10),('#975e65','quarterly',500,10),('#984aed','annual',1000,10),('#98ad40','quarterly',500,10),('#9b09c7','annual',1000,10),('#9bb915','quarterly',500,10),('#9bd7a4','quarterly',500,10),('#9f2d51','quarterly',500,10),('#a4c6d7','monthly',150,10),('#a4fbf0','quarterly',500,10),('#a55fae','quarterly',500,10),('#a6a729','quarterly',500,10),('#ac673f','quarterly',500,10),('#af5596','monthly',150,10),('#b16fd9','quarterly',500,10),('#b72a32','annual',1000,10),('#b9e61e','quarterly',500,10),('#c02ec9','quarterly',500,10),('#cc7b02','quarterly',500,10),('#d386fa','monthly',150,10),('#d3b62f','monthly',150,10),('#d4cfad','annual',1000,10),('#d4f234','monthly',150,10),('#d5e53a','annual',1000,10),('#d95add','monthly',150,10),('#d95b1f','monthly',150,10),('#da3168','quarterly',500,10),('#e120ed','quarterly',500,10),('#e266a5','annual',1000,10),('#e5a051','monthly',150,10),('#e72764','annual',1000,10),('#e8807f','quarterly',500,10),('#ea13d3','monthly',150,10),('#eb3b5e','monthly',150,10),('#ec4ba6','annual',1000,10),('#ed5017','annual',1000,10),('#eef5bb','monthly',150,10),('#f0d316','monthly',150,10),('#f162c5','monthly',150,10),('#f35833','monthly',150,10),('#f42018','annual',1000,10),('#f46f7d','monthly',150,10),('#f705b6','annual',1000,10),('#fa61c0','monthly',150,10),('#fea8bf','annual',1000,10),('b51fbe','annual',1000,10);
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `driver_salary`
--

DROP TABLE IF EXISTS `driver_salary`;
/*!50001 DROP VIEW IF EXISTS `driver_salary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `driver_salary` AS SELECT 
 1 AS `driver_id`,
 1 AS `license_number`,
 1 AS `phone_number`,
 1 AS `CONCAT_WS(' ',d.first_name, d.last_name)`,
 1 AS `duration`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `owner_profit`
--

DROP TABLE IF EXISTS `owner_profit`;
/*!50001 DROP VIEW IF EXISTS `owner_profit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `owner_profit` AS SELECT 
 1 AS `owner_id`,
 1 AS `CONCAT_WS(' ',co.first_name,co.last_name)`,
 1 AS `car_number`,
 1 AS `car_type`,
 1 AS `Income`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `premium_owners`
--

DROP TABLE IF EXISTS `premium_owners`;
/*!50001 DROP VIEW IF EXISTS `premium_owners`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `premium_owners` AS SELECT 
 1 AS `owner_id`,
 1 AS `Owner name`,
 1 AS `Car Details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ride_history`
--

DROP TABLE IF EXISTS `ride_history`;
/*!50001 DROP VIEW IF EXISTS `ride_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ride_history` AS SELECT 
 1 AS `Customer Name`,
 1 AS `Driver Name`,
 1 AS `car_number`,
 1 AS `pickup_location`,
 1 AS `drop_location`,
 1 AS `Trip distance`,
 1 AS `Total Fare after discount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `driver_salary`
--

/*!50001 DROP VIEW IF EXISTS `driver_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rohitm94`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `driver_salary` AS select `d`.`driver_id` AS `driver_id`,`d`.`license_number` AS `license_number`,`d`.`phone_number` AS `phone_number`,concat_ws(' ',`d`.`first_name`,`d`.`last_name`) AS `CONCAT_WS(' ',d.first_name, d.last_name)`,(sum(timestampdiff(SECOND,`r`.`start_time`,`r`.`end_time`)) / 3600) AS `duration`,(sum(timestampdiff(SECOND,`r`.`start_time`,`r`.`end_time`)) * (15 / 3600)) AS `salary` from (`Driver` `d` join `Ride` `r` on(((`d`.`driver_id` = `r`.`driver_id`) and (`r`.`start_time` > '2018-11-01 00:00:00') and (`r`.`end_time` < '2018-11-31 00:00:00')))) group by `d`.`driver_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `owner_profit`
--

/*!50001 DROP VIEW IF EXISTS `owner_profit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rohitm94`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `owner_profit` AS select `c`.`owner_id` AS `owner_id`,concat_ws(' ',`co`.`first_name`,`co`.`last_name`) AS `CONCAT_WS(' ',co.first_name,co.last_name)`,`r`.`car_number` AS `car_number`,`c`.`car_type` AS `car_type`,sum((floor((rand(2) * 30)) * (select `rc`.`rate_per_mile` from `RateChart` `rc` where (`rc`.`car_type` = `c`.`car_type`)))) AS `Income` from ((`Car` `c` join `Ride` `r` on((`c`.`car_number` = `r`.`car_number`))) join `CarOwner` `co` on((`co`.`owner_id` = `c`.`owner_id`))) group by `r`.`car_number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `premium_owners`
--

/*!50001 DROP VIEW IF EXISTS `premium_owners`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rohitm94`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `premium_owners` AS select `c`.`owner_id` AS `owner_id`,concat_ws(' ',`c`.`first_name`,`c`.`last_name`) AS `Owner name`,group_concat(concat_ws(' : ',`ca`.`car_number`,`ca`.`car_model`) separator ' , ') AS `Car Details` from (`CarOwner` `c` join `Car` `ca` on((`ca`.`owner_id` = `c`.`owner_id`))) group by `c`.`owner_id` having (count(`ca`.`owner_id`) >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ride_history`
--

/*!50001 DROP VIEW IF EXISTS `ride_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rohitm94`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ride_history` AS select concat_ws(' ',`c`.`first_name`,`c`.`last_name`) AS `Customer Name`,concat_ws(' ',`d`.`first_name`,`d`.`last_name`) AS `Driver Name`,`r`.`car_number` AS `car_number`,`r`.`pickup_location` AS `pickup_location`,`r`.`drop_location` AS `drop_location`,floor((rand(2) * 30)) AS `Trip distance`,ifnull(((floor((rand(2) * 30)) * `rc`.`rate_per_mile`) - greatest(((floor((rand(2) * 30)) * `rc`.`rate_per_mile`) * `p`.`discount`),`p`.`max_discount`)),(floor((rand(2) * 30)) * `rc`.`rate_per_mile`)) AS `Total Fare after discount` from (((((`Customer` `c` join `Ride` `r` on((`r`.`customer_id` = `c`.`customer_id`))) join `Driver` `d` on((`d`.`driver_id` = `r`.`driver_id`))) join `Car` `ca` on((`r`.`car_number` = `ca`.`car_number`))) join `RateChart` `rc` on((`ca`.`car_type` = `rc`.`car_type`))) left join `Promotion` `p` on((`p`.`voucher_code` = `r`.`voucher_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02  0:47:27
