-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 04:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Grilled Cheese Sandwich', 'Grilled cheese sandwich or grilled cheese is a hot sandwich made with more varieties of cheese cooked on the grill long enough for the cheese to melt a little and the bread to get brown and a little crispy. Grill until lightly browned and flip over; conti', 6, 'igcsan.jpg'),
(2, 1, 'Turkey Fajitas', 'Enjoy delicious Mexican food with this smoky BBQ turkey fajitas recipe from Giulia Restro to finish up turkey leftovers or just to make a tasty dinner! just give it a kick with picante sauce, peppers and onions, all wrapped up in a flour tortilla.', 9, 'turkey-fajitas.jpg'),
(3, 3, 'Hot Dog', 'Whole cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', 4, 'hdoggg.jpg'),
(4, 2, 'Ham Burger', 'Sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. The Epic Ham and Cheese Stuffed Bacon Burger is hands down the best', 4, 'hmbrger.jpg'),
(5, 3, 'Detroit-Style Pizza', 'A thick, square-cut pizza with a crunchy, fried bottom layer of crust overflowing with delicious melted cheese. The result of this unique pizza style is a gooey, doughy center with a crunchy outer crust and caramelized cheese hugging its edges.', 10, 'detroitpzz.jpg'),
(6, 1, 'Pasta allArrabbiata', 'Pasta Arrabiata literally means \"angry pasta\" in Italian. Arrabiata sauce (sugo all\'arrabbiata) is a spicy (angry) tomato sauce that\'s made with plenty of olive oil, garlic, chopped tomatoes, and red pepper flakes to provide the heat.', 9, 'Pappardelle.jpg'),
(7, 1, 'Spaghetti Carbonara', 'Just spaghetti and the carbonara is made with pancetta or bacon, eggs, Parmesan, a little olive oil, salt and pepper. The silky carbonara sauce is created when the beaten eggs are tossed with the hot pasta and a little fat from the pancetta or bacon.', 9, 'spCarbonara.jpg'),
(8, 2, 'Toasted Ravioli', 'The crunchy pasta, dusted with grated Parmesan cheese and dunked in a marinara-style sauce, makes a delicious hot appetizer. the ravioli is deep-fried, not toasted, and like many culinary discoveries, the first batch was the result of an accident.', 11, 'fried-ravioli-bread-crumbs.jpg'),
(9, 3, 'Maltesers Tiramisu', 'As the name implies, this is an iconic Italian dessert that is served at the end of the meal that hopefully “cheers you up”. For a decadent, crowd-pleasing dessert this Christmas you can\'t go past a no-bake Malteser tiramisu.', 4, 'mldessert.jpeg'),
(10, 6, 'Arancini', 'Arancini are Italian rice balls that are stuffed, coated with bread crumbs and deep fried, and are a staple of Sicilian cuisine. They have a meat sauce and mozzarella cheese filling and crunchy breadcrumb coating. Similar Italian rice balls are called sup', 12, 'aw-arancini-articleLarge.jpg'),
(11, 6, 'Currywurst', 'Currywurst is a fast food dish of German origin consisting of steamed, and fried pork sausage typically cut into bite-sized chunks and seasoned with curry ketchup, a sauce based on spiced ketchup or tomato paste topped with curry powder, or a ready-made k', 7, 'curywurst.jpg'),
(12, 6, 'Steak au poivre', 'Steak au poivre or pepper steak is a French dish that consists of a steak, traditionally a filet mignon, coated with coarsely cracked peppercorns and then cooked. a steak that has had coarsely ground black pepper pressed into it before cooking, is served ', 10, 'stkkk.jpg'),
(13, 5, 'French Fries', 'French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes. French fries have numerous variants, from thick-cut to shoestring, crinkle, curly and many other names.', 2, 'ffries.jpg'),
(14, 5, 'Roast Beef Sandwich', 'Roast Beef Sandwich Recipe with Horseradish Cream is absolutely loaded up with flavor, from the thinly sliced roast beef to the roasted potatoes, to the horseradish cream, if you want delicious, then this is the sandwich for you.', 5, 'roast-beef-sandwich.jpg'),
(15, 4, 'Philly Cheesesteak', 'A cheesesteak is a sandwich made from thinly sliced pieces of beefsteak and melted cheese in a long hoagie roll. A popular regional fast food, it has its roots in the U.S. city of Philadelphia, Pennsylvania. Cheesesteaks have become popular at restaurants', 5, 'philly-cheesesteak-3c4be15.jpg'),
(16, 4, 'Sesame Chicken', 'Sesame chicken is an American-Chinese dish made by deep-frying deboned and battered chicken pieces which are then dressed with a thick, translucent, sweet sauce consisting of chicken broth, sugar, corn starch, and vinegar or sake. additionally topped with', 11, 'sschicken.jpg'),
(17, 4, 'Mozzarella Sticks', 'One of America\'s favorite cheesy snacks consisting of battered, breaded, and deep-fried pieces of mozzarella cheese. Served as an appetizer with marinara sauce, these cheesy sticks can also be paired with plum sauce, honey mustard sauce, raspberry sauce, ', 9, 'mozzsticks.jpg'),
(18, 2, 'Chimichanga', 'Chimichanga is a wrapped, deep-fried flour tortilla filled with a variety of ingredients such as shredded chicken, beef, rice, beans, onions, and cheese. Served topped with sour cream, guacamole and salsa, this Mexican inspired recipe is delicious!', 9, 'chimichangs.jpg'),
(20, 2, 'Chop Suey', 'Chop suey is a dish in American Chinese cuisine and other forms of overseas Chinese cuisine, consisting of meat and eggs, cooked quickly with vegetables such as bean sprouts, cabbage, and celery and bound in a starch-thickened sauce.', 8, 'choppsuey.jpg'),
(21, 5, 'PoBoy', 'A po\' boy is a traditional sandwich from Louisiana. It almost always consists of meat, which is usually roast beef or fried seafood, often shrimp, crawfish, fish, oysters or crab. The meat is served on New Orleans French bread, known for its crisp crust a', 5, 'poboy.jpg'),
(22, 7, 'Reuben Sandwich', 'Reuben Sandwich is composed of corned beef, swiss chees, sauerkraut and russian dressing, grilled between slices of rye bread. It is associated with kosher-style delicatessens as it combines meat and cheese.', 8, 'reubensandw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 2, 'Giulia Restro', 'gr69stro@gmail.com', '1-555-555-5555', 'giuliarestroo.com', '8am', '7pm', 'mon-sat', '1259  Wood Street', 'grestro.jpg'),
(2, 6, 'Vernick Restro', 'vernic@gmail.com', '1-567-567-8888', 'foodvernick.com', '10am', '7pm', '24hr-x7', '1812  Fleming Street', 'vrfnb.jpg'),
(3, 6, 'Townsend', 'townsend@gmail.com', '1-333-222-7474', 'townsend.com', '8am', '8pm', 'mon-sat', '528  Veltri Drive', 'TOWNSEND.jpg'),
(4, 6, 'Artisan Bar & Grill', 'grilltisan@gmail.com', '1-222-333-7878', 'artisanbargr.com', '11am', '8pm', '24hr-x7', '1659  Ritter Avenue', 'artisan-cafe-berea-ky.jpg'),
(5, 6, 'Highland Restaurant', 'contact@hlrt.com', '11555578522', 'highlandrestro.com', '9am', '8pm', '24hr-x7', '1547  Birch  Street', 'hlmg.jpg'),
(6, 3, 'Alchemist', 'alchems@gmail.com', '12454850000', 'alchemist.food', '10am', '8pm', 'mon-sat', '60  Trehafod Road', 'icnr.jpg'),
(7, 6, 'Treehouse Restro', 'treehsr@gmail.com', '12457854101', 'treehouserestr.com', '8am', '10pm', 'mon-sat', '2902 Benson Park Drive', 'treehouserestr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'Italian'),
(3, 'Continental'),
(4, 'Chinese'),
(5, 'Desserts'),
(6, 'American'),
(7, 'Vegan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(18, 'christine', 'Christine', 'Moore', 'christine@gmail.com', '8545457777', '$2y$10$XLhDPwNkxadw1cePzUckzutf5jIWe.c7EUdrnUCPSo7RC3xqN0MqO', '245 Ralph Street'),
(19, 'thomas', 'Thomas', 'Yorke', 'thomas@gmail.com', '6540215001', '$2y$10$a7x4PLACXGXy4D0oJR0C8.fKMaG4Syg0mIUWqQw.kl8Cpt4zHyGeC', '8520 Allace Avenue'),
(20, 'leahp', 'Leah', 'Powell', 'leahp@gmail.com', '6540215700', '$2y$10$qUdthXhirk4/A./n2M3g1.cLMzG32i6zpHk5TsZSfq5D/JpnvidB6', '1114  Anmoore Road'),
(21, 'julie', 'Julie', 'Turner', 'julie@gmail.com', '6201254700', '$2y$10$lVo7.B89NHzx3UN/XHBmGOFoKIni95HaXNve2lciGPmNlBNhIz00S', '175  Gladwell Street'),
(22, 'robert', 'Robert', 'Garcia', 'robertgr@gmail.com', '8542124540', '$2y$10$K7cwOrUSXWWyzqM1PaIrSewLr.6xdFySk4DPWFENdAfNUFWB9BIRW', '2325  Brooke Street'),
(23, 'caroline', 'Caroline', 'Silva', 'carolinsi@gmail.com', '8540222320', '$2y$10$C2y0mZ.niJ1TfozEp15iG.ZLPJ23SHp9swR7sMzkZyF6JYRajFKDi', '1836  Rainbow Drive'),
(24, 'walker', 'John', 'Walker', 'john@gmail.com', '6012225470', '$2y$10$pl0kXL/4376t7les3MR5EeKVVZrGxTDzhNjCmqyzkjheeQs5zEJwG', '3791  Barnes Avenue'),
(25, 'jason', 'Jason', 'Anderson', 'jason@gmail.com', '8541212140', '$2y$10$kDGpBxWSICET3rzxvrGgXe.8mZB.04d.IqIz0DNQC.MCdd9kcIlv2', '4417  Clark Street'),
(26, 'plyler', 'Anastasia', 'Plyler', 'anastasia@gmail.com', '1245552120', '$2y$10$IpzK223xfacfCETSRR5uT.jNN/ClIP3r/vGInZQK9445UiPoz5RgW', '4685  Poling Farm Road'),
(27, 'michael', 'Michael', 'Holland', 'michael@gmail.com', '0540001470', '$2y$10$ihOEGdI6OCrQkBv1.I100uLe3rVtbJ6G1LcICuzJrCR7McLjTD71y', '79  Main St'),
(28, 'paige', 'Paige', 'Richardson', 'paigeri@gmail.com', '0254580002', '$2y$10$S87MjBD29LIXmtegDjxa7uiGNKqUiLoMiecJ9vIRxUU9fCtdnfavO', '110  Manor Way'),
(29, 'douglas', 'Eva', 'Douglas', 'evadoug@gmail.com', '3145800010', '$2y$10$KeoGCID6Z1Byt84B.lzSz.KB1uVYtTCz.DUGym4HuJeiQTg4MpT5S', '25 Ocean Street'),
(30, 'jayden', 'Jayden', 'Swadling', 'jayden@gmail.com', '3145210020', '$2y$10$G5tjFx15o76k78fAPudvUOovE.ubzQjkH51HcvF2zBukNTkV0t25G', '53 Ocean Street'),
(31, 'jessica', 'Jessica', 'Callum', 'jessum@gmail.com', '4521020010', '$2y$10$ZbHU6iGGm4Aeq/.cRWYp2eadhHK0h4sg6c4LIHbqdf1jnd1pybVC.', '73 Ocean Street'),
(32, 'carter', 'Brian', 'Carter', 'brianc@gmail.com', '6470002696', '$2y$10$bg1XbJ97GXaoHnG4OMkrDex5ybLWGEueKjFvUzvH1/kBtjR4NIp36', '2415  Walkers Ridge Way'),
(33, 'henry', 'Henry', 'Clark', 'henryc@gmail.com', '5402225000', '$2y$10$yKsf5a6TcTBHEflcfJDKnOu6Hfsw1QNok58uvrj7YWemzM2yMLNZC', '3017  Middleville Road'),
(34, 'taylor', 'Paul', 'Taylor', 'paulty@gmail.com', '7558744260', '$2y$10$FvSDmYTKWLh9CWuhRUHsfuWqALfXwzR7jIC00y0ZSvTihaFCSnWeG', '4957 Pearcy Avenue');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success-date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(18, 18, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2021-05-16 18:01:05', '2021-05-16 16:02:09', 3),
(20, 19, 10, 'Arancini', 1, 12, NULL, '2021-05-17 12:01:04', '2021-05-17 06:16:04', 6),
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2),
(22, 23, 16, 'Sesame Chicken', 3, 33, 'closed', '2021-05-17 14:19:58', '2021-05-17 12:30:47', 4),
(23, 24, 1, 'Grilled Cheese Sandwich', 2, 12, NULL, '2021-05-17 14:30:02', '2021-05-17 08:45:02', 1),
(24, 24, 20, 'Chop Suey', 1, 8, 'closed', '2021-05-17 14:30:02', '2021-05-17 14:32:49', 2),
(25, 31, 7, 'Spaghetti Carbonara', 1, 9, NULL, '2021-05-17 14:38:44', '2021-05-17 08:53:44', 1),
(27, 32, 21, 'PoBoy', 2, 10, 'in process', '2021-05-17 15:55:55', '2021-05-17 13:57:23', 5),
(28, 34, 8, 'Toasted Ravioli', 4, 44, 'rejected', '2021-05-17 16:22:34', '2021-05-17 14:31:36', 2),
(29, 34, 21, 'PoBoy', 2, 10, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:07', 5),
(30, 34, 11, 'Currywurst', 7, 49, 'closed', '2021-05-17 16:22:34', '2021-05-17 14:32:42', 6),
(32, 34, 22, 'Reuben Sandwich', 3, 24, 'closed', '2021-05-17 16:31:02', '2021-05-17 14:32:38', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
