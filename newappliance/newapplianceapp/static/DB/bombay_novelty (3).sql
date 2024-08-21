-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 03:02 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bombay_novelty`
--

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_billing`
--

CREATE TABLE `appliance_app_billing` (
  `id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `gst` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `shipping_charge` int(11) DEFAULT NULL,
  `customersid` varchar(254) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `tax_total` int(11) DEFAULT NULL,
  `items` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_billing`
--

INSERT INTO `appliance_app_billing` (`id`, `bill_date`, `gst`, `total`, `shipping_charge`, `customersid`, `grandtotal`, `orderid`, `tax_total`, `items`) VALUES
(51, '2019-03-15', 18, 5000, 20, 'priyanka@gmail.com', 5920, 171, 900, 'Pigeon 3 burner'),
(62, '2019-03-15', 18, 5000, 25, 'akash@gmail.com', 5925, 162, 900, 'Pigeon 3 burner'),
(63, '2019-03-15', 18, 5000, 25, 'akash@gmail.com', 5925, 162, 900, 'Pigeon 3 burner'),
(66, '2019-03-15', 10, 5000, 0, 'akash@gmail.com', 5500, 162, 500, 'Pigeon 3 burner'),
(68, '2019-03-15', 5, 5000, 0, 'priyanka@gmail.com', 5250, 168, 250, 'Pigeon 3 burner'),
(70, '2019-03-15', 6, 5000, 0, 'anil@gmail.com', 5300, 181, 300, 'Pigeon 3 burner'),
(73, '2019-03-15', 5, 600, 0, 'anil@gmail.com', 630, 183, 30, 'Milton thermosteel vaccum'),
(75, '2019-03-21', 11, 5000, 0, 'akash@gmail.com', 5550, 162, 550, 'Pigeon 3 burner'),
(77, '2019-03-23', 12, 5000, 20, 'akash@gmail.com', 5620, 198, 600, 'Pigeon 3 burner'),
(79, '2019-03-25', 12, 5000, 10, 'akash@gmail.com', 5610, 166, 600, 'Pigeon 3 burner'),
(82, '2019-03-28', 1, 5000, 0, 'priyankavrokhade@gmail.com', 5050, 442, 50, 'Pigeon 3 burner'),
(85, '2019-03-28', 12, 5000, 20, 'priyankavrokhade@gmail.com', 5620, 448, 600, 'Pigeon 3 burner'),
(89, '2019-03-28', 20, 5000, 20, 'priyankavrokhade@gmail.com', 6020, 446, 1000, 'Pigeon 3 burner'),
(95, '2019-03-28', 10, 5000, 0, 'priyankavrokhade@gmail.com', 5500, 448, 500, 'Pigeon 3 burner');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_cart_details`
--

CREATE TABLE `appliance_app_cart_details` (
  `id` int(11) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `date` datetime(6) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `productname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_deliverydtails`
--

CREATE TABLE `appliance_app_deliverydtails` (
  `id` int(11) NOT NULL,
  `Deliverydate` date NOT NULL,
  `Trackingno` varchar(200) NOT NULL,
  `Packingstatus` varchar(200) NOT NULL,
  `Shippingstatus` varchar(200) NOT NULL,
  `Delivery_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_exchangeoffer`
--

CREATE TABLE `appliance_app_exchangeoffer` (
  `id` int(11) NOT NULL,
  `exchngname` varchar(200) NOT NULL,
  `dscrptn` varchar(500) NOT NULL,
  `discount` int(11) NOT NULL,
  `Start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `coupon_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_exchangeoffer`
--

INSERT INTO `appliance_app_exchangeoffer` (`id`, `exchngname`, `dscrptn`, `discount`, `Start_date`, `finish_date`, `coupon_code`) VALUES
(6, 'Milton thermosteel', 'Brand-Milton Type-Flask Handle with Care-Yes Model Name-Thermosteel Flip lid BPA Free-Yes', 20, '2019-02-06', '2019-05-06', 'aa'),
(7, 'Milton bottle black', 'Brand-Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-ThermoSteel Duo Deluxe Hot & Cold 24HRS Silver 500 ML', 40, '2019-02-08', '2019-03-04', 'bbb'),
(8, 'Milton teamaker', 'Brand-Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermo steel Carafe', 50, '2019-01-06', '2019-08-05', 'mmm'),
(9, 'Milton thermosteel', 'Brand=Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermosteel', 10, '2019-03-09', '2019-05-06', 'mm'),
(10, 'Milton small', 'Brand=Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermosteel', 30, '2019-02-06', '2019-03-05', 'aaw');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_feedbackform`
--

CREATE TABLE `appliance_app_feedbackform` (
  `id` int(11) NOT NULL,
  `userid` varchar(254) NOT NULL,
  `servicefeedback` varchar(200) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_feedbackform`
--

INSERT INTO `appliance_app_feedbackform` (`id`, `userid`, `servicefeedback`, `comments`) VALUES
(1, 'priyanka@gmail.com', 'done', 'good'),
(2, 'anil@gmail.com', 'the service was better ', 'best way to shop and good offers '),
(3, 'rokhadechaitali@gmail.com', 'very good', 'very good ');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_mb_scheme`
--

CREATE TABLE `appliance_app_mb_scheme` (
  `id` int(11) NOT NULL,
  `Schemeno` varchar(200) NOT NULL,
  `Customer_name` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Email_Id` varchar(200) NOT NULL,
  `Mobileno` varchar(200) NOT NULL,
  `Month` varchar(200) NOT NULL,
  `Winner` varchar(200) NOT NULL,
  `Coupon_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_mb_scheme`
--

INSERT INTO `appliance_app_mb_scheme` (`id`, `Schemeno`, `Customer_name`, `Address`, `Email_Id`, `Mobileno`, `Month`, `Winner`, `Coupon_code`) VALUES
(1, 'A1', 'Sumitra Patil', '3rd cross tolnaka dharwad', 'sumitra@gmail.com', '98745611122', 'January', '--', 'X1X'),
(2, 'A2', 'Suresh R', '5th cross whitefield Dhaarwad', 'suresh@gmail.com', '9874555566', 'January', '-----', 'X2X'),
(3, 'A3', 'Pavan T', '8th cross nilkant Dharwad', 'pavan@gmail.com', '9685741222', 'January', '--', 'X3X'),
(4, 'A4', 'Dhinkar Alnavar', '6th cross vayaur Dharwad', 'dhinkar@gmail.com', '8574569999', 'January', '---', 'X4X'),
(5, 'A5', 'Yuvraj S', 'Near bank of baroda 6th cross Dharwad', 'yuvraj@gmail.com', '9874566555', 'January', '--', 'X5X'),
(6, 'A6', 'Rithika T', 'uvapeth nagar Dharwad', 'rithika@gmail.com', '9874521453', 'January', '--', 'X6X');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_order_details`
--

CREATE TABLE `appliance_app_order_details` (
  `id` int(11) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `Total` int(20) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `items` varchar(50) DEFAULT NULL,
  `Amonth` int(11) DEFAULT NULL,
  `Ayear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_order_details`
--

INSERT INTO `appliance_app_order_details` (`id`, `order_date`, `quantity`, `unitprice`, `Total`, `uid`, `items`, `Amonth`, `Ayear`) VALUES
(431, '2019-03-26 13:15:08.530297', 3, 5000, 15000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2018),
(432, '2019-03-26 13:19:19.730665', 5, 650, 3250, 'rokhadeaishu@gmail.com', 'Milton bottle', 3, 2019),
(433, '2019-03-26 13:19:52.352530', 4, 2000, 8000, 'rokhadeaishu@gmail.com', 'Casseroles', 3, 2019),
(434, '2019-03-26 13:20:29.893678', 2, 2000, 4000, 'rokhadeaishu@gmail.com', 'Bajaj Majesty ', 3, 2019),
(435, '2019-03-26 13:25:51.097742', 1, 5000, 5000, 'chaitali@gmail.com', 'Pigeon tetra 4 burner', 3, 2019),
(437, '2019-03-27 19:28:27.829998', 1, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(439, '2019-03-27 19:37:34.967292', 1, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(440, '2019-03-27 19:37:44.827856', 1, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(441, '2019-03-27 19:39:58.840521', 1, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(444, '2019-03-27 19:57:34.764373', 7, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(445, '2019-03-27 19:57:45.812005', 7, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(446, '2019-03-27 19:58:08.865323', 5, 5000, 25000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(448, '2019-03-27 20:01:19.196209', 1, 5000, 5000, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(449, '2019-03-28 13:15:00.078644', 2, 555555, 1111110, 'priyankavrokhade@gmail.com', 'Pigeon 3 burner', 3, 2019),
(450, '2019-03-28 13:45:54.142690', 2, 5000, 10000, 'kavyagoudar8@gmail.com', 'Pigeon 3 burner', 3, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_payment`
--

CREATE TABLE `appliance_app_payment` (
  `id` int(11) NOT NULL,
  `Paymenttype` varchar(200) NOT NULL,
  `BankName` varchar(200) NOT NULL,
  `Paymentdate` date NOT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_payment`
--

INSERT INTO `appliance_app_payment` (`id`, `Paymenttype`, `BankName`, `Paymentdate`, `Amount`) VALUES
(125, 'Credit', 'vijaya bank', '2019-03-17', 5000),
(126, 'credit', 'syndicate', '2019-03-17', 5000),
(127, 'credit', 'syndicate', '2019-03-17', 5000),
(128, 'credit', 'vijaya', '2019-03-17', 5000),
(130, 'credit', 'aa', '2019-03-17', 10000),
(131, 'Debit card', '', '2019-03-28', 10000),
(132, 'Debit card', '', '2019-03-28', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_procategory`
--

CREATE TABLE `appliance_app_procategory` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_procategory`
--

INSERT INTO `appliance_app_procategory` (`id`, `cat_name`) VALUES
(2, 'Cooker'),
(3, 'Gas Stove'),
(4, 'Mixer Grinder'),
(6, 'Steel spoon'),
(7, 'Hand Blender'),
(8, 'Aluminium kadai'),
(9, 'Induction'),
(10, 'Steel utensil'),
(11, 'Steel bowl'),
(13, 'Iron box'),
(15, 'Non-Stick tava'),
(16, 'Steel Plate'),
(17, 'Dinner set'),
(18, 'China wear'),
(20, 'Steel glass');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_product`
--

CREATE TABLE `appliance_app_product` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `cgst` int(11) NOT NULL,
  `sgst` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_product`
--

INSERT INTO `appliance_app_product` (`id`, `pname`, `description`, `image1`, `price`, `gst`, `cgst`, `sgst`, `total`, `discount`, `category`) VALUES
(4, 'Pigeon 3 burner', 'Brand-Pigeon Model Name-Ultra Model Number-Pigeon Ultra Glass Stainless steel Body Material-Glass, Stainless Steel Trivet Material-Steel, Glass Burner Material-Brass Color-Black, Silver Finish-Matte Shape-Rectangle', 'Pigeon 3-burner.jpeg', 5000, 20, 10, 10, 5500, 30, 'Gas Stove'),
(5, 'Pigeon 4 burner', 'Brand-Pigeon Model Name-Blackline Smart Model Number-Pigeon Blackline Smart Stainless steel Body Material-Stainless Steel, Glass Burner Material-Brass Color-Black Finish-Airline Finish Shape-Square Design-Black Glass', 'documents/Pigeon_4-burner.jpeg', 6000, 30, 15, 15, 6500, 50, 'Gas Stove'),
(6, 'Pigeon tetra 4 burner', 'Brand-Pigeon Model Name-Tetra Front Glass Model Number-Pigeon tetra 4 burner Body Material-Stainless Steel, Glass Burner Material-Brass Color-Black', 'Pigeon Tetra 4-burner.jpg', 5000, 20, 10, 5, 5100, 30, 'Gas Stove'),
(7, 'Prestige 3 burner', 'Brand-Prestige Model Name-Marvel Model Number-Prestige Marvel glass Body Material-Glass, Stainless Steel Trivet Material-Steel Burner Material-Brass Color-Black Shape-Rectangle', 'documents/Pigeon_3-burner_EQ3gAuK.jpeg', 6000, 15, 10, 5, 6500, 60, 'Gas Stove'),
(8, 'Prestige 4 burner', 'Brand-Prestige Model Name-Deluxe Model Number-Prestige deluxe 4 burner Body Material-Glass, Stainless Steel Trivet Material-Stainless Steel Burner Material-Brass Color-Black, Silver Shape-Square', 'documents/Prestige_4-burner.jpeg', 6000, 20, 15, 5, 6500, 30, 'Gas Stove'),
(9, 'Butterfly induction', 'Brand-Butterfly model_name-JET INDUCTION STOVE Model-JET HOB Type-Induction Cooktop Color-Black Body Material-ABS with Ceramic Tile Plate Control-Push Button Preset Cooking Menus-Boil, Keep Warm, Milk, Deep Fry, Roti/Dosa, Pressure Cooking Display-4 Digit LED Timer-Digital Timer Control Timer setting-3 hrs Fast Heating-Yes Power Levels-7', 'documents/Prestige_induction.jpg', 3000, 10, 5, 5, 3500, 30, 'Induction'),
(10, 'Milton thermosteel vaccum', 'Brand-Milton Type-Flask Handle with Care-Yes Model Name-Thermosteel Flip lid BPA Free-Yes', 'documents/Milton_thermosteel_vacuumflask.jpg', 600, 20, 13, 7, 680, 20, 'Thermos'),
(11, 'Milton bottle', 'Brand-Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-ThermoSteel Duo Deluxe Hot & Cold 24HRS Silver 500 ML', 'documents/Milton_thermosteel_bottle-black.jpg', 650, 25, 20, 5, 700, 30, 'Thermos'),
(12, 'Milton teamaker', 'Brand-Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermo steel Carafe', 'documents/Milton_teamaker.jpg', 900, 20, 15, 5, 950, 10, 'Thermos'),
(13, 'Milton bottle black', 'Brand-Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Milton Thermosteel Duo Deluxe Leak Proof-Yes ', 'documents/Milton_thermosteel_bottle-black_lO6Ov6K.jpg', 750, 15, 10, 5, 800, 20, 'Thermos'),
(14, 'Milton thermosteel', 'Brand=Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermosteel', 'documents/Milton_thermosteel.jpg', 500, 20, 15, 5, 560, 20, 'Thermos'),
(15, 'Milton small', 'Brand=Milton Type-Flask Body Material-Steel Handle with Care-Yes Model Name-Thermosteel', 'documents/Milton_vacumflask-small.jpg', 450, 20, 15, 5, 500, 30, 'Thermos'),
(16, 'Milton thermosteel vaccum', 'Brand-Milton Type-Flask Handle with Care-Yes Model Name-Thermosteel Flip lid BPA Free-Yes', 'documents/Milton_vacumflask-small_FI44ri7.jpg', 600, 20, 13, 7, 650, 20, 'Thermos'),
(17, 'Bajaj Majesty ', 'Brand-Bajaj Model-Majesty DX 6 Type-Dry Color-White Soleplate type-American Heritage Non Stick Soleplate Power Consumption-1000 W', 'documents/bajaj_iron_box.jpeg', 2000, 20, 15, 2, 2500, 40, 'Iron box'),
(18, 'Casseroles', 'Milton delight pack of 3 thermoware casseroles     Model name-Delight model number-Delight casserole giftset-pink sales package-1 pc-1000ml,1 pc-1500ml,1 pc-500ml Material-plastic,steel lid included-yes induction bottom-no Airtight-yes freezer safe-yes flame safe-no Shape-round design-leaf Weight-1.19kg', 'documents/Milton_crisp_white.jpg', 2000, 20, 15, 5, 2500, 5, 'Casseroles');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_purchase_items`
--

CREATE TABLE `appliance_app_purchase_items` (
  `id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` varchar(200) NOT NULL,
  `Total_price` int(11) NOT NULL,
  `pitem` varchar(200) NOT NULL,
  `pprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_purchase_items`
--

INSERT INTO `appliance_app_purchase_items` (`id`, `Quantity`, `Purchase_date`, `Total_price`, `pitem`, `pprice`) VALUES
(1, 20, '2019-02-04', 2000, 'Spoon', 100),
(2, 10, '2019-02-04', 40000, 'Cooker', 4000),
(3, 5, '2019-02-04', 2500, 'Thermos', 500),
(4, 4, '2019-02-04', 12000, 'Induction', 3000),
(5, 20, '2019-02-04', 4000, 'Steel plate', 200),
(6, 5, '2019-03-05', 20000, 'Casrol', 4000),
(7, 20, '2019-03-28', 20000, 'cooker', 1000),
(8, 20, '2019-03-28', 100000, 'Gas Stove', 5000),
(9, 10, '2019-03-28', 40000, 'Mixer grinder', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_service`
--

CREATE TABLE `appliance_app_service` (
  `id` int(11) NOT NULL,
  `Product_name` varchar(200) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Price` int(11) NOT NULL,
  `Service_men_name` varchar(200) NOT NULL,
  `Service_men_Mbno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_service`
--

INSERT INTO `appliance_app_service` (`id`, `Product_name`, `Description`, `Price`, `Service_men_name`, `Service_men_Mbno`) VALUES
(1, 'Gas Stove', 'vissel and gasket repai', 50, 'Swaroop K', '9874566661'),
(2, 'Hand Blender', 'blades repair and other', 60, 'Nithin B', '9874563211'),
(3, 'Hand Blender', 'blades repair and other', 60, 'Nithin B', '9874563211'),
(4, 'Hand Blender', 'blades repair and other', 60, 'Nithin B', '9874563211'),
(5, 'Hand Blender', 'blades repair and other', 60, 'Nithin B', '9874563211');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_stockitems`
--

CREATE TABLE `appliance_app_stockitems` (
  `id` int(11) NOT NULL,
  `transaction_no` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `cgst` int(11) NOT NULL,
  `sgst` int(11) NOT NULL,
  `transport_charges` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `sdate` varchar(200) NOT NULL,
  `sold_out` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `Itemname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_stockitems`
--

INSERT INTO `appliance_app_stockitems` (`id`, `transaction_no`, `price`, `gst`, `cgst`, `sgst`, `transport_charges`, `total`, `sdate`, `sold_out`, `availability`, `Itemname`) VALUES
(1, '10001', 2000, 30, 20, 10, 100, 1000, '2019-02-06', 20, 10, 'Prestige cooker'),
(2, '1111', 500, 20, 15, 5, 100, 800, '2019-02-06', 30, 10, 'Casrol'),
(3, '1112', 600, 20, 13, 7, 150, 900, '2019-02-07', 10, 30, 'Kadai'),
(4, '1113', 1500, 20, 12, 8, 80, 1800, '2019-02-06', 5, 50, 'Iron'),
(5, '1114', 3000, 25, 10, 15, 250, 3400, '2019-02-07', 45, 10, 'Gas stove'),
(6, '1115', 150, 10, 5, 5, 50, 200, '2019-02-05', 5, 30, 'Steel plate'),
(8, '10123', 150, 10, 5, 5, 50, 200, '2019-03-28', 5, 20, 'bowl'),
(9, '12', 2000, 18, 180, 180, 100, 2460, '2019-03-28', 5, 10, 'Mixer'),
(10, '112', 1000, 18, 90, 90, 100, 25600, '2019-03-28', 5, 20, 'kadai');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_supplier`
--

CREATE TABLE `appliance_app_supplier` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_supplier`
--

INSERT INTO `appliance_app_supplier` (`id`, `supplier_name`, `address`, `mobile_no`, `email`, `product_name`, `quantity`) VALUES
(1, 'Vishal Bharata', '2nd main kalgatgi Dharwad', '9685471233', 'vishal@gmail.com', 'Steel wear', '50'),
(2, 'Shanta Prasad', '3rd main abodh mark, hubli', '8745632145', 'shanta@gmail.com', 'Steel box', '40');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_userlogin`
--

CREATE TABLE `appliance_app_userlogin` (
  `id` int(11) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_userlogin`
--

INSERT INTO `appliance_app_userlogin` (`id`, `emailid`, `password`, `utype`) VALUES
(1, 'admin@gmail.com', '123456', 'admin'),
(2, 'customer@gmail.com', '111', 'customer'),
(3, 'priyanka@gmail.com', 'priyanka', 'customer'),
(4, 'aishu@gmail.com', 'aishwarya', 'customer'),
(5, 'nkn@gmail.com', '123456789', 'customer'),
(6, 'nkn@gmail.com', '123456789', 'customer'),
(7, 'renuka@gmail.com', '123456789', 'customer'),
(8, 'renuka@gmail.com', '123456789', 'customer'),
(9, 'xx@gmail.com', '987456321', 'customer'),
(10, 'hg@gmail.com', 'Pink11', 'customer'),
(11, 'hg@gmail.com', 'Pink11', 'customer'),
(12, 'hg@gmail.com', 'Pinku1', 'customer'),
(13, 'akash@gmail.com', 'akash12345', 'customer'),
(14, 'akash@gmail.com', 'akash12345', 'customer'),
(15, 'akash@gmail.com', 'akash12345', 'customer'),
(16, 'suru@gmail.com', 'suru123456', 'customer'),
(17, 'suru@gmail.com', 'suru123456', 'customer'),
(18, 'suru@gmail.com', 'suru123456', 'customer'),
(19, 'farhan@gmail.com', 'farhan1234', 'customer'),
(20, 'farhan@gmail.com', 'farhan1234', 'customer'),
(21, 'd@gmail.com', 'oooooooooo', 'customer'),
(22, 'td@gmail.com', '1234567891', 'customer'),
(23, 'ss@gmail.com', '1111111111', 'customer'),
(24, 'anil@gmail.com', 'anil123456', 'customer'),
(25, 'gurusirsi25@gmail.com', 'anil123456', 'customer'),
(26, 'baby@gmail.com', 'baby123456', 'customer'),
(27, 'ss@gmail.com', '1234567891', 'customer'),
(28, 'chaitali@gmail.com', 'chaitali12', 'customer'),
(29, 'chaitali@gmail.com', 'chaitali12', 'customer'),
(30, 'chaitali@gmail.com', 'chaitali12', 'customer'),
(31, 'chaitali@gmail.com', 'chaitali12', 'customer'),
(32, 'chaitali@gmail.com', 'chaitali12', 'customer'),
(33, 'rokhadechaitali@gmail.com', 'chaitali12', 'customer'),
(34, 'rokhadechaitali@gmail.com', 'aaaaa12345', 'customer'),
(35, 'priyankavrokhade@gmail.com', 'priyanka12', 'customer'),
(36, 'rokhadeaishu@gmail.com', 'rokhade123', 'customer'),
(37, 'sanjan@gmail.com', 'sanjan1234', 'customer'),
(38, 'preeti@gmail.com', 'preeti1234', 'customer'),
(39, 'preeti@gmail.com', 'preeti1234', 'customer'),
(40, 'preeti@gmail.com', 'preeti1234', 'customer'),
(41, 'preeti@gmail.com', 'preeti1234', 'customer'),
(42, 'preeti@gmail.com', 'preeti1234', 'customer'),
(43, 'priyanka@gmal.com', 'priyanka32', 'customer'),
(44, 'priyanka@gmal.com', 'priyanka32', 'customer'),
(45, 'ss@gal.com', '456123pppp', 'customer'),
(46, 'aa@gmal.com', 'ppppppppp1', 'customer'),
(47, 'kavyagoudar8@gmail.com', 'kavyagouda', 'customer'),
(48, 'djhc@gmail.com', 'priyankav1', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `appliance_app_userregistration`
--

CREATE TABLE `appliance_app_userregistration` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Address` varchar(400) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Pincode` int(11) DEFAULT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ConfirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliance_app_userregistration`
--

INSERT INTO `appliance_app_userregistration` (`id`, `Firstname`, `Lastname`, `Address`, `City`, `Gender`, `Pincode`, `MobileNumber`, `EmailID`, `Password`, `ConfirmPassword`) VALUES
(3, 'Swapna', 'Patil', 'Rajatgiri', 'Dharwad', 'female', 584001, '9874563211', 'swapna@gmail.com', '1234', '1234'),
(4, 'Mukesh', 'Ambani', '6th cross hallur', 'Dharwad', 'male', 580002, '8596741233', 'mukesh@gmail.com', '7894', '7894'),
(7, 'Priyanka', 'Rokhade', 'Tolnaka', 'Dharwad', 'female', 580001, '9758463214', 'priyanka@gmail.com', 'priyanka', 'priyanka'),
(8, 'Aishwarya', 'Rokhade', 'Nttf', 'Dharwad', 'female', 580001, '9685741236', 'aishu@gmail.com', 'aishwarya', 'aishwarya'),
(11, 'Renuka', 'Inchgirimat', 'vidyagiri', 'Dharwad', 'female', 0, '9874563214', 'renuka@gmail.com', '123456789', '987456321'),
(20, 'Suru', 'yads', 'opposite cbt', 'dharwad', 'female', 0, '7896541236', 'suru@gmail.com', 'suru123456', 'suru123456'),
(23, 'farhan', 'aktar', 'galli', 'dharwad', 'female', 0, '6888888888', 'farhan@gmail.com', 'farhan1234', 'farhan1234'),
(25, 'Anil', 'Joseph', '5th street', 'dharwad', 'male', 580001, '6874521111', 'anil@gmail.com', 'anil123456', 'anil123456'),
(29, 'chaitali', 'rokhade', 'nttf', 'dharwad', 'female', 582222, '9632147555', 'chaitali@gmail.com', 'chaitali12', 'chaitali12'),
(36, 'Priyanka', 'Rokhade', 'tolnaka', 'Dharwad', 'female', 580001, '9738215789', 'priyankavrokhade@gmail.com', 'priyanka12', 'priyanka12'),
(37, 'Aishwarya', 'Rokhade', 'nttf', 'dwd', 'female', 580022, '9632154785', 'rokhadeaishu@gmail.com', 'rokhade123', 'rokhade123'),
(38, 'sanjan', 'des', 'lll', 'dwd', 'female', 580001, '9685741235', 'sanjan@gmail.com', 'sanjan1234', 'sanjan1234'),
(43, 'preeti', 'k', 'gadag near hno', 'dwd', 'female', 580001, '9874521047', 'preeti@gmail.com', 'preeti1234', 'preeti1234'),
(44, 'Priyanka', 'Patil', '2nd cross main road ', 'dharwad', 'female', 580001, '6547851247', 'priyanka@gmal.com', 'priyanka32', 'priyanka32'),
(45, 'Priyanka', 'Patil', '2nd cross main road ', 'dharwad', 'female', 580001, '6547851247', 'priyanka@gmal.com', 'priyanka32', 'priyanka32'),
(46, 's', 's', 's', 's', 'female', 555555, '6666666666', 'ss@gal.com', '456123pppp', '456123pppp'),
(47, 'Supriya', 'mank', '2nd street', 'Dharwad', 'female', 552011, '6985478555', 'aa@gmal.com', 'ppppppppp1', 'ppppppppp1'),
(48, 'kavya', 'Goudar', 'line bazaar dharwad', 'dharwad', 'female', 580008, '9739887773', 'kavyagoudar8@gmail.com', 'kavyagouda', 'kavyagouda'),
(49, 'dbcjab', 'jcnsjnc', 'danc msn ', 'kscnkdsnc', 'female', 555555, '9999999999', 'djhc@gmail.com', 'priyankav1', 'priyankav1');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add userlogin', 6, 'add_userlogin'),
(22, 'Can change userlogin', 6, 'change_userlogin'),
(23, 'Can delete userlogin', 6, 'delete_userlogin'),
(24, 'Can view userlogin', 6, 'view_userlogin'),
(25, 'Can add user registration', 7, 'add_userregistration'),
(26, 'Can change user registration', 7, 'change_userregistration'),
(27, 'Can delete user registration', 7, 'delete_userregistration'),
(28, 'Can view user registration', 7, 'view_userregistration'),
(29, 'Can add billing', 8, 'add_billing'),
(30, 'Can change billing', 8, 'change_billing'),
(31, 'Can delete billing', 8, 'delete_billing'),
(32, 'Can view billing', 8, 'view_billing'),
(33, 'Can add deliverydtails', 9, 'add_deliverydtails'),
(34, 'Can change deliverydtails', 9, 'change_deliverydtails'),
(35, 'Can delete deliverydtails', 9, 'delete_deliverydtails'),
(36, 'Can view deliverydtails', 9, 'view_deliverydtails'),
(37, 'Can add m b_scheme', 10, 'add_mb_scheme'),
(38, 'Can change m b_scheme', 10, 'change_mb_scheme'),
(39, 'Can delete m b_scheme', 10, 'delete_mb_scheme'),
(40, 'Can view m b_scheme', 10, 'view_mb_scheme'),
(41, 'Can add order_details', 11, 'add_order_details'),
(42, 'Can change order_details', 11, 'change_order_details'),
(43, 'Can delete order_details', 11, 'delete_order_details'),
(44, 'Can view order_details', 11, 'view_order_details'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add purchase_ items', 13, 'add_purchase_items'),
(50, 'Can change purchase_ items', 13, 'change_purchase_items'),
(51, 'Can delete purchase_ items', 13, 'delete_purchase_items'),
(52, 'Can view purchase_ items', 13, 'view_purchase_items'),
(53, 'Can add service', 14, 'add_service'),
(54, 'Can change service', 14, 'change_service'),
(55, 'Can delete service', 14, 'delete_service'),
(56, 'Can view service', 14, 'view_service'),
(57, 'Can add supplier', 15, 'add_supplier'),
(58, 'Can change supplier', 15, 'change_supplier'),
(59, 'Can delete supplier', 15, 'delete_supplier'),
(60, 'Can view supplier', 15, 'view_supplier'),
(61, 'Can add pro category', 16, 'add_procategory'),
(62, 'Can change pro category', 16, 'change_procategory'),
(63, 'Can delete pro category', 16, 'delete_procategory'),
(64, 'Can view pro category', 16, 'view_procategory'),
(65, 'Can add product', 17, 'add_product'),
(66, 'Can change product', 17, 'change_product'),
(67, 'Can delete product', 17, 'delete_product'),
(68, 'Can view product', 17, 'view_product'),
(69, 'Can add exchange offer', 18, 'add_exchangeoffer'),
(70, 'Can change exchange offer', 18, 'change_exchangeoffer'),
(71, 'Can delete exchange offer', 18, 'delete_exchangeoffer'),
(72, 'Can view exchange offer', 18, 'view_exchangeoffer'),
(73, 'Can add stock items', 19, 'add_stockitems'),
(74, 'Can change stock items', 19, 'change_stockitems'),
(75, 'Can delete stock items', 19, 'delete_stockitems'),
(76, 'Can view stock items', 19, 'view_stockitems');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, '', 'admin', 'logentry'),
(2, '', 'auth', 'permission'),
(3, '', 'auth', 'group'),
(4, '', 'auth', 'user'),
(5, '', 'contenttypes', 'contenttype'),
(6, '', 'appliance_app', 'userlogin'),
(7, '', 'appliance_app', 'userregistration'),
(8, '', 'appliance_app', 'billing'),
(9, '', 'appliance_app', 'deliverydtails'),
(10, '', 'appliance_app', 'mb_scheme'),
(11, '', 'appliance_app', 'order_details'),
(12, '', 'appliance_app', 'payment'),
(13, '', 'appliance_app', 'purchase_items'),
(14, '', 'appliance_app', 'service'),
(15, '', 'appliance_app', 'supplier'),
(16, '', 'appliance_app', 'procategory'),
(17, '', 'appliance_app', 'product'),
(18, '', 'appliance_app', 'exchangeoffer'),
(19, '', 'appliance_app', 'stockitems');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-09 10:06:03.369167'),
(2, 'auth', '0001_initial', '2019-03-09 10:06:26.590495'),
(3, 'admin', '0001_initial', '2019-03-09 10:06:34.866968'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-09 10:06:35.262991'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-03-09 10:06:35.341996'),
(6, 'appliance_app', '0001_initial', '2019-03-09 10:06:36.385055'),
(7, 'appliance_app', '0002_userregistration', '2019-03-09 10:06:37.397113'),
(8, 'appliance_app', '0003_auto_20190206_1502', '2019-03-09 10:06:49.801823'),
(9, 'appliance_app', '0004_remove_category_category_id', '2019-03-09 10:06:52.492977'),
(10, 'appliance_app', '0005_auto_20190206_1523', '2019-03-09 10:07:19.782537'),
(11, 'appliance_app', '0006_auto_20190218_1800', '2019-03-09 10:07:21.914659'),
(12, 'appliance_app', '0007_auto_20190218_1928', '2019-03-09 10:07:22.104670'),
(13, 'appliance_app', '0008_auto_20190218_1930', '2019-03-09 10:07:38.393602'),
(14, 'appliance_app', '0009_auto_20190218_1935', '2019-03-09 10:07:39.943691'),
(15, 'appliance_app', '0010_auto_20190219_1844', '2019-03-09 10:07:42.290825'),
(16, 'appliance_app', '0011_auto_20190219_1849', '2019-03-09 10:07:44.077927'),
(17, 'appliance_app', '0012_auto_20190219_1858', '2019-03-09 10:07:44.313941'),
(18, 'appliance_app', '0013_auto_20190219_1922', '2019-03-09 10:07:45.417004'),
(19, 'appliance_app', '0014_auto_20190219_1938', '2019-03-09 10:07:48.362172'),
(20, 'appliance_app', '0015_auto_20190222_1551', '2019-03-09 10:07:49.379230'),
(21, 'appliance_app', '0016_auto_20190223_1443', '2019-03-09 10:07:57.894717'),
(22, 'appliance_app', '0017_auto_20190224_1729', '2019-03-09 10:10:43.459187'),
(23, 'appliance_app', '0018_auto_20190224_1729', '2019-03-09 10:10:43.806207'),
(24, 'appliance_app', '0019_auto_20190224_1733', '2019-03-09 10:10:43.859210'),
(25, 'appliance_app', '0020_auto_20190305_1818', '2019-03-09 10:10:43.980217'),
(26, 'appliance_app', '0021_auto_20190305_1854', '2019-03-09 10:10:44.087223'),
(27, 'appliance_app', '0022_auto_20190305_1858', '2019-03-09 10:10:44.151227'),
(28, 'appliance_app', '0023_auto_20190305_1925', '2019-03-09 10:10:44.202230'),
(29, 'appliance_app', '0024_auto_20190307_1601', '2019-03-09 10:10:44.498246'),
(30, 'appliance_app', '0025_auto_20190307_1836', '2019-03-09 10:10:44.691257'),
(31, 'appliance_app', '0026_auto_20190307_1838', '2019-03-09 10:10:44.871268'),
(32, 'appliance_app', '0027_delete_myorder', '2019-03-09 10:10:44.913270'),
(33, 'appliance_app', '0028_sam', '2019-03-09 10:10:44.957273'),
(34, 'appliance_app', '0029_auto_20190307_2119', '2019-03-09 10:10:45.020276'),
(35, 'appliance_app', '0030_auto_20190309_1506', '2019-03-09 10:10:45.080280'),
(36, 'appliance_app', '0031_auto_20190309_1535', '2019-03-09 10:10:45.125282'),
(37, 'contenttypes', '0002_remove_content_type_name', '2019-03-09 10:10:45.175285'),
(38, 'auth', '0002_alter_permission_name_max_length', '2019-03-09 10:10:45.452301'),
(39, 'auth', '0003_alter_user_email_max_length', '2019-03-09 10:10:45.502304'),
(40, 'auth', '0004_alter_user_username_opts', '2019-03-09 10:10:45.546306'),
(41, 'auth', '0005_alter_user_last_login_null', '2019-03-09 10:10:45.591309'),
(42, 'auth', '0006_require_contenttypes_0002', '2019-03-09 10:10:45.635311'),
(43, 'auth', '0007_alter_validators_add_error_messages', '2019-03-09 10:10:45.808321'),
(44, 'auth', '0008_alter_user_username_max_length', '2019-03-09 10:10:45.857324'),
(45, 'auth', '0009_alter_user_last_name_max_length', '2019-03-09 10:10:45.902327'),
(46, 'sessions', '0001_initial', '2019-03-09 10:10:45.946329'),
(47, 'appliance_app', '0032_order_details', '2019-03-09 10:11:26.073624'),
(48, 'appliance_app', '0033_auto_20190311_1929', '2019-03-12 07:43:43.896903'),
(49, 'appliance_app', '0034_auto_20190311_1932', '2019-03-12 07:43:44.846958'),
(50, 'appliance_app', '0035_auto_20190312_1311', '2019-03-12 07:43:46.072028'),
(51, 'appliance_app', '0036_auto_20190312_1312', '2019-03-12 07:43:46.137032'),
(52, 'appliance_app', '0037_auto_20190312_1705', '2019-03-12 11:35:44.931522'),
(53, 'appliance_app', '0038_auto_20190313_1718', '2019-03-13 11:48:33.092642'),
(54, 'appliance_app', '0039_auto_20190313_1948', '2019-03-13 14:18:39.679692'),
(55, 'appliance_app', '0040_auto_20190314_0203', '2019-03-13 20:33:30.206057'),
(56, 'appliance_app', '0041_order_details_items', '2019-03-14 12:36:35.797939'),
(57, 'appliance_app', '0042_billing_tax_total', '2019-03-14 13:08:53.060744'),
(58, 'appliance_app', '0043_auto_20190314_1953', '2019-03-14 14:26:04.063836'),
(59, 'appliance_app', '0044_auto_20190315_0022', '2019-03-14 18:53:09.113760'),
(60, 'appliance_app', '0045_auto_20190315_1905', '2019-03-15 13:35:59.749758'),
(61, 'appliance_app', '0046_remove_payment_bankbranch', '2019-03-15 14:19:11.892020'),
(62, 'appliance_app', '0047_auto_20190316_1631', '2019-03-16 11:01:16.397545'),
(63, 'appliance_app', '0048_auto_20190316_1633', '2019-03-16 11:03:55.097320'),
(64, 'appliance_app', '0049_signupform', '2019-03-17 03:56:46.322641'),
(65, 'appliance_app', '0050_signupform_is_valid', '2019-03-17 04:00:38.555924'),
(66, 'appliance_app', '0051_remove_signupform_is_valid', '2019-03-17 04:02:13.361347'),
(67, 'appliance_app', '0052_order_details_order_status', '2019-03-17 12:08:17.332951'),
(68, 'appliance_app', '0053_auto_20190321_1855', '2019-03-21 13:26:09.553051'),
(69, 'appliance_app', '0054_remove_cart_details_orderid', '2019-03-22 13:09:04.356811'),
(70, 'appliance_app', '0055_auto_20190322_1841', '2019-03-22 13:11:26.190924'),
(71, 'appliance_app', '0056_auto_20190322_1851', '2019-03-22 13:21:31.464543'),
(72, 'appliance_app', '0057_remove_payment_couponno', '2019-03-24 20:11:26.557418'),
(73, 'appliance_app', '0058_auto_20190326_1836', '2019-03-26 13:07:11.417007'),
(74, 'appliance_app', '0059_auto_20190328_1200', '2019-03-28 06:30:45.396557'),
(75, 'appliance_app', '0060_stockitems_itemname', '2019-03-28 06:33:50.321134'),
(76, 'appliance_app', '0061_auto_20190328_1531', '2019-03-28 10:02:09.358853'),
(77, 'appliance_app', '0062_purchase_items_pitem', '2019-03-28 10:24:58.480162'),
(78, 'appliance_app', '0063_purchase_items_pprice', '2019-03-28 10:40:09.748283'),
(79, 'appliance_app', '0064_auto_20190328_1622', '2019-03-28 10:52:30.273639');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hlhyxcvym075qjsl6kp7a02l49injog8', 'ZjczZTNjYjlhNDRmMzJkODVkOGU5NTNiZDExNmRhMTA4YzA4MjIwNDp7InVpZCI6ImthdnlhZ291ZGFyOEBnbWFpbC5jb20iLCJ1c2VybmFtZSI6InByaXlhbmthdnJva2hhZGVAZ21haWwuY29tIiwiZW1haWxpZCI6InByaXlhbmthdnJva2hhZGVAZ21haWwuY29tIn0=', '2019-04-11 13:45:07.099999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appliance_app_billing`
--
ALTER TABLE `appliance_app_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_cart_details`
--
ALTER TABLE `appliance_app_cart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_deliverydtails`
--
ALTER TABLE `appliance_app_deliverydtails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_exchangeoffer`
--
ALTER TABLE `appliance_app_exchangeoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_feedbackform`
--
ALTER TABLE `appliance_app_feedbackform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_mb_scheme`
--
ALTER TABLE `appliance_app_mb_scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_order_details`
--
ALTER TABLE `appliance_app_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_payment`
--
ALTER TABLE `appliance_app_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_procategory`
--
ALTER TABLE `appliance_app_procategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_product`
--
ALTER TABLE `appliance_app_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_purchase_items`
--
ALTER TABLE `appliance_app_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_service`
--
ALTER TABLE `appliance_app_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_stockitems`
--
ALTER TABLE `appliance_app_stockitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_supplier`
--
ALTER TABLE `appliance_app_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_userlogin`
--
ALTER TABLE `appliance_app_userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliance_app_userregistration`
--
ALTER TABLE `appliance_app_userregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appliance_app_billing`
--
ALTER TABLE `appliance_app_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `appliance_app_cart_details`
--
ALTER TABLE `appliance_app_cart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `appliance_app_deliverydtails`
--
ALTER TABLE `appliance_app_deliverydtails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appliance_app_exchangeoffer`
--
ALTER TABLE `appliance_app_exchangeoffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appliance_app_feedbackform`
--
ALTER TABLE `appliance_app_feedbackform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appliance_app_mb_scheme`
--
ALTER TABLE `appliance_app_mb_scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appliance_app_order_details`
--
ALTER TABLE `appliance_app_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `appliance_app_payment`
--
ALTER TABLE `appliance_app_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `appliance_app_procategory`
--
ALTER TABLE `appliance_app_procategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `appliance_app_product`
--
ALTER TABLE `appliance_app_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `appliance_app_purchase_items`
--
ALTER TABLE `appliance_app_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appliance_app_service`
--
ALTER TABLE `appliance_app_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appliance_app_stockitems`
--
ALTER TABLE `appliance_app_stockitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appliance_app_supplier`
--
ALTER TABLE `appliance_app_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appliance_app_userlogin`
--
ALTER TABLE `appliance_app_userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `appliance_app_userregistration`
--
ALTER TABLE `appliance_app_userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
