-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2019 at 09:40 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myjobab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('04amitpanchal@gmail.com', 'amit1998'),
('abhay@gmail.com', 'abhay');

-- --------------------------------------------------------

--
-- Table structure for table `apply_tbl`
--

DROP TABLE IF EXISTS `apply_tbl`;
CREATE TABLE IF NOT EXISTS `apply_tbl` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(30) NOT NULL,
  `fk_job_id` int(5) NOT NULL,
  `apply_date` varchar(50) NOT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_tbl`
--

INSERT INTO `apply_tbl` (`apply_id`, `fk_emp_id`, `fk_job_id`, `apply_date`) VALUES
(41, 'abhay123@gmail.com', 1, '3-2-2019'),
(43, 'abhay@gmail.com', 1, '3-2-2019'),
(39, 'abhay123@gmail.com', 3, '3-2-2019'),
(45, 'abhay123@gmail.com', 4, '3-2-2019'),
(46, 'amit123@gmail.com', 1, '3-2-2019'),
(47, 'shahmarmik9999@gmail.com', 14, '24/04/2019');

-- --------------------------------------------------------

--
-- Table structure for table `education_tbl`
--

DROP TABLE IF EXISTS `education_tbl`;
CREATE TABLE IF NOT EXISTS `education_tbl` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(30) NOT NULL,
  `emp_qual` varchar(15) NOT NULL,
  `emp_pass_year` int(7) NOT NULL,
  `emp_uni` varchar(15) NOT NULL,
  `emp_exp` int(11) NOT NULL,
  `emp_skill1` varchar(30) NOT NULL,
  `emp_skill2` varchar(30) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_tbl`
--

INSERT INTO `education_tbl` (`edu_id`, `fk_emp_id`, `emp_qual`, `emp_pass_year`, `emp_uni`, `emp_exp`, `emp_skill1`, `emp_skill2`) VALUES
(1, 'nagoriabhay@gmail.com', 'msc it', 2013, 'Gujrat', 5, 'angular', 'node js'),
(3, '04amitpanchal@gmail.com', 'mba', 2010, 'Parul', 8, 'Management', 'LeaderShip'),
(6, 'shahmarmik9999@gmail.com', 'bpharm', 2016, 'Sal ', 2, 'Stress Management', 'Team work'),
(7, 'kushpanchal2003@gmail.com', 'civil', 2016, 'Nirma', 2, 'creo', 'autocad '),
(8, 'yogeshthakkar1998@gmail.com', 'finance', 2014, 'Ganpat', 4, 'accounting', 'Analytical ability');

-- --------------------------------------------------------

--
-- Table structure for table `employee_cv`
--

