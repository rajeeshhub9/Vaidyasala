-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.15-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gcomp1_21
--

CREATE DATABASE IF NOT EXISTS gcomp1_21;
USE gcomp1_21;

--
-- Definition of table `billauth`
--

DROP TABLE IF EXISTS `billauth`;
CREATE TABLE `billauth` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `scheme` int(11) DEFAULT NULL,
  `ent` int(11) DEFAULT NULL,
  `edt` int(11) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billauth`
--

/*!40000 ALTER TABLE `billauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `billauth` ENABLE KEYS */;


--
-- Definition of table `billbuffer`
--

DROP TABLE IF EXISTS `billbuffer`;
CREATE TABLE `billbuffer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_no` int(11) DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billbuffer`
--

/*!40000 ALTER TABLE `billbuffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `billbuffer` ENABLE KEYS */;


--
-- Definition of table `billdoc`
--

DROP TABLE IF EXISTS `billdoc`;
CREATE TABLE `billdoc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `nch` int(11) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billdoc`
--

/*!40000 ALTER TABLE `billdoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `billdoc` ENABLE KEYS */;


--
-- Definition of table `billmain`
--

DROP TABLE IF EXISTS `billmain`;
CREATE TABLE `billmain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billmain`
--

/*!40000 ALTER TABLE `billmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `billmain` ENABLE KEYS */;


--
-- Definition of table `billsub`
--

DROP TABLE IF EXISTS `billsub`;
CREATE TABLE `billsub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billsub`
--

/*!40000 ALTER TABLE `billsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `billsub` ENABLE KEYS */;


--
-- Definition of table `btwomain`
--

DROP TABLE IF EXISTS `btwomain`;
CREATE TABLE `btwomain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btwomain`
--

/*!40000 ALTER TABLE `btwomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `btwomain` ENABLE KEYS */;


--
-- Definition of table `btwosub`
--

DROP TABLE IF EXISTS `btwosub`;
CREATE TABLE `btwosub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btwosub`
--

/*!40000 ALTER TABLE `btwosub` DISABLE KEYS */;
/*!40000 ALTER TABLE `btwosub` ENABLE KEYS */;


--
-- Definition of table `cancelm`
--

DROP TABLE IF EXISTS `cancelm`;
CREATE TABLE `cancelm` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelm`
--

/*!40000 ALTER TABLE `cancelm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelm` ENABLE KEYS */;


--
-- Definition of table `cancelm2`
--

DROP TABLE IF EXISTS `cancelm2`;
CREATE TABLE `cancelm2` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelm2`
--

/*!40000 ALTER TABLE `cancelm2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelm2` ENABLE KEYS */;


--
-- Definition of table `cancels1`
--

DROP TABLE IF EXISTS `cancels1`;
CREATE TABLE `cancels1` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancels1`
--

/*!40000 ALTER TABLE `cancels1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancels1` ENABLE KEYS */;


--
-- Definition of table `cancels2`
--

DROP TABLE IF EXISTS `cancels2`;
CREATE TABLE `cancels2` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancels2`
--

/*!40000 ALTER TABLE `cancels2` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancels2` ENABLE KEYS */;


