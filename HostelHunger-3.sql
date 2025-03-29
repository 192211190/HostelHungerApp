-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2025 at 12:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HostelHunger`
--

-- --------------------------------------------------------

--
-- Table structure for table `addComments`
--

CREATE TABLE `addComments` (
  `id` int(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addComments`
--

INSERT INTO `addComments` (`id`, `comments`) VALUES
(1, 'Great dish'),
(2, 'Delicious'),
(3, 'Nice item');

-- --------------------------------------------------------

--
-- Table structure for table `adminmenu`
--

CREATE TABLE `adminmenu` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `food_name` varchar(255) NOT NULL DEFAULT '""',
  `popular` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminmenu`
--

INSERT INTO `adminmenu` (`id`, `image`, `food_name`, `popular`, `price`) VALUES
(8, 'https://img.freepik.com/premium-photo/fig-juice-with-isolated-white-background_741910-12535.jpg', 'Fig Juice', '', 'Rs.60'),
(9, 'https://media.istockphoto.com/id/516359240/photo/bhendi-masala-or-bhindi-masala-ladies-finger-curry-with-chapati.jpg?s=612x612&w=0&k=20&c=0mGnvNM2lxl-dTTJlhAfVJE5WidxYmmvrvNs1NZUKvs=', 'chapatti', '', 'Rs. 70'),
(10, 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?cs=srgb&dl=pexels-enginakyurt-1437267.jpg&fm=jpg', 'Pasta', '', 'Rs.80'),
(11, 'https://media.istockphoto.com/id/1410130688/photo/mutton-biryani-served-in-a-golden-dish-isolated-on-dark-background-side-view-indian-food.jpg?s=612x612&w=0&k=20&c=ueFrghYZuKAty-rFVe5dtMtNIbn0jaUsSvCUwTVOmd8=', 'Biriyani', '', 'Rs. 110'),
(12, 'https://media.istockphoto.com/id/1413555828/photo/crispy-masala-dosa-is-a-popular-south-indian-food-item-served-with-tomato-chutney-coconut.jpg?s=612x612&w=0&k=20&c=4bc2ZpJ7WrS2eLAjEzkLjNE3LPPqZTQLEvu0mU_BHOA=', 'Dosa', '', 'Rs.75'),
(13, 'https://t4.ftcdn.net/jpg/03/67/31/89/360_F_367318954_4ttRBcmaa22q30OsJRqflxgCOd9dB9t6.jpg', 'Maggi', '', 'Rs.45'),
(14, 'https://t4.ftcdn.net/jpg/01/89/45/21/360_F_189452136_gJBG4ZRXY9NnZZCGV2s8QhObmpeerJTO.jpg', 'Masala Dosa', '', 'Rs.65');

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`id`, `username`, `password`) VALUES
(1, '192210503', '123'),
(2, 'hello', 'hello123'),
(7, 'hello', 'hello123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup`
--

CREATE TABLE `admin_signup` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_signup`
--

INSERT INTO `admin_signup` (`id`, `email`, `username`, `password`) VALUES
(1, 'hello@gmail.com', 'hello', 'hello123'),
(6, 'hello@gmail.com', 'hello', 'hello123');

-- --------------------------------------------------------

--
-- Table structure for table `available_amount`
--

CREATE TABLE `available_amount` (
  `id` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `available_amount`
--

INSERT INTO `available_amount` (`id`, `amount`) VALUES
(1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `changePassword`
--

CREATE TABLE `changePassword` (
  `id` int(255) NOT NULL,
  `old_password` varchar(255) NOT NULL,
  `new_password` varchar(255) NOT NULL,
  `confirm_new_password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `changePassword`
--