DROP TABLE IF EXISTS `employee_cv`;
CREATE TABLE IF NOT EXISTS `employee_cv` (
  `emp_cv_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(50) NOT NULL,
  `emp_cv` varchar(200) NOT NULL,
  PRIMARY KEY (`emp_cv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_cv`
--

INSERT INTO `employee_cv` (`emp_cv_id`, `fk_emp_id`, `emp_cv`) VALUES
(1, 'nagoriabhay@gmail.com', 'cv-1556091507811.pdf'),
(2, 'nagoriabhay@gmail.com', 'cv-1557144371881.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `employee_tbl`
--

DROP TABLE IF EXISTS `employee_tbl`;
CREATE TABLE IF NOT EXISTS `employee_tbl` (
  `emp_id` varchar(30) NOT NULL,
  `emp_password` varchar(8) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  `emp_field` varchar(30) NOT NULL,
  `emp_photo` text NOT NULL,
  `emp_desc` varchar(2000) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_tbl`
--

INSERT INTO `employee_tbl` (`emp_id`, `emp_password`, `first_name`, `last_name`, `Gender`, `country`, `state`, `city`, `emp_field`, `emp_photo`, `emp_desc`) VALUES
('nagoriabhay@gmail.com', 'abhay', 'Nagori', 'Abhay', 'male', 'india', 'maharshtra', 'mumbai', 'construction', 'IMG-20190423-WA0004.jpg', 'Working experience as HR Manager or other HR Executive.\r\n\r\nPeople oriented and results driven.\r\n\r\nKnowledge of HR systems and databases. PMS awareness and design of the system.\r\n\r\nAbility to provide necessary inputs to Management , build and execute MIS/Dashboards.\r\n'),
('04amitpanchal@gmail.com', 'amit', 'Amit', 'Panchal', 'male', 'India', 'Gujarat', 'Ahmedabad', 'management', 'FB_IMG_1555989476665.jpg', 'i am good inPlans operations and execution for geographical expansion of loyalty program.\r\nManages and coordinates with the agency to drive the loyalty program.'),
('shahmarmik9999@gmail.com', 'marmik', 'marmik', 'shah', 'male', 'india', 'gujrat', 'surat', 'pharmacutical', 'IMG-20190423-WA0006.jpg', 'i am from science background.\r\nPrior hospital/pharma/healthcare marketing experience.\r\ni have go-getter.\r\nGood communication skills required.\r\nReady to join ASAP.\r\n\r\n'),
('kushpanchal2003@gmail.com', 'kush', 'kush', 'panchal', 'male', 'india', 'gujrat', 'Ahmedabad', 'civil', 'IMG-20190423-WA0006.jpg', 'Analyze survey reports, maps, and other data to plan projects\r\nConsider construction costs, government regulations, potential environmental hazards, and other factors in planning stages and risk analysis\r\nCompile and submit permit applications to local, state, and federal agencies verifying that projects comply with various regulations'),
('yogeshthakkar1998@gmail.com', 'yogesh', 'yogesh', 'thakker', 'male', 'india', 'mahashtra', 'pune', 'finance', 'IMG-20190423-WA0005.jpg', 'Companies of every size need a solid financial plan in order to remain profitable. Unlike private businesses that may use comptrollers, some companies depend on the expertise of financial managers to oversee their investments, develop long-term strategies and prepare financial reports. Financial managers are often employed in the banking and finance, healthcare and insurance industries, as well as by private companies and government agencies.'),
('rk@gmail.com', 'rk', 'rinku', 'panchal', 'Female', 'Andorra', 'Bihar', 'Amod', 'it', 'image-1557280278119.jpg', 'afa');

-- --------------------------------------------------------

--
-- Table structure for table `emp_notification_tbl`
--

DROP TABLE IF EXISTS `emp_notification_tbl`;
CREATE TABLE IF NOT EXISTS `emp_notification_tbl` (
  `en_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_res_id` int(11) NOT NULL,
  `fk_apply_id` int(11) NOT NULL,
  `fk_job_id` int(11) NOT NULL,
  `fk_emp_id` varchar(50) NOT NULL,
  PRIMARY KEY (`en_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_notification_tbl`
--

INSERT INTO `emp_notification_tbl` (`en_id`, `fk_res_id`, `fk_apply_id`, `fk_job_id`, `fk_emp_id`) VALUES
(3, 14, 47, 14, 'shahmarmik9999@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

DROP TABLE IF EXISTS `job_tbl`;
CREATE TABLE IF NOT EXISTS `job_tbl` (
  `job_id` int(5) NOT NULL AUTO_INCREMENT,
  `fk_rec_id` varchar(30) NOT NULL,
  `job_title` varchar(20) NOT NULL,
  `posted_date` varchar(25) NOT NULL,
  `skill_req` varchar(30) NOT NULL,
  `job_desc` varchar(30) NOT NULL,
  `salary_min` int(8) NOT NULL,
  `salary_max` int(8) NOT NULL,
  `Job_field` varchar(50) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_tbl`
--

INSERT INTO `job_tbl` (`job_id`, `fk_rec_id`, `job_title`, `posted_date`, `skill_req`, `job_desc`, `salary_min`, `salary_max`, `Job_field`) VALUES
(3, 'ztechpltd@gmail.com', 'developer', '2019-01-08', 'Devloper', 'Frontend Devloper', 10000, 55000, 'it'),
(6, 'ztechpltd@gmail.com', 'Angular 6', '04/21/2019', 'angular devloper', 'angular', 20000, 40000, 'it'),
(7, 'ztechpltd@gmail.com', 'Node js', '21/21/2019', 'npm ', 'Npm expert', 20000, 70000, 'it'),
(10, 'iTech@gmail.com', 'DBA', '20-3-2018', 'Good in Database', 'Database Administartor', 10000, 20000, 'IT'),
(11, 'iTech@gmail.com', 'PHP Developer', '20/03/2019', 'Experiance in php', 'Good in Logic', 12000, 18000, 'IT'),
(12, 'blackvetch@gmail.com', 'Project Manager', '18/03/2019', 'experiance in Constrction', 'Construction Project manager', 10000, 15000, 'construction'),
(13, 'blackvetch@gmail.com', 'Machine Supervisor', '18/04/2019', 'Good Machine Knowledge', 'Supervisor of Machine', 8000, 19000, 'construction'),
(14, 'jmitra@jmitra.co.in ', 'Tester', '12/02/2019', 'Testing the medicins', 'Knowledge of drugs', 20000, 30000, 'pharmacutical'),
(15, 'jmitra@jmitra.co.in ', 'Researcher', '10/02/2019', 'Knowledge of all drugs', 'find new mwdicines', 30000, 40000, 'pharmacutical'),
(16, 'blackrock@gmail.com', 'Customer Executive', '10/03/2019', 'Very good speaking skill', 'Handle the customers', 8000, 15000, 'Management'),
(17, 'blackrock@gmail.com', 'Accountant', '20/04/2019', 'Accont', 'Good knowledge og account', 7000, 14000, 'finance');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_tbl`
--

DROP TABLE IF EXISTS `recruiter_tbl`;
CREATE TABLE IF NOT EXISTS `recruiter_tbl` (
  `rec_id` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `company_web` varchar(20) NOT NULL,
  `adderess` varchar(100) NOT NULL,
  `company_type` varchar(25) NOT NULL,
  `rec_photo` varchar(200) NOT NULL,
  `com_desc` varchar(2000) NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_tbl`
--

INSERT INTO `recruiter_tbl` (`rec_id`, `password`, `company_name`, `company_web`, `adderess`, `company_type`, `rec_photo`, `com_desc`) VALUES
('ztechpltd@gmail.com', 'amit', 'ztech pvt ltd', 'ztechltd.com', 'Unit 4 Meridian\r\nBuckingway Business Park\r\nAnderson Road\r\nSwavesey\r\nCambridge\r\nCB24 4AE', 'it', 'ztech.png', 'IT Convergence Professional Services Pvt. Ltd.\r\n\r\nIT Convergence (ITC) is a premier, global provider of Oracle enterprise solutions. We are a global enterprise application services provider with core competencies in Oracle Consulting, Development, Education, Hosting and Support Services. Founded in 1998, IT Convergence has successfully partnered with more than 600 top companies, in over 50 countries around the world, delivering senior-level expertise which spans the enterprise application and technology stack. Our global reach and local expertise have made us the partner of choice for companies expanding into Europe, Central Asia, China, the Pacific Rim, and Latin America.\r\n\r\nWe are \"Go To\" provider of Oracle R12 upgrades and support. Because most companies require multiple services for their Oracle products, IT Convergence gives you an opportunity to work with a single, unified source of Oracle expertise. We also have extensive experience when it comes to Business Intelligence (OBIEE), having implemented the tool in house. I encourage you to explore our website by following the link below. Here you will find further information about IT Convergence, our services, and our long record of success.\r\n\r\n'),
('iTech@gmail.com', 'reliance', 'iTech pvt ltd.', 'www.iTech.com', 'iTech Solutions, Inc.\r\n20 Stanford Drive, 2nd Floor\r\nFarmington, CT 06032\r\n800-709-4740', 'it', 'itech.png', 'Founded in 2003, iTech is a 1,200-employee software consulting, mobile development, and business process outsourcing company with headquarters in the US and principle locations in Canada and India. Following our core principles of transparency, competency, and quality commitment, iTech provides custom software and data solutions to medium and large enterprises throughout North America.\r\n\r\nOur technology expertise includes business intelligence, Microsoft, J2EE, PeopleSoft, and SAP. Our data solutions include data entry, document scanning, OCR/ICR data capture, digital sorting, system integration, workflow management, data transformation, indexing, and data archiving.\r\n\r\nWe are a people company. We invest in our team and take care of them and, in turn, our talented team takes care of our clients. Experience the iTech difference today.\r\n'),
('blackvetch@gmail.com', 'ak', 'Black & Veatch Private Limited', 'www.blackvetch.com', '11401 Lamar Avenue\r\nOverland Park, KS 66211\r\nUnited States of America\r\nPhone: +1 913-458-2000', 'construction', '\r\nblack vetch.jpg', 'Black & Veatch Private Limited\r\n\r\nBlack and Veatch Corporation is a leading global engineering, consulting and construction company specializing in infrastructure development in the fields of energy, water and information. Founded in 1915, Black and Veatch serves its clients with conceptual and preliminary engineering services, engineering design, procurement, construction, financial management, asset management, information technology, environmental, security design and consulting, and management consulting services. It has an annual turnover of around U$ 3.5 billion and is listed 92 in the Forbes 500 list of largest private companies in the US for 2003. It is known for the highest quality design and construction work on a fast-track basis in more than 100 countries. Black and Veatch is headquartered in Kansas City, Missouri, USA, and maintains more than 110 offices worldwide. In a period of 115 years, Black and Veatch has implemented more than 35,000 projects all over the world for more than 6,100 clients. Major business sectors: Water and Power.'),
('jmitra@jmitra.co.in ', 'kush', 'J.Mitra and Co. Pvt. Ltd', 'www.jmitra.com', 'A-180-181, Okhla Industrial Area, Phase-1,\r\nNew Delhi-110020, INDIA\r\n\r\n', 'pharmacutical', 'jmitra.jpg', 'J.Mitra and Co. Pvt. Ltd  A Leading WHO-GMP, ISO The company is actively engaged in exporting its manufactured products throughout the world since past 12 years.We are continuously expanding our presence in the global market and are present in more than 40 countries.We are presently working in these countries through our agents, thus ensuring smooth supplies of our products and providing technical supports of them.\r\n\r\nIt is our uncompromising endeavor towards quality and safety that has led to a sterling and harmonious growth from us.We have been exporting our products to various international agencies and non governmental agencies.\r\n\r\nOur company is ISO 9001:2008, EN ISO 13485:2012, WHO GMP certified, having \"CE\" mark for its products range.\r\n\r\nCertified Company in the field of specialised Medical Equipments, Diagnostic Kits & Reagents as well as Blood Bags.WHO-GMP, ISO Certified Company.'),
('blackrock@gmail.com', 'black', 'blackrock', 'www.blackrock.com', 'Gurgaon\r\nDLF Cyber City\r\nBuilding No. 14 Tower C\r\nGurgaon 122002\r\nIndia\r\n\r\n', 'finance', 'blackrock.jpg', 'BlackRock is trusted to manage more money than any other investment firm. Our business is investing on behalf of our clients — from large institutions to parents and grandparents, teachers, nurses, doctors and people from all walks of life who entrust their savings to us.\r\n\r\nWe work only for our clients. Our promise is to give them insight into what to do with their money, providing products and services that can help them build a better financial future.\r\n\r\nGlobal capabilities\r\nBlackRock has world-class capabilities designed for our clients’ greatest needs, with a comprehensive range of products and services across asset classes, geographies and investment strategies. We have expertise in every region around the world, with 135 investment teams in 30 countries sharing their best thinking in order to seek better returns.\r\n\r\nWho we serve\r\nOur clients come from every corner of the globe. They are governments, companies, foundations, and millions of individuals saving for retirement, their children’s educations and a better life.\r\n\r\nOur singular focus\r\nWe’re passionate about our work and intensely focused on performing at the highest levels. To get there, we strive to out-think and out-work competitors and find the best balance of risk and return across all investment styles on behalf of our clients.\r\n\r\nResponsibility\r\nAs a fiduciary for our clients and as public company, our focus is long-term sustainability. We aim to be a responsible corporate citizen and to take into account environmental, social and governance issues that have real and quantifiable financial impacts over the long-term for our firm and the firms in which we invest. Long-term responsibility and sustainability are integrated into our business model and shareholder value creation framework and in the way we conduct our business, serve our clients and give back to the communities in which we and our clients live and work.\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `rec_notification_id`
--

DROP TABLE IF EXISTS `rec_notification_id`;
CREATE TABLE IF NOT EXISTS `rec_notification_id` (
  `rn_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(30) NOT NULL,
  `fk_job_id` int(11) NOT NULL,
  `fk_apply_id` int(11) NOT NULL,
  `fk_rec_id` varchar(50) NOT NULL,
  PRIMARY KEY (`rn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rec_notification_id`
--

INSERT INTO `rec_notification_id` (`rn_id`, `fk_emp_id`, `fk_job_id`, `fk_apply_id`, `fk_rec_id`) VALUES
(7, 'shahmarmik9999@gmail.com', 14, 47, 'jmitra@jmitra.co.in ');

-- --------------------------------------------------------

--
-- Table structure for table `response_tbl`
--

DROP TABLE IF EXISTS `response_tbl`;
CREATE TABLE IF NOT EXISTS `response_tbl` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_apply_id` int(11) NOT NULL,
  `res_status` varchar(10) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response_tbl`
--

INSERT INTO `response_tbl` (`res_id`, `fk_apply_id`, `res_status`) VALUES
(1, 1, 'Accept'),
(3, 2, 'rejected'),
(13, 41, 'Accept'),
(14, 47, 'Accept');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
