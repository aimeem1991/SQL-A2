-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2016 at 01:37 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AimeeDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE IF NOT EXISTS `Customers` (
  `customerID` int(11) NOT NULL,
  `Routes_routeID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  PRIMARY KEY (`customerID`,`Routes_routeID`),
  KEY `fk_Customers_Routes1_idx` (`Routes_routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`customerID`, `Routes_routeID`, `name`, `address`, `postcode`, `email`, `telephone`) VALUES
(1, 3, 'kim wiles', '122 windmere avenue', 'hu88ji', 'kim@gmail.com', '01482456738'),
(2, 5, 'joe thomas ', '23 irene avenue', 'hu67hj', 'joe@hotmail.co.uk', '01482658545'),
(3, 4, 'rich street', '56 kilston grove', 'hu11df', 'rich@outlook.com', '01482356333'),
(4, 5, 'gareth peter', '199 chelmer avenue', 'hu66gz', 'gar@gmail.com', '01482100245'),
(5, 1, 'jean martin', '789 holdness road', 'hu39jk', 'jean@gmail.com', '01482156984'),
(6, 2, 'ray mulucci', '136 hompton grove', 'hu72wd', 'ray@hotmail.com', '01482325254'),
(7, 2, 'nick cott', '45 cranswick street', 'hu76ml', 'nick@yahoo.com', '01482653566'),
(8, 5, 'sarah witt', '10 st johns grove', 'hu67gb', 'sarah@karoo.com', '01482321555'),
(9, 1, 'jodie wildridge', '29 stuart close', 'hu32vb', 'jodiew@outlook.com', '0148295875'),
(10, 5, 'sarah riley', '289 holdness road', 'hu65gh', 'sarahriley@gmail.com', '01482711183'),
(11, 3, 'tailiah watts', '28 newbridge road', 'hu83fg', 'taliah@yahoo.co.uk', '01482376829'),
(12, 2, 'ashley lowely', '1 wynberg avenue', 'hu72xm', 'ash@karoo.com', '01482654987'),
(13, 4, 'john fuller', '90 fullard close', 'hu11hn', 'johnfuller@hotmail.com', '01482320000'),
(14, 4, 'mark hobman', '25 garth avenue ', 'hu11po', 'markhob@hotmail.com', '01482708999'),
(15, 5, 'sarah patterson', '11 grennich street', 'hu62mn', 'sarahpatterson@outlook.com', '01482333333'),
(16, 2, 'sarah yates', '9 sutton growe', 'hu72zx', 'sarahyates@hotmail.com', '01482735222'),
(17, 3, 'brad nolan', '88 sring bank', 'hu89kl', 'bradnolan@gmail.com', '01482712333'),
(18, 1, 'carl robson', '27 wingfield grove', 'hu31bn', 'carlrobinson@yahoo.com', '01482722164'),
(19, 3, 'james railton', '65 freetown way', 'hu83qw', 'jamesrailton@outlook.com', '01482764523'),
(20, 1, 'luke burdon', '77 high street ', 'hu30lp', 'lukeb@yahoo.com', '01482346424'),
(21, 4, 'zoe cook', '109 witham grove ', 'hu11jn', 'zoe.c@gmail.com', '01482752401'),
(22, 3, 'toni warville ', '287 portobella street ', 'hu84uz', 'toni.w@yahoo.com', '01482462320'),
(23, 5, 'bill gates', '34 marfleet lane', 'hu65fv', 'bill.gates@outlook.co.uk', '01482765464');

-- --------------------------------------------------------

--
-- Table structure for table `Deliveries`
--