INSERT INTO `changePassword` (`id`, `old_password`, `new_password`, `confirm_new_password`, `username`) VALUES
(1, '190', '160', '160', '192211190');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(255) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemlist`
--

CREATE TABLE `itemlist` (
  `id` int(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL DEFAULT '""',
  `image` varchar(255) NOT NULL DEFAULT '""',
  `price` varchar(255) NOT NULL DEFAULT '""',
  `comments` varchar(255) NOT NULL DEFAULT '""',
  `rating` int(255) NOT NULL DEFAULT 0,
  `restaurant_name` varchar(255) NOT NULL DEFAULT '""',
  `restaurantId` int(11) NOT NULL DEFAULT 0,
  `amount` varchar(255) NOT NULL DEFAULT '""',
  `food_id` varchar(255) NOT NULL DEFAULT '""',
  `order_num` varchar(255) NOT NULL DEFAULT '""',
  `orderOn` date NOT NULL DEFAULT '0000-00-00',
  `time` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `food_name`, `image`, `price`, `comments`, `rating`, `restaurant_name`, `restaurantId`, `amount`, `food_id`, `order_num`, `orderOn`, `time`) VALUES
(1, 'biriyani', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Wc-hevy-yxW0pVomqf2_T6_w4EOLiSl22w&s', '30', 'Great item ', 5, 'Gula Restaurant', 1, '100', '1', '795830219', '2025-01-16', '10: 30'),
(2, 'pasta', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWtFVGsI7ix4LV4xFcUcAri4oNyI7e9oieJA&s', '100', 'nice', 5, 'Andhra Mess', 2, '90', '2', '894720198', '2025-01-01', '08:10'),
(3, 'maggi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyDagFksrB1ZESAH7Y_7WjmyPOQEHsajdu5w&s', '25', 'must try', 3, 'Sankar Catering', 3, '90', '3', '927465098', '2025-01-01', '11:11'),
(4, 'chapathi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPS3FmqZRmFOTVxiu758Xiwyh_5frJN24qYg&s', '35', 'delicious', 4, 'Foodie Hub', 4, '70', '4', '710270923', '2025-01-06', '12:15'),
(5, 'veg meals', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW6GKw0rqmAdFzerx_qu5xkXCejnP9k4zmlQ&s', '80', 'not bad', 0, 'Food Bites', 5, '80', '5', '888102930', '2025-01-05', '01:10'),
(6, 'orange juice', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIfh0-g0TYH4CLKXkpjxsEaPH-DppDxmewJQ&s', '\"\"', 'Good', 0, 'Freshly Made', 6, '50', '6', '888109234', '2025-01-06', '02:15'),
(7, 'musk melon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvTdYCWjmDS1KWLTlHxbRtqU_2uplKwo28bg&s', '\"\"', 'Delicious item', 0, 'Sree Caterings', 7, '50', '7', '890172835', '2025-01-06', '03:30'),
(8, 'non-veg meals', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdkv4PLTOjxKs_J6MjgiSGFA0vbEwhHeyafA&s', '\"\"', 'Must Tried food', 0, 'E Square', 8, '120', '8', '771920547', '2025-01-06', '05:10'),
(9, 'lemon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROo9fWQpGP_ig9Nc9FC-aqgZrpywymA395ow&s', '\"\"', 'Great ', 0, 'Arabian Grill', 9, '40', '9', '946710927', '2025-01-06', '06:15'),
(10, 'curd rice', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCviUocFE-07hC-P_9jUIEdPE-9eKGT8cQHA&s', '\"\"', 'Food is Ok', 0, 'Kasturi catering', 10, '45', '10', '917462093', '2025-01-06', '07:30'),
(11, 'lemon rice', 'https://www.vegrecipesofindia.com/wp-content/uploads/2020/12/lemon-rice-2.jpg', '\"\"', 'Highly Recommend', 0, 'RRR Catering', 11, '45', '11', '710294536', '2025-01-06', '07:45'),
(12, 'Biriyani EGG', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXJLZM1yCA5OzL-k4xtX3oQBSXJIlf5giIGA&s', '250', 'Not Good', 0, 'SKJ Catering', 13, '80', '12', '719453245', '2025-01-06', '08:00');

-- --------------------------------------------------------

--
-- Table structure for table `juicelist`
--

CREATE TABLE `juicelist` (
  `id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `juicelist`
--