--
-- Definition of table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `cust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `addr1` varchar(30) DEFAULT NULL,
  `addr2` varchar(30) DEFAULT NULL,
  `addr3` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `pager` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `cstno` varchar(30) DEFAULT NULL,
  `kgstno` varchar(30) DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`cust_id`,`code`,`name`,`addr1`,`addr2`,`addr3`,`phone`,`fax`,`pager`,`email`,`mobile`,`amount`,`cstno`,`kgstno`,`rep_code`) VALUES 
 (1,1,'','','','','','','','','',0,'','',0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `addr1` varchar(30) DEFAULT NULL,
  `addr2` varchar(30) DEFAULT NULL,
  `addr3` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `pager` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `cstno` varchar(30) DEFAULT NULL,
  `kgstno` varchar(30) DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cust_id`,`code`,`name`,`addr1`,`addr2`,`addr3`,`phone`,`fax`,`pager`,`email`,`mobile`,`amount`,`cstno`,`kgstno`,`rep_code`) VALUES 
 (1,1,'','','','','','','','','',0,'','',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `dbook`
--

DROP TABLE IF EXISTS `dbook`;
CREATE TABLE `dbook` (
  `db_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `byto` varchar(2) DEFAULT NULL,
  `acc_code` int(11) DEFAULT NULL,
  `sub_code` int(11) DEFAULT NULL,
  `amt1` double DEFAULT NULL,
  `amt2` double DEFAULT NULL,
  `narrate` varchar(140) DEFAULT NULL,
  `type_code` int(11) DEFAULT NULL,
  `link_code` varchar(11) DEFAULT NULL,
  `tag` varchar(1) DEFAULT NULL,
  `recon_date` date DEFAULT NULL,
  PRIMARY KEY (`db_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbook`
--

/*!40000 ALTER TABLE `dbook` DISABLE KEYS */;
INSERT INTO `dbook` (`db_id`,`date`,`byto`,`acc_code`,`sub_code`,`amt1`,`amt2`,`narrate`,`type_code`,`link_code`,`tag`,`recon_date`) VALUES 
 (2,'2021-04-13','By',7,999996,94832,0,'as per Purchase No.INV0000777/13-04-2021 from SNA OUSHADHASALA',1,'FP1','','0000-00-00');
/*!40000 ALTER TABLE `dbook` ENABLE KEYS */;


--
-- Definition of table `dnotemain`
--

DROP TABLE IF EXISTS `dnotemain`;
CREATE TABLE `dnotemain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dnotemain`
--

/*!40000 ALTER TABLE `dnotemain` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnotemain` ENABLE KEYS */;


--
-- Definition of table `dnotesub`
--

DROP TABLE IF EXISTS `dnotesub`;
CREATE TABLE `dnotesub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dnotesub`
--

/*!40000 ALTER TABLE `dnotesub` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnotesub` ENABLE KEYS */;


--
-- Definition of table `fgst`
--

DROP TABLE IF EXISTS `fgst`;
CREATE TABLE `fgst` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intype` int(11) DEFAULT NULL,
  `inw_no` int(11) DEFAULT NULL,
  `sgstper` double DEFAULT NULL,
  `sgstval` double DEFAULT NULL,
  `cgstper` double DEFAULT NULL,
  `cgstval` double DEFAULT NULL,
  `igstper` double DEFAULT NULL,
  `igstval` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fgst`
--

/*!40000 ALTER TABLE `fgst` DISABLE KEYS */;
INSERT INTO `fgst` (`id`,`intype`,`inw_no`,`sgstper`,`sgstval`,`cgstper`,`cgstval`,`igstper`,`igstval`) VALUES 
 (3,1,1,2.5,2092.72,2.5,2092.72,5,0),
 (4,1,1,6,368.51,6,368.51,12,0);
/*!40000 ALTER TABLE `fgst` ENABLE KEYS */;


--
-- Definition of table `findam`
--

DROP TABLE IF EXISTS `findam`;
CREATE TABLE `findam` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fin_code` varchar(7) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `reason1` varchar(28) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `reason2` varchar(28) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `findam`
--

/*!40000 ALTER TABLE `findam` DISABLE KEYS */;
/*!40000 ALTER TABLE `findam` ENABLE KEYS */;


--
-- Definition of table `finexp`
--

DROP TABLE IF EXISTS `finexp`;
CREATE TABLE `finexp` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fin_code` varchar(7) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `reason1` varchar(28) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `reason2` varchar(28) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finexp`
--

/*!40000 ALTER TABLE `finexp` DISABLE KEYS */;
/*!40000 ALTER TABLE `finexp` ENABLE KEYS */;


--
-- Definition of table `finexs`
--

DROP TABLE IF EXISTS `finexs`;
CREATE TABLE `finexs` (
  `f_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fin_code` varchar(7) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `reason1` varchar(28) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `reason2` varchar(28) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finexs`
--

/*!40000 ALTER TABLE `finexs` DISABLE KEYS */;
/*!40000 ALTER TABLE `finexs` ENABLE KEYS */;


--
-- Definition of table `finish`
--

DROP TABLE IF EXISTS `finish`;
CREATE TABLE `finish` (
  `f_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fin_code` varchar(7) DEFAULT NULL,
  `fin_name` varchar(35) DEFAULT NULL,
  `aliasname` varchar(35) DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `grp_name` varchar(35) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `rate3` double DEFAULT NULL,
  `rate4` double DEFAULT NULL,
  `rate3per` double DEFAULT NULL,
  `rate4per` double DEFAULT NULL,
  `kgst` double DEFAULT NULL,
  `cst` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `op_stock` int(11) DEFAULT NULL,
  `op_loose` int(11) DEFAULT NULL,
  `uqty` int(11) DEFAULT NULL,
  `in_kg` double DEFAULT NULL,
  `com_code` varchar(12) DEFAULT NULL,
  `mfg_code` int(11) DEFAULT NULL,
  `mfrer` varchar(40) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `re_level` int(11) DEFAULT NULL,
  `shelf_no` varchar(3) DEFAULT NULL,
  `row_no` varchar(3) DEFAULT NULL,
  `dambulk` int(11) DEFAULT NULL,
  `expbulk` int(11) DEFAULT NULL,
  `damloose` int(11) DEFAULT NULL,
  `exploose` int(11) DEFAULT NULL,
  `exsbulk` int(11) DEFAULT NULL,
  `exsloose` int(11) DEFAULT NULL,
  `prate` double DEFAULT NULL,
  `ptax` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `freeqty` int(11) DEFAULT NULL,
  `freefor` int(11) DEFAULT NULL,
  `descript` longtext NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finish`
--

/*!40000 ALTER TABLE `finish` DISABLE KEYS */;
INSERT INTO `finish` (`f_id`,`fin_code`,`fin_name`,`aliasname`,`unit`,`grp_no`,`grp_name`,`mrp`,`rate1`,`rate2`,`rate3`,`rate4`,`rate3per`,`rate4per`,`kgst`,`cst`,`stock`,`loose`,`op_stock`,`op_loose`,`uqty`,`in_kg`,`com_code`,`mfg_code`,`mfrer`,`batch_no`,`mfg_date`,`exp_date`,`re_level`,`shelf_no`,`row_no`,`dambulk`,`expbulk`,`damloose`,`exploose`,`exsbulk`,`exsloose`,`prate`,`ptax`,`sup_code`,`freeqty`,`freefor`,`descript`) VALUES 
 (1,'AA0001','AMALAKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',140,140,0.31,140,140,0,0,0,20,0,0,0,0,450,1,'0.31',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (2,'AA0002','ARAGWADADYASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,2,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (3,'AA0003','ABHAYARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,22,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (4,'AA0004','AMRUTARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,22,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (5,'AA0005','ASOKARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,5,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (6,'AA0006','ASWAGANDARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',135,135,0.3,135,135,0,0,0,20,5,0,0,0,450,1,'0.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (7,'AA0007','ARAVINDASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',90,90,0.2,90,90,0,0,0,20,5,0,0,0,450,1,'0.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (8,'AA0008','AYASKRUTI 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,3,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (9,'AA0009','BALARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,11,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (10,'AA0010','CHANDANASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',80,80,0.18,80,80,0,0,0,20,2,0,0,0,450,1,'0.18',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,76.19,5,1,0,0,''),
 (11,'AA0011','CHITRAKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',125,125,0.28,125,125,0,0,0,20,2,0,0,0,450,1,'0.28',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (12,'AA0012','DANDYARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,2,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (13,'AA0013','DASAMOOLARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',110,110,0.24,110,110,0,0,0,20,33,0,0,0,450,1,'0.24',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (14,'AA0014','AJAMAMSA RASAYANAM 500 GM','','ML',1,'ARISHTA ASAVAAS',115,115,0.26,115,115,0,0,0,20,2,0,0,0,450,1,'0.26',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,154.87,12,1,0,0,''),
 (15,'AA0015','DHANWANTARARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,5,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (16,'AA0016','DRAKSHARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',120,120,0.27,120,120,0,0,0,20,5,0,0,0,450,1,'0.27',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (17,'AA0017','DURALABHARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',90,90,0.2,90,90,0,0,0,20,3,0,0,0,450,1,'0.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (18,'AA0018','JEERAKARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',125,125,0.28,125,125,0,0,0,20,3,0,0,0,450,1,'0.28',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (19,'AA0019','KANAKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',80,80,0.18,80,80,0,0,0,20,10,0,0,0,450,1,'0.18',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,76.19,5,1,0,0,''),
 (20,'AA0020','KHADIRARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',110,110,0.24,110,110,0,0,0,20,5,0,0,0,450,1,'0.24',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (21,'AA0021','KOKILAKSHARASAM 450 ML','','ML',1,'ARISHTA ASAVAAS',120,120,0.27,120,120,0,0,0,20,0,0,0,0,450,1,'0.27',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (22,'AA0022','KUMARYASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,3,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (23,'AA0023','KUTAJARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,5,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (24,'AA0024','LAKSHMANARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,0,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (25,'AA0025','LODRASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',110,110,0.24,110,110,0,0,0,20,3,0,0,0,450,1,'0.24',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (26,'AA0026','LOHASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,3,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (27,'AA0027','MADOOKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',135,135,0.3,135,135,0,0,0,20,0,0,0,0,450,1,'0.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (28,'AA0028','MOOLAKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',145,145,0.32,145,145,0,0,0,20,0,0,0,0,450,1,'0.32',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (29,'AA0029','MUSTARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,5,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (30,'AA0030','NIMBAMRUTASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',120,120,0.27,120,120,0,0,0,20,3,0,0,0,450,1,'0.27',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (31,'AA0031','PARTHARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,3,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (32,'AA0032','PATOLARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,5,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (33,'AA0033','PIPPALYASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,5,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (34,'AA0034','POOTHIKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,0,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (35,'AA0035','POOTHIKARANJASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',110,110,0.24,110,110,0,0,0,20,0,0,0,0,450,1,'0.24',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (36,'AA0036','PUNARNAVASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',90,90,0.2,90,90,0,0,0,20,5,0,0,0,450,1,'0.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (37,'AA0037','ROHITAKASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',85,85,0.19,85,85,0,0,0,20,0,0,0,0,450,1,'0.19',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (38,'AA0038','SARASWATARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',895,895,1.99,895,895,0,0,0,20,0,0,0,0,450,1,'1.99',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (39,'AA0039','SARASWATARISHTAM 100 ML','','ML',1,'ARISHTA ASAVAAS',210,210,2.1,210,210,0,0,0,20,1,0,0,0,100,1,'2.1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,200,5,1,0,0,''),
 (40,'AA0040','SAPTACHADARASAM 200 ML','','ML',1,'ARISHTA ASAVAAS',75,75,0.38,75,75,0,0,0,20,0,0,0,0,200,1,'0.38',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (41,'AA0041','SARIBADYASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',100,100,0.22,100,100,0,0,0,20,0,0,0,0,450,1,'0.22',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (42,'AA0042','SUDARSANARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',105,105,0.23,105,105,0,0,0,20,0,0,0,0,450,1,'0.23',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (43,'AA0043','USEERASAVAM 450 ML','','ML',1,'ARISHTA ASAVAAS',95,95,0.21,95,95,0,0,0,20,2,0,0,0,450,1,'0.21',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (44,'AA0044','VASARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',125,125,0.28,125,125,0,0,0,20,11,0,0,0,450,1,'0.28',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (45,'AA0045','VARANADYARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',105,105,0.23,105,105,0,0,0,20,5,0,0,0,450,1,'0.23',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (46,'AA0046','DASAMOOLAJEERAKADYARISHTAM 450 ML','','ML',1,'ARISHTA ASAVAAS',115,115,0.26,115,115,0,0,0,20,3,0,0,0,450,1,'0.26',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,109.52,5,1,0,0,''),
 (47,'RA0001','INDRALUPTAMASHI 10 GM','','GM',2,'BHASMASINDOORAS',70,70,0,70,70,0,0,0,20,8,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.95,12,1,0,0,''),
 (48,'RA0002','HREEBERAKSHARA 50 GM','','GM',2,'BHASMASINDOORAS',135,135,0,135,135,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (49,'RA0003','KALYANAKSHARA 50 GM','','GM',2,'BHASMASINDOORAS',110,110,0,110,110,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (50,'RA0004','ILANEERKUZHAMPU 5 GM','','GM',2,'BHASMASINDOORAS',35,35,0,35,35,0,0,0,20,20,0,0,0,5,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,33.33,5,1,0,0,''),
 (51,'CH0001','ASHTACHURNAM 50 GM','','GM',3,'CHOORNAM',65,65,0,65,65,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (52,'CH0002','ASWAGANDADI CHURNAM 50 GM','','GM',3,'CHOORNAM',75,75,0,75,75,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.37,12,1,0,0,''),
 (53,'CH0003','AVALGUJABEEJADI CHURNAM 50 GM','','GM',3,'CHOORNAM',70,70,0,70,70,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (54,'CH0004','AVIPATHI CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (55,'CH0005','CHURNARAJAN 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (56,'CH0006','DADIMADI CHURNAM 50 GM','','GM',3,'CHOORNAM',75,75,0,75,75,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (57,'CH0007','DADIMASHTAKA CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (58,'CH0008','DHATRINISHADI CHURNAM 250 GM','','GM',3,'CHOORNAM',230,230,0,230,230,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (59,'CH0009','DWIRUTTARA CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (60,'CH0010','GANDHACHURNAM-ELADI CHURNAM 50 GM','','GM',3,'CHOORNAM',90,90,0,90,90,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (61,'CH0011','GANDHACHURNAM-ELADI CHURNAM 500 GM','','GM',3,'CHOORNAM',810,810,0,810,810,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (62,'CH0012','GOKSHURA CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (63,'CH0013','GRUHADHUMADILEPA CHURNAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.1,5,1,0,0,''),
 (64,'CH0014','GRUHADHUMADIUDWARATANA CH 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,44.25,12,1,0,0,''),
 (65,'CH0015','GUGGULUPANCHAPALA CHURNAM 50 GM','','GM',3,'CHOORNAM',75,75,0,75,75,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,71.43,5,1,0,0,''),
 (66,'CH0016','GULUCHIPATRADI CHURNAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (67,'CH0017','HARIDRAKHANDAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (68,'CH0018','HINGUVACHADI CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,7,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (69,'CH0019','HUTHABHUGADI CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (70,'CH0020','INDUPPUKANA CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (71,'CH0021','JATAMAYADI CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (72,'CH0022','JATAMAYADI CHURNAM 500 GM','','GM',3,'CHOORNAM',450,450,0,450,450,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (73,'CH0023','KALAKA CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (74,'CH0024','KACHURADI CHURNAM 10 GM','','GM',3,'CHOORNAM',85,85,0,85,85,0,0,0,20,5,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (75,'CH0025','KARPOORADI CHURNAM 50 GM','','GM',3,'CHOORNAM',70,70,0,70,70,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (76,'CH0026','KOLAKULATHADI CHURNAM 100 GM','','GM',3,'CHOORNAM',65,65,0,65,65,0,0,0,20,10,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (77,'CH0027','KOLAKULATHADI CHURNAM 500 GM','','GM',3,'CHOORNAM',290,290,0,290,290,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (78,'CH0028','KOTTAMCHUKKADI CHURNAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,15,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.1,5,1,0,0,''),
 (79,'CH0029','KOTTAMCHUKKADI CHURNAM 500 GM','','GM',3,'CHOORNAM',360,360,0,360,360,0,0,0,20,2,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,342.86,5,1,0,0,''),
 (80,'CH0030','LODHRADI CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (81,'CH0031','NAGARADI CHURNAM 50 GM','','GM',3,'CHOORNAM',90,90,0,90,90,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (82,'CH0032','NAGARADI CHURNAM 500 GM','','GM',3,'CHOORNAM',810,810,0,810,810,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (83,'CH0033','NALPAMARADI CHURNAM 50 GM','','GM',3,'CHOORNAM',80,80,0,80,80,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,76.19,5,1,0,0,''),
 (84,'CH0034','NIMBADI CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (85,'CH0035','PANCHAKOLA CHURNAM 50 GM','','GM',3,'CHOORNAM',65,65,0,65,65,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (86,'CH0036','PULINKUZHAMPU 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (87,'CH0037','PUSHYANUGA CHURNAM 50 GM','','GM',3,'CHOORNAM',95,95,0,95,95,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (88,'CH0038','RASNADI CHURNAM 10 GM','','GM',3,'CHOORNAM',15,15,0,15,15,0,0,0,20,25,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,357.14,5,1,0,0,''),
 (89,'CH0039','RASNADI CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (90,'CH0040','RAJANYADI CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (91,'CH0041','RAKTACHANDANA CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (92,'CH0042','SARASIJAMAKARANDADI CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (93,'CH0043','SARASWATA CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (94,'CH0044','SHADDARANA CHURNAM 50 GM','','GM',3,'CHOORNAM',110,110,0,110,110,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (95,'CH0045','SHATAHWADI CHURNAM 50 GM','','GM',3,'CHOORNAM',65,65,0,65,65,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (96,'CH0046','SUKHAVIRECHANA CHURNAM 50 GM','','GM',3,'CHOORNAM',95,95,0,95,95,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (97,'CH0047','SNA DHANTA DAVANA CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,44.25,12,1,0,0,''),
 (98,'CH0048','SNA DAHASAMANI 50 GM','','GM',3,'CHOORNAM',30,30,0,30,30,0,0,0,20,11,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,26.55,12,1,0,0,''),
 (99,'CH0049','SNA MUKHAKANTHI CHURNAM 50 GM','','GM',3,'CHOORNAM',135,135,0,135,135,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.47,12,1,0,0,''),
 (100,'CH0050','THALEESAPATRADI CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,15,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (101,'CH0051','THALEESAPATRASITA VATAKAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.1,5,1,0,0,''),
 (102,'CH0052','TRIPHALA CHURNAM (VARA CHURNAM) 50G','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (103,'CH0053','TRIPHALA CHURNAM (VARA CHURNAM)500G','','GM',3,'CHOORNAM',450,450,0,450,450,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (104,'CH0054','TRIPHALADI CHURNAM 50 GM','','GM',3,'CHOORNAM',50,50,0,50,50,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (105,'CH0055','TWAGELADI CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (106,'CH0056','UPANAHA CHURNAM 50 GM','','GM',3,'CHOORNAM',35,35,0,35,35,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,33.33,5,1,0,0,''),
 (107,'CH0057','VIDARYADI CHURNAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (108,'CH0058','VAISWANARA CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (109,'CH0059','VILANGADI CHURNAM 50 GM','','GM',3,'CHOORNAM',75,75,0,75,75,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,71.43,5,1,0,0,''),
 (110,'CH0060','VILANGATHANDULADI CHURNAM 50 GM','','GM',3,'CHOORNAM',60,60,0,60,60,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (111,'CH0061','VYOSHADI VATAKAM 50 GM','','GM',3,'CHOORNAM',40,40,0,40,40,0,0,0,20,10,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.1,5,1,0,0,''),
 (112,'CH0062','YAVANYADI CHURNAM 50 GM','','GM',3,'CHOORNAM',55,55,0,55,55,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (113,'CH0063','YOGARAJA CHURNAM 50 GM','','GM',3,'CHOORNAM',70,70,0,70,70,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (114,'CH0064','RASNADI CHURNAM 5 GM','','GM',3,'CHOORNAM',15,15,0,15,15,0,0,0,20,0,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (115,'GH0001','ARAGWADAMAHATIKTAKAM GHRITAM 150 GM','','GM',4,'GHRITHAM',150,150,0,150,150,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (116,'GH0002','AMRITAPRASHAM 500 GM','','GM',4,'GHRITHAM',335,335,0,335,335,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (117,'GH0003','AMRITAPRASHAM 200 GM','','GM',4,'GHRITHAM',135,135,0,135,135,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (118,'GH0004','ASOKAGHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (119,'GH0005','BRAHMI GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (120,'GH0006','DADIMADI GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,5,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (121,'GH0007','DHATRYADI GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (122,'GH0008','DURVA GHRITAM 50 GM','','GM',4,'GHRITHAM',60,60,0,60,60,0,0,0,20,1,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (123,'GH0009','GUGGULUTIKTAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',225,225,0,225,225,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,214.29,5,1,0,0,''),
 (124,'GH0010','HAPUSHADI GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (125,'GH0011','INDUKANTHA GHRITAM 150 GM','','GM',4,'GHRITHAM',180,180,0,180,180,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,171.43,5,1,0,0,''),
 (126,'GH0012','JATYADI GHRITAM 50 GM','','GM',4,'GHRITHAM',60,60,0,60,60,0,0,0,20,5,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (127,'GH0013','JEEVANTHYADI GHRITAM 150 GM','','GM',4,'GHRITHAM',780,780,0,780,780,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,742.86,5,1,0,0,''),
 (128,'GH0014','JEEVANTHYADI GHRITAM 10 GM','','GM',4,'GHRITHAM',60,60,0,60,60,0,0,0,20,0,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (129,'GH0015','KALYANAKA GHIRTAM 150 GM','','GM',4,'GHRITHAM',170,170,0,170,170,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,161.9,5,1,0,0,''),
 (130,'GH0016','MAHABHOOTARAVA GHRITAM 150 GM','','GM',4,'GHRITHAM',200,200,0,200,200,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (131,'GH0017','MAHAKALYANAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',215,215,0,215,215,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,204.76,5,1,0,0,''),
 (132,'GH0018','MAHARASNADI GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (133,'GH0019','MAHASNEHAM 150 GM','','GM',4,'GHRITHAM',180,180,0,180,180,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (134,'GH0020','MAHASNEHAM 50 GM','','GM',4,'GHRITHAM',65,65,0,65,65,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (135,'GH0021','MAHATIKTAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',200,200,0,200,200,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (136,'GH0022','MAHATIKTAKA GHRITAM 50 GM','','GM',4,'GHRITHAM',70,70,0,70,70,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (137,'GH0023','MAHAPAISHACHIKA GHRITAM 150 GM','','GM',4,'GHRITHAM',205,205,0,205,205,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,195.24,5,1,0,0,''),
 (138,'GH0024','MAHATPANCHAGAVYA GHRITAM 150 GM','','GM',4,'GHRITHAM',210,210,0,210,210,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (139,'GH0025','MISRAKA SNEHAM 50 GM','','GM',4,'GHRITHAM',65,65,0,65,65,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (140,'GH0026','NARASIMHA RASAYANAM 400 GM','','GM',4,'GHRITHAM',245,245,0,245,245,0,0,0,20,0,0,0,0,400,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (141,'GH0027','NARASIMHA RASAYANAM 200 GM','','GM',4,'GHRITHAM',125,125,0,125,125,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (142,'GH0028','PANCHAGAVYA GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (143,'GH0029','PHALASARPIS 150 GM','','GM',4,'GHRITHAM',175,175,0,175,175,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (144,'GH0030','RASNADI GHRITAM 150 GM','','GM',4,'GHRITHAM',220,220,0,220,220,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (145,'GH0031','RASAGHRITAM 150 GM','','GM',4,'GHRITHAM',210,210,0,210,210,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (146,'GH0032','SARASWATHA GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (147,'GH0033','SHADPALA GHRITAM 150 GM','','GM',4,'GHRITHAM',150,150,0,150,150,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (148,'GH0034','SHATAVARI GHRITAM 150 GM','','GM',4,'GHRITHAM',145,145,0,145,145,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (149,'GH0035','SUKHAPRASUTI GHRITAM 150 GM','','GM',4,'GHRITHAM',200,200,0,200,200,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,190.48,5,1,0,0,''),
 (150,'GH0036','SUKUMARA GHRITAM 150 GM','','GM',4,'GHRITHAM',230,230,0,230,230,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,219.05,5,1,0,0,''),
 (151,'GH0037','TIKTAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',175,175,0,175,175,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (152,'GH0038','TRAIPHALA GHRITAM 150 GM','','GM',4,'GHRITHAM',170,170,0,170,170,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,161.9,5,1,0,0,''),
 (153,'GH0039','VAJRAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (154,'GH0040','VARANADI GHRITAM 150 GM','','GM',4,'GHRITHAM',145,145,0,145,145,0,0,0,20,3,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (155,'GH0041','VASTYAMAYANTAKA GHRITAM 150 GM','','GM',4,'GHRITHAM',365,365,0,365,365,0,0,0,20,2,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,347.62,5,1,0,0,''),
 (156,'GH0042','VEERATARADI GHRITAM 150 GM','','GM',4,'GHRITHAM',170,170,0,170,170,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (157,'GH0043','VIDARYADI GHRITAM 150 GM','','GM',4,'GHRITHAM',175,175,0,175,175,0,0,0,20,1,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (158,'KA0001','ARAGWADADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (159,'KA0002','ARAGWADAMRITADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (160,'KA0003','AMRITAVRISHAPATOLADI KASHAYAM 200ML','','ML',5,'KASHAYAM',150,150,0,150,150,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (161,'KA0004','AMRUTHOTHARAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,22,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (162,'KA0005','ARDHAVILWAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (163,'KA0006','ASHTAVARGAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (164,'KA0007','BALAGULUCHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',100,100,0,100,100,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (165,'KA0008','BALAJEERAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (166,'KA0009','BALASHATAVARYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',95,95,0,95,95,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (167,'KA0010','BHARNGHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (168,'KA0011','BHADRADARVADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (169,'KA0012','BRIHATHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (170,'KA0013','CHIRUVILWAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',150,150,0,150,150,0,0,0,20,11,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (171,'KA0014','CHITRAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',245,245,0,245,245,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (172,'KA0015','DASAMOOLAKATUTRAYAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,11,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (173,'KA0016','DASAMOOLAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (174,'KA0017','DASAMOOLARASNADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',135,135,0,135,135,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (175,'KA0018','DEEPYAKARASAM 450 ML','','ML',5,'KASHAYAM',265,265,0,265,265,0,0,0,20,0,0,0,0,450,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (176,'KA0019','DEEPYAKARASAM 100 ML','','ML',5,'KASHAYAM',65,65,0,65,65,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (177,'KA0020','DHANWANTARAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',145,145,0,145,145,0,0,0,20,11,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (178,'KA0021','DHAYNAMLAM 450 ML','','ML',5,'KASHAYAM',65,65,0,65,65,0,0,0,20,5,0,0,0,450,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (179,'KA0022','DHANYAMLAM 2L','','ML',5,'KASHAYAM',245,245,0,245,245,0,0,0,20,0,0,0,0,2000,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (180,'KA0023','DHANYAMLAM 5L','','ML',5,'KASHAYAM',540,540,0,540,540,0,0,0,20,0,0,0,0,5000,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (181,'KA0024','DHANADANAYANADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',145,145,0,145,145,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (182,'KA0025','DRAKSHADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',145,145,0,145,145,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (183,'KA0026','DUSPARSHAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',145,145,0,145,145,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (184,'KA0027','ELAKANADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',135,135,0,135,135,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (185,'KA0028','GANDARVAHASTADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,11,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (186,'KA0029','GARBHARAKSHINI KASHAYAM 200 ML','','ML',5,'KASHAYAM',125,125,0,125,125,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (187,'KA0030','GULUCHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',150,150,0,150,150,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (188,'KA0031','GUGGULU TIKTAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',190,190,0,190,190,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,180.95,5,1,0,0,''),
 (189,'KA0032','INDUKANTHAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (190,'KA0033','KAIDARYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (191,'KA0034','KALASHAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (192,'KA0035','KANASHATAHWADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',125,125,0,125,125,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (193,'KA0036','KATHAKAKHADHIRADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (194,'KA0037','MAHAMANJISHTADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',160,160,0,160,160,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,152.38,5,1,0,0,''),
 (195,'KA0038','MAHARASNADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',190,190,0,190,190,0,0,0,20,11,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,180.95,5,1,0,0,''),
 (196,'KA0039','MAHATIKTAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',185,185,0,185,185,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.19,5,1,0,0,''),
 (197,'KA0040','MANJISHTADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',150,150,0,150,150,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (198,'KA0041','MRIDWEEKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',140,140,0,140,140,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (199,'KA0042','MUSALIKHADIRADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',100,100,0,100,100,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (200,'KA0043','NAYOPAYAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',150,150,0,150,150,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (201,'KA0044','NEELITHULASYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',175,175,0,175,175,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (202,'KA0045','NIMBADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,1,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (203,'KA0046','NISHAKATHAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (204,'KA0047','NISHOTHAMADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,1,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (205,'KA0048','PANCHABHADRAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (206,'KA0049','PANCHAKOLAM KASHYAM 200 ML','','ML',5,'KASHAYAM',145,145,0,145,145,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (207,'KA0050','PANCHATIKTAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',135,135,0,135,135,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (208,'KA0051','PATHYAKSHADHATRYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (209,'KA0052','PATHYAPUNARNAVADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,2,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (210,'KA0053','PATOLAKATUROHINYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',185,185,0,185,185,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.19,5,1,0,0,''),
 (211,'KA0054','PATOLAMULADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',125,125,0,125,125,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (212,'KA0055','PRASARANYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (213,'KA0056','PUNARNAVADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (214,'KA0057','RASNADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',180,180,0,180,180,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (215,'KA0058','RASNAPANCHAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (216,'KA0059','RASNASAPTAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,22,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (217,'KA0060','RASONADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',160,160,0,160,160,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (218,'KA0061','SAHACHARADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (219,'KA0062','SAPTASARAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,5,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (220,'KA0063','SHATAVARYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',140,140,0,140,140,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (221,'KA0064','SHONITAMRITAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',120,120,0,120,120,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,106.19,12,1,0,0,''),
 (222,'KA0065','SUKUMARAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',130,130,0,130,130,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (223,'KA0066','TIKTAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',160,160,0,160,160,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (224,'KA0067','TRAYANTHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',160,160,0,160,160,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (225,'KA0068','TRIJATHAKADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',205,205,0,205,205,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (226,'KA0069','TRINAPANCHAMULAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',125,125,0,125,125,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (227,'KA0070','VASAGULUCHYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',100,100,0,100,100,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (228,'KA0071','VAJRAKAM KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (229,'KA0072','VALIYARASNADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',160,160,0,160,160,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (230,'KA0073','VARADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',100,100,0,100,100,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (231,'KA0074','VARANADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',105,105,0,105,105,0,0,0,20,3,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (232,'KA0075','VYAGHRYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',110,110,0,110,110,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (233,'KA0076','VIDARYADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',125,125,0,125,125,0,0,0,20,1,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (234,'KA0077','VILANGAKRISHNADI KASHAYAM 200 ML','','ML',5,'KASHAYAM',165,165,0,165,165,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (235,'LE0001','AGASTYA RASAYANAM 500 GM','','GM',6,'LEHAM',200,200,0,200,200,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (236,'LE0002','AGASTYA RASAYANAM 250 GM','','GM',6,'LEHAM',100,100,0,100,100,0,0,0,20,2,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (237,'LE0003','AJAMAMSA RASAYANAM 500 GM','','GM',6,'LEHAM',285,285,0,285,285,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (238,'LE0004','AJAMAMSA RASAYANAM 300 GM','','GM',6,'LEHAM',175,175,0,175,175,0,0,0,20,0,0,0,0,300,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (239,'LE0005','ASWAGANDHADI LEHYAM 500 GM','','GM',6,'LEHAM',240,240,0,240,240,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (240,'LE0006','ASWAGANDHADI LEHYAM 250 GM','','GM',6,'LEHAM',120,120,0,120,120,0,0,0,20,2,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,114.29,5,1,0,0,''),
 (241,'LE0007','BAHUSHALAGULAM 250 GM','','GM',6,'LEHAM',120,120,0,120,120,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (242,'LE0008','BRAHMARASAYANAM 500 GM','','GM',6,'LEHAM',190,190,0,190,190,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (243,'LE0009','BRAHMARASAYANAM 250 GM','','GM',6,'LEHAM',95,95,0,95,95,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (244,'LE0010','CHYAVANAPRASAM 500 GM','','GM',6,'LEHAM',210,210,0,210,210,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (245,'LE0011','CHYAVANAPRASAM 250 GM','','GM',6,'LEHAM',105,105,0,105,105,0,0,0,20,8,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (246,'LE0012','DANTHIHAREETHAKI LEHYAM 250 GM','','GM',6,'LEHAM',180,180,0,180,180,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (247,'LE0013','DASAMOOLAHAREETHAKI LEHYAM 500 GM','','GM',6,'LEHAM',190,190,0,190,190,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (248,'LE0014','DASAMOOLAHAREETHAKI LEHYAM 250 GM','','GM',6,'LEHAM',95,95,0,95,95,0,0,0,20,2,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (249,'LE0015','DASAMOOLA RASAYANAM 250 GM','','GM',6,'LEHAM',215,215,0,215,215,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (250,'LE0016','DASAMOOLA RASAYANAM 100 GM','','GM',6,'LEHAM',90,90,0,90,90,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (251,'LE0017','DASAMOOLA RASAYANAM 50 GM','','GM',6,'LEHAM',50,50,0,50,50,0,0,0,20,7,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (252,'LE0018','DRAKSHADI LEHYAM 500 GM','','GM',6,'LEHAM',330,330,0,330,330,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (253,'LE0019','DRAKSHADI LEHYAM 250 GM','','GM',6,'LEHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (254,'LE0020','GOMUTRAHAREETHAKI 250 GM','','GM',6,'LEHAM',120,120,0,120,120,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (255,'LE0021','HRUDYAVIRECHANAM LEHYAM 500 GM','','GM',6,'LEHAM',240,240,0,240,240,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (256,'LE0022','HRUDYAVIRECHANAM LEHYAM 250 GM','','GM',6,'LEHAM',120,120,0,120,120,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (257,'LE0023','HRUDYAVIRECHANAM LEHYAM 100 GM','','GM',6,'LEHAM',55,55,0,55,55,0,0,0,20,2,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (258,'LE0024','KALYANAGULAM 500 GM','','GM',6,'LEHAM',190,190,0,190,190,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (259,'LE0025','KALYANAGULAM 250 GM','','GM',6,'LEHAM',95,95,0,95,95,0,0,0,20,2,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,90.48,5,1,0,0,''),
 (260,'LE0026','KOOSHMANDA RASAYANAM 500 GM','','GM',6,'LEHAM',220,220,0,220,220,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (261,'LE0027','KOOSHMANDA RASAYANAM 250 GM','','GM',6,'LEHAM',110,110,0,110,110,0,0,0,20,1,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (262,'LE0028','KUTAJATWAGADI LEHAM 250 GM','','GM',6,'LEHAM',130,130,0,130,130,0,0,0,20,1,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (263,'LE0029','MANIBADRAGULAM 250 GM','','GM',6,'LEHAM',105,105,0,105,105,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (264,'LE0030','MANIBADRAGULAM 100 GM','','GM',6,'LEHAM',50,50,0,50,50,0,0,0,20,3,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (265,'LE0031','MARKKAVARASAYANAM 200 GM','','GM',6,'LEHAM',175,175,0,175,175,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (266,'LE0032','MADHUSNUHI RASAYANAM 500 GM','','GM',6,'LEHAM',300,300,0,300,300,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (267,'LE0033','MADHUSNUHI RASAYANAM 250 GM','','GM',6,'LEHAM',150,150,0,150,150,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (268,'LE0034','MRUDWEEKADI LEHYAM 250 GM','','GM',6,'LEHAM',140,140,0,140,140,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (269,'LE0035','MRUDWEEKADI LEHYAM 100 GM','','GM',6,'LEHAM',65,65,0,65,65,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (270,'LE0036','PANCHAJEERAKAGUDAM 500 GM','','GM',6,'LEHAM',255,255,0,255,255,0,0,0,20,1,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,242.86,5,1,0,0,''),
 (271,'LE0037','RITURANJINI LEHYAM 250 GM','','GM',6,'LEHAM',255,255,0,255,255,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (272,'LE0038','SHATAVARIGULAM 500 GM','','GM',6,'LEHAM',260,260,0,260,260,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (273,'LE0039','SHATAVARIGULAM 250 GM','','GM',6,'LEHAM',130,130,0,130,130,0,0,0,20,1,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (274,'LE0040','SHATAVARIVAJEEKARANAM LEHYAM 500 GM','','GM',6,'LEHAM',330,330,0,330,330,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (275,'LE0041','SHATAVARIVAJEEKARANAM LEHYAM 250 GM','','GM',6,'LEHAM',165,165,0,165,165,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (276,'LE0042','SWASIJEEVANAM LEHYAM 250 GM','','GM',6,'LEHAM',220,220,0,220,220,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (277,'LE0043','SWASIJEEVANAM LEHYAM 100 GM','','GM',6,'LEHAM',95,95,0,95,95,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (278,'LE0044','SURANADI LEHYAM 250 GM','','GM',6,'LEHAM',150,150,0,150,150,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (279,'LE0045','SURANADI LEHYAM 100 GM','','GM',6,'LEHAM',70,70,0,70,70,0,0,0,20,1,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (280,'LE0046','SUKUMARA LEHYAM 250 GM','','GM',6,'LEHAM',180,180,0,180,180,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (281,'LE0047','THALEESAPATRADI LEHYAM 100 GM','','GM',6,'LEHAM',70,70,0,70,70,0,0,0,20,3,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (282,'LE0048','THALEESAPATRADI LEHYAM 50 GM','','GM',6,'LEHAM',40,40,0,40,40,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (283,'LE0049','THAMBOOLA LEHYAM 100 GM','','GM',6,'LEHAM',75,75,0,75,75,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (284,'LE0050','THAMBOOLA LEHYAM 50 GM','','GM',6,'LEHAM',45,45,0,45,45,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (285,'LE0051','THENGINPOOKKULADI GUDAM 500 GM','','GM',6,'LEHAM',200,200,0,200,200,0,0,0,20,2,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.99,12,1,0,0,''),
 (286,'LE0052','TRIVRUT LEHYAM 100 GM','','GM',6,'LEHAM',55,55,0,55,55,0,0,0,20,3,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (287,'LE0053','VIDARYADI LEHYAM 500 GM','','GM',6,'LEHAM',250,250,0,250,250,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (288,'LE0054','VIDARYADI LEHYAM 250 GM','','GM',6,'LEHAM',125,125,0,125,125,0,0,0,20,2,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (289,'LE0055','VILWADI LEHYAM 500 GM','','GM',6,'LEHAM',250,250,0,250,250,0,0,0,20,0,0,0,0,500,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (290,'LE0056','VILWADI LEHYAM 250 GM','','GM',6,'LEHAM',125,125,0,125,125,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (291,'LE0057','VILWADI LEHYAM 100 GM','','GM',6,'LEHAM',55,55,0,55,55,0,0,0,20,3,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,52.38,5,1,0,0,''),
 (292,'OI0001','ARUKALADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (293,'OI0002','AMRUTADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (294,'OI0003','AMRUTAKIRANAM THAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,0,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (295,'OI0004','ANUTHAILAM 10 ML','','ML',7,'MEDICATED OILS',65,65,6.5,65,65,0,0,0,20,10,0,0,0,10,1,'6.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (296,'OI0005','ARIMEDADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',140,140,0.7,140,140,0,0,0,20,1,0,0,0,200,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,133.33,5,1,0,0,''),
 (297,'OI0006','ARIMEDAS THAILAM 30 ML','','ML',7,'MEDICATED OILS',40,40,1.33,40,40,0,0,0,20,2,0,0,0,30,1,'1.33',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.1,5,1,0,0,''),
 (298,'OI0007','ASANELADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (299,'OI0008','ASANELADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,2,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (300,'OI0009','ASANELADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (301,'OI0010','ASANA MANJISHTADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,2,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (302,'OI0011','ASANAVILWADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (303,'OI0012','ASANAVILWADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',70,70,1.7,70,70,0,0,0,20,2,0,0,0,100,1,'1.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (304,'OI0013','ASANAVILWADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',125,125,0.63,125,125,0,0,0,20,0,0,0,0,200,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (305,'OI0014','ASHTAPATRADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',115,115,0.58,115,115,0,0,0,20,0,0,0,0,200,1,'0.58',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (306,'OI0015','BALATHAILAM 10 ML','','ML',7,'MEDICATED OILS',70,70,7,70,70,0,0,0,20,2,0,0,0,10,1,'7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.67,5,1,0,0,''),
 (307,'OI0016','BALADHATRYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',200,200,1,200,200,0,0,0,20,0,0,0,0,200,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (308,'OI0017','BALAGULUCHYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,3,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (309,'OI0018','BALAGULUCHYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',70,70,0.7,70,70,0,0,0,20,0,0,0,0,100,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (310,'OI0019','BALAGULUCHYADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',285,285,0.63,285,285,0,0,0,20,0,0,0,0,450,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (311,'OI0020','BALAGULUCHYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,1,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (312,'OI0021','BALAMRUTADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',160,160,0.8,160,160,0,0,0,20,0,0,0,0,200,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (313,'OI0022','BALAHATADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (314,'OI0023','BALAHATADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (315,'OI0024','BALAHATADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,0,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (316,'OI0025','BALASHWAGANDADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',375,375,0.83,375,375,0,0,0,20,0,0,0,0,450,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (317,'OI0026','BALASHWAGANDADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',170,170,0.85,170,170,0,0,0,20,2,0,0,0,200,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,161.9,5,1,0,0,''),
 (318,'OI0027','BALASHWAGANDADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (319,'OI0028','BALASHWAGANDADI THAILAM 5 L','','ML',7,'MEDICATED OILS',3960,3960,0.79,3960,3960,0,0,0,20,0,0,0,0,5000,1,'0.79',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (320,'OI0029','BALASHWAGANDADI KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',375,375,0.83,375,375,0,0,0,20,0,0,0,0,450,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (321,'OI0030','BALASHWAGANDADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',170,170,0.85,170,170,0,0,0,20,0,0,0,0,200,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (322,'OI0031','BHRINGAMALAKADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,0,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (323,'OI0032','BHRINGAMALAKADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (324,'OI0033','BHUJAGALATADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',285,285,0.63,285,285,0,0,0,20,0,0,0,0,450,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (325,'OI0034','BHUJAGALATADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (326,'OI0035','BHUJAGALATADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',70,70,0.7,70,70,0,0,0,20,0,0,0,0,100,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (327,'OI0036','BHUJAGALATADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (328,'OI0037','CHEMPARATYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',125,125,0.63,125,125,0,0,0,20,0,0,0,0,200,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (329,'OI0038','CHEMPARATYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',70,70,0.7,70,70,0,0,0,20,2,0,0,0,100,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.95,12,1,0,0,''),
 (330,'OI0039','CHINCHADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',320,320,0.71,320,320,0,0,0,20,0,0,0,0,450,1,'0.71',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (331,'OI0040','CHINCHADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,3,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (332,'OI0041','CHINCHADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,0,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (333,'OI0042','DADRUNASHINI THAILAM 100 ML','','ML',7,'MEDICATED OILS',135,135,1.35,135,135,0,0,0,20,1,0,0,0,100,1,'1.35',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (334,'OI0043','DASAMOOLA THAILAM 200 ML','','ML',7,'MEDICATED OILS',160,160,0.8,160,160,0,0,0,20,0,0,0,0,200,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (335,'OI0044','DASAPUSHPA THAILAM 200 ML','','ML',7,'MEDICATED OILS',230,230,1.15,230,230,0,0,0,20,0,0,0,0,200,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (336,'OI0045','DEVADARU THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (337,'OI0046','DEVADARVADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (338,'OI0047','DEVADARVADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',95,95,0.95,95,95,0,0,0,20,1,0,0,0,100,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,84.07,12,1,0,0,''),
 (339,'OI0048','DHANWATARAM THAILAM 450 ML','','ML',7,'MEDICATED OILS',395,395,0.88,395,395,0,0,0,20,0,0,0,0,450,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (340,'OI0049','DHANWATARAM THAILAM 200 ML','','ML',7,'MEDICATED OILS',180,180,0.9,180,180,0,0,0,20,6,0,0,0,200,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,171.43,5,1,0,0,''),
 (341,'OI0050','DHANWATARAM THAILAM 100 ML','','ML',7,'MEDICATED OILS',95,95,0.95,95,95,0,0,0,20,0,0,0,0,100,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (342,'OI0051','DHANWATARAM THAILAM 5 L','','ML',7,'MEDICATED OILS',4170,4170,0.84,4170,4170,0,0,0,20,0,0,0,0,5000,1,'0.84',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (343,'OI0052','DHANWANTARAM MEZHUKUPAKAM 450 ML','','ML',7,'MEDICATED OILS',395,395,0.88,395,395,0,0,0,20,0,0,0,0,450,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (344,'OI0053','DHANWANTARAM MEZHUKUPAKAM 200 ML','','ML',7,'MEDICATED OILS',180,180,0.9,180,180,0,0,0,20,1,0,0,0,200,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,171.43,5,1,0,0,''),
 (345,'OI0054','DHANWANTARAM KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',330,330,0.73,330,330,0,0,0,20,0,0,0,0,450,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (346,'OI0055','DHANWANTARAM KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,5,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (347,'OI0056','DHANWANTARAM KUZHAMPU 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (348,'OI0057','DHANWANTARAM 3 AVARTHI 30 ML','','ML',7,'MEDICATED OILS',50,50,1.67,50,50,0,0,0,20,2,0,0,0,30,1,'1.67',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (349,'OI0058','DHANWANTARAM 7 AVARTHI 10 ML','','ML',7,'MEDICATED OILS',35,35,3.5,35,35,0,0,0,20,2,0,0,0,10,1,'3.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,33.33,5,1,0,0,''),
 (350,'OI0059','DURDURAPATRADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,3,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (351,'OI0060','DURDURAPATRADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,'');
INSERT INTO `finish` (`f_id`,`fin_code`,`fin_name`,`aliasname`,`unit`,`grp_no`,`grp_name`,`mrp`,`rate1`,`rate2`,`rate3`,`rate4`,`rate3per`,`rate4per`,`kgst`,`cst`,`stock`,`loose`,`op_stock`,`op_loose`,`uqty`,`in_kg`,`com_code`,`mfg_code`,`mfrer`,`batch_no`,`mfg_date`,`exp_date`,`re_level`,`shelf_no`,`row_no`,`dambulk`,`expbulk`,`damloose`,`exploose`,`exsbulk`,`exsloose`,`prate`,`ptax`,`sup_code`,`freeqty`,`freefor`,`descript`) VALUES 
 (352,'OI0061','DINESHELADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,2,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (353,'OI0062','DINESHELADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',95,95,0.95,95,95,0,0,0,20,0,0,0,0,100,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (354,'OI0063','DINESHELADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',170,170,0.85,170,170,0,0,0,20,0,0,0,0,200,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (355,'OI0064','DINESHAVALYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (356,'OI0065','DINESHAVALYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (357,'OI0066','DINESHAVALYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (358,'OI0067','ELADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',410,410,0.91,410,410,0,0,0,20,0,0,0,0,450,1,'0.91',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (359,'OI0068','ELADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',185,185,0.93,185,185,0,0,0,20,0,0,0,0,200,1,'0.93',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (360,'OI0069','ELADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',100,100,1,100,100,0,0,0,20,2,0,0,0,100,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (361,'OI0070','ELADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,1,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (362,'OI0071','ERANDA SHIGRUADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',95,95,0.95,95,95,0,0,0,20,0,0,0,0,100,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (363,'OI0072','ERANDA SUKUMARAM 100 ML','','ML',7,'MEDICATED OILS',110,110,1.1,110,110,0,0,0,20,1,0,0,0,100,1,'1.1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,104.76,5,1,0,0,''),
 (364,'OI0073','GANDHARVAHASTA THAILAM 450 ML','','ML',7,'MEDICATED OILS',340,340,0.76,340,340,0,0,0,20,0,0,0,0,450,1,'0.76',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (365,'OI0074','GANDHARVAHASTA THAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,5,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,76.19,5,1,0,0,''),
 (366,'OI0075','HINGUTRIGUNAM 100 GM','','GM',7,'MEDICATED OILS',130,130,1.3,130,130,0,0,0,20,1,0,0,0,100,1,'1.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (367,'OI0076','JATHYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,0,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (368,'OI0077','JATHYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',75,75,0.75,75,75,0,0,0,20,3,0,0,0,100,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,71.43,5,1,0,0,''),
 (369,'OI0078','JEEVANTHYADI YAMAKAM 50 GM','','GM',7,'MEDICATED OILS',75,75,1.5,75,75,0,0,0,20,3,0,0,0,50,1,'1.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,71.43,5,1,0,0,''),
 (370,'OI0079','KARASKARADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,1,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,146.02,12,1,0,0,''),
 (371,'OI0080','KARPASASTHYADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',310,310,0.69,310,310,0,0,0,20,1,0,0,0,450,1,'0.69',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,295.24,5,1,0,0,''),
 (372,'OI0081','KARPASASTHYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',140,140,0.7,140,140,0,0,0,20,5,0,0,0,200,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,133.33,5,1,0,0,''),
 (373,'OI0082','KARPASASTHYADI THAILAM 5 L','','ML',7,'MEDICATED OILS',3270,3270,0.66,3270,3270,0,0,0,20,0,0,0,0,5000,1,'0.66',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (374,'OI0083','KARPASASTHYADI KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',285,285,0.63,285,285,0,0,0,20,0,0,0,0,450,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (375,'OI0084','KARPASASTHYADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (376,'OI0085','KARPASASTHYADI MEZHUKUPAKAM 450 ML','','ML',7,'MEDICATED OILS',310,310,0.69,310,310,0,0,0,20,0,0,0,0,450,1,'0.69',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (377,'OI0086','KANJUNNYADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',320,320,0.71,320,320,0,0,0,20,0,0,0,0,450,1,'0.71',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (378,'OI0087','KANJUNNYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (379,'OI0088','KANJUNNYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,2,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,76.19,5,1,0,0,''),
 (380,'OI0089','KANJUNNYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',140,140,0.7,140,140,0,0,0,20,0,0,0,0,200,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (381,'OI0090','KARPOORADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',295,295,0.66,295,295,0,0,0,20,0,0,0,0,450,1,'0.66',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (382,'OI0091','KARPOORADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,6,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.47,12,1,0,0,''),
 (383,'OI0092','KARPOORADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',75,75,0.75,75,75,0,0,0,20,0,0,0,0,100,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (384,'OI0093','KARPOORADI THAILAM 5 L','','ML',7,'MEDICATED OILS',3110,3110,0.62,3110,3110,0,0,0,20,0,0,0,0,5000,1,'0.62',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (385,'OI0094','KETHAKIMOOLADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',310,310,0.69,310,310,0,0,0,20,0,0,0,0,450,1,'0.69',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (386,'OI0095','KETHAKIMOOLADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',140,140,0.7,140,140,0,0,0,20,2,0,0,0,200,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,133.33,5,1,0,0,''),
 (387,'OI0096','KETHAKIMOOLADI KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',310,310,0.69,310,310,0,0,0,20,0,0,0,0,450,1,'0.69',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (388,'OI0097','KETHAKIMOOLADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',140,140,0.7,140,140,0,0,0,20,0,0,0,0,200,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (389,'OI0098','KHAJITHAPINDATHAILAM 100 GM','','GM',7,'MEDICATED OILS',130,130,1.3,130,130,0,0,0,20,1,0,0,0,100,1,'1.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (390,'OI0099','KOTTAMCHUKKADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',295,295,0.66,295,295,0,0,0,20,1,0,0,0,450,1,'0.66',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,280.95,5,1,0,0,''),
 (391,'OI0100','KOTTAMCHUKKADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,5,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (392,'OI0101','KOTTAMCHUKKADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',75,75,0.75,75,75,0,0,0,20,0,0,0,0,100,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (393,'OI0102','KOTTAMCHUKKADI THAILAM 5 L','','ML',7,'MEDICATED OILS',3110,3110,0.62,3110,3110,0,0,0,20,0,0,0,0,5000,1,'0.62',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (394,'OI0103','KOTTAMCHUKKADI KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',295,295,0.66,295,295,0,0,0,20,0,0,0,0,450,1,'0.66',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (395,'OI0104','KOTTAMCHUKKADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,2,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (396,'OI0105','KSHEERABALA 3 AVARTHI 30 ML','','ML',7,'MEDICATED OILS',40,40,1.33,40,40,0,0,0,20,0,0,0,0,30,1,'1.33',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (397,'OI0106','KSHEERABALA 7 AVARTHI 10 ML','','ML',7,'MEDICATED OILS',35,35,3.5,35,35,0,0,0,20,0,0,0,0,10,1,'3.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (398,'OI0107','KSHEERABALA 14 AVARTHI 10 ML','','ML',7,'MEDICATED OILS',40,40,4,40,40,0,0,0,20,0,0,0,0,10,1,'4',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (399,'OI0108','KSHEERABALA 21 AVARTHI 10 ML','','ML',7,'MEDICATED OILS',50,50,5,50,50,0,0,0,20,2,0,0,0,10,1,'5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,47.62,5,1,0,0,''),
 (400,'OI0109','KSHEERABALA 101 AVARTHI 10 GM','','GM',7,'MEDICATED OILS',105,105,10.5,105,105,0,0,0,20,2,0,0,0,10,1,'10.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,100,5,1,0,0,''),
 (401,'OI0110','KSHEERABALA THAILAM 450 ML','','ML',7,'MEDICATED OILS',330,330,0.73,330,330,0,0,0,20,0,0,0,0,450,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (402,'OI0111','KSHEERABALA THAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,3,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (403,'OI0112','KSHEERABALA THAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (404,'OI0113','KSHEERABALA THAILAM 5 L','','ML',7,'MEDICATED OILS',3480,3480,0.7,3480,3480,0,0,0,20,0,0,0,0,5000,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (405,'OI0114','KUMKUMADI THAILAM 10 ML','','ML',7,'MEDICATED OILS',410,410,41,410,410,0,0,0,20,0,0,0,0,10,1,'41',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (406,'OI0115','KUNTHALAKANTHI THAILAM 100 ML','','ML',7,'MEDICATED OILS',115,115,1.15,115,115,0,0,0,20,0,0,0,0,100,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (407,'OI0116','LAKSHADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',345,345,0.77,345,345,0,0,0,20,0,0,0,0,450,1,'0.77',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (408,'OI0117','LAKSHADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',155,155,0.78,155,155,0,0,0,20,0,0,0,0,200,1,'0.78',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (409,'OI0118','LAKSHADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',85,85,0.85,85,85,0,0,0,20,0,0,0,0,100,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (410,'OI0119','LAKSHADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,1,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (411,'OI0120','LASIKAMRUTAM 200 ML','','ML',7,'MEDICATED OILS',205,205,1.03,205,205,0,0,0,20,0,0,0,0,200,1,'1.03',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (412,'OI0121','MALATHYADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',335,335,0.75,335,335,0,0,0,20,0,0,0,0,450,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (413,'OI0122','MALATHYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,2,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (414,'OI0123','MALATHYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (415,'OI0124','MASHA THAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,0,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (416,'OI0125','MADHUKADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',180,180,0.9,180,180,0,0,0,20,0,0,0,0,200,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (417,'OI0126','MADHUYASHTYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,0,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (418,'OI0127','MADHUYASHTYADI MEZHUKUPAKAM 450 ML','','ML',7,'MEDICATED OILS',420,420,0.93,420,420,0,0,0,20,0,0,0,0,450,1,'0.93',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (419,'OI0128','MADHUYASHTYADI MEZHUKUPAKAM 200 ML','','ML',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,0,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (420,'OI0129','MAHABALA THAILAM 10 ML','','ML',7,'MEDICATED OILS',75,75,7.5,75,75,0,0,0,20,0,0,0,0,10,1,'7.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (421,'OI0130','MAHAMASHA THAILAM 450 ML','','ML',7,'MEDICATED OILS',515,515,1.15,515,515,0,0,0,20,0,0,0,0,450,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (422,'OI0131','MAHAMASHA THAILAM 200 ML','','ML',7,'MEDICATED OILS',230,230,1.15,230,230,0,0,0,20,0,0,0,0,200,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (423,'OI0132','MAHANARAYANA THAILAM 450 ML','','ML',7,'MEDICATED OILS',475,475,1.06,475,475,0,0,0,20,0,0,0,0,450,1,'1.06',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (424,'OI0133','MAHANARAYANA THAILAM 200 ML','','ML',7,'MEDICATED OILS',215,215,1.08,215,215,0,0,0,20,3,0,0,0,200,1,'1.08',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,204.76,5,1,0,0,''),
 (425,'OI0134','MAHANARAYANA THAILAM 100 ML','','ML',7,'MEDICATED OILS',115,115,1.15,115,115,0,0,0,20,0,0,0,0,100,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (426,'OI0135','MAHANARAYANA THAILAM 5 L','','ML',7,'MEDICATED OILS',5010,5010,1,5010,5010,0,0,0,20,0,0,0,0,5000,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (427,'OI0136','MARICHADI  THAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (428,'OI0137','MURIVENNA 450 ML','','ML',7,'MEDICATED OILS',295,295,0.66,295,295,0,0,0,20,1,0,0,0,450,1,'0.66',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,280.95,5,1,0,0,''),
 (429,'OI0138','MURIVENNA 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,10,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (430,'OI0139','MURIVENNA 100 ML','','ML',7,'MEDICATED OILS',75,75,0.75,75,75,0,0,0,20,0,0,0,0,100,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (431,'OI0140','MURIVENNA 5 L','','ML',7,'MEDICATED OILS',3110,3110,0.62,3110,3110,0,0,0,20,0,0,0,0,5000,1,'0.62',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (432,'OI0141','MUSTADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (433,'OI0142','NALPAMARADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',320,320,0.71,320,320,0,0,0,20,0,0,0,0,450,1,'0.71',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (434,'OI0143','NALPAMARADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,2,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (435,'OI0144','NALPAMARADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (436,'OI0145','NALPAMARADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,3,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (437,'OI0146','NARAYANA THAILAM 450 ML','','ML',7,'MEDICATED OILS',515,515,1.15,515,515,0,0,0,20,0,0,0,0,450,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (438,'OI0147','NARAYANA THAILAM 200 ML','','ML',7,'MEDICATED OILS',230,230,1.15,230,230,0,0,0,20,0,0,0,0,200,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (439,'OI0148','NARAYANA THAILAM 100 ML','','ML',7,'MEDICATED OILS',120,120,1.2,120,120,0,0,0,20,0,0,0,0,100,1,'1.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (440,'OI0149','NARAYANA THAILAM 5 L','','ML',7,'MEDICATED OILS',5435,5435,1.09,5435,5435,0,0,0,20,0,0,0,0,5000,1,'1.09',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (441,'OI0150','NEELIBHRINGADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',420,420,0.93,420,420,0,0,0,20,0,0,0,0,450,1,'0.93',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (442,'OI0151','NEELIBHRINGADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,2,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,180.95,5,1,0,0,''),
 (443,'OI0152','NEELIBHRINGADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',100,100,1,100,100,0,0,0,20,0,0,0,0,100,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (444,'OI0153','NEELIBHRINGADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,0,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (445,'OI0154','NEELIDALADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,0,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (446,'OI0155','NEELIDALADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,2,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,70.8,12,1,0,0,''),
 (447,'OI0156','NIMBAMRUTHADI ERANDATHAILAM 450 ML','','ML',7,'MEDICATED OILS',400,400,0.89,400,400,0,0,0,20,0,0,0,0,450,1,'0.89',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (448,'OI0157','NIMBAMRUTHADI ERANDATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,1,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (449,'OI0158','NIMBARUTHADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (450,'OI0159','NIRGUNDYADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',365,365,0.81,365,365,0,0,0,20,0,0,0,0,450,1,'0.81',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (451,'OI0160','NIRGUNDYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (452,'OI0161','NIRGUNDYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,1,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (453,'OI0162','NISHOSHEERADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,0,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (454,'OI0163','NISHOSHEERADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',100,100,1,100,100,0,0,0,20,0,0,0,0,100,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (455,'OI0164','NISHOSHEERADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (456,'OI0165','PARANTHYADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (457,'OI0166','PARANTHYADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',95,95,0.95,95,95,0,0,0,20,0,0,0,0,100,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (458,'OI0167','PANCHAMOOLADI YAMAKAM 100 GM','','GM',7,'MEDICATED OILS',135,135,1.35,135,135,0,0,0,20,0,0,0,0,100,1,'1.35',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (459,'OI0168','PANCHASNEHAM 200 GM','','GM',7,'MEDICATED OILS',190,190,0.95,190,190,0,0,0,20,0,0,0,0,200,1,'0.95',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (460,'OI0169','PARINITHAKERYADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',170,170,0.85,170,170,0,0,0,20,0,0,0,0,200,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (461,'OI0170','PATOLADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',170,170,0.85,170,170,0,0,0,20,0,0,0,0,200,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (462,'OI0171','PATOLADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (463,'OI0172','PINDA THAILAM 450 ML','','ML',7,'MEDICATED OILS',285,285,0.63,285,285,0,0,0,20,1,0,0,0,450,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,271.43,5,1,0,0,''),
 (464,'OI0173','PINDA THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,5,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (465,'OI0174','PINDA THAILAM 100 ML','','ML',7,'MEDICATED OILS',70,70,0.7,70,70,0,0,0,20,0,0,0,0,100,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (466,'OI0175','PINDA THAILAM 5 L','','ML',7,'MEDICATED OILS',3005,3005,0.6,3005,3005,0,0,0,20,0,0,0,0,5000,1,'0.6',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (467,'OI0176','PIPPALYADI ANUVASANA THAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,0,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (468,'OI0177','PRABHANJANAM THAILAM 450 ML','','ML',7,'MEDICATED OILS',320,320,0.71,320,320,0,0,0,20,0,0,0,0,450,1,'0.71',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (469,'OI0178','PRABHANJANAM THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (470,'OI0179','PRABHANJANAM THAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (471,'OI0180','PRABHANJANAM THAILAM 5 L','','ML',7,'MEDICATED OILS',3375,3375,0.68,3375,3375,0,0,0,20,0,0,0,0,5000,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (472,'OI0181','PRABHANJANAM KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',320,320,0.71,320,320,0,0,0,20,0,0,0,0,450,1,'0.71',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (473,'OI0182','PRABHANJANAM KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (474,'OI0183','PRAPOUNDARIKADI KERATHAILAM 450 ML','','ML',7,'MEDICATED OILS',410,410,0.91,410,410,0,0,0,20,0,0,0,0,450,1,'0.91',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (475,'OI0184','PRAPOUNDARIKADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',185,185,0.93,185,185,0,0,0,20,2,0,0,0,200,1,'0.93',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.19,5,1,0,0,''),
 (476,'OI0185','PRAPOUNDARIKADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',100,100,1,100,100,0,0,0,20,0,0,0,0,100,1,'1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (477,'OI0186','PRASARANI THAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,5,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (478,'OI0187','RASNADI  THAILAM 200 ML','','ML',7,'MEDICATED OILS',130,130,0.65,130,130,0,0,0,20,0,0,0,0,200,1,'0.65',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (479,'OI0188','SAHACHARADI 3 AVARTHI 30 ML','','ML',7,'MEDICATED OILS',65,65,2.17,65,65,0,0,0,20,2,0,0,0,30,1,'2.17',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.9,5,1,0,0,''),
 (480,'OI0189','SAHACHARADI 7 AVARTHI 10 ML','','ML',7,'MEDICATED OILS',40,40,4,40,40,0,0,0,20,2,0,0,0,10,1,'4',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,38.09,5,1,0,0,''),
 (481,'OI0190','SAHACHARADI THAILAM 450 ML','','ML',7,'MEDICATED OILS',340,340,0.76,340,340,0,0,0,20,1,0,0,0,450,1,'0.76',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,323.81,5,1,0,0,''),
 (482,'OI0191','SAHACHARADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',155,155,0.78,155,155,0,0,0,20,5,0,0,0,200,1,'0.78',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,147.62,5,1,0,0,''),
 (483,'OI0192','SAHACHARADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',85,85,0.85,85,85,0,0,0,20,0,0,0,0,100,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (484,'OI0193','SAHACHARADI THAILAM 5 L','','ML',7,'MEDICATED OILS',3585,3585,0.72,3585,3585,0,0,0,20,0,0,0,0,5000,1,'0.72',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (485,'OI0194','SAHACHARADI MEZHUKUPAKAM 450 ML','','ML',7,'MEDICATED OILS',340,340,0.76,340,340,0,0,0,20,0,0,0,0,450,1,'0.76',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (486,'OI0195','SAHACHARADI MEZHUKUPAKAM 200 ML','','ML',7,'MEDICATED OILS',155,155,0.78,155,155,0,0,0,20,0,0,0,0,200,1,'0.78',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (487,'OI0196','SAHACHARADI KUZHAMPU 450 ML','','ML',7,'MEDICATED OILS',365,365,0.81,365,365,0,0,0,20,0,0,0,0,450,1,'0.81',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (488,'OI0197','SAHACHARADI KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (489,'OI0198','SAHACHARADI KUZHAMPU 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,2,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (490,'OI0199','SHIROVIRECHANAM 30 ML','','ML',7,'MEDICATED OILS',70,70,2.33,70,70,0,0,0,20,0,0,0,0,30,1,'2.33',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (491,'OI0200','SHUDHABALA THAILAM 200 ML','','ML',7,'MEDICATED OILS',135,135,0.68,135,135,0,0,0,20,3,0,0,0,200,1,'0.68',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (492,'OI0201','SUDHADURVADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,2,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,146.02,12,1,0,0,''),
 (493,'OI0202','SUDHADURVADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (494,'OI0203','SINDUVARAERANDAM 200 ML','','ML',7,'MEDICATED OILS',125,125,0.63,125,125,0,0,0,20,0,0,0,0,200,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (495,'OI0204','SINDUVARAERANDAM 100 ML','','ML',7,'MEDICATED OILS',70,70,0.7,70,70,0,0,0,20,2,0,0,0,100,1,'0.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,61.95,12,1,0,0,''),
 (496,'OI0205','TEKARAJADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',165,165,0.83,165,165,0,0,0,20,0,0,0,0,200,1,'0.83',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (497,'OI0206','TEKARAJADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,1,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,85.71,5,1,0,0,''),
 (498,'OI0207','TEKARAJA THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (499,'OI0208','THRIPHALADI KERATHAILAM 200 ML','','ML',7,'MEDICATED OILS',150,150,0.75,150,150,0,0,0,20,0,0,0,0,200,1,'0.75',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (500,'OI0209','THRIPHALADI KERATHAILAM 100 ML','','ML',7,'MEDICATED OILS',80,80,0.8,80,80,0,0,0,20,0,0,0,0,100,1,'0.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (501,'OI0210','THRIPHALADI  THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (502,'OI0211','THULASI THAILAM 200 ML','','ML',7,'MEDICATED OILS',145,145,0.73,145,145,0,0,0,20,0,0,0,0,200,1,'0.73',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (503,'OI0212','THUNGADRUMADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',255,255,1.28,255,255,0,0,0,20,0,0,0,0,200,1,'1.28',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (504,'OI0213','UNDHURU THAILAM 50 ML','','ML',7,'MEDICATED OILS',205,205,4.1,205,205,0,0,0,20,0,0,0,0,50,1,'4.1',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (505,'OI0214','VATAMARDANAM KUZHAMPU 200 ML','','ML',7,'MEDICATED OILS',110,110,0.55,110,110,0,0,0,20,0,0,0,0,200,1,'0.55',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (506,'OI0215','VACHALASHUNA THAILAM 100 ML','','ML',7,'MEDICATED OILS',85,85,0.85,85,85,0,0,0,20,1,0,0,0,100,1,'0.85',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (507,'OI0216','VAJRAKA THAILAM 200 ML','','ML',7,'MEDICATED OILS',125,125,0.63,125,125,0,0,0,20,0,0,0,0,200,1,'0.63',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (508,'OI0217','VALIYACHANDANADI THAILAM 200 ML','','ML',7,'MEDICATED OILS',275,275,1.38,275,275,0,0,0,20,0,0,0,0,200,1,'1.38',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (509,'OI0218','VIDARYADI YAMAKAM 100 GM','','GM',7,'MEDICATED OILS',115,115,1.15,115,115,0,0,0,20,0,0,0,0,100,1,'1.15',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (510,'OI0219','VILWAMPACHOTYADI THAILAM 100 ML','','ML',7,'MEDICATED OILS',90,90,0.9,90,90,0,0,0,20,0,0,0,0,100,1,'0.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (511,'OI0220','VILWAMKARASKARADI  THAILAM 200 ML','','ML',7,'MEDICATED OILS',175,175,0.88,175,175,0,0,0,20,0,0,0,0,200,1,'0.88',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (512,'TA0001','CHANDRAPRABHA GULIKA 50 NOS','','NOS',8,'PILLS',150,150,3,150,150,0,0,0,20,3,0,0,0,50,1,'3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,142.86,5,1,0,0,''),
 (513,'TA0002','CHUKKUMTHIPPALYADI GULIKA 50 NOS','','NOS',8,'PILLS',130,130,2.6,130,130,0,0,0,20,1,0,0,0,50,1,'2.6',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (514,'TA0003','DASANGAM GULIKA 50 NOS','','NOS',8,'PILLS',365,365,7.3,365,365,0,0,0,20,1,0,0,0,50,1,'7.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,347.62,5,1,0,0,''),
 (515,'TA0004','DHANWANTARAM GULIKA 50 NOS','','NOS',8,'PILLS',115,115,2.3,115,115,0,0,0,20,5,0,0,0,50,1,'2.3',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,109.52,5,1,0,0,''),
 (516,'TA0005','DHOOSHIVISHARI GULIKA 50 NOS','','NOS',8,'PILLS',125,125,2.5,125,125,0,0,0,20,1,0,0,0,50,1,'2.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (517,'TA0006','GOPICHANDANADI GULIKA 50 NOS','','NOS',8,'PILLS',185,185,3.7,185,185,0,0,0,20,1,0,0,0,50,1,'3.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.19,5,1,0,0,''),
 (518,'TA0007','GOROCHANADI GULIKA 50 NOS','','NOS',8,'PILLS',340,340,6.8,340,340,0,0,0,20,0,0,0,0,50,1,'6.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (519,'TA0008','GRAHANYANTHAKAM GULIKA 50 NOS','','NOS',8,'PILLS',140,140,2.8,140,140,0,0,0,20,0,0,0,0,50,1,'2.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (520,'TA0009','HINGUVACHADI GULIKA 50 NOS','','NOS',8,'PILLS',160,160,3.2,160,160,0,0,0,20,2,0,0,0,50,1,'3.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,152.38,5,1,0,0,''),
 (521,'TA0010','KANCHANARA GUGGULU 50 NOS','','NOS',8,'PILLS',275,275,5.5,275,275,0,0,0,20,2,0,0,0,50,1,'5.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,261.9,5,1,0,0,''),
 (522,'TA0011','KAISHORA GUGGULU 50 NOS','','NOS',8,'PILLS',185,185,3.7,185,185,0,0,0,20,3,0,0,0,50,1,'3.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,176.19,5,1,0,0,''),
 (523,'TA0012','KANKAYANAM GULIKA 50 NOS','','NOS',8,'PILLS',175,175,3.5,175,175,0,0,0,20,2,0,0,0,50,1,'3.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (524,'TA0013','KASTHURYADI GULIKA 50 NOS','','NOS',8,'PILLS',195,195,3.9,195,195,0,0,0,20,3,0,0,0,50,1,'3.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,185.71,5,1,0,0,''),
 (525,'TA0014','KHADIRA GULIKA 50 NOS','','NOS',8,'PILLS',345,345,6.9,345,345,0,0,0,20,1,0,0,0,50,1,'6.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,328.57,5,1,0,0,''),
 (526,'TA0015','KOMBANCHADI GULLIKA 50 NOS','','NOS',8,'PILLS',130,130,2.6,130,130,0,0,0,20,1,0,0,0,50,1,'2.6',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (527,'TA0016','KUTAJAPHANITHAM GULIKA 50 NOS','','NOS',8,'PILLS',140,140,2.8,140,140,0,0,0,20,0,0,0,0,50,1,'2.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (528,'TA0017','MANASAMITRAM GULIKA 50 NOS','','NOS',8,'PILLS',850,850,17,850,850,0,0,0,20,1,0,0,0,50,1,'17',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,809.52,5,1,0,0,''),
 (529,'TA0018','MANDOORAVATAKAM 50 NOS','','NOS',8,'PILLS',185,185,3.7,185,185,0,0,0,20,1,0,0,0,50,1,'3.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,157.14,5,1,0,0,''),
 (530,'TA0019','MUKKADI GULIKA 50 NOS','','NOS',8,'PILLS',140,140,2.8,140,140,0,0,0,20,1,0,0,0,50,1,'2.8',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,133.33,5,1,0,0,''),
 (531,'TA0020','NAVAYASAM GULIKA 50 NOS','','NOS',8,'PILLS',210,210,4.2,210,210,0,0,0,20,1,0,0,0,50,1,'4.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,200,5,1,0,0,''),
 (532,'TA0021','NAVAGUGGULU GULIKA 50 NOS','','NOS',8,'PILLS',270,270,5.4,270,270,0,0,0,20,0,0,0,0,50,1,'5.4',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (533,'TA0022','SHADDARANAM GULIKA 50 NOS','','NOS',8,'PILLS',210,210,4.2,210,210,0,0,0,20,2,0,0,0,50,1,'4.2',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,200,5,1,0,0,''),
 (534,'TA0023','SWASANANDAM GULIKA 50 NOS','','NOS',8,'PILLS',145,145,2.9,145,145,0,0,0,20,2,0,0,0,50,1,'2.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,138.1,5,1,0,0,''),
 (535,'TA0024','SURYAPRABHA GULIKA 50 NOS','','NOS',8,'PILLS',130,130,2.6,130,130,0,0,0,20,2,0,0,0,50,1,'2.6',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,123.81,5,1,0,0,''),
 (536,'TA0025','SWAPNASUDHA GULIKA 50 NOS','','NOS',8,'PILLS',295,295,5.9,295,295,0,0,0,20,2,0,0,0,50,1,'5.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,261.06,12,1,0,0,''),
 (537,'TA0026','VACHADI GULIKA 50 NOS','','NOS',8,'PILLS',220,220,4.4,220,220,0,0,0,20,0,0,0,0,50,1,'4.4',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (538,'TA0027','VALMEEKAVATI 50 NOS','','NOS',8,'PILLS',220,220,4.4,220,220,0,0,0,20,0,0,0,0,50,1,'4.4',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (539,'TA0028','VETTUMARAN GULIKA 50 NOS','','NOS',8,'PILLS',135,135,2.7,135,135,0,0,0,20,3,0,0,0,50,1,'2.7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.57,5,1,0,0,''),
 (540,'TA0029','VILWADI GULIKA 50 NOS','','NOS',8,'PILLS',195,195,3.9,195,195,0,0,0,20,3,0,0,0,50,1,'3.9',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,185.71,5,1,0,0,''),
 (541,'TA0030','YOGARAJA GUGGULU 50 NOS','','NOS',8,'PILLS',175,175,3.5,175,175,0,0,0,20,5,0,0,0,50,1,'3.5',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,166.67,5,1,0,0,''),
 (542,'NM0001','BRAHMI THAILAM 100 ML','','ML',9,'SPECIAL ITEMS',110,110,0,110,110,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (543,'NM0002','SOOTH LINT 30 ML','','ML',9,'SPECIAL ITEMS',95,95,0,95,95,0,0,0,20,4,0,0,0,30,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,84.07,12,1,0,0,''),
 (544,'NM0003','SOOTH RUB 20 GM','','GM',9,'SPECIAL ITEMS',85,85,0,85,85,0,0,0,20,5,0,0,0,20,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,75.22,12,1,0,0,''),
 (545,'NM0004','SMOOTH COUGH SYRUP 100 ML','','ML',9,'SPECIAL ITEMS',95,95,0,95,95,0,0,0,20,5,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,84.07,12,1,0,0,''),
 (546,'NM0005','PRURINIL 20 GM','','GM',9,'SPECIAL ITEMS',95,95,0,95,95,0,0,0,20,5,0,0,0,20,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,84.07,12,1,0,0,''),
 (547,'NM0006','ASWAGANDHA TABLET 500 MG 50 NOS','','NOS',9,'SPECIAL ITEMS',85,85,0,85,85,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (548,'NM0007','TRIPHALA TABLET 500 MG 50 NOS','','NOS',9,'SPECIAL ITEMS',85,85,0,85,85,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,80.95,5,1,0,0,''),
 (549,'NM0008','BRAHMI TABLET 500 MG 50 NOS','','NOS',9,'SPECIAL ITEMS',100,100,0,100,100,0,0,0,20,1,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,95.24,5,1,0,0,''),
 (550,'NM0009','LAXON SYRUP 50 ML','','ML',9,'SPECIAL ITEMS',50,50,0,50,50,0,0,0,20,3,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,44.25,12,1,0,0,''),
 (551,'NM0010','BHOODHATRI SYRUP 100 ML','','ML',9,'SPECIAL ITEMS',75,75,0,75,75,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (552,'NM0011','LAXON CAPSULE 50 NOS','','NOS',9,'SPECIAL ITEMS',350,350,7,350,350,0,0,0,20,0,0,0,0,50,1,'7',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (553,'NM0012','PACHANOL SYRUP 100 ML','','ML',9,'SPECIAL ITEMS',75,75,0,75,75,0,0,0,20,2,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.37,12,1,0,0,''),
 (554,'NM0013','MARMALEPAM 20 GM','','GM',9,'SPECIAL ITEMS',60,60,0,60,60,0,0,0,20,5,0,0,0,20,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (555,'NM0014','MARMALEPAM 50 GM','','GM',9,'SPECIAL ITEMS',135,135,0,135,135,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (556,'NM0015','MUSTHANOL SYRUP 100 ML','','ML',9,'SPECIAL ITEMS',75,75,0,75,75,0,0,0,20,2,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,66.37,12,1,0,0,''),
 (557,'NM0016','PHALARASAYANAM 250 GM','','GM',9,'SPECIAL ITEMS',205,205,0,205,205,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (558,'NM0017','RITURANJINI SYRUP 200 ML','','ML',9,'SPECIAL ITEMS',145,145,0,145,145,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,128.32,12,1,0,0,''),
 (559,'NM0018','MEHAGHNI 50 NOS','','NOS',9,'SPECIAL ITEMS',250,250,0,250,250,0,0,0,20,2,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,221.24,12,1,0,0,''),
 (560,'NM0019','SNA HERBAL DRINK 100 GM','','GM',9,'SPECIAL ITEMS',170,170,0,170,170,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (561,'NM0020','SOOTH RUB JAR 5 GM','','GM',9,'SPECIAL ITEMS',30,30,0,30,30,0,0,0,20,0,0,0,0,5,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (562,'NM0021','SHIRASTODA GULIKA LEPAM 20 GM','','GM',9,'SPECIAL ITEMS',60,60,0,60,60,0,0,0,20,5,0,0,0,20,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,57.14,5,1,0,0,''),
 (563,'NM0022','SHIRASTODA GULIKA LEPAM 50 GM','','GM',9,'SPECIAL ITEMS',135,135,0,135,135,0,0,0,20,0,0,0,0,50,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (564,'UM0001','PATHYAPADHA GHRITAM 150 GM','','GM',10,'UNNIMOOSS SERIES',200,200,0,200,200,0,0,0,20,0,0,0,0,150,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (565,'UM0002','ADARIKADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',190,190,0,190,190,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (566,'UM0003','BALAKULATHADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',165,165,0,165,165,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (567,'UM0004','BALASAIREYAKADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',245,245,0,245,245,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (568,'UM0005','CHANDANADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',235,235,0,235,235,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (569,'UM0006','DHATRYADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',185,185,0,185,185,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (570,'UM0007','HAMSAPATHYADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',235,235,0,235,235,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (571,'UM0008','KALYANAKAM KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',210,210,0,210,210,0,0,0,20,2,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,200,5,1,0,0,''),
 (572,'UM0009','RASNASHUNTYADI KASHAYAM 200 ML','','ML',10,'UNNIMOOSS SERIES',200,200,0,200,200,0,0,0,20,0,0,0,0,200,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (573,'UM0010','ELA AJAMOJA RASAYANAM 250 GM','','GM',10,'UNNIMOOSS SERIES',220,220,0,220,220,0,0,0,20,0,0,0,0,250,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,''),
 (574,'UM0011','CHUVANNAKUZHAMPU 10 GM','','GM',10,'UNNIMOOSS SERIES',125,125,0,125,125,0,0,0,20,2,0,0,0,10,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,119.05,5,1,0,0,''),
 (575,'UM0012','VARUNI THAILAM 100 ML','','ML',10,'UNNIMOOSS SERIES',155,155,0,155,155,0,0,0,20,0,0,0,0,100,0,'0',0,'','','0000-00-00','0000-00-00',0,'','',0,0,0,0,0,0,0,5,1,0,0,'');
/*!40000 ALTER TABLE `finish` ENABLE KEYS */;


--
-- Definition of table `finward`
--

DROP TABLE IF EXISTS `finward`;
CREATE TABLE `finward` (
  `f_inwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `inw_no` int(11) DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `inv_no` varchar(15) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `sup_name` varchar(40) DEFAULT NULL,
  `material` varchar(35) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `crdt_day` int(11) DEFAULT NULL,
  `sub_tot` double DEFAULT NULL,
  `ex_amt` double DEFAULT NULL,
  `disc_amt` double DEFAULT NULL,
  `exp_amt` double DEFAULT NULL,
  `tot_amt` double DEFAULT NULL,
  `note` varchar(40) DEFAULT NULL,
  `cess_amt` double DEFAULT NULL,
  `roff` double DEFAULT NULL,
  PRIMARY KEY (`f_inwid`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finward`
--

/*!40000 ALTER TABLE `finward` DISABLE KEYS */;
INSERT INTO `finward` (`f_inwid`,`inw_date`,`inw_no`,`rm_code`,`inv_no`,`inv_date`,`sup_name`,`material`,`batch_no`,`qty`,`tax`,`discount`,`rate`,`sup_code`,`crdt_day`,`sub_tot`,`ex_amt`,`disc_amt`,`exp_amt`,`tot_amt`,`note`,`cess_amt`,`roff`) VALUES 
 (1,'2021-04-13',1,'AA0002','INV0000777','2021-04-13','SNA OUSHADHASALA','ARAGWADADYASAVAM 450 ML','',2,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (2,'2021-04-13',1,'AA0003','INV0000777','2021-04-13','SNA OUSHADHASALA','ABHAYARISHTAM 450 ML','',20,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (3,'2021-04-13',1,'AA0003','INV0000777','2021-04-13','SNA OUSHADHASALA','ABHAYARISHTAM 450 ML','',2,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (4,'2021-04-13',1,'AA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','AMRUTARISHTAM 450 ML','',20,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (5,'2021-04-13',1,'AA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','AMRUTARISHTAM 450 ML','',2,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (6,'2021-04-13',1,'AA0007','INV0000777','2021-04-13','SNA OUSHADHASALA','ARAVINDASAVAM 450 ML','',5,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (7,'2021-04-13',1,'AA0005','INV0000777','2021-04-13','SNA OUSHADHASALA','ASOKARISHTAM 450 ML','',5,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (8,'2021-04-13',1,'AA0006','INV0000777','2021-04-13','SNA OUSHADHASALA','ASWAGANDARISHTAM 450 ML','',5,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (9,'2021-04-13',1,'AA0008','INV0000777','2021-04-13','SNA OUSHADHASALA','AYASKRUTI 450 ML','',3,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (10,'2021-04-13',1,'AA0009','INV0000777','2021-04-13','SNA OUSHADHASALA','BALARISHTAM 450 ML','',10,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (11,'2021-04-13',1,'AA0009','INV0000777','2021-04-13','SNA OUSHADHASALA','BALARISHTAM 450 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (12,'2021-04-13',1,'AA0010','INV0000777','2021-04-13','SNA OUSHADHASALA','CHANDANASAVAM 450 ML','',2,5,20,76.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (13,'2021-04-13',1,'AA0011','INV0000777','2021-04-13','SNA OUSHADHASALA','CHITRAKASAVAM 450 ML','',2,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (14,'2021-04-13',1,'AA0012','INV0000777','2021-04-13','SNA OUSHADHASALA','DANDYARISHTAM 450 ML','',2,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (15,'2021-04-13',1,'AA0013','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLARISHTAM 450 ML','',30,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (16,'2021-04-13',1,'AA0013','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLARISHTAM 450 ML','',3,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (17,'2021-04-13',1,'AA0015','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARARISHTAM 450 ML','',5,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (18,'2021-04-13',1,'AA0016','INV0000777','2021-04-13','SNA OUSHADHASALA','DRAKSHARISHTAM 450 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (19,'2021-04-13',1,'AA0017','INV0000777','2021-04-13','SNA OUSHADHASALA','DURALABHARISHTAM 450 ML','',3,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (20,'2021-04-13',1,'AA0018','INV0000777','2021-04-13','SNA OUSHADHASALA','JEERAKARISHTAM 450 ML','',3,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (21,'2021-04-13',1,'AA0019','INV0000777','2021-04-13','SNA OUSHADHASALA','KANAKASAVAM 450 ML','',10,5,20,76.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (22,'2021-04-13',1,'AA0020','INV0000777','2021-04-13','SNA OUSHADHASALA','KHADIRARISHTAM 450 ML','',5,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (23,'2021-04-13',1,'AA0022','INV0000777','2021-04-13','SNA OUSHADHASALA','KUMARYASAVAM 450 ML','',3,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (24,'2021-04-13',1,'AA0023','INV0000777','2021-04-13','SNA OUSHADHASALA','KUTAJARISHTAM 450 ML','',5,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (25,'2021-04-13',1,'AA0025','INV0000777','2021-04-13','SNA OUSHADHASALA','LODRASAVAM 450 ML','',3,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (26,'2021-04-13',1,'AA0026','INV0000777','2021-04-13','SNA OUSHADHASALA','LOHASAVAM 450 ML','',3,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (27,'2021-04-13',1,'AA0029','INV0000777','2021-04-13','SNA OUSHADHASALA','MUSTARISHTAM 450 ML','',5,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (28,'2021-04-13',1,'AA0030','INV0000777','2021-04-13','SNA OUSHADHASALA','NIMBAMRUTASAVAM 450 ML','',3,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (29,'2021-04-13',1,'AA0031','INV0000777','2021-04-13','SNA OUSHADHASALA','PARTHARISHTAM 450 ML','',3,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (30,'2021-04-13',1,'AA0032','INV0000777','2021-04-13','SNA OUSHADHASALA','PATOLARISHTAM 450 ML','',5,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (31,'2021-04-13',1,'AA0033','INV0000777','2021-04-13','SNA OUSHADHASALA','PIPPALYASAVAM 450 ML','',5,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (32,'2021-04-13',1,'AA0036','INV0000777','2021-04-13','SNA OUSHADHASALA','PUNARNAVASAVAM 450 ML','',5,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (33,'2021-04-13',1,'AA0039','INV0000777','2021-04-13','SNA OUSHADHASALA','SARASWATARISHTAM 100 ML','',1,5,20,200,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (34,'2021-04-13',1,'AA0043','INV0000777','2021-04-13','SNA OUSHADHASALA','USEERASAVAM 450 ML','',2,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (35,'2021-04-13',1,'AA0044','INV0000777','2021-04-13','SNA OUSHADHASALA','VASARISHTAM 450 ML','',10,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (36,'2021-04-13',1,'AA0044','INV0000777','2021-04-13','SNA OUSHADHASALA','VASARISHTAM 450 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (37,'2021-04-13',1,'AA0045','INV0000777','2021-04-13','SNA OUSHADHASALA','VARANADYARISHTAM 450 ML','',5,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (38,'2021-04-13',1,'AA0046','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLAJEERAKADYARISHTAM 450 ML','',3,5,20,109.52,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (39,'2021-04-13',1,'RA0003','INV0000777','2021-04-13','SNA OUSHADHASALA','KALYANAKSHARA 50 GM','',5,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (40,'2021-04-13',1,'RA0001','INV0000777','2021-04-13','SNA OUSHADHASALA','INDRALUPTAMASHI 10 GM','',8,12,20,61.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (41,'2021-04-13',1,'CH0001','INV0000777','2021-04-13','SNA OUSHADHASALA','ASHTACHURNAM 50 GM','',10,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (42,'2021-04-13',1,'CH0004','INV0000777','2021-04-13','SNA OUSHADHASALA','AVIPATHI CHURNAM 50 GM','',10,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (43,'2021-04-13',1,'CH0007','INV0000777','2021-04-13','SNA OUSHADHASALA','DADIMASHTAKA CHURNAM 50 GM','',10,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (44,'2021-04-13',1,'CH0010','INV0000777','2021-04-13','SNA OUSHADHASALA','GANDHACHURNAM-ELADI CHURNAM 50 GM','',5,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (45,'2021-04-13',1,'CH0013','INV0000777','2021-04-13','SNA OUSHADHASALA','GRUHADHUMADILEPA CHURNAM 50 GM','',2,5,20,38.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (46,'2021-04-13',1,'CH0015','INV0000777','2021-04-13','SNA OUSHADHASALA','GUGGULUPANCHAPALA CHURNAM 50 GM','',5,5,20,71.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (47,'2021-04-13',1,'CH0018','INV0000777','2021-04-13','SNA OUSHADHASALA','HINGUVACHADI CHURNAM 50 GM','',7,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (48,'2021-04-13',1,'CH0019','INV0000777','2021-04-13','SNA OUSHADHASALA','HUTHABHUGADI CHURNAM 50 GM','',5,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (49,'2021-04-13',1,'CH0020','INV0000777','2021-04-13','SNA OUSHADHASALA','INDUPPUKANA CHURNAM 50 GM','',2,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (50,'2021-04-13',1,'CH0021','INV0000777','2021-04-13','SNA OUSHADHASALA','JATAMAYADI CHURNAM 50 GM','',10,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (51,'2021-04-13',1,'CH0024','INV0000777','2021-04-13','SNA OUSHADHASALA','KACHURADI CHURNAM 10 GM','',5,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (52,'2021-04-13',1,'CH0026','INV0000777','2021-04-13','SNA OUSHADHASALA','KOLAKULATHADI CHURNAM 100 GM','',10,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (53,'2021-04-13',1,'CH0028','INV0000777','2021-04-13','SNA OUSHADHASALA','KOTTAMCHUKKADI CHURNAM 50 GM','',15,5,20,38.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (54,'2021-04-13',1,'CH0029','INV0000777','2021-04-13','SNA OUSHADHASALA','KOTTAMCHUKKADI CHURNAM 500 GM','',2,5,20,342.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (55,'2021-04-13',1,'CH0030','INV0000777','2021-04-13','SNA OUSHADHASALA','LODHRADI CHURNAM 50 GM','',3,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (56,'2021-04-13',1,'CH0031','INV0000777','2021-04-13','SNA OUSHADHASALA','NAGARADI CHURNAM 50 GM','',10,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (57,'2021-04-13',1,'CH0033','INV0000777','2021-04-13','SNA OUSHADHASALA','NALPAMARADI CHURNAM 50 GM','',5,5,20,76.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (58,'2021-04-13',1,'CH0034','INV0000777','2021-04-13','SNA OUSHADHASALA','NIMBADI CHURNAM 50 GM','',2,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (59,'2021-04-13',1,'CH0035','INV0000777','2021-04-13','SNA OUSHADHASALA','PANCHAKOLA CHURNAM 50 GM','',5,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (60,'2021-04-13',1,'CH0037','INV0000777','2021-04-13','SNA OUSHADHASALA','PUSHYANUGA CHURNAM 50 GM','',3,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (61,'2021-04-13',1,'CH0038','INV0000777','2021-04-13','SNA OUSHADHASALA','RASNADI CHURNAM 10 GM','',25,5,20,357.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (62,'2021-04-13',1,'CH0039','INV0000777','2021-04-13','SNA OUSHADHASALA','RASNADI CHURNAM 50 GM','',10,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (63,'2021-04-13',1,'CH0040','INV0000777','2021-04-13','SNA OUSHADHASALA','RAJANYADI CHURNAM 50 GM','',3,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (64,'2021-04-13',1,'CH0041','INV0000777','2021-04-13','SNA OUSHADHASALA','RAKTACHANDANA CHURNAM 50 GM','',3,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (65,'2021-04-13',1,'CH0043','INV0000777','2021-04-13','SNA OUSHADHASALA','SARASWATA CHURNAM 50 GM','',2,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (66,'2021-04-13',1,'CH0044','INV0000777','2021-04-13','SNA OUSHADHASALA','SHADDARANA CHURNAM 50 GM','',5,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (67,'2021-04-13',1,'CH0046','INV0000777','2021-04-13','SNA OUSHADHASALA','SUKHAVIRECHANA CHURNAM 50 GM','',5,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (68,'2021-04-13',1,'CH0050','INV0000777','2021-04-13','SNA OUSHADHASALA','THALEESAPATRADI CHURNAM 50 GM','',15,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (69,'2021-04-13',1,'CH0052','INV0000777','2021-04-13','SNA OUSHADHASALA','TRIPHALA CHURNAM (VARA CHURNAM) 50G','',10,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (70,'2021-04-13',1,'CH0054','INV0000777','2021-04-13','SNA OUSHADHASALA','TRIPHALADI CHURNAM 50 GM','',5,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (71,'2021-04-13',1,'CH0056','INV0000777','2021-04-13','SNA OUSHADHASALA','UPANAHA CHURNAM 50 GM','',5,5,20,33.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (72,'2021-04-13',1,'CH0058','INV0000777','2021-04-13','SNA OUSHADHASALA','VAISWANARA CHURNAM 50 GM','',10,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (73,'2021-04-13',1,'CH0059','INV0000777','2021-04-13','SNA OUSHADHASALA','VILANGADI CHURNAM 50 GM','',5,5,20,71.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (74,'2021-04-13',1,'CH0060','INV0000777','2021-04-13','SNA OUSHADHASALA','VILANGATHANDULADI CHURNAM 50 GM','',2,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (75,'2021-04-13',1,'CH0063','INV0000777','2021-04-13','SNA OUSHADHASALA','YOGARAJA CHURNAM 50 GM','',5,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (76,'2021-04-13',1,'CH0002','INV0000777','2021-04-13','SNA OUSHADHASALA','ASWAGANDADI CHURNAM 50 GM','',5,12,20,66.37,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (77,'2021-04-13',1,'CH0014','INV0000777','2021-04-13','SNA OUSHADHASALA','GRUHADHUMADIUDWARATANA CH 50 GM','',2,12,20,44.25,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (78,'2021-04-13',1,'CH0047','INV0000777','2021-04-13','SNA OUSHADHASALA','SNA DHANTA DAVANA CHURNAM 50 GM','',5,12,20,44.25,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (79,'2021-04-13',1,'CH0049','INV0000777','2021-04-13','SNA OUSHADHASALA','SNA MUKHAKANTHI CHURNAM 50 GM','',5,12,20,119.47,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (80,'2021-04-13',1,'CH0048','INV0000777','2021-04-13','SNA OUSHADHASALA','SNA DAHASAMANI 50 GM','',10,12,20,26.55,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (81,'2021-04-13',1,'CH0048','INV0000777','2021-04-13','SNA OUSHADHASALA','SNA DAHASAMANI 50 GM','',1,12,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (82,'2021-04-13',1,'GH0001','INV0000777','2021-04-13','SNA OUSHADHASALA','ARAGWADAMAHATIKTAKAM GHRITAM 150 GM','',1,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (83,'2021-04-13',1,'GH0003','INV0000777','2021-04-13','SNA OUSHADHASALA','AMRITAPRASHAM 200 GM','',2,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (84,'2021-04-13',1,'GH0004','INV0000777','2021-04-13','SNA OUSHADHASALA','ASOKAGHRITAM 150 GM','',1,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (85,'2021-04-13',1,'GH0005','INV0000777','2021-04-13','SNA OUSHADHASALA','BRAHMI GHRITAM 150 GM','',2,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (86,'2021-04-13',1,'GH0006','INV0000777','2021-04-13','SNA OUSHADHASALA','DADIMADI GHRITAM 150 GM','',5,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (87,'2021-04-13',1,'GH0008','INV0000777','2021-04-13','SNA OUSHADHASALA','DURVA GHRITAM 50 GM','',1,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (88,'2021-04-13',1,'GH0009','INV0000777','2021-04-13','SNA OUSHADHASALA','GUGGULUTIKTAKA GHRITAM 150 GM','',3,5,20,214.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (89,'2021-04-13',1,'GH0011','INV0000777','2021-04-13','SNA OUSHADHASALA','INDUKANTHA GHRITAM 150 GM','',3,5,20,171.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (90,'2021-04-13',1,'GH0012','INV0000777','2021-04-13','SNA OUSHADHASALA','JATYADI GHRITAM 50 GM','',5,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (91,'2021-04-13',1,'GH0013','INV0000777','2021-04-13','SNA OUSHADHASALA','JEEVANTHYADI GHRITAM 150 GM','',3,5,20,742.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (92,'2021-04-13',1,'GH0015','INV0000777','2021-04-13','SNA OUSHADHASALA','KALYANAKA GHIRTAM 150 GM','',3,5,20,161.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (93,'2021-04-13',1,'GH0017','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHAKALYANAKA GHRITAM 150 GM','',3,5,20,204.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (94,'2021-04-13',1,'GH0023','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHAPAISHACHIKA GHRITAM 150 GM','',1,5,20,195.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (95,'2021-04-13',1,'GH0018','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHARASNADI GHRITAM 150 GM','',2,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (96,'2021-04-13',1,'GH0020','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHASNEHAM 50 GM','',2,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (97,'2021-04-13',1,'GH0022','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHATIKTAKA GHRITAM 50 GM','',3,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (98,'2021-04-13',1,'GH0027','INV0000777','2021-04-13','SNA OUSHADHASALA','NARASIMHA RASAYANAM 200 GM','',5,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (99,'2021-04-13',1,'GH0029','INV0000777','2021-04-13','SNA OUSHADHASALA','PHALASARPIS 150 GM','',3,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (100,'2021-04-13',1,'GH0032','INV0000777','2021-04-13','SNA OUSHADHASALA','SARASWATHA GHRITAM 150 GM','',1,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (101,'2021-04-13',1,'GH0033','INV0000777','2021-04-13','SNA OUSHADHASALA','SHADPALA GHRITAM 150 GM','',3,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (102,'2021-04-13',1,'GH0034','INV0000777','2021-04-13','SNA OUSHADHASALA','SHATAVARI GHRITAM 150 GM','',2,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (103,'2021-04-13',1,'GH0035','INV0000777','2021-04-13','SNA OUSHADHASALA','SUKHAPRASUTI GHRITAM 150 GM','',1,5,20,190.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (104,'2021-04-13',1,'GH0036','INV0000777','2021-04-13','SNA OUSHADHASALA','SUKUMARA GHRITAM 150 GM','',2,5,20,219.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (105,'2021-04-13',1,'GH0037','INV0000777','2021-04-13','SNA OUSHADHASALA','TIKTAKA GHRITAM 150 GM','',3,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (106,'2021-04-13',1,'GH0038','INV0000777','2021-04-13','SNA OUSHADHASALA','TRAIPHALA GHRITAM 150 GM','',2,5,20,161.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (107,'2021-04-13',1,'GH0040','INV0000777','2021-04-13','SNA OUSHADHASALA','VARANADI GHRITAM 150 GM','',3,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (108,'2021-04-13',1,'GH0041','INV0000777','2021-04-13','SNA OUSHADHASALA','VASTYAMAYANTAKA GHRITAM 150 GM','',2,5,20,347.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (109,'2021-04-13',1,'GH0043','INV0000777','2021-04-13','SNA OUSHADHASALA','VIDARYADI GHRITAM 150 GM','',1,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (110,'2021-04-13',1,'NM0006','INV0000777','2021-04-13','SNA OUSHADHASALA','ASWAGANDHA TABLET 500 MG 50 NOS','',3,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (111,'2021-04-13',1,'NM0008','INV0000777','2021-04-13','SNA OUSHADHASALA','BRAHMI TABLET 500 MG 50 NOS','',1,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (112,'2021-04-13',1,'TA0001','INV0000777','2021-04-13','SNA OUSHADHASALA','CHANDRAPRABHA GULIKA 50 NOS','',3,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (113,'2021-04-13',1,'TA0002','INV0000777','2021-04-13','SNA OUSHADHASALA','CHUKKUMTHIPPALYADI GULIKA 50 NOS','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (114,'2021-04-13',1,'TA0003','INV0000777','2021-04-13','SNA OUSHADHASALA','DASANGAM GULIKA 50 NOS','',1,5,20,347.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (115,'2021-04-13',1,'TA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM GULIKA 50 NOS','',5,5,20,109.52,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (116,'2021-04-13',1,'TA0005','INV0000777','2021-04-13','SNA OUSHADHASALA','DHOOSHIVISHARI GULIKA 50 NOS','',1,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (117,'2021-04-13',1,'TA0006','INV0000777','2021-04-13','SNA OUSHADHASALA','GOPICHANDANADI GULIKA 50 NOS','',1,5,20,176.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (118,'2021-04-13',1,'TA0009','INV0000777','2021-04-13','SNA OUSHADHASALA','HINGUVACHADI GULIKA 50 NOS','',2,5,20,152.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (119,'2021-04-13',1,'TA0010','INV0000777','2021-04-13','SNA OUSHADHASALA','KANCHANARA GUGGULU 50 NOS','',2,5,20,261.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (120,'2021-04-13',1,'TA0011','INV0000777','2021-04-13','SNA OUSHADHASALA','KAISHORA GUGGULU 50 NOS','',3,5,20,176.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (121,'2021-04-13',1,'TA0012','INV0000777','2021-04-13','SNA OUSHADHASALA','KANKAYANAM GULIKA 50 NOS','',2,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (122,'2021-04-13',1,'TA0013','INV0000777','2021-04-13','SNA OUSHADHASALA','KASTHURYADI GULIKA 50 NOS','',3,5,20,185.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (123,'2021-04-13',1,'TA0014','INV0000777','2021-04-13','SNA OUSHADHASALA','KHADIRA GULIKA 50 NOS','',1,5,20,328.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (124,'2021-04-13',1,'TA0015','INV0000777','2021-04-13','SNA OUSHADHASALA','KOMBANCHADI GULLIKA 50 NOS','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (125,'2021-04-13',1,'TA0017','INV0000777','2021-04-13','SNA OUSHADHASALA','MANASAMITRAM GULIKA 50 NOS','',1,5,20,809.52,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (126,'2021-04-13',1,'TA0018','INV0000777','2021-04-13','SNA OUSHADHASALA','MANDOORAVATAKAM 50 NOS','',1,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (127,'2021-04-13',1,'TA0019','INV0000777','2021-04-13','SNA OUSHADHASALA','MUKKADI GULIKA 50 NOS','',1,5,20,133.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (128,'2021-04-13',1,'TA0020','INV0000777','2021-04-13','SNA OUSHADHASALA','NAVAYASAM GULIKA 50 NOS','',1,5,20,200,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (129,'2021-04-13',1,'TA0022','INV0000777','2021-04-13','SNA OUSHADHASALA','SHADDARANAM GULIKA 50 NOS','',2,5,20,200,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (130,'2021-04-13',1,'TA0023','INV0000777','2021-04-13','SNA OUSHADHASALA','SWASANANDAM GULIKA 50 NOS','',2,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (131,'2021-04-13',1,'TA0024','INV0000777','2021-04-13','SNA OUSHADHASALA','SURYAPRABHA GULIKA 50 NOS','',2,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (132,'2021-04-13',1,'NM0007','INV0000777','2021-04-13','SNA OUSHADHASALA','TRIPHALA TABLET 500 MG 50 NOS','',2,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (133,'2021-04-13',1,'TA0028','INV0000777','2021-04-13','SNA OUSHADHASALA','VETTUMARAN GULIKA 50 NOS','',3,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (134,'2021-04-13',1,'TA0029','INV0000777','2021-04-13','SNA OUSHADHASALA','VILWADI GULIKA 50 NOS','',3,5,20,185.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (135,'2021-04-13',1,'TA0030','INV0000777','2021-04-13','SNA OUSHADHASALA','YOGARAJA GUGGULU 50 NOS','',5,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (136,'2021-04-13',1,'NM0018','INV0000777','2021-04-13','SNA OUSHADHASALA','MEHAGHNI 50 NOS','',2,12,20,221.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (137,'2021-04-13',1,'TA0025','INV0000777','2021-04-13','SNA OUSHADHASALA','SWAPNASUDHA GULIKA 50 NOS','',2,12,20,261.06,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (138,'2021-04-13',1,'KA0001','INV0000777','2021-04-13','SNA OUSHADHASALA','ARAGWADADI KASHAYAM 200 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (139,'2021-04-13',1,'KA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','AMRUTHOTHARAM KASHAYAM 200 ML','',20,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (140,'2021-04-13',1,'KA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','AMRUTHOTHARAM KASHAYAM 200 ML','',2,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (141,'2021-04-13',1,'KA0006','INV0000777','2021-04-13','SNA OUSHADHASALA','ASHTAVARGAM KASHAYAM 200 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (142,'2021-04-13',1,'KA0007','INV0000777','2021-04-13','SNA OUSHADHASALA','BALAGULUCHYADI KASHAYAM 200 ML','',2,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (143,'2021-04-13',1,'KA0012','INV0000777','2021-04-13','SNA OUSHADHASALA','BRIHATHYADI KASHAYAM 200 ML','',5,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (144,'2021-04-13',1,'KA0013','INV0000777','2021-04-13','SNA OUSHADHASALA','CHIRUVILWAM KASHAYAM 200 ML','',10,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (145,'2021-04-13',1,'KA0013','INV0000777','2021-04-13','SNA OUSHADHASALA','CHIRUVILWAM KASHAYAM 200 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (146,'2021-04-13',1,'KA0015','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLAKATUTRAYAM KASHAYAM 200 ML','',10,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (147,'2021-04-13',1,'KA0015','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLAKATUTRAYAM KASHAYAM 200 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (148,'2021-04-13',1,'KA0016','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLAM KASHAYAM 200 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (149,'2021-04-13',1,'KA0021','INV0000777','2021-04-13','SNA OUSHADHASALA','DHAYNAMLAM 450 ML','',5,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (150,'2021-04-13',1,'KA0020','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM KASHAYAM 200 ML','',10,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (151,'2021-04-13',1,'KA0020','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM KASHAYAM 200 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (152,'2021-04-13',1,'KA0024','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANADANAYANADI KASHAYAM 200 ML','',2,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (153,'2021-04-13',1,'KA0025','INV0000777','2021-04-13','SNA OUSHADHASALA','DRAKSHADI KASHAYAM 200 ML','',3,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (154,'2021-04-13',1,'KA0026','INV0000777','2021-04-13','SNA OUSHADHASALA','DUSPARSHAKADI KASHAYAM 200 ML','',3,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (155,'2021-04-13',1,'KA0027','INV0000777','2021-04-13','SNA OUSHADHASALA','ELAKANADI KASHAYAM 200 ML','',5,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (156,'2021-04-13',1,'KA0028','INV0000777','2021-04-13','SNA OUSHADHASALA','GANDARVAHASTADI KASHAYAM 200 ML','',10,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (157,'2021-04-13',1,'KA0028','INV0000777','2021-04-13','SNA OUSHADHASALA','GANDARVAHASTADI KASHAYAM 200 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (158,'2021-04-13',1,'KA0029','INV0000777','2021-04-13','SNA OUSHADHASALA','GARBHARAKSHINI KASHAYAM 200 ML','',2,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (159,'2021-04-13',1,'KA0031','INV0000777','2021-04-13','SNA OUSHADHASALA','GUGGULU TIKTAKAM KASHAYAM 200 ML','',5,5,20,180.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (160,'2021-04-13',1,'KA0030','INV0000777','2021-04-13','SNA OUSHADHASALA','GULUCHYADI KASHAYAM 200 ML','',5,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (161,'2021-04-13',1,'KA0036','INV0000777','2021-04-13','SNA OUSHADHASALA','KATHAKAKHADHIRADI KASHAYAM 200 ML','',5,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (162,'2021-04-13',1,'KA0037','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHAMANJISHTADI KASHAYAM 200 ML','',3,5,20,152.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (163,'2021-04-13',1,'KA0038','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHARASNADI KASHAYAM 200 ML','',10,5,20,180.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (164,'2021-04-13',1,'KA0038','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHARASNADI KASHAYAM 200 ML','',1,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (165,'2021-04-13',1,'KA0039','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHATIKTAKAM KASHAYAM 200 ML','',2,5,20,176.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (166,'2021-04-13',1,'KA0040','INV0000777','2021-04-13','SNA OUSHADHASALA','MANJISHTADI KASHAYAM 200 ML','',3,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (167,'2021-04-13',1,'KA0042','INV0000777','2021-04-13','SNA OUSHADHASALA','MUSALIKHADIRADI KASHAYAM 200 ML','',3,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (168,'2021-04-13',1,'KA0043','INV0000777','2021-04-13','SNA OUSHADHASALA','NAYOPAYAM KASHAYAM 200 ML','',3,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (169,'2021-04-13',1,'KA0045','INV0000777','2021-04-13','SNA OUSHADHASALA','NIMBADI KASHAYAM 200 ML','',1,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (170,'2021-04-13',1,'KA0046','INV0000777','2021-04-13','SNA OUSHADHASALA','NISHAKATHAKADI KASHAYAM 200 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (171,'2021-04-13',1,'KA0047','INV0000777','2021-04-13','SNA OUSHADHASALA','NISHOTHAMADI KASHAYAM 200 ML','',1,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (172,'2021-04-13',1,'KA0049','INV0000777','2021-04-13','SNA OUSHADHASALA','PANCHAKOLAM KASHYAM 200 ML','',5,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (173,'2021-04-13',1,'KA0051','INV0000777','2021-04-13','SNA OUSHADHASALA','PATHYAKSHADHATRYADI KASHAYAM 200 ML','',5,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (174,'2021-04-13',1,'KA0052','INV0000777','2021-04-13','SNA OUSHADHASALA','PATHYAPUNARNAVADI KASHAYAM 200 ML','',2,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (175,'2021-04-13',1,'KA0053','INV0000777','2021-04-13','SNA OUSHADHASALA','PATOLAKATUROHINYADI KASHAYAM 200 ML','',2,5,20,176.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (176,'2021-04-13',1,'KA0054','INV0000777','2021-04-13','SNA OUSHADHASALA','PATOLAMULADI KASHAYAM 200 ML','',2,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (177,'2021-04-13',1,'KA0055','INV0000777','2021-04-13','SNA OUSHADHASALA','PRASARANYADI KASHAYAM 200 ML','',3,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (178,'2021-04-13',1,'KA0056','INV0000777','2021-04-13','SNA OUSHADHASALA','PUNARNAVADI KASHAYAM 200 ML','',5,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (179,'2021-04-13',1,'KA0059','INV0000777','2021-04-13','SNA OUSHADHASALA','RASNASAPTAKAM KASHAYAM 200 ML','',20,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (180,'2021-04-13',1,'KA0059','INV0000777','2021-04-13','SNA OUSHADHASALA','RASNASAPTAKAM KASHAYAM 200 ML','',2,5,20,0,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (181,'2021-04-13',1,'KA0061','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI KASHAYAM 200 ML','',5,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (182,'2021-04-13',1,'KA0062','INV0000777','2021-04-13','SNA OUSHADHASALA','SAPTASARAM KASHAYAM 200 ML','',5,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (183,'2021-04-13',1,'KA0065','INV0000777','2021-04-13','SNA OUSHADHASALA','SUKUMARAM KASHAYAM 200 ML','',3,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (184,'2021-04-13',1,'KA0070','INV0000777','2021-04-13','SNA OUSHADHASALA','VASAGULUCHYADI KASHAYAM 200 ML','',2,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (185,'2021-04-13',1,'KA0074','INV0000777','2021-04-13','SNA OUSHADHASALA','VARANADI KASHAYAM 200 ML','',3,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (186,'2021-04-13',1,'KA0076','INV0000777','2021-04-13','SNA OUSHADHASALA','VIDARYADI KASHAYAM 200 ML','',1,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (187,'2021-04-13',1,'KA0077','INV0000777','2021-04-13','SNA OUSHADHASALA','VILANGAKRISHNADI KASHAYAM 200 ML','',2,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (188,'2021-04-13',1,'KA0064','INV0000777','2021-04-13','SNA OUSHADHASALA','SHONITAMRITAM KASHAYAM 200 ML','',2,12,20,106.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (189,'2021-04-13',1,'UM0008','INV0000777','2021-04-13','SNA OUSHADHASALA','KALYANAKAM KASHAYAM 200 ML','',2,5,20,200,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (190,'2021-04-13',1,'LE0002','INV0000777','2021-04-13','SNA OUSHADHASALA','AGASTYA RASAYANAM 250 GM','',2,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (191,'2021-04-13',1,'LE0006','INV0000777','2021-04-13','SNA OUSHADHASALA','ASWAGANDHADI LEHYAM 250 GM','',2,5,20,114.29,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (192,'2021-04-13',1,'LE0011','INV0000777','2021-04-13','SNA OUSHADHASALA','CHYAVANAPRASAM 250 GM','',8,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (193,'2021-04-13',1,'LE0014','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLAHAREETHAKI LEHYAM 250 GM','',2,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (194,'2021-04-13',1,'LE0017','INV0000777','2021-04-13','SNA OUSHADHASALA','DASAMOOLA RASAYANAM 50 GM','',7,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (195,'2021-04-13',1,'LE0023','INV0000777','2021-04-13','SNA OUSHADHASALA','HRUDYAVIRECHANAM LEHYAM 100 GM','',2,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (196,'2021-04-13',1,'LE0025','INV0000777','2021-04-13','SNA OUSHADHASALA','KALYANAGULAM 250 GM','',2,5,20,90.48,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (197,'2021-04-13',1,'LE0027','INV0000777','2021-04-13','SNA OUSHADHASALA','KOOSHMANDA RASAYANAM 250 GM','',1,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (198,'2021-04-13',1,'LE0028','INV0000777','2021-04-13','SNA OUSHADHASALA','KUTAJATWAGADI LEHAM 250 GM','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (199,'2021-04-13',1,'LE0030','INV0000777','2021-04-13','SNA OUSHADHASALA','MANIBADRAGULAM 100 GM','',3,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (200,'2021-04-13',1,'LE0036','INV0000777','2021-04-13','SNA OUSHADHASALA','PANCHAJEERAKAGUDAM 500 GM','',1,5,20,242.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (201,'2021-04-13',1,'LE0039','INV0000777','2021-04-13','SNA OUSHADHASALA','SHATAVARIGULAM 250 GM','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (202,'2021-04-13',1,'LE0045','INV0000777','2021-04-13','SNA OUSHADHASALA','SURANADI LEHYAM 100 GM','',1,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (203,'2021-04-13',1,'LE0047','INV0000777','2021-04-13','SNA OUSHADHASALA','THALEESAPATRADI LEHYAM 100 GM','',3,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (204,'2021-04-13',1,'LE0051','INV0000777','2021-04-13','SNA OUSHADHASALA','THENGINPOOKKULADI GUDAM 500 GM','',2,12,20,176.99,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (205,'2021-04-13',1,'LE0052','INV0000777','2021-04-13','SNA OUSHADHASALA','TRIVRUT LEHYAM 100 GM','',3,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (206,'2021-04-13',1,'LE0054','INV0000777','2021-04-13','SNA OUSHADHASALA','VIDARYADI LEHYAM 250 GM','',2,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (207,'2021-04-13',1,'LE0057','INV0000777','2021-04-13','SNA OUSHADHASALA','VILWADI LEHYAM 100 GM','',3,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (208,'2021-04-13',1,'AA0014','INV0000777','2021-04-13','SNA OUSHADHASALA','AJAMAMSA RASAYANAM 500 GM','',2,12,20,154.87,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (209,'2021-04-13',1,'RA0004','INV0000777','2021-04-13','SNA OUSHADHASALA','ILANEERKUZHAMPU 5 GM','',20,5,20,33.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (210,'2021-04-13',1,'NM0013','INV0000777','2021-04-13','SNA OUSHADHASALA','MARMALEPAM 20 GM','',5,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (211,'2021-04-13',1,'NM0021','INV0000777','2021-04-13','SNA OUSHADHASALA','SHIRASTODA GULIKA LEPAM 20 GM','',5,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (212,'2021-04-13',1,'UM0011','INV0000777','2021-04-13','SNA OUSHADHASALA','CHUVANNAKUZHAMPU 10 GM','',2,5,20,119.05,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (213,'2021-04-13',1,'NM0002','INV0000777','2021-04-13','SNA OUSHADHASALA','SOOTH LINT 30 ML','',4,12,20,84.07,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (214,'2021-04-13',1,'OI0004','INV0000777','2021-04-13','SNA OUSHADHASALA','ANUTHAILAM 10 ML','',10,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (215,'2021-04-13',1,'OI0005','INV0000777','2021-04-13','SNA OUSHADHASALA','ARIMEDADI THAILAM 200 ML','',1,5,20,133.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (216,'2021-04-13',1,'OI0006','INV0000777','2021-04-13','SNA OUSHADHASALA','ARIMEDAS THAILAM 30 ML','',2,5,20,38.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (217,'2021-04-13',1,'OI0008','INV0000777','2021-04-13','SNA OUSHADHASALA','ASANELADI KERATHAILAM 100 ML','',2,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (218,'2021-04-13',1,'OI0010','INV0000777','2021-04-13','SNA OUSHADHASALA','ASANA MANJISHTADI THAILAM 200 ML','',2,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (219,'2021-04-13',1,'OI0012','INV0000777','2021-04-13','SNA OUSHADHASALA','ASANAVILWADI KERATHAILAM 100 ML','',2,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (220,'2021-04-13',1,'OI0017','INV0000777','2021-04-13','SNA OUSHADHASALA','BALAGULUCHYADI KERATHAILAM 200 ML','',3,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (221,'2021-04-13',1,'OI0020','INV0000777','2021-04-13','SNA OUSHADHASALA','BALAGULUCHYADI THAILAM 200 ML','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (222,'2021-04-13',1,'OI0026','INV0000777','2021-04-13','SNA OUSHADHASALA','BALASHWAGANDADI THAILAM 200 ML','',2,5,20,161.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (223,'2021-04-13',1,'OI0015','INV0000777','2021-04-13','SNA OUSHADHASALA','BALATHAILAM 10 ML','',2,5,20,66.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (224,'2021-04-13',1,'OI0040','INV0000777','2021-04-13','SNA OUSHADHASALA','CHINCHADI THAILAM 200 ML','',3,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (225,'2021-04-13',1,'OI0042','INV0000777','2021-04-13','SNA OUSHADHASALA','DADRUNASHINI THAILAM 100 ML','',1,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (226,'2021-04-13',1,'OI0057','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM 3 AVARTHI 30 ML','',2,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (227,'2021-04-13',1,'OI0058','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM 7 AVARTHI 10 ML','',2,5,20,33.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (228,'2021-04-13',1,'OI0055','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM KUZHAMPU 200 ML','',5,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (229,'2021-04-13',1,'OI0049','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWATARAM THAILAM 200 ML','',6,5,20,171.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (230,'2021-04-13',1,'OI0053','INV0000777','2021-04-13','SNA OUSHADHASALA','DHANWANTARAM MEZHUKUPAKAM 200 ML','',1,5,20,171.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (231,'2021-04-13',1,'OI0059','INV0000777','2021-04-13','SNA OUSHADHASALA','DURDURAPATRADI KERATHAILAM 200 ML','',3,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (232,'2021-04-13',1,'OI0061','INV0000777','2021-04-13','SNA OUSHADHASALA','DINESHELADI KERATHAILAM 200 ML','',2,5,20,157.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (233,'2021-04-13',1,'OI0069','INV0000777','2021-04-13','SNA OUSHADHASALA','ELADI KERATHAILAM 100 ML','',2,5,20,95.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (234,'2021-04-13',1,'OI0070','INV0000777','2021-04-13','SNA OUSHADHASALA','ELADI THAILAM 200 ML','',1,5,20,166.67,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (235,'2021-04-13',1,'OI0072','INV0000777','2021-04-13','SNA OUSHADHASALA','ERANDA SUKUMARAM 100 ML','',1,5,20,104.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (236,'2021-04-13',1,'OI0074','INV0000777','2021-04-13','SNA OUSHADHASALA','GANDHARVAHASTA THAILAM 100 ML','',5,5,20,76.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (237,'2021-04-13',1,'OI0075','INV0000777','2021-04-13','SNA OUSHADHASALA','HINGUTRIGUNAM 100 GM','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (238,'2021-04-13',1,'OI0077','INV0000777','2021-04-13','SNA OUSHADHASALA','JATHYADI KERATHAILAM 100 ML','',3,5,20,71.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (239,'2021-04-13',1,'OI0078','INV0000777','2021-04-13','SNA OUSHADHASALA','JEEVANTHYADI YAMAKAM 50 GM','',3,5,20,71.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (240,'2021-04-13',1,'OI0081','INV0000777','2021-04-13','SNA OUSHADHASALA','KARPASASTHYADI THAILAM 200 ML','',5,5,20,133.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (241,'2021-04-13',1,'OI0080','INV0000777','2021-04-13','SNA OUSHADHASALA','KARPASASTHYADI THAILAM 450 ML','',1,5,20,295.24,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (242,'2021-04-13',1,'OI0088','INV0000777','2021-04-13','SNA OUSHADHASALA','KANJUNNYADI KERATHAILAM 100 ML','',2,5,20,76.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (243,'2021-04-13',1,'OI0095','INV0000777','2021-04-13','SNA OUSHADHASALA','KETHAKIMOOLADI THAILAM 200 ML','',2,5,20,133.33,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (244,'2021-04-13',1,'OI0098','INV0000777','2021-04-13','SNA OUSHADHASALA','KHAJITHAPINDATHAILAM 100 GM','',1,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (245,'2021-04-13',1,'OI0100','INV0000777','2021-04-13','SNA OUSHADHASALA','KOTTAMCHUKKADI THAILAM 200 ML','',5,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (246,'2021-04-13',1,'OI0099','INV0000777','2021-04-13','SNA OUSHADHASALA','KOTTAMCHUKKADI THAILAM 450 ML','',1,5,20,280.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (247,'2021-04-13',1,'OI0104','INV0000777','2021-04-13','SNA OUSHADHASALA','KOTTAMCHUKKADI KUZHAMPU 200 ML','',2,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (248,'2021-04-13',1,'OI0109','INV0000777','2021-04-13','SNA OUSHADHASALA','KSHEERABALA 101 AVARTHI 10 GM','',2,5,20,100,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (249,'2021-04-13',1,'OI0108','INV0000777','2021-04-13','SNA OUSHADHASALA','KSHEERABALA 21 AVARTHI 10 ML','',2,5,20,47.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (250,'2021-04-13',1,'OI0111','INV0000777','2021-04-13','SNA OUSHADHASALA','KSHEERABALA THAILAM 200 ML','',3,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (251,'2021-04-13',1,'OI0119','INV0000777','2021-04-13','SNA OUSHADHASALA','LAKSHADI THAILAM 200 ML','',1,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (252,'2021-04-13',1,'OI0122','INV0000777','2021-04-13','SNA OUSHADHASALA','MALATHYADI KERATHAILAM 200 ML','',2,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (253,'2021-04-13',1,'OI0133','INV0000777','2021-04-13','SNA OUSHADHASALA','MAHANARAYANA THAILAM 200 ML','',3,5,20,204.76,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (254,'2021-04-13',1,'OI0138','INV0000777','2021-04-13','SNA OUSHADHASALA','MURIVENNA 200 ML','',10,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (255,'2021-04-13',1,'OI0137','INV0000777','2021-04-13','SNA OUSHADHASALA','MURIVENNA 450 ML','',1,5,20,280.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (256,'2021-04-13',1,'OI0143','INV0000777','2021-04-13','SNA OUSHADHASALA','NALPAMARADI KERATHAILAM 200 ML','',2,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (257,'2021-04-13',1,'OI0145','INV0000777','2021-04-13','SNA OUSHADHASALA','NALPAMARADI THAILAM 200 ML','',3,5,20,138.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (258,'2021-04-13',1,'OI0151','INV0000777','2021-04-13','SNA OUSHADHASALA','NEELIBHRINGADI KERATHAILAM 200 ML','',2,5,20,180.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (259,'2021-04-13',1,'OI0157','INV0000777','2021-04-13','SNA OUSHADHASALA','NIMBAMRUTHADI ERANDATHAILAM 100 ML','',1,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (260,'2021-04-13',1,'OI0161','INV0000777','2021-04-13','SNA OUSHADHASALA','NIRGUNDYADI KERATHAILAM 100 ML','',1,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (261,'2021-04-13',1,'OI0173','INV0000777','2021-04-13','SNA OUSHADHASALA','PINDA THAILAM 200 ML','',5,5,20,123.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (262,'2021-04-13',1,'OI0172','INV0000777','2021-04-13','SNA OUSHADHASALA','PINDA THAILAM 450 ML','',1,5,20,271.43,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (263,'2021-04-13',1,'OI0184','INV0000777','2021-04-13','SNA OUSHADHASALA','PRAPOUNDARIKADI KERATHAILAM 200 ML','',2,5,20,176.19,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (264,'2021-04-13',1,'OI0186','INV0000777','2021-04-13','SNA OUSHADHASALA','PRASARANI THAILAM 200 ML','',5,5,20,142.86,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (265,'2021-04-13',1,'OI0188','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI 3 AVARTHI 30 ML','',2,5,20,61.9,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (266,'2021-04-13',1,'OI0189','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI 7 AVARTHI 10 ML','',2,5,20,38.09,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (267,'2021-04-13',1,'OI0198','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI KUZHAMPU 100 ML','',2,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (268,'2021-04-13',1,'OI0191','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI THAILAM 200 ML','',5,5,20,147.62,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (269,'2021-04-13',1,'OI0190','INV0000777','2021-04-13','SNA OUSHADHASALA','SAHACHARADI THAILAM 450 ML','',1,5,20,323.81,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (270,'2021-04-13',1,'OI0200','INV0000777','2021-04-13','SNA OUSHADHASALA','SHUDHABALA THAILAM 200 ML','',3,5,20,128.57,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (271,'2021-04-13',1,'OI0206','INV0000777','2021-04-13','SNA OUSHADHASALA','TEKARAJADI KERATHAILAM 100 ML','',1,5,20,85.71,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (272,'2021-04-13',1,'OI0215','INV0000777','2021-04-13','SNA OUSHADHASALA','VACHALASHUNA THAILAM 100 ML','',1,5,20,80.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (273,'2021-04-13',1,'OI0038','INV0000777','2021-04-13','SNA OUSHADHASALA','CHEMPARATYADI KERATHAILAM 100 ML','',2,12,20,61.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (274,'2021-04-13',1,'OI0047','INV0000777','2021-04-13','SNA OUSHADHASALA','DEVADARVADI KERATHAILAM 100 ML','',1,12,20,84.07,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (275,'2021-04-13',1,'OI0079','INV0000777','2021-04-13','SNA OUSHADHASALA','KARASKARADI THAILAM 200 ML','',1,12,20,146.02,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (276,'2021-04-13',1,'OI0091','INV0000777','2021-04-13','SNA OUSHADHASALA','KARPOORADI THAILAM 200 ML','',6,12,20,119.47,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (277,'2021-04-13',1,'OI0155','INV0000777','2021-04-13','SNA OUSHADHASALA','NEELIDALADI KERATHAILAM 100 ML','',2,12,20,70.8,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (278,'2021-04-13',1,'OI0201','INV0000777','2021-04-13','SNA OUSHADHASALA','SUDHADURVADI KERATHAILAM 200 ML','',2,12,20,146.02,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (279,'2021-04-13',1,'OI0204','INV0000777','2021-04-13','SNA OUSHADHASALA','SINDUVARAERANDAM 100 ML','',2,12,20,61.95,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (280,'2021-04-13',1,'NM0005','INV0000777','2021-04-13','SNA OUSHADHASALA','PRURINIL 20 GM','',5,12,20,84.07,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (281,'2021-04-13',1,'NM0003','INV0000777','2021-04-13','SNA OUSHADHASALA','SOOTH RUB 20 GM','',5,12,20,75.22,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (282,'2021-04-13',1,'NM0009','INV0000777','2021-04-13','SNA OUSHADHASALA','LAXON SYRUP 50 ML','',3,12,20,44.25,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (283,'2021-04-13',1,'NM0015','INV0000777','2021-04-13','SNA OUSHADHASALA','MUSTHANOL SYRUP 100 ML','',2,12,20,66.37,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (284,'2021-04-13',1,'NM0012','INV0000777','2021-04-13','SNA OUSHADHASALA','PACHANOL SYRUP 100 ML','',2,12,20,66.37,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (285,'2021-04-13',1,'NM0017','INV0000777','2021-04-13','SNA OUSHADHASALA','RITURANJINI SYRUP 200 ML','',2,12,20,128.32,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (286,'2021-04-13',1,'NM0004','INV0000777','2021-04-13','SNA OUSHADHASALA','SMOOTH COUGH SYRUP 100 ML','',5,12,20,84.07,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (287,'2021-04-13',1,'CH0017','INV0000777','2021-04-13','SNA OUSHADHASALA','HARIDRAKHANDAM 50 GM','',10,5,20,52.38,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (288,'2021-04-13',1,'CH0036','INV0000777','2021-04-13','SNA OUSHADHASALA','PULINKUZHAMPU 50 GM','',2,5,20,57.14,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (289,'2021-04-13',1,'CH0051','INV0000777','2021-04-13','SNA OUSHADHASALA','THALEESAPATRASITA VATAKAM 50 GM','',5,5,20,38.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0),
 (290,'2021-04-13',1,'CH0061','INV0000777','2021-04-13','SNA OUSHADHASALA','VYOSHADI VATAKAM 50 GM','',10,5,20,38.1,1,0,101970.48,2461.23,22462.12,2461.23,94832,'',0,0);
/*!40000 ALTER TABLE `finward` ENABLE KEYS */;


--
-- Definition of table `forder`
--

DROP TABLE IF EXISTS `forder`;
CREATE TABLE `forder` (
  `f_ordid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ord_date` date DEFAULT NULL,
  `ord_no` int(11) DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `inv_no` varchar(35) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `sup_name` varchar(40) DEFAULT NULL,
  `material` varchar(35) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `crdt_day` int(11) DEFAULT NULL,
  `sub_tot` double DEFAULT NULL,
  `ex_amt` double DEFAULT NULL,
  `disc_amt` double DEFAULT NULL,
  `exp_amt` double DEFAULT NULL,
  `tot_amt` double DEFAULT NULL,
  PRIMARY KEY (`f_ordid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forder`
--

/*!40000 ALTER TABLE `forder` DISABLE KEYS */;
/*!40000 ALTER TABLE `forder` ENABLE KEYS */;


--
-- Definition of table `group1`
--

DROP TABLE IF EXISTS `group1`;
CREATE TABLE `group1` (
  `grp_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `grp_no` int(11) DEFAULT NULL,
  `grp_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group1`
--

/*!40000 ALTER TABLE `group1` DISABLE KEYS */;
INSERT INTO `group1` (`grp_id`,`grp_no`,`grp_name`) VALUES 
 (1,1,'ARISHTA ASAVAAS'),
 (2,2,'BHASMASINDOORAS'),
 (3,3,'CHOORNAM'),
 (4,4,'GHRITHAM'),
 (5,5,'KASHAYAM'),
 (6,6,'LEHAM'),
 (7,7,'MEDICATED OILS'),
 (8,8,'PILLS'),
 (9,9,'SPECIAL ITEMS'),
 (10,10,'UNNIMOOSS SERIES');
/*!40000 ALTER TABLE `group1` ENABLE KEYS */;


--
-- Definition of table `mhead`
--

DROP TABLE IF EXISTS `mhead`;
CREATE TABLE `mhead` (
  `m_headid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `acc_code` int(11) DEFAULT NULL,
  `sub_code` int(11) DEFAULT NULL,
  `acc_name` varchar(40) DEFAULT NULL,
  `direct` tinyint(1) DEFAULT NULL,
  `open_bal` double DEFAULT NULL,
  `apr` double DEFAULT NULL,
  `may` double DEFAULT NULL,
  `jun` double DEFAULT NULL,
  `jul` double DEFAULT NULL,
  `aug` double DEFAULT NULL,
  `sep` double DEFAULT NULL,
  `oct` double DEFAULT NULL,
  `nov` double DEFAULT NULL,
  `dece` double DEFAULT NULL,
  `jan` double DEFAULT NULL,
  `feb` double DEFAULT NULL,
  `mar` double DEFAULT NULL,
  PRIMARY KEY (`m_headid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhead`
--

/*!40000 ALTER TABLE `mhead` DISABLE KEYS */;
INSERT INTO `mhead` (`m_headid`,`category`,`acc_code`,`sub_code`,`acc_name`,`direct`,`open_bal`,`apr`,`may`,`jun`,`jul`,`aug`,`sep`,`oct`,`nov`,`dece`,`jan`,`feb`,`mar`) VALUES 
 (1,1,1,0,'CASH ACCOUNT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (2,1,2,0,'BANK ACCOUNT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (3,3,3,0,'OPENING STOCK',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (4,3,4,0,'CLOSING STOCK',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (5,3,5,0,'SALES-RETAIL',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (6,3,6,0,'SALES RETURN',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (7,3,7,0,'PURCHASES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (8,3,8,0,'PURCHASE RETURN',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (9,3,9,0,'DISCOUNT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (10,2,10,0,'SUNDRY EXPENSES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (11,2,11,0,'TRAVELLING EXPENSES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (12,2,12,0,'PRINTING AND STATIONARY',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (13,2,13,0,'REPAIRS AND MAINTENANCE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (14,3,14,0,'SALES-WHOLESALE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (15,2,15,0,'SALARY',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (16,2,16,0,'CONSULTATION CHARGES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (17,2,17,0,'POWER, WATER AND ELECTRICITY',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (18,2,18,0,'INTEREST & BANK CHARGES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (19,2,19,0,'SALES EXPENDITURE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (20,2,20,0,'POST AND TELEGRAPH',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (21,2,21,0,'SUBSCRIPTION AND DONATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (22,2,22,0,'ADVERTISEMENT AND SALES PROMOTION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (23,2,23,0,'INSURANCE PREMIUM',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (24,2,24,0,'FEES AND TAXES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (25,2,25,0,'TREATMENT INCOME',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (26,2,26,0,'RENT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (27,2,27,0,'ACCOUNTING CHARGES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (28,3,28,0,'PACKING CHARGES',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (29,2,29,0,'DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (30,2,30,0,'SALES TAX',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (31,1,31,0,'CAPITAL A/C',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (32,1,32,0,'LOANS AND DRAWINGS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (33,1,33,0,'AUDIT FEE PAYABLE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (34,1,34,0,'FIXED ASSETS',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (35,1,35,0,'INVESTMENTS',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (36,1,36,0,'DEPOSIT AND ADVANCES',0,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (37,1,37,0,'SUNDRY DEBTORS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (38,1,38,0,'SUNDRY CREDITORS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (39,1,31,1,'SURESH KUMAR M.',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (40,1,31,3,'LESS : DRAWINGS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (41,1,34,4,'MACHINERY',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (42,1,34,5,'TOOLS & EQUIPMENTS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (43,1,34,6,'FURNITURE & FITTINGS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (44,1,34,7,'VEHICLE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (45,1,34,8,'COMPUTER',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (46,2,29,9,'MACHINERY DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (47,2,29,10,'TOOLS & EQUIPMENTS DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (48,2,29,11,'FURNITURE & FITTINGS DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (49,2,29,12,'VEHICLE DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (50,2,29,13,'COMPUTER DEPRECIATION',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (51,1,35,14,'SECURITY DEPOSITS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (52,1,35,15,'N.S.C.',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (53,1,35,16,'VEHICLE PERMIT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (54,1,36,17,'SALES TAX DEPOSIT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (55,1,36,18,'MOBILE PHONE DEPOSIT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (56,1,36,19,'KSEB DEPOSIT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (57,1,36,20,'TELEPHONE DEPOSIT',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (58,1,2,21,'FEDERAL BANK',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (59,3,7,999996,'PURCHASES-MEDICINE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (60,3,8,999994,'PURCHASE RETURN-MEDICINE',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (61,3,7,999997,'PURCHASES-PACKING MATERIALS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (62,3,8,999995,'PURCHASE RETURN-PACKING MATERIALS',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (63,2,30,999999,'SGST COLLECTED',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (64,2,30,999998,'CGST COLLECTED',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (65,2,30,999993,'IGST COLLECTED',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (66,2,30,999992,'KERALA FLOOD CESS COLLECTED',1,0,0,0,0,0,0,0,0,0,0,0,0,0),
 (67,1,38,22,'SNA OUSHADHASALA',1,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mhead` ENABLE KEYS */;


--
-- Definition of table `outward`
--

DROP TABLE IF EXISTS `outward`;
CREATE TABLE `outward` (
  `f_inwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `inw_no` int(11) DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `inv_no` varchar(15) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `sup_name` varchar(40) DEFAULT NULL,
  `material` varchar(35) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `crdt_day` int(11) DEFAULT NULL,
  `sub_tot` double DEFAULT NULL,
  `ex_amt` double DEFAULT NULL,
  `disc_amt` double DEFAULT NULL,
  `exp_amt` double DEFAULT NULL,
  `tot_amt` double DEFAULT NULL,
  `note` varchar(40) DEFAULT NULL,
  `cess_amt` double DEFAULT NULL,
  `roff` double DEFAULT NULL,
  PRIMARY KEY (`f_inwid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outward`
--

/*!40000 ALTER TABLE `outward` DISABLE KEYS */;
/*!40000 ALTER TABLE `outward` ENABLE KEYS */;


--
-- Definition of table `paymain`
--

DROP TABLE IF EXISTS `paymain`;
CREATE TABLE `paymain` (
  `rec_mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prfx` varchar(1) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `acc_code` int(11) DEFAULT NULL,
  `sub_code` int(11) DEFAULT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `paddr1` varchar(40) DEFAULT NULL,
  `paddr2` varchar(40) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `bill_recpt` tinyint(1) DEFAULT NULL,
  `bank_code` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`rec_mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymain`
--

/*!40000 ALTER TABLE `paymain` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymain` ENABLE KEYS */;


--
-- Definition of table `paymode`
--

DROP TABLE IF EXISTS `paymode`;
CREATE TABLE `paymode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paymode` varchar(30) DEFAULT NULL,
  `BankCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymode`
--

/*!40000 ALTER TABLE `paymode` DISABLE KEYS */;
INSERT INTO `paymode` (`id`,`paymode`,`BankCode`) VALUES 
 (1,'CASH',1),
 (2,'CREDIT',1),
 (3,'CR CARD',1),
 (4,'DB CARD',1);
/*!40000 ALTER TABLE `paymode` ENABLE KEYS */;


--
-- Definition of table `paysub`
--

DROP TABLE IF EXISTS `paysub`;
CREATE TABLE `paysub` (
  `rec_sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prfx` varchar(1) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `desc1` varchar(65) DEFAULT NULL,
  `amt` double DEFAULT NULL,
  PRIMARY KEY (`rec_sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paysub`
--

/*!40000 ALTER TABLE `paysub` DISABLE KEYS */;
/*!40000 ALTER TABLE `paysub` ENABLE KEYS */;


--
-- Definition of table `rcptctrl`
--

DROP TABLE IF EXISTS `rcptctrl`;
CREATE TABLE `rcptctrl` (
  `rcpt_cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `r_title` varchar(30) DEFAULT NULL,
  `r_accode` varchar(12) DEFAULT NULL,
  `r_bankcode` varchar(12) DEFAULT NULL,
  `r_prfx` varchar(1) DEFAULT NULL,
  `r_sino` int(11) DEFAULT NULL,
  PRIMARY KEY (`rcpt_cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcptctrl`
--

/*!40000 ALTER TABLE `rcptctrl` DISABLE KEYS */;
/*!40000 ALTER TABLE `rcptctrl` ENABLE KEYS */;


--
-- Definition of table `recmain`
--

DROP TABLE IF EXISTS `recmain`;
CREATE TABLE `recmain` (
  `rec_mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prfx` varchar(1) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `acc_code` int(11) DEFAULT NULL,
  `sub_code` int(11) DEFAULT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `paddr1` varchar(40) DEFAULT NULL,
  `paddr2` varchar(40) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `bill_recpt` tinyint(1) DEFAULT NULL,
  `bank_code` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`rec_mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recmain`
--

/*!40000 ALTER TABLE `recmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `recmain` ENABLE KEYS */;


--
-- Definition of table `recorder`
--

DROP TABLE IF EXISTS `recorder`;
CREATE TABLE `recorder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) DEFAULT NULL,
  `ord_no` int(11) DEFAULT NULL,
  `ord_date` date DEFAULT NULL,
  `scheme` int(11) DEFAULT NULL,
  `cindex` int(11) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recorder`
--

/*!40000 ALTER TABLE `recorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `recorder` ENABLE KEYS */;


--
-- Definition of table `recsub`
--

DROP TABLE IF EXISTS `recsub`;
CREATE TABLE `recsub` (
  `rec_sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prfx` varchar(1) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `desc1` varchar(65) DEFAULT NULL,
  `amt` double DEFAULT NULL,
  PRIMARY KEY (`rec_sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recsub`
--

/*!40000 ALTER TABLE `recsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `recsub` ENABLE KEYS */;


--
-- Definition of table `refer`
--

DROP TABLE IF EXISTS `refer`;
CREATE TABLE `refer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refer` varchar(40) DEFAULT NULL,
  `RefDt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refer`
--

/*!40000 ALTER TABLE `refer` DISABLE KEYS */;
/*!40000 ALTER TABLE `refer` ENABLE KEYS */;


--
-- Definition of table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `grp_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `grp_no` int(11) DEFAULT NULL,
  `grp_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`grp_id`,`grp_no`,`grp_name`) VALUES 
 (1,1,'');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;


--
-- Definition of table `rmloan`
--

DROP TABLE IF EXISTS `rmloan`;
CREATE TABLE `rmloan` (
  `f_inwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `inw_no` int(11) DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `inv_no` varchar(15) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `sup_name` varchar(40) DEFAULT NULL,
  `material` varchar(35) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `crdt_day` int(11) DEFAULT NULL,
  `sub_tot` double DEFAULT NULL,
  `ex_amt` double DEFAULT NULL,
  `disc_amt` double DEFAULT NULL,
  `exp_amt` double DEFAULT NULL,
  `tot_amt` double DEFAULT NULL,
  `note` varchar(40) DEFAULT NULL,
  `cess_amt` double DEFAULT NULL,
  `roff` double DEFAULT NULL,
  PRIMARY KEY (`f_inwid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmloan`
--

/*!40000 ALTER TABLE `rmloan` DISABLE KEYS */;
/*!40000 ALTER TABLE `rmloan` ENABLE KEYS */;


--
-- Definition of table `rmloan1`
--

DROP TABLE IF EXISTS `rmloan1`;
CREATE TABLE `rmloan1` (
  `f_inwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `inw_no` int(11) DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `inv_no` varchar(15) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `sup_name` varchar(40) DEFAULT NULL,
  `material` varchar(35) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `crdt_day` int(11) DEFAULT NULL,
  `sub_tot` double DEFAULT NULL,
  `ex_amt` double DEFAULT NULL,
  `disc_amt` double DEFAULT NULL,
  `exp_amt` double DEFAULT NULL,
  `tot_amt` double DEFAULT NULL,
  `note` varchar(40) DEFAULT NULL,
  `cess_amt` double DEFAULT NULL,
  `roff` double DEFAULT NULL,
  PRIMARY KEY (`f_inwid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmloan1`
--

/*!40000 ALTER TABLE `rmloan1` DISABLE KEYS */;
/*!40000 ALTER TABLE `rmloan1` ENABLE KEYS */;


--
-- Definition of table `rmretn`
--

DROP TABLE IF EXISTS `rmretn`;
CREATE TABLE `rmretn` (
  `rm_retid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rm_retid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmretn`
--

/*!40000 ALTER TABLE `rmretn` DISABLE KEYS */;
/*!40000 ALTER TABLE `rmretn` ENABLE KEYS */;


--
-- Definition of table `rmretn1`
--

DROP TABLE IF EXISTS `rmretn1`;
CREATE TABLE `rmretn1` (
  `rm_retid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inw_date` date DEFAULT NULL,
  `rm_code` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `sup_code` int(11) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rm_retid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmretn1`
--

/*!40000 ALTER TABLE `rmretn1` DISABLE KEYS */;
/*!40000 ALTER TABLE `rmretn1` ENABLE KEYS */;


--
-- Definition of table `salemain`
--

DROP TABLE IF EXISTS `salemain`;
CREATE TABLE `salemain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salemain`
--

/*!40000 ALTER TABLE `salemain` DISABLE KEYS */;
/*!40000 ALTER TABLE `salemain` ENABLE KEYS */;


--
-- Definition of table `salesub`
--

DROP TABLE IF EXISTS `salesub`;
CREATE TABLE `salesub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesub`
--

/*!40000 ALTER TABLE `salesub` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesub` ENABLE KEYS */;


--
-- Definition of table `sretmain`
--

DROP TABLE IF EXISTS `sretmain`;
CREATE TABLE `sretmain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sretmain`
--

/*!40000 ALTER TABLE `sretmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sretmain` ENABLE KEYS */;


--
-- Definition of table `sretsub`
--

DROP TABLE IF EXISTS `sretsub`;
CREATE TABLE `sretsub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sretsub`
--

/*!40000 ALTER TABLE `sretsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `sretsub` ENABLE KEYS */;


--
-- Definition of table `stkmain`
--

DROP TABLE IF EXISTS `stkmain`;
CREATE TABLE `stkmain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usr_id` varchar(10) DEFAULT NULL,
  `usr_name` varchar(30) DEFAULT NULL,
  `indate` date DEFAULT NULL,
  `intime` varchar(8) DEFAULT NULL,
  `outtime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stkmain`
--

/*!40000 ALTER TABLE `stkmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `stkmain` ENABLE KEYS */;


--
-- Definition of table `stksub`
--

DROP TABLE IF EXISTS `stksub`;
CREATE TABLE `stksub` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MId` int(11) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stksub`
--

/*!40000 ALTER TABLE `stksub` DISABLE KEYS */;
/*!40000 ALTER TABLE `stksub` ENABLE KEYS */;


--
-- Definition of table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `addr1` varchar(30) DEFAULT NULL,
  `addr2` varchar(30) DEFAULT NULL,
  `addr3` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `pager` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `cstno` varchar(30) DEFAULT NULL,
  `kgstno` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`sup_id`,`code`,`name`,`addr1`,`addr2`,`addr3`,`phone`,`fax`,`pager`,`email`,`mobile`,`amount`,`cstno`,`kgstno`) VALUES 
 (1,1,'SNA OUSHADHASALA','THRISSUR',' ',' ',' ',' ',' ',' ',' ',0,' ','32AAGCS5828R1ZQ');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;


--
-- Definition of table `trbillmain`
--

DROP TABLE IF EXISTS `trbillmain`;
CREATE TABLE `trbillmain` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PatID` int(11) DEFAULT NULL,
  `PatName` varchar(45) DEFAULT NULL,
  `BillNo` int(11) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `BillType` int(11) DEFAULT NULL,
  `Doctor` int(11) DEFAULT NULL,
  `BillAmt` double DEFAULT NULL,
  `TaxAmt` double DEFAULT NULL,
  `ROff` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbillmain`
--

/*!40000 ALTER TABLE `trbillmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `trbillmain` ENABLE KEYS */;


--
-- Definition of table `trbillsub`
--

DROP TABLE IF EXISTS `trbillsub`;
CREATE TABLE `trbillsub` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BillID` int(11) DEFAULT NULL,
  `TreatID` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Rate` double DEFAULT NULL,
  `TaxPer` double DEFAULT NULL,
  `Comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbillsub`
--

/*!40000 ALTER TABLE `trbillsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `trbillsub` ENABLE KEYS */;


--
-- Definition of table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
CREATE TABLE `treatments` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TreatName` varchar(35) DEFAULT NULL,
  `Duration` varchar(10) DEFAULT NULL,
  `ChargeMedi` varchar(10) DEFAULT NULL,
  `ChargeOut` varchar(10) DEFAULT NULL,
  `sCharge` varchar(10) DEFAULT NULL,
  `oCharge` varchar(10) DEFAULT NULL,
  `Remarks` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatments`
--

/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` (`Id`,`TreatName`,`Duration`,`ChargeMedi`,`ChargeOut`,`sCharge`,`oCharge`,`Remarks`) VALUES 
 (1,'CONSULTING CHARGES','','100.00','100.00','0.00','0.00','');
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;


--
-- Definition of table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` (`u_id`,`unit`) VALUES 
 (1,'ML'),
 (2,'MG'),
 (3,'LTR'),
 (4,'GM'),
 (5,'KG'),
 (6,'NOS'),
 (7,'MTR'),
 (8,'CM'),
 (9,'MM');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;


--
-- Definition of table `wbmain`
--

DROP TABLE IF EXISTS `wbmain`;
CREATE TABLE `wbmain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wbmain`
--

/*!40000 ALTER TABLE `wbmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `wbmain` ENABLE KEYS */;


--
-- Definition of table `wbmain2`
--

DROP TABLE IF EXISTS `wbmain2`;
CREATE TABLE `wbmain2` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wbmain2`
--

/*!40000 ALTER TABLE `wbmain2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wbmain2` ENABLE KEYS */;


--
-- Definition of table `wbsub`
--

DROP TABLE IF EXISTS `wbsub`;
CREATE TABLE `wbsub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wbsub`
--

/*!40000 ALTER TABLE `wbsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `wbsub` ENABLE KEYS */;


--
-- Definition of table `wbsub2`
--

DROP TABLE IF EXISTS `wbsub2`;
CREATE TABLE `wbsub2` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wbsub2`
--

/*!40000 ALTER TABLE `wbsub2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wbsub2` ENABLE KEYS */;


--
-- Definition of table `wdmain`
--

DROP TABLE IF EXISTS `wdmain`;
CREATE TABLE `wdmain` (
  `bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `cust_code` int(11) DEFAULT NULL,
  `cust_name` varchar(40) DEFAULT NULL,
  `doctor` varchar(25) DEFAULT NULL,
  `orderno` varchar(30) DEFAULT NULL,
  `payterm` int(11) DEFAULT NULL,
  `bill_amt` double DEFAULT NULL,
  `tax_amt` double DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `sound_bill` tinyint(1) DEFAULT NULL,
  `cash_bill` tinyint(1) DEFAULT NULL,
  `dt_dep` date DEFAULT NULL,
  `ti_dep` varchar(8) DEFAULT NULL,
  `dt_rem` date DEFAULT NULL,
  `ti_rem` varchar(8) DEFAULT NULL,
  `taxper` double DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `exper` double DEFAULT NULL,
  `rep_code` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `astper` double DEFAULT NULL,
  `examt` double DEFAULT NULL,
  `astamt` double DEFAULT NULL,
  `packamt` double DEFAULT NULL,
  `discamt` double DEFAULT NULL,
  `addldisc` double DEFAULT NULL,
  `roundamt` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wdmain`
--

/*!40000 ALTER TABLE `wdmain` DISABLE KEYS */;
/*!40000 ALTER TABLE `wdmain` ENABLE KEYS */;


--
-- Definition of table `wdsub`
--

DROP TABLE IF EXISTS `wdsub`;
CREATE TABLE `wdsub` (
  `Bill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill_no` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `descript` varchar(35) DEFAULT NULL,
  `prod_id` varchar(7) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `grp_no` int(11) DEFAULT NULL,
  `mrp` double DEFAULT NULL,
  `loose` int(11) DEFAULT NULL,
  `packcode` varchar(7) DEFAULT NULL,
  `packrate` double DEFAULT NULL,
  `rate1` double DEFAULT NULL,
  `rate2` double DEFAULT NULL,
  `kgstper` double DEFAULT NULL,
  `cstper` double DEFAULT NULL,
  `retqty` int(11) DEFAULT NULL,
  `discper` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `excsper` double DEFAULT NULL,
  `excs` double DEFAULT NULL,
  `free` varchar(12) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wdsub`
--

/*!40000 ALTER TABLE `wdsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `wdsub` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