CREATE TABLE IF NOT EXISTS `Deliveries` (
  `deliveryID` int(11) NOT NULL,
  `Vans_vanID` int(11) NOT NULL,
  `deliverytime` time NOT NULL,
  PRIMARY KEY (`deliveryID`,`Vans_vanID`),
  KEY `fk_Deliveries_Vans_idx` (`Vans_vanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Deliveries`
--

INSERT INTO `Deliveries` (`deliveryID`, `Vans_vanID`, `deliverytime`) VALUES
(1, 2, '09:00:00'),
(2, 5, '11:00:00'),
(3, 1, '10:00:00'),
(4, 1, '08:00:00'),
(5, 3, '09:00:00'),
(6, 3, '09:00:00'),
(7, 3, '13:00:00'),
(8, 4, '15:00:00'),
(9, 5, '08:00:00'),
(10, 2, '09:00:00'),
(11, 1, '10:00:00'),
(12, 2, '09:00:00'),
(13, 4, '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Managers`
--

CREATE TABLE IF NOT EXISTS `Managers` (
  `managerID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Managers`
--

INSERT INTO `Managers` (`managerID`, `name`) VALUES
(1, 'Brain Westcoat'),
(2, 'Neil Smith'),
(3, 'Janet Miles');

-- --------------------------------------------------------

--
-- Table structure for table `OrderContents`
--

CREATE TABLE IF NOT EXISTS `OrderContents` (
  `Products_productID` int(11) NOT NULL,
  `Orders_orderID` int(11) NOT NULL,
  `quantity` int(6) NOT NULL,
  PRIMARY KEY (`Products_productID`,`Orders_orderID`),
  KEY `fk_Products_has_Orders_Orders1_idx` (`Orders_orderID`),
  KEY `fk_Products_has_Orders_Products1_idx` (`Products_productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OrderContents`
--

INSERT INTO `OrderContents` (`Products_productID`, `Orders_orderID`, `quantity`) VALUES
(1, 8, 1),
(1, 10, 1),
(2, 8, 1),
(2, 10, 1),
(3, 1, 1),
(3, 10, 1),
(3, 12, 3),
(4, 6, 2),
(4, 13, 2),
(5, 6, 1),
(5, 13, 2),
(6, 6, 1),
(6, 13, 1),
(7, 6, 1),
(7, 13, 1),
(8, 13, 1),
(9, 13, 1),
(10, 2, 1),
(11, 2, 7),
(12, 2, 1),
(12, 6, 1),
(13, 3, 1),
(14, 3, 1),
(15, 3, 1),
(16, 2, 1),
(17, 13, 1),
(18, 13, 2),
(19, 13, 2),
(20, 4, 1),
(21, 4, 1),
(22, 4, 1),
(23, 4, 3),
(25, 5, 1),
(27, 5, 1),
(28, 6, 1),
(29, 6, 1),
(30, 7, 2),
(30, 11, 2),
(31, 7, 6),
(31, 11, 1),
(32, 6, 1),
(32, 7, 2),
(32, 11, 3),
(32, 13, 3),
(33, 7, 3),
(34, 7, 1),
(34, 11, 1),
(35, 7, 10),
(35, 11, 1),
(36, 7, 1),
(37, 7, 1),
(38, 7, 10),
(40, 4, 5),
(41, 6, 20),
(42, 6, 5),
(43, 4, 1),
(44, 6, 1),
(44, 10, 1),
(46, 7, 2),
(47, 12, 3),
(48, 2, 1),
(49, 9, 3),
(50, 5, 1),
(51, 5, 3),
(52, 5, 1),
(53, 5, 1),
(54, 5, 1),
(57, 5, 2),
(58, 7, 1),
(59, 10, 1),
(60, 2, 2),
(60, 10, 1),
(61, 8, 2),
(61, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `orderID` int(11) NOT NULL,
  `Customers_customerID` int(11) NOT NULL,
  `Deliveries_deliveryID` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  PRIMARY KEY (`orderID`,`Customers_customerID`,`Deliveries_deliveryID`),
  KEY `fk_Orders_Customers1_idx` (`Customers_customerID`),
  KEY `fk_Orders_Deliveries1_idx` (`Deliveries_deliveryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`orderID`, `Customers_customerID`, `Deliveries_deliveryID`, `orderdate`) VALUES
(1, 1, 1, '2016-01-01'),
(2, 2, 2, '2016-01-01'),
(3, 5, 3, '2016-01-01'),
(4, 7, 4, '2016-01-01'),
(5, 9, 5, '2016-01-02'),
(6, 10, 6, '2016-01-02'),
(7, 12, 7, '2016-01-03'),
(8, 14, 8, '2016-01-03'),
(9, 15, 9, '2016-01-04'),
(10, 18, 10, '2016-01-04'),
(11, 19, 11, '2016-01-04'),
(12, 22, 12, '2016-01-04'),
(13, 23, 13, '2016-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `ProductCategories`
--

CREATE TABLE IF NOT EXISTS `ProductCategories` (
  `productcategoryID` int(11) NOT NULL,
  `categoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`productcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProductCategories`
--

INSERT INTO `ProductCategories` (`productcategoryID`, `categoryname`) VALUES
(1, 'luxury'),
(2, 'alcoholic'),
(3, 'sweets'),
(4, 'baby'),
(5, 'household'),
(6, 'healthcare'),
(7, 'beauty'),
(8, 'groceries'),
(9, 'special offers');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE IF NOT EXISTS `Products` (
  `productID` int(11) NOT NULL,
  `ProductCategories_productcategoryID` int(11) NOT NULL,
  `Suppliers_supplierID` int(11) NOT NULL,
  `specialline` tinyint(1) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`productID`,`ProductCategories_productcategoryID`,`Suppliers_supplierID`),
  KEY `fk_Products_ProductCategories1_idx` (`ProductCategories_productcategoryID`),
  KEY `fk_Products_Suppliers1_idx` (`Suppliers_supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`productID`, `ProductCategories_productcategoryID`, `Suppliers_supplierID`, `specialline`, `name`, `description`, `price`) VALUES
(1, 2, 3, 0, 'jack daniels', '1 litre', 18.99),
(2, 2, 3, 0, 'rum', '1 litre', 22.99),
(3, 1, 3, 1, 'champagne', '1 litre', 26.99),
(4, 8, 2, 0, 'milk', '1 litre', 0.99),
(5, 8, 5, 0, 'eggs', '12 eggs', 0.99),
(6, 8, 3, 0, 'sugar', '1kg', 1),
(7, 8, 5, 0, 'chicken', '1kg breast', 4.49),
(8, 8, 3, 0, 'sauce', '450g jar', 1),
(9, 8, 5, 0, 'rice', '600g', 1),
(10, 7, 1, 0, 'hair dye', 'blonde', 3.49),
(11, 7, 1, 0, 'nail polish ', '30ml', 3),
(12, 7, 1, 0, 'foundation', '150ml', 4.98),
(13, 7, 1, 0, 'shampoo', '1 litre', 1),
(14, 7, 1, 0, 'conditioner', '1 litre', 1),
(15, 7, 1, 1, 'bed head', '1 litre', 7.99),
(16, 7, 1, 0, 'shower gel', '500ml', 1),
(17, 7, 1, 0, 'mascara', '10ml black', 4.09),
(18, 5, 6, 0, 'bleach', '2 litre', 1),
(19, 5, 6, 0, 'dettol', '1 litre', 2.09),
(20, 5, 6, 0, 'wash powder', '25 washes', 3.29),
(21, 5, 6, 0, 'window cleaner', '1 litre', 1),
(22, 5, 6, 0, 'toilet cleaner', '1 litre', 1),
(23, 6, 1, 0, 'multivitamins', '60 tablets', 2.99),
(24, 6, 1, 0, 'medicine', 'cough medicine', 1.19),
(25, 6, 1, 0, 'plasters', 'pack of 100', 1.99),
(26, 6, 1, 0, 'bandage', '1 meter white', 1),
(27, 6, 1, 0, 'antiseptic', '200ml', 2),
(28, 5, 6, 1, 'mop ', 'plastic swizzle', 3),
(29, 5, 6, 0, 'dustpan and brush', 'grey', 2.29),
(30, 4, 7, 0, 'nappies', '20 pampers', 3.99),
(31, 4, 7, 0, 'baby wipes', 'huggies', 1),
(32, 4, 7, 0, 'baby milk', '1kg', 7.79),
(33, 4, 7, 0, 'rusks', '400g', 0.99),
(34, 4, 7, 0, 'baby bottles', '3xbottles', 11),
(35, 4, 7, 0, 'baby food', '200g', 0.99),
(36, 4, 7, 0, 'baby teethers', '3xteethers', 2),
(37, 4, 7, 0, 'baby blanket', 'yellow fluffy', 2.99),
(38, 4, 7, 0, 'baby food jar', '100ml', 0.99),
(39, 3, 3, 0, 'rainbow drops', '50g', 0.5),
(40, 3, 3, 0, 'freddo', '1xfreddo', 0.2),
(41, 3, 3, 0, 'lolly', '10g', 0.05),
(42, 3, 3, 0, 'jelly beans', '200g', 0.9),
(43, 3, 3, 0, 'mini mars', '10xmars bars', 0.9),
(44, 2, 3, 1, 'wine', '1 litre alcohol', 3.39),
(45, 2, 3, 0, 'parrot bay cocktail', '500ml alcohol', 3),
(46, 1, 3, 0, 'tequila', '1 litre alcohol', 7.79),
(47, 1, 5, 0, 'chocolates', 'alcohol infused', 5.99),
(48, 1, 4, 1, 'purse', 'womens purse pink', 4.49),
(49, 1, 4, 1, 'phone case', 'glitter ', 3),
(50, 8, 3, 0, 'coffee', 'nescafe 200g', 2.29),
(51, 8, 3, 0, 'crisps', 'walkers 6 pack', 0.99),
(52, 9, 5, 0, 'pasta', '1kg ', 0.5),
(53, 9, 2, 0, 'bananas', '5 bananas', 0.5),
(54, 9, 2, 0, 'blueberries', '250g', 1),
(55, 9, 2, 0, 'ferrero roche', '500g', 2.5),
(56, 2, 3, 0, 'blossom hill wine', '1 litre', 2.2),
(57, 9, 1, 0, 'shower foam', '500ml', 0.7),
(58, 9, 1, 0, 'omega supplements', '50 tablets', 0.9),
(59, 2, 3, 0, 'jim bean', '1 litre', 12),
(60, 2, 3, 1, 'captain morgon', '1 litre', 14.99),
(61, 1, 3, 0, 'vodka', '1litre', 12.99);

-- --------------------------------------------------------

--
-- Table structure for table `Routes`
--

CREATE TABLE IF NOT EXISTS `Routes` (
  `routeID` int(11) NOT NULL,
  `route` varchar(45) NOT NULL,
  PRIMARY KEY (`routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Routes`
--

INSERT INTO `Routes` (`routeID`, `route`) VALUES
(1, 'hu3'),
(2, 'hu7'),
(3, 'hu8'),
(4, 'hu11'),
(5, 'hu6');

-- --------------------------------------------------------

--
-- Table structure for table `Stock`
--

CREATE TABLE IF NOT EXISTS `Stock` (
  `Stores_storeID` int(11) NOT NULL,
  `Products_productID` int(11) NOT NULL,
  `quantity` int(6) NOT NULL,
  PRIMARY KEY (`Stores_storeID`,`Products_productID`),
  KEY `fk_Stores_has_Products1_Products1_idx` (`Products_productID`),
  KEY `fk_Stores_has_Products1_Stores1_idx` (`Stores_storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Stock`
--

INSERT INTO `Stock` (`Stores_storeID`, `Products_productID`, `quantity`) VALUES
(1, 1, 111),
(1, 4, 2),
(1, 9, 0),
(1, 11, 100),
(1, 20, 220),
(1, 21, 79),
(1, 25, 54),
(1, 32, 89),
(1, 34, 105),
(1, 35, 265),
(1, 47, 205),
(1, 52, 193),
(1, 61, 0),
(2, 2, 56),
(2, 5, 92),
(2, 7, 18),
(2, 12, 0),
(2, 16, 35),
(2, 22, 48),
(2, 27, 7),
(2, 29, 68),
(2, 30, 79),
(2, 41, 32),
(2, 46, 97),
(2, 56, 100),
(3, 6, 9),
(3, 8, 162),
(3, 10, 136),
(3, 13, 200),
(3, 14, 21),
(3, 19, 46),
(3, 23, 82),
(3, 26, 44),
(3, 39, 33),
(3, 42, 0),
(3, 45, 4),
(3, 50, 98),
(3, 54, 100),
(3, 59, 14);

-- --------------------------------------------------------

--
-- Table structure for table `Stores`
--

CREATE TABLE IF NOT EXISTS `Stores` (
  `storeID` int(11) NOT NULL,
  `Managers_managerID` int(11) NOT NULL,
  `storename` varchar(45) NOT NULL,
  PRIMARY KEY (`storeID`,`Managers_managerID`),
  KEY `fk_Stores_Managers1_idx` (`Managers_managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Stores`
--

INSERT INTO `Stores` (`storeID`, `Managers_managerID`, `storename`) VALUES
(1, 2, 'city centre'),
(2, 3, 'mount plesant'),
(3, 1, 'north hull');

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers`
--

CREATE TABLE IF NOT EXISTS `Suppliers` (
  `supplierID` int(11) NOT NULL,
  `suppliername` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `city` varchar(45) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Suppliers`
--

INSERT INTO `Suppliers` (`supplierID`, `suppliername`, `address`, `postcode`, `city`, `telephone`) VALUES
(1, 'AD healthcare & cosmetics', '40 Roseville Road', 'hu11rb', 'hull', '01137672355'),
(2, 'Grey''s fine foods', '155 Holdness Road', 'hu97ght', 'hull', '08006578354'),
(3, 'Delicious', '367 Sutton Fields', 'hu80nj', 'hull', '01568900212'),
(4, 'B & J suppliers', '20 Mary Street', 'sh91gh', 'sheffield', '01135468895'),
(5, 'Organics', '90 Windermere Avenue', 'go93gb', 'goole', '03005489652'),
(6, 'Home', '15 Queen Square', 'pr10nm', 'preston', '03659214568'),
(7, 'Baby suppliers', 'Harrogate Road', 'he02qp', 'hedon', '08541002000');

-- --------------------------------------------------------

--
-- Table structure for table `Vans`
--

CREATE TABLE IF NOT EXISTS `Vans` (
  `vanID` int(11) NOT NULL,
  `driver` varchar(45) NOT NULL,
  `Routes_routeID` int(11) NOT NULL,
  PRIMARY KEY (`vanID`,`Routes_routeID`),
  KEY `fk_Vans_Routes1_idx` (`Routes_routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Vans`
--

INSERT INTO `Vans` (`vanID`, `driver`, `Routes_routeID`) VALUES
(1, 'bob', 1),
(2, 'david', 2),
(3, 'matt', 3),
(4, 'shaun', 4),
(5, 'lucy', 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customers`
--
ALTER TABLE `Customers`
  ADD CONSTRAINT `fk_Customers_Routes1` FOREIGN KEY (`Routes_routeID`) REFERENCES `Routes` (`routeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Deliveries`
--
ALTER TABLE `Deliveries`
  ADD CONSTRAINT `fk_Deliveries_Vans` FOREIGN KEY (`Vans_vanID`) REFERENCES `Vans` (`vanID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `OrderContents`
--
ALTER TABLE `OrderContents`
  ADD CONSTRAINT `fk_Products_has_Orders_Orders1` FOREIGN KEY (`Orders_orderID`) REFERENCES `Orders` (`orderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Products_has_Orders_Products1` FOREIGN KEY (`Products_productID`) REFERENCES `Products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`Customers_customerID`) REFERENCES `Customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Orders_Deliveries1` FOREIGN KEY (`Deliveries_deliveryID`) REFERENCES `Deliveries` (`deliveryID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `fk_Products_ProductCategories1` FOREIGN KEY (`ProductCategories_productcategoryID`) REFERENCES `ProductCategories` (`productcategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Products_Suppliers1` FOREIGN KEY (`Suppliers_supplierID`) REFERENCES `Suppliers` (`supplierID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Stock`
--
ALTER TABLE `Stock`
  ADD CONSTRAINT `fk_Stores_has_Products1_Products1` FOREIGN KEY (`Products_productID`) REFERENCES `Products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Stores_has_Products1_Stores1` FOREIGN KEY (`Stores_storeID`) REFERENCES `Stores` (`storeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Stores`
--
ALTER TABLE `Stores`
  ADD CONSTRAINT `fk_Stores_Managers1` FOREIGN KEY (`Managers_managerID`) REFERENCES `Managers` (`managerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Vans`
--
ALTER TABLE `Vans`
  ADD CONSTRAINT `fk_Vans_Routes1` FOREIGN KEY (`Routes_routeID`) REFERENCES `Routes` (`routeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