INSERT INTO `juicelist` (`id`, `food_name`, `image`) VALUES
(1, 'orange juice', 'https://media.istockphoto.com/id/152971676/photo/glass-of-orange-juice-and-fresh-oranges.jpg?s=612x612&w=0&k=20&c=PLfvkn63OMHN8epb8F9Yfx48BsBOxWzfwL2BSWdV1Nw='),
(2, 'Musk Melon Juice', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-DmO9yySm9Yw1TmzXhOSahSaQzsurzMHxXA&s'),
(3, 'Water Melon', 'https://media.istockphoto.com/id/1256237390/photo/a-glass-of-cold-watermelon-smoothie-with-sliced-watermelon-placed-on-white-background-fresh.jpg?s=612x612&w=0&k=20&c=4skaek90B_YQpBdlLOSIeXQqFRE7aEz4n8TO0p_TNfM='),
(4, 'Mosambi Juice', 'https://cocofaster.com/wp-content/uploads/2024/04/of-a-calamansi-juice-drink-isolated-on-white-background-generative-ai-photo.jpg'),
(5, 'Avocado Juice', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLL957b41KzlSiGyyEK6aPI17MS7ntwTaDqQ&s'),
(6, 'Cold Coffee', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThP3dreNF-418b3zTC1mf-VQbNl1Nwei9LhQ&s'),
(7, 'Pineapple Juice', 'https://media.istockphoto.com/id/176851361/photo/pineapple-juice.jpg?s=612x612&w=0&k=20&c=glIriwCuCAoXZ2qjrtVJRFsMHwbf8w_zl5n7D-nIvvE='),
(8, 'Grape Juice', 'https://media.istockphoto.com/id/464556290/photo/glass-of-grape-juice-with-grapes-on-the-side.jpg?s=612x612&w=0&k=20&c=dTYFBpllNpJavLnUymK5tf3DQF5MacePjEnQwgpahFo='),
(9, 'Lime Juice', 'https://5.imimg.com/data5/OV/WJ/MY-29578/lime-juice.jpg'),
(10, 'Butter Milk', 'https://static.wixstatic.com/media/c9e553_d9789d8ab4454cf2b2e7e1fa0b00c741~mv2.jpg/v1/fill/w_560,h_562,al_c,lg_1,q_80,enc_avif,quality_auto/c9e553_d9789d8ab4454cf2b2e7e1fa0b00c741~mv2.jpg'),
(11, 'Fig juice', 'https://img.freepik.com/premium-photo/fig-juice-with-isolated-white-background_741910-12535.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `juiceRest`
--

CREATE TABLE `juiceRest` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `restname` varchar(255) NOT NULL DEFAULT '""',
  `location` varchar(255) NOT NULL DEFAULT '""',
  `foodtype` varchar(255) NOT NULL DEFAULT '""',
  `price` varchar(255) NOT NULL DEFAULT '""',
  `comment` varchar(255) NOT NULL,
  `rating` int(255) NOT NULL DEFAULT 0,
  `foodname` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `juiceRest`
--

INSERT INTO `juiceRest` (`id`, `image`, `restname`, `location`, `foodtype`, `price`, `comment`, `rating`, `foodname`) VALUES
(1, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'ENGINEERS CAFE', 'SSE campus', 'JUICE', '', 'good', 0, ''),
(2, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'CASSENDRA', 'SEC Campus', 'JUICE', '\"\"', 'once try', 0, '\"\"'),
(3, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'GULA RESTAURANTS', 'SEC Campus', 'JUICE', '\"\"', 'ok....Not bad try for once', 0, '\"\"'),
(4, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOODIE HUB', 'SEC Campus', 'JUICE', '\"\"', 'not bad', 0, '\"\"'),
(5, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOOD BITES', 'SEC Campus', 'JUICE', '\"\"', 'delicious', 0, '\"\"'),
(6, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'CASSENDRA', 'SE Campus', 'JUICE', '\"\"', 'good food', 0, '\"\"'),
(7, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'CREAMY AND CRUNCHY ', 'SMCH Campus', 'JUICE', '\"\"', 'best item', 0, '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `list_of_rest`
--

CREATE TABLE `list_of_rest` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `restname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `foodtype` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list_of_rest`
--

INSERT INTO `list_of_rest` (`id`, `image`, `restname`, `location`, `foodtype`, `restaurant_id`) VALUES
(1, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'andhra mess', 'SMCH Campus', 'veg and non-veg', '1'),
(2, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'gula restaurants', 'Sec canteens', 'veg and non-veg', '2'),
(3, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'sankar catering', 'SMCH Campus', 'veg and non-veg', '3'),
(4, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'foodie hub', 'Sec canteens', 'veg', '4'),
(5, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'food bites', 'Sec canteens', 'veg', '5'),
(6, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'engineers cafe', 'SMCH Campus', 'veg', '6'),
(7, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'freshly made', 'SEC Campus', 'veg and non-veg', '7'),
(8, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'Sree catering', 'SMCH campus', 'veg and non-veg', '8'),
(9, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'e square', 'SMCH campus', 'veg and non-veg', '9'),
(10, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'arabian grill', 'SSE campus', 'veg and non-veg', '10'),
(11, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'Kasthuri ', 'SSE campus', 'veg and non-veg', '11'),
(12, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'RRR caterings', 'SSE Campus', 'veg and non-veg', '12'),
(13, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'SKJ catering', 'SSE campus', 'veg and non-veg', '13'),
(14, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'Southern species', 'SSE campus', 'veg and non-veg', '14');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`) VALUES
(1, 'chennai'),
(2, 'chennai'),
(3, 'chennai'),
(4, 'chennai'),
(5, 'chennai'),
(6, 'chennai');

-- --------------------------------------------------------

--
-- Table structure for table `nonVeglist`
--

CREATE TABLE `nonVeglist` (
  `id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nonVeglist`
--

INSERT INTO `nonVeglist` (`id`, `food_name`, `image`) VALUES
(1, 'Biriyani', 'https://media.istockphoto.com/id/1410130688/photo/mutton-biryani-served-in-a-golden-dish-isolated-on-dark-background-side-view-indian-food.jpg?s=612x612&w=0&k=20&c=ueFrghYZuKAty-rFVe5dtMtNIbn0jaUsSvCUwTVOmd8='),
(2, 'non-veg meals', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8TuL6iSIOgHabot2Gv6mgOKUC4_DsCv_IKg&s'),
(3, 'egg biriyani', 'https://thechefkitchen.in/wp-content/uploads/2022/05/Thechefkitchen-Egg-Biryani.jpg'),
(4, 'chicken fried rice', 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpY2tlbiUyMGZyaWVkJTIwcmljZXxlbnwwfHwwfHx8MA%3D%3D'),
(5, 'egg fried rice', 'https://www.madewithlau.com/_next/image?url=https%3A%2F%2Fcdn.sanity.io%2Fimages%2F2r0kdewr%2Fproduction%2F2c90f6410d47972d8555dd5ddcbcc47346957d43-1000x668.jpg&w=3840&q=75'),
(6, 'Chicken 65 Biriyani', 'https://www.yummytummyaarthi.com/wp-content/uploads/2020/02/1-20.jpg'),
(7, 'Butter chicken', 'https://t3.ftcdn.net/jpg/06/01/41/66/360_F_601416673_Tn9dqtXuujNiavuJnNNspgcDezsStYpD.jpg'),
(8, 'Chicken tandoori', 'https://media.istockphoto.com/id/1396604313/photo/roasted-whole-chicken-legs-with-condiment-directly-above-photo.jpg?s=612x612&w=0&k=20&c=JDs72E-fX5SdcBQREta58T82W8zO_rFiKC7d1WwEEUE=');

-- --------------------------------------------------------

--
-- Table structure for table `nonVegRest`
--

CREATE TABLE `nonVegRest` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `restname` varchar(255) NOT NULL DEFAULT '""',
  `location` varchar(255) NOT NULL DEFAULT '""',
  `foodtype` varchar(255) NOT NULL DEFAULT '""',
  `price` varchar(255) NOT NULL DEFAULT '""',
  `comment` varchar(255) NOT NULL,
  `rating` int(255) NOT NULL DEFAULT 0,
  `foodname` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nonVegRest`
--

INSERT INTO `nonVegRest` (`id`, `image`, `restname`, `location`, `foodtype`, `price`, `comment`, `rating`, `foodname`) VALUES
(1, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'LES CROSSIANTS', 'Sec canteens', 'NON-VEG', '', 'good', 0, ''),
(2, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'ANDHRA MESS', 'SSE Campus', 'NON-VEG', '\"\"', 'must try...delicious', 0, '\"\"'),
(3, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOODIE HUB', 'SEC Campus', 'NON-VEG', '\"\"', 'ok not bad', 0, '\"\"'),
(4, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOODIE HUB', 'SEC Campus', 'NON-VEG', '\"\"', 'must eat', 0, '\"\"'),
(5, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'SANKAR CATERING', 'SEC Campus', 'NON-VEG', '\"\"', 'try once', 0, '\"\"'),
(6, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'HOTEL CASSENDRA', 'SEC Campus', 'NON-VEG', '\"\"', 'can buy', 0, '\"\"'),
(7, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'CREAMY SPOON', 'Thandalam Campus', 'NON-VEG', '\"\"', 'not bad', 0, '\"\"'),
(11, '\"\"', '\"\"', '\"\"', '\"\"', '\"\"', 'delicious', 0, '\"\"'),
(12, '\"\"', '\"\"', '\"\"', '\"\"', '\"\"', 'delicious', 0, '\"\"'),
(13, '\"\"', '\"\"', '\"\"', '\"\"', '\"\"', 'love this', 0, '\"\"'),
(14, '\"\"', '\"\"', '\"\"', '\"\"', '\"\"', 'good', 0, '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `orderStatus`
--

CREATE TABLE `orderStatus` (
  `id` int(255) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `restaurant` varchar(255) NOT NULL,
  `orderOn` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderStatus`
--

INSERT INTO `orderStatus` (`id`, `order_num`, `restaurant`, `orderOn`, `time`, `total`, `item`, `restaurant_id`) VALUES
(1, '737628901', 'gula restaurant', '2024-12-19', '08 : 30', '100', 'biriyani', '1');

-- --------------------------------------------------------

--
-- Table structure for table `owner_detail`
--

CREATE TABLE `owner_detail` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_detail`
--

INSERT INTO `owner_detail` (`id`, `username`, `password`) VALUES
(1, '192211039', '123'),
(2, '192211039', '123'),
(3, 'owner', 'owner123'),
(4, 'owner', 'owner123');

-- --------------------------------------------------------

--
-- Table structure for table `owner_signup`
--

CREATE TABLE `owner_signup` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_signup`
--

INSERT INTO `owner_signup` (`id`, `email`, `username`, `password`) VALUES
(1, 'owner1@gmail.com', 'owner', 'owner123'),
(2, 'owner1@gmail.com', 'owner', 'owner123');

-- --------------------------------------------------------

--
-- Table structure for table `payOrder`
--

CREATE TABLE `payOrder` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `foodname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `ordertype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '"Pending"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payOrder`
--

INSERT INTO `payOrder` (`id`, `user_id`, `user_name`, `foodname`, `image`, `quantity`, `ordertype`, `status`) VALUES
(1, '1', '192211190', 'Pasta', 'pasta.jpg', '2', 'Takeaway', '\"Pending\"'),
(2, '1', '192211190', 'Pasta', 'pasta.jpg', '2', 'Takeaway', '\"Pending\"'),
(3, '1', '192211190', 'Pasta', 'pasta.jpg', '2', 'Takeaway', '\"Pending\"');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `location`) VALUES
(1, 'Vaishnavi', 'Chennai'),
(2, 'Neha', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `rater_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `commets` text DEFAULT '\'""\'',
  `rated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `food_id`, `rater_id`, `rating`, `commets`, `rated_at`) VALUES
(1, 1, 2, 4, 'Good biriyani', '2024-12-24 14:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `todaysmenu`
--

CREATE TABLE `todaysmenu` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todaysmenu`
--

INSERT INTO `todaysmenu` (`id`, `name`, `price`, `image`) VALUES
(1, 'Biriyani', '100', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Wc-hevy-yxW0pVomqf2_T6_w4EOLiSl22w&s'),
(2, 'Pasta', '50', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWtFVGsI7ix4LV4xFcUcAri4oNyI7e9oieJA&s'),
(3, 'Maggi', '45', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyDagFksrB1ZESAH7Y_7WjmyPOQEHsajdu5w&s'),
(4, 'Chapathi', '70', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPS3FmqZRmFOTVxiu758Xiwyh_5frJN24qYg&s'),
(5, 'VegMeals', '80', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW6GKw0rqmAdFzerx_qu5xkXCejnP9k4zmlQ&s'),
(6, 'EGG Biriyani', '90', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXJLZM1yCA5OzL-k4xtX3oQBSXJIlf5giIGA&s'),
(7, 'LemonRice', '45', 'https://www.vegrecipesofindia.com/wp-content/uploads/2020/12/lemon-rice-2.jpg'),
(8, 'Curd Rice', '45', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCviUocFE-07hC-P_9jUIEdPE-9eKGT8cQHA&s');

-- --------------------------------------------------------

--
-- Table structure for table `updatemenu`
--

CREATE TABLE `updatemenu` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `updatemenu`
--

INSERT INTO `updatemenu` (`id`, `image`, `name`, `price`) VALUES
(1, 'REST.jpg', 'pasta', '45'),
(2, '\"\"', 'Pizza', '200'),
(3, '\"\"', 'Pizza', '200'),
(4, '\"\"', 'Pizza', '200');

-- --------------------------------------------------------

--
-- Table structure for table `usersList`
--

CREATE TABLE `usersList` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersList`
--

INSERT INTO `usersList` (`id`, `image`, `name`) VALUES
(1, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '192211005'),
(2, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '192456373'),
(5, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '192347890'),
(6, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '192453671'),
(7, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '1923814504'),
(8, 'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg', '192751608');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `username`, `password`) VALUES
(1, '192211190', '190');

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`id`, `email`, `username`, `password`) VALUES
(1, 'madhu123@gmail.com', 'madhu', '123'),
(3, 'madhu123@gmail.com', 'madhu', '123'),
(4, 'pooji122@gmail.com', 'pooji', '134'),
(5, 'vaishu@gmail.com', 'vaishu', '111');

-- --------------------------------------------------------

--
-- Table structure for table `vegList`
--

CREATE TABLE `vegList` (
  `id` int(255) NOT NULL,
  `foodname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `food_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vegList`
--

INSERT INTO `vegList` (`id`, `foodname`, `image`, `restaurant_name`, `amount`, `food_id`) VALUES
(1, 'chapathi', 'https://t3.ftcdn.net/jpg/04/44/43/86/360_F_444438681_2rUvqAOQZ3BwxEHlfrEneWpd26XFrt4P.jpg', 'Andhra mess', '70', '1'),
(2, 'curd rice', 'https://www.vegrecipesofindia.com/wp-content/uploads/2016/07/curd-rice-2.jpg', 'gula restaurant ', '45', '2'),
(3, 'pasta', 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?cs=srgb&dl=pexels-enginakyurt-1437267.jpg&fm=jpg', 'Sankar catering', '80', '3'),
(4, 'dosa', 'https://t4.ftcdn.net/jpg/01/89/45/21/360_F_189452136_gJBG4ZRXY9NnZZCGV2s8QhObmpeerJTO.jpg', 'foodie hub', '40', '4'),
(5, 'idly', 'https://cdn.pixabay.com/photo/2017/06/16/11/38/breakfast-2408818_1280.jpg', 'food bites', '30', '5'),
(6, 'lemon rice', 'https://www.vegrecipesofindia.com/wp-content/uploads/2020/12/lemon-rice-2-500x375.jpg', 'engineers cafe', '45', '6'),
(7, 'veg meals', 'https://content.jdmagicbox.com/comp/bhubaneshwar/k2/0674px674.x674.220401013250.w2k2/catalogue/pure-veg-meals-by-lunchbox-chandrasekharpur-bhubaneshwar-pure-veg-restaurants-rsotuaxg9y.jpg', 'freshly made', '80', '7'),
(8, 'maggi', 'https://t4.ftcdn.net/jpg/03/67/31/89/360_F_367318954_4ttRBcmaa22q30OsJRqflxgCOd9dB9t6.jpg', 'Sree caters', '45', '8'),
(9, 'veg fried rice', 'https://salasdaily.com/cdn/shop/products/VegFriedRice_460x@2x.jpg?v=1637640487', 'E Square', '70', '9'),
(10, 'sambar rice', 'https://media.istockphoto.com/id/1255854695/photo/sambhar-rice.jpg?s=612x612&w=0&k=20&c=z0Hy9IhGtPncgrD8vMm7QhVr0BaZFPD76h_O2KYLU64=', 'arabian grill', '45', '10'),
(11, 'tomato rice', 'https://media.istockphoto.com/id/609613988/photo/indian-food-rice-pilaf.jpg?s=612x612&w=0&k=20&c=x8OATGQRPXdE0WxMuCsIUeUFe32nngA_sYLwPhn2YW8=', 'kasthuri ', '45', '11');

-- --------------------------------------------------------

--
-- Table structure for table `vegRest`
--

CREATE TABLE `vegRest` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `restname` varchar(255) NOT NULL DEFAULT '""',
  `location` varchar(255) NOT NULL DEFAULT '""',
  `foodtype` varchar(255) NOT NULL DEFAULT '""',
  `price` varchar(255) NOT NULL DEFAULT '""',
  `comment` varchar(255) NOT NULL DEFAULT '""',
  `rating` int(255) NOT NULL DEFAULT 0,
  `foodname` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vegRest`
--

INSERT INTO `vegRest` (`id`, `image`, `restname`, `location`, `foodtype`, `price`, `comment`, `rating`, `foodname`) VALUES
(1, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOODIE HUB', 'SEC Campus', 'VEG', '', 'nice', 2, ''),
(2, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FOOD BITES', 'SEC Campus', 'VEG', '', 'delicious', 0, ''),
(5, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'ENGINEERS CAFE', 'SMCH Campus', 'VEG', '\"\"', 'must try', 0, '\"\"'),
(6, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'GULA RESTAURANTS', 'SSE Campus', 'VEG', '\"\"', 'good', 0, '\"\"'),
(7, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'FRESHLY MADE', 'SSE Campus', 'VEG', '\"\"', 'Not bad...try for once', 0, '\"\"'),
(8, 'https://cdn-icons-png.freepik.com/512/9832/9832848.png', 'MALAN DHABA', 'SSE Campus', 'VEG', '\"\"', 'Must try', 0, '\"\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addComments`
--
ALTER TABLE `addComments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmenu`
--
ALTER TABLE `adminmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_signup`
--
ALTER TABLE `admin_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_amount`
--
ALTER TABLE `available_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changePassword`
--
ALTER TABLE `changePassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemlist`
--
ALTER TABLE `itemlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `juicelist`
--
ALTER TABLE `juicelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `juiceRest`
--
ALTER TABLE `juiceRest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_of_rest`
--
ALTER TABLE `list_of_rest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonVeglist`
--
ALTER TABLE `nonVeglist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonVegRest`
--
ALTER TABLE `nonVegRest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderStatus`
--
ALTER TABLE `orderStatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_detail`
--
ALTER TABLE `owner_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_signup`
--
ALTER TABLE `owner_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payOrder`
--
ALTER TABLE `payOrder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `todaysmenu`
--
ALTER TABLE `todaysmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updatemenu`
--
ALTER TABLE `updatemenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersList`
--
ALTER TABLE `usersList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegList`
--
ALTER TABLE `vegList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegRest`
--
ALTER TABLE `vegRest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addComments`
--
ALTER TABLE `addComments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminmenu`
--
ALTER TABLE `adminmenu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_signup`
--
ALTER TABLE `admin_signup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `available_amount`
--
ALTER TABLE `available_amount`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `changePassword`
--
ALTER TABLE `changePassword`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itemlist`
--
ALTER TABLE `itemlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `juicelist`
--
ALTER TABLE `juicelist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `juiceRest`
--
ALTER TABLE `juiceRest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `list_of_rest`
--
ALTER TABLE `list_of_rest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nonVeglist`
--
ALTER TABLE `nonVeglist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nonVegRest`
--
ALTER TABLE `nonVegRest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderStatus`
--
ALTER TABLE `orderStatus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owner_detail`
--
ALTER TABLE `owner_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owner_signup`
--
ALTER TABLE `owner_signup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payOrder`
--
ALTER TABLE `payOrder`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todaysmenu`
--
ALTER TABLE `todaysmenu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `updatemenu`
--
ALTER TABLE `updatemenu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usersList`
--
ALTER TABLE `usersList`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_signup`
--
ALTER TABLE `user_signup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vegList`
--
ALTER TABLE `vegList`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vegRest`
--
ALTER TABLE `vegRest`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
