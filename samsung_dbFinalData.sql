-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Samsung_DB
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB-1:10.6.4+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `NewTransaction`
--

DROP TABLE IF EXISTS `NewTransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewTransaction` (
  `INVOICENO` varchar(100) DEFAULT NULL,
  `INVOICEDATE` date DEFAULT NULL,
  `SELLERCODE` varchar(100) DEFAULT NULL,
  `BUYERCODE` varchar(100) DEFAULT NULL,
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `SERIALNUM` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewTransaction`
--

LOCK TABLES `NewTransaction` WRITE;
/*!40000 ALTER TABLE `NewTransaction` DISABLE KEYS */;
INSERT INTO `NewTransaction` VALUES ('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT1','5268900477264'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT1','5204492336127'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT1','5229670892965'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT3','7540726227419'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT3','6749974594624'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT4','7156476816032'),('X0001556793','2021-08-03','SELLER1','PTNR1','PRODUCT5','1563906592782'),('X0001552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','5041799248399'),('X0001552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','2400024135966'),('X0001552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','7303831669791'),('X0001552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','2126550588264'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','4897940206810'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','3842796792574'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','5774010752376'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT8','4083746139728'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT6','7200588058974'),('X0004342343','2021-08-01','SELLER2','PTNR3','PRODUCT7','4904106168102'),('X0004298331','2021-08-03','SELLER2','PTNR2','PRODUCT7','6962111584857'),('X0004298331','2021-08-03','SELLER2','PTNR2','PRODUCT8','5980851577215'),('X0004298331','2021-08-03','SELLER2','PTNR2','PRODUCT9','2064002120409'),('X0005438331','2021-08-03','SELLER3','PTNR4','PRODUCT8','4657605243974'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT10','6389812854009'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT10','1730450155937'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT10','2375984285185'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT10','1363687518851'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT1','5702250753354'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT6','7707790649750'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT6','1493114111806'),('X0007638331','2021-08-04','SELLER2','PTNR6','PRODUCT3','4641936897833'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT2','5798848729410'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT2','5539717162459'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT2','1567675228149'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT7','5372375936566'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT9','7713962227737'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT7','4657455596025'),('X0006638331','2021-08-02','SELLER3','PTNR7','PRODUCT10','6126346246361'),('X0001522793','2021-08-03','SELLER1','PTNR9','PRODUCT3','1932401253541'),('X0001522793','2021-08-03','SELLER1','PTNR9','PRODUCT4','5400393670842'),('X0001522793','2021-08-03','SELLER1','PTNR9','PRODUCT5','5339292912905'),('X0008552343','2021-08-02','SELLER1','PTNR8','PRODUCT5','2459770342218'),('X0008552343','2021-08-02','SELLER1','PTNR8','PRODUCT10','6134331760694'),('X0008552343','2021-08-02','SELLER1','PTNR8','PRODUCT10','2484500474755'),('X0000298331','2021-08-03','SELLER2','PTNR10','PRODUCT8','7343895206925'),('X0000298331','2021-08-03','SELLER2','PTNR10','PRODUCT6','2118534195922'),('X0000298331','2021-08-03','SELLER2','PTNR10','PRODUCT6','1859622852995'),('X0004638331','2021-08-04','SELLER2','PTNR4','PRODUCT6','7717370653318'),('X0004638331','2021-08-04','SELLER2','PTNR4','PRODUCT8','2108352014373'),('X0004638331','2021-08-04','SELLER2','PTNR4','PRODUCT10','4942911720943'),('X1001556793','2021-08-03','SELLER1','PTNR1','PRODUCT4','2432672800629'),('X1001556793','2021-08-03','SELLER1','PTNR1','PRODUCT5','7765234214166'),('X0201552343','2021-08-02','SELLER1','PTNR2','PRODUCT1','2294470110981'),('X0201552343','2021-08-02','SELLER1','PTNR2','PRODUCT2','3569611951818'),('X0301552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','7482808120478'),('X0301552343','2021-08-02','SELLER1','PTNR2','PRODUCT5','3811076634280'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','4972212917556'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','7126154679170'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT2','6851264791306'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT8','5608765524867'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT6','7369636118158'),('X0704342343','2021-08-01','SELLER2','PTNR3','PRODUCT7','2835577446738'),('X0004112331','2021-08-03','SELLER2','PTNR2','PRODUCT3','5713618071943'),('X0004112331','2021-08-03','SELLER2','PTNR2','PRODUCT8','4740826937051'),('X0004112331','2021-08-03','SELLER2','PTNR2','PRODUCT3','6903735977538'),('X0005464331','2021-08-03','SELLER3','PTNR4','PRODUCT8','6603115132451'),('X0012638331','2021-08-04','SELLER2','PTNR6','PRODUCT10','5674013917727'),('X0012638331','2021-08-04','SELLER2','PTNR6','PRODUCT1','7285673339053'),('X0012638331','2021-08-04','SELLER2','PTNR6','PRODUCT1','4338364497332'),('X0012638331','2021-08-04','SELLER2','PTNR6','PRODUCT4','4731924080195'),('X0012638331','2021-08-04','SELLER2','PTNR6','PRODUCT1','4910255620314'),(NULL,'2021-07-03',NULL,'PTNR1','PRODUCT1','2901039724308'),(NULL,'2021-07-01',NULL,'PTNR1','PRODUCT1','9021464526705'),(NULL,'2021-07-01',NULL,'PTNR1','PRODUCT3','7947772404972'),(NULL,'2021-07-01',NULL,'PTNR1','PRODUCT3','8452451667128'),(NULL,'2021-07-01',NULL,'PTNR2','PRODUCT3','9661268121911'),(NULL,'2021-07-02',NULL,'PTNR2','PRODUCT2','5354578802528'),(NULL,'2021-07-04',NULL,'PTNR2','PRODUCT3','1780845912976'),(NULL,'2021-07-02',NULL,'PTNR3','PRODUCT4','1819284341382'),(NULL,'2021-07-02',NULL,'PTNR3','PRODUCT5','6073112538940'),(NULL,'2021-07-04',NULL,'PTNR3','PRODUCT1','2384024990524'),(NULL,'2021-07-01',NULL,'PTNR3','PRODUCT1','8164495964016'),(NULL,'2021-07-04',NULL,'PTNR3','PRODUCT4','2393455104679'),(NULL,'2021-07-03',NULL,'PTNR3','PRODUCT4','3230036913264'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT8','4093779269622'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT8','5798429185135'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT1','6513892125360'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT1','4386595565232'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT1','9357302678016'),(NULL,'2021-07-02',NULL,'PTNR4','PRODUCT3','7053483182537'),(NULL,'2021-07-02',NULL,'PTNR4','PRODUCT3','8214158468413'),(NULL,'2021-07-02',NULL,'PTNR5','PRODUCT8','9343582166688'),(NULL,'2021-07-02',NULL,'PTNR5','PRODUCT9','1551510518884'),(NULL,'2021-07-04',NULL,'PTNR5','PRODUCT8','4835826965135'),(NULL,'2021-07-04',NULL,'PTNR6','PRODUCT8','6585412580483'),(NULL,'2021-07-04',NULL,'PTNR6','PRODUCT8','6322301874015'),(NULL,'2021-07-05',NULL,'PTNR6','PRODUCT8','9755509065456'),(NULL,'2021-07-03',NULL,'PTNR6','PRODUCT5','7876897660986'),(NULL,'2021-07-04',NULL,'PTNR7','PRODUCT5','4253276116295'),(NULL,'2021-07-05',NULL,'PTNR8','PRODUCT5','6275169414572'),(NULL,'2021-07-01',NULL,'PTNR9','PRODUCT5','4895786011171'),(NULL,'2021-07-01',NULL,'PTNR10','PRODUCT10','1888870673826'),(NULL,'2021-07-01',NULL,'PTNR10','PRODUCT10','1378245033447'),(NULL,'2021-07-01',NULL,'PTNR10','PRODUCT7','1378245033447'),(NULL,'2021-07-01',NULL,'PTNR10','PRODUCT10','1378245033447'),(NULL,'2021-07-02',NULL,'PTNR10','PRODUCT4','1378245033447'),(NULL,'2021-07-05',NULL,'PTNR4','PRODUCT4','1378245033447'),(NULL,'2021-07-05',NULL,'PTNR4','PRODUCT10','1378245033447'),(NULL,'2021-07-03',NULL,'PTNR4','PRODUCT10','1378245033447'),(NULL,'2021-07-04',NULL,'PTNR4','PRODUCT7','1378245033447'),(NULL,'2021-07-05',NULL,'PTNR5','PRODUCT7','1378245033447'),(NULL,'2021-07-03',NULL,'PTNR5','PRODUCT7','1378245033447'),(NULL,'2021-07-03',NULL,'PTNR6','PRODUCT7','1378245033447'),(NULL,'2021-07-01',NULL,'PTNR10','PRODUCT4','1378245033447');
/*!40000 ALTER TABLE `NewTransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TriggerData
AFTER INSERT ON NewTransaction
FOR EACH ROW
BEGIN
  IF (( select count(*) from TransactionTrigger where TransactionTrigger.PARTNERCODE = NEW.BUYERCODE and TransactionTrigger.PRODUCTCODE= NEW.PRODUCTCODE and TransactionTrigger.DATE = New.INVOICEDATE  ) >= 1) THEN
   UPDATE TransactionTrigger SET  TransactionTrigger.TOTALSALESCOUNT = TOTALSALESCOUNT+1 , TransactionTrigger.TOTALSALESVALUE = TOTALSALESVALUE+(select ProductMaster.DEALERPRICE from ProductMaster where ProductMaster.PRODUCTCODE = NEW.PRODUCTCODE) where TransactionTrigger.PARTNERCODE = NEW.BUYERCODE and TransactionTrigger.PRODUCTCODE= NEW.PRODUCTCODE and TransactionTrigger.DATE = New.INVOICEDATE ;

 ELSE
   INSERT INTO TransactionTrigger (DATE,PARTNERCODE,PRODUCTCODE,REGION,PRODUCTTYPE,TOTALSALESCOUNT,TOTALSALESVALUE,SELLERCODE) VALUES(New.INVOICEDATE,NEW.BUYERCODE,NEW.PRODUCTCODE,(select ATTRIBUTE from PartnerMaster where PartnerMaster.PARTNERCODE = NEW.BUYERCODE),(select PRODUCTTYPE from ProductMaster where ProductMaster.PRODUCTCODE = NEW.PRODUCTCODE ),1,(select DEALERPRICE from ProductMaster where ProductMaster.PRODUCTCODE = NEW.PRODUCTCODE),NEW.SELLERCODE);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PartnerMaster`
--

DROP TABLE IF EXISTS `PartnerMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartnerMaster` (
  `PARTNERCODE` varchar(100) DEFAULT NULL,
  `ATTRIBUTE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartnerMaster`
--

LOCK TABLES `PartnerMaster` WRITE;
/*!40000 ALTER TABLE `PartnerMaster` DISABLE KEYS */;
INSERT INTO `PartnerMaster` VALUES ('PTNR1','DCM'),('PTNR2','DCM'),('PTNR3','DCM'),('PTNR4','DCM'),('PTNR5','RCM'),('PTNR6','RCM'),('PTNR7','DCM'),('PTNR8','DCM'),('PTNR9','RCM'),('PTNR10','RCM');
/*!40000 ALTER TABLE `PartnerMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductMaster`
--

DROP TABLE IF EXISTS `ProductMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductMaster` (
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `PRODUCTTYPE` varchar(100) DEFAULT NULL,
  `DEALERPRICE` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductMaster`
--

LOCK TABLES `ProductMaster` WRITE;
/*!40000 ALTER TABLE `ProductMaster` DISABLE KEYS */;
INSERT INTO `ProductMaster` VALUES ('PRODUCT1','FeaturePhone',10000.00),('PRODUCT2','FeaturePhone',8000.00),('PRODUCT3','FeaturePhone',14000.00),('PRODUCT4','FeaturePhone',15000.00),('PRODUCT5','SmartPhone',34000.00),('PRODUCT6','SmartPhone',19890.00),('PRODUCT7','SmartPhone',18000.00),('PRODUCT8','Tab',43000.00),('PRODUCT9','Gear',19000.00),('PRODUCT10','SmartPhone',40000.00);
/*!40000 ALTER TABLE `ProductMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sellout`
--

DROP TABLE IF EXISTS `Sellout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sellout` (
  `PARTNERCODE` varchar(100) DEFAULT NULL,
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `SELLOUTDATE` date DEFAULT NULL,
  `SERIALNUM` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sellout`
--

LOCK TABLES `Sellout` WRITE;
/*!40000 ALTER TABLE `Sellout` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sellout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tertiary`
--

DROP TABLE IF EXISTS `Tertiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tertiary` (
  `INVOICENO` varchar(100) DEFAULT NULL,
  `INVOICEDATE` date DEFAULT NULL,
  `SELLERCODE` varchar(100) DEFAULT NULL,
  `BUYERCODE` varchar(100) DEFAULT NULL,
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `SERIALNUM` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tertiary`
--

LOCK TABLES `Tertiary` WRITE;
/*!40000 ALTER TABLE `Tertiary` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tertiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `PARTNERCODE` varchar(100) DEFAULT NULL,
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `SELLOUTDATE` date DEFAULT NULL,
  `SERIALNUM` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES ('PTNR1','PRODUCT1','2021-08-03','8968996183342'),('PTNR1','PRODUCT1','2021-08-01','7398488714748'),('PTNR1','PRODUCT2','2021-08-03','2793702555065'),('PTNR1','PRODUCT2','2021-08-03','6902577934349'),('PTNR2','PRODUCT1','2021-08-01','4682612894681'),('PTNR2','PRODUCT2','2021-08-03','7534173072645'),('PTNR2','PRODUCT3','2021-08-03','7966740771872'),('PTNR3','PRODUCT4','2021-08-01','3076478564384'),('PTNR3','PRODUCT5','2021-08-02','6604277462362'),('PTNR3','PRODUCT5','2021-08-02','5028882823446'),('PTNR3','PRODUCT5','2021-08-02','5894331636600'),('PTNR3','PRODUCT6','2021-08-02','8831677321362'),('PTNR3','PRODUCT7','2021-08-04','3288616778824'),('PTNR4','PRODUCT3','2021-08-03','4741137291482'),('PTNR4','PRODUCT3','2021-08-03','2620967442984'),('PTNR4','PRODUCT3','2021-08-03','2884586445256'),('PTNR4','PRODUCT3','2021-08-03','1885666783473'),('PTNR4','PRODUCT3','2021-08-03','6815974675148'),('PTNR4','PRODUCT3','2021-08-03','7504012514273'),('PTNR4','PRODUCT3','2021-08-03','8740544001985'),('PTNR5','PRODUCT8','2021-08-03','7773947581148'),('PTNR5','PRODUCT9','2021-08-03','8266821627296'),('PTNR5','PRODUCT8','2021-08-01','4393133560189'),('PTNR6','PRODUCT8','2021-08-01','7618951603842'),('PTNR6','PRODUCT8','2021-08-01','3211936362294'),('PTNR6','PRODUCT8','2021-08-01','1689258473193'),('PTNR6','PRODUCT10','2021-08-01','2702671648463'),('PTNR7','PRODUCT10','2021-08-02','7834747165331'),('PTNR8','PRODUCT10','2021-08-02','3980333970214'),('PTNR9','PRODUCT10','2021-08-02','3961521983341'),('PTNR10','PRODUCT10','2021-08-02','5764771942992'),('PTNR10','PRODUCT10','2021-08-02','2641715948261'),('PTNR2','PRODUCT2','2021-08-05','6648711147605'),('PTNR2','PRODUCT3','2021-08-05','3783169206577'),('PTNR3','PRODUCT4','2021-08-05','4103388440158'),('PTNR3','PRODUCT5','2021-08-05','4360258697985'),('PTNR3','PRODUCT5','2021-08-05','6297562387313'),('PTNR3','PRODUCT5','2021-08-05','6877514837509'),('PTNR3','PRODUCT6','2021-08-05','6258214799343'),('PTNR3','PRODUCT7','2021-08-04','8152958991945'),('PTNR4','PRODUCT3','2021-08-04','7695282976718'),('PTNR4','PRODUCT3','2021-08-04','8113987825001'),('PTNR4','PRODUCT8','2021-08-04','2917395243580'),('PTNR4','PRODUCT8','2021-08-04','8462139293615'),('PTNR4','PRODUCT8','2021-08-05','7812333746156'),('PTNR6','PRODUCT8','2021-08-02','8349497263971'),('PTNR6','PRODUCT10','2021-08-02','4885028454484'),('PTNR6','PRODUCT10','2021-08-02','9091501238117'),('PTNR6','PRODUCT10','2021-08-04','1663599552211'),('PTNR7','PRODUCT10','2021-08-03','2143855444707');
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransactionTrigger`
--

DROP TABLE IF EXISTS `TransactionTrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransactionTrigger` (
  `DATE` date NOT NULL,
  `PARTNERCODE` varchar(100) DEFAULT NULL,
  `PRODUCTCODE` varchar(100) DEFAULT NULL,
  `REGION` varchar(10) DEFAULT NULL,
  `PRODUCTTYPE` varchar(100) DEFAULT NULL,
  `TOTALSALESCOUNT` int(11) DEFAULT NULL,
  `TOTALSALESVALUE` double(10,2) DEFAULT NULL,
  `SELLERCODE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransactionTrigger`
--

LOCK TABLES `TransactionTrigger` WRITE;
/*!40000 ALTER TABLE `TransactionTrigger` DISABLE KEYS */;
INSERT INTO `TransactionTrigger` VALUES ('2021-08-03','PTNR1','PRODUCT1','DCM','FeaturePhone',3,30000.00,'SELLER1'),('2021-08-03','PTNR1','PRODUCT3','DCM','FeaturePhone',2,28000.00,'SELLER1'),('2021-08-03','PTNR1','PRODUCT4','DCM','FeaturePhone',2,30000.00,'SELLER1'),('2021-08-03','PTNR1','PRODUCT5','DCM','SmartPhone',2,68000.00,'SELLER1'),('2021-08-02','PTNR2','PRODUCT5','DCM','SmartPhone',6,204000.00,'SELLER1'),('2021-08-01','PTNR3','PRODUCT2','DCM','FeaturePhone',6,48000.00,'SELLER2'),('2021-08-01','PTNR3','PRODUCT8','DCM','Tab',2,86000.00,'SELLER2'),('2021-08-01','PTNR3','PRODUCT6','DCM','SmartPhone',2,39780.00,'SELLER2'),('2021-08-01','PTNR3','PRODUCT7','DCM','SmartPhone',2,36000.00,'SELLER2'),('2021-08-03','PTNR2','PRODUCT7','DCM','SmartPhone',1,18000.00,'SELLER2'),('2021-08-03','PTNR2','PRODUCT8','DCM','Tab',2,86000.00,'SELLER2'),('2021-08-03','PTNR2','PRODUCT9','DCM','Gear',1,19000.00,'SELLER2'),('2021-08-03','PTNR4','PRODUCT8','DCM','Tab',2,86000.00,'SELLER3'),('2021-08-04','PTNR6','PRODUCT10','RCM','SmartPhone',5,200000.00,'SELLER2'),('2021-08-04','PTNR6','PRODUCT1','RCM','FeaturePhone',4,40000.00,'SELLER2'),('2021-08-04','PTNR6','PRODUCT6','RCM','SmartPhone',2,39780.00,'SELLER2'),('2021-08-04','PTNR6','PRODUCT3','RCM','FeaturePhone',1,14000.00,'SELLER2'),('2021-08-02','PTNR7','PRODUCT2','DCM','FeaturePhone',3,24000.00,'SELLER3'),('2021-08-02','PTNR7','PRODUCT7','DCM','SmartPhone',2,36000.00,'SELLER3'),('2021-08-02','PTNR7','PRODUCT9','DCM','Gear',1,19000.00,'SELLER3'),('2021-08-02','PTNR7','PRODUCT10','DCM','SmartPhone',1,40000.00,'SELLER3'),('2021-08-03','PTNR9','PRODUCT3','RCM','FeaturePhone',1,14000.00,'SELLER1'),('2021-08-03','PTNR9','PRODUCT4','RCM','FeaturePhone',1,15000.00,'SELLER1'),('2021-08-03','PTNR9','PRODUCT5','RCM','SmartPhone',1,34000.00,'SELLER1'),('2021-08-02','PTNR8','PRODUCT5','DCM','SmartPhone',1,34000.00,'SELLER1'),('2021-08-02','PTNR8','PRODUCT10','DCM','SmartPhone',2,80000.00,'SELLER1'),('2021-08-03','PTNR10','PRODUCT8','RCM','Tab',1,43000.00,'SELLER2'),('2021-08-03','PTNR10','PRODUCT6','RCM','SmartPhone',2,39780.00,'SELLER2'),('2021-08-04','PTNR4','PRODUCT6','DCM','SmartPhone',1,19890.00,'SELLER2'),('2021-08-04','PTNR4','PRODUCT8','DCM','Tab',1,43000.00,'SELLER2'),('2021-08-04','PTNR4','PRODUCT10','DCM','SmartPhone',1,40000.00,'SELLER2'),('2021-08-02','PTNR2','PRODUCT1','DCM','FeaturePhone',1,10000.00,'SELLER1'),('2021-08-02','PTNR2','PRODUCT2','DCM','FeaturePhone',1,8000.00,'SELLER1'),('2021-08-03','PTNR2','PRODUCT3','DCM','FeaturePhone',2,28000.00,'SELLER2'),('2021-08-04','PTNR6','PRODUCT4','RCM','FeaturePhone',1,15000.00,'SELLER2'),('2021-07-03','PTNR1','PRODUCT1','DCM','FeaturePhone',1,10000.00,NULL),('2021-07-01','PTNR1','PRODUCT1','DCM','FeaturePhone',1,10000.00,NULL),('2021-07-01','PTNR1','PRODUCT3','DCM','FeaturePhone',2,28000.00,NULL),('2021-07-01','PTNR2','PRODUCT3','DCM','FeaturePhone',1,14000.00,NULL),('2021-07-02','PTNR2','PRODUCT2','DCM','FeaturePhone',1,8000.00,NULL),('2021-07-04','PTNR2','PRODUCT3','DCM','FeaturePhone',1,14000.00,NULL),('2021-07-02','PTNR3','PRODUCT4','DCM','FeaturePhone',1,15000.00,NULL),('2021-07-02','PTNR3','PRODUCT5','DCM','SmartPhone',1,34000.00,NULL),('2021-07-04','PTNR3','PRODUCT1','DCM','FeaturePhone',1,10000.00,NULL),('2021-07-01','PTNR3','PRODUCT1','DCM','FeaturePhone',1,10000.00,NULL),('2021-07-04','PTNR3','PRODUCT4','DCM','FeaturePhone',1,15000.00,NULL),('2021-07-03','PTNR3','PRODUCT4','DCM','FeaturePhone',1,15000.00,NULL),('2021-07-03','PTNR4','PRODUCT8','DCM','Tab',2,86000.00,NULL),('2021-07-03','PTNR4','PRODUCT1','DCM','FeaturePhone',3,30000.00,NULL),('2021-07-02','PTNR4','PRODUCT3','DCM','FeaturePhone',2,28000.00,NULL),('2021-07-02','PTNR5','PRODUCT8','RCM','Tab',1,43000.00,NULL),('2021-07-02','PTNR5','PRODUCT9','RCM','Gear',1,19000.00,NULL),('2021-07-04','PTNR5','PRODUCT8','RCM','Tab',1,43000.00,NULL),('2021-07-04','PTNR6','PRODUCT8','RCM','Tab',2,86000.00,NULL),('2021-07-05','PTNR6','PRODUCT8','RCM','Tab',1,43000.00,NULL),('2021-07-03','PTNR6','PRODUCT5','RCM','SmartPhone',1,34000.00,NULL),('2021-07-04','PTNR7','PRODUCT5','DCM','SmartPhone',1,34000.00,NULL),('2021-07-05','PTNR8','PRODUCT5','DCM','SmartPhone',1,34000.00,NULL),('2021-07-01','PTNR9','PRODUCT5','RCM','SmartPhone',1,34000.00,NULL),('2021-07-01','PTNR10','PRODUCT10','RCM','SmartPhone',3,120000.00,NULL),('2021-07-01','PTNR10','PRODUCT7','RCM','SmartPhone',1,18000.00,NULL),('2021-07-02','PTNR10','PRODUCT4','RCM','FeaturePhone',1,15000.00,NULL),('2021-07-05','PTNR4','PRODUCT4','DCM','FeaturePhone',1,15000.00,NULL),('2021-07-05','PTNR4','PRODUCT10','DCM','SmartPhone',1,40000.00,NULL),('2021-07-03','PTNR4','PRODUCT10','DCM','SmartPhone',1,40000.00,NULL),('2021-07-04','PTNR4','PRODUCT7','DCM','SmartPhone',1,18000.00,NULL),('2021-07-05','PTNR5','PRODUCT7','RCM','SmartPhone',1,18000.00,NULL),('2021-07-03','PTNR5','PRODUCT7','RCM','SmartPhone',1,18000.00,NULL),('2021-07-03','PTNR6','PRODUCT7','RCM','SmartPhone',1,18000.00,NULL),('2021-07-01','PTNR10','PRODUCT4','RCM','FeaturePhone',1,15000.00,NULL);
/*!40000 ALTER TABLE `TransactionTrigger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-20  5:10:42
