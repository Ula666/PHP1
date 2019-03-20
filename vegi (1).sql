-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2019 at 01:47 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegi`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `preparation` text NOT NULL,
  `cookTime` time NOT NULL,
  `img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `category`, `ingredients`, `preparation`, `cookTime`, `img`) VALUES
(1, 'Mac & Cheese', 'Vegetarian', '-Aenean in risus tempor. -Praesent vel justo luctus magna vestibulum dictum. -Nam eleifend sem vitae nisl. -Fusce eu nulla ut magna auctor dapibus. -Nam eleifend', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nec auctor odio. Sed sit amet tempor metus. Suspendisse vulputate odio non urna scelerisque volutpat. Etiam molestie vestibulum odio vitae aliquet. Ut laoreet mauris in nulla dapibus consectetur. Suspendisse at commodo lectus. Maecenas aliquam tristique neque vitae feugiat.', '00:30:00', 'test.jpg'),
(2, 'Pad Thai', 'Meat', '-Quisque \r\n-Sodales orci vel sapien\r\n-Auctor pulvinar.\r\n-Nulla vel sem sed arcu lacinia fringilla \r\n-Sed eu augue vehicula\r\n-Pulvinar felis in\r\n-Sed nec neque interdum\r\n-Sed nec nulla ornare\r\n', 'Nam sodales orci rhoncus arcu imperdiet viverra. Fusce lacus erat, luctus eget elit sed, cursus finibus est. Nulla facilisi. Suspendisse mollis orci vitae lectus aliquam consequat. In bibendum, risus ut maximus laoreet, purus orci vehicula odio, scelerisque blandit erat dolor non quam. Ut lobortis dictum dignissim. Aenean et quam efficitur, pharetra dolor in, volutpat dolor. Aenean est odio, scelerisque eget consectetur sit amet, congue sed orci.', '01:00:00', 'test.jpg'),
(7, 'Risotto', 'Vegan', '-Lorem ipsum \r\n-Vivamus vel odio eleifend dui.\r\n-Integer ornare enim id finibus sodales.\r\n-Aenean consequat ligula blandit in vitae sem.\r\n-Fusce cursus risus ', 'Mauris erat libero, feugiat quis est ac, ultricies mattis diam. In congue, felis aliquam elementum scelerisque, tortor ipsum pulvinar risus, vel condimentum lacus elit eu sapien. Sed vel ante auctor, eleifend massa interdum, accumsan ex. Suspendisse potenti. In dictum quam dui, vitae dignissim eros fringilla a. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas finibus orci ipsum, vitae faucibus sem tempus dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam viverra malesuada massa, nec eleifend lacus ultricies sed. Sed mattis eu tellus ut vulputate. Vivamus ut imperdiet nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '01:30:00', 'test.jpg'),
(8, 'Spaghetti Bolognese', 'Meat', '-Cras sit amet urna id leo \r\n-Duis eget eros sed magna interdum\r\n-Aenean nec nunc non\r\n-Praesent pulvinar', 'Duis nisi ex, cursus non laoreet eu, maximus non augue. Etiam a mi augue. Aliquam faucibus pellentesque tortor id vulputate. Praesent lobortis bibendum semper. Donec tincidunt velit sit amet enim tristique tincidunt. Donec vel arcu ut sapien accumsan vulputate. Sed gravida bibendum felis, in iaculis justo viverra id. Nam vehicula vestibulum lectus a rutrum. Aliquam sit amet ligula non lectus convallis bibendum vulputate et justo.', '01:15:00', 'test.jpg'),
(9, 'Pizza', 'Vegetarian', '-Duis id lorem sit amet tortor posuere\r\n-Nunc varius urna ultricies, congue enim\r\n-Integer gravida odio et sollicitudin elementum.\r\n-Suspendisse rhoncus lorem eget ligula ultricies sodales', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget dignissim nisi. Nam in lacus at libero accumsan pulvinar. Duis at maximus nisi, a vehicula urna. Sed porta leo orci, in euismod sapien dignissim eu. Suspendisse finibus elit ac est dignissim semper. Maecenas blandit ac enim ut tristique. Curabitur vel magna consequat, egestas justo id, semper enim. Quisque vulputate varius augue, ac bibendum ligula tempor in. Etiam efficitur vel enim eu egestas. Nulla condimentum sem eu finibus gravida. Phasellus lacinia id sapien sed convallis. Quisque semper dui sit amet odio sodales tempor. Vivamus quis velit in ante tempor consequat. Ut imperdiet dignissim turpis, sollicitudin molestie lorem rhoncus vel.', '00:25:00', 'test.jpg'),
(10, 'Chicken Soup', 'Meat', '-Cras sit amet urna id leo interdum convallis eu vitae elit.\r\n-Duis eget eros sed magna interdum fermentum sit amet vel orci.\r\n-Aenean nec nunc non diam pharetra consectetur eu sed nunc.\r\n-Praesent pulvinar elit eget tempor posuere.', 'In sed tellus quis nunc aliquam posuere id aliquam augue. Integer vel justo porttitor tellus laoreet convallis. Pellentesque feugiat feugiat purus. Mauris in justo convallis, lobortis odio a, malesuada justo. Etiam semper, nisi aliquet accumsan accumsan, justo turpis elementum orci, non malesuada felis ante sit amet lacus. Morbi eu sem nulla. Sed sit amet rutrum tellus. Suspendisse purus augue, lacinia sed lacus ac, egestas lobortis libero. Maecenas maximus mauris quis velit egestas consequat. Mauris consequat sodales tellus sit amet feugiat. Morbi vitae velit imperdiet, sollicitudin lacus at, accumsan arcu. Aliquam imperdiet faucibus dolor.', '01:10:00', 'test.jpg'),
(11, 'Sweet Pepper Fajitas', 'Vegan', '-Cras sit amet urna id leo interdum convallis eu vitae elit.\r\n-Duis eget eros sed magna interdum fermentum sit amet vel orci.\r\n-Aenean nec nunc non diam pharetra consectetur eu sed nunc.\r\n-Praesent pulvinar elit eget tempor posuere.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget dignissim nisi. Nam in lacus at libero accumsan pulvinar. Duis at maximus nisi, a vehicula urna. Sed porta leo orci, in euismod sapien dignissim eu. Suspendisse finibus elit ac est dignissim semper. Maecenas blandit ac enim ut tristique. Curabitur vel magna consequat, egestas justo id, semper enim. Quisque vulputate varius augue, ac bibendum ligula tempor in. Etiam efficitur vel enim eu egestas. Nulla condimentum sem eu finibus gravida. Phasellus lacinia id sapien sed convallis. Quisque semper dui sit amet odio sodales tempor. Vivamus quis velit in ante tempor consequat. Ut imperdiet dignissim turpis, sollicitudin molestie lorem rhoncus vel.', '00:50:00', 'test.jpg'),
(12, 'Spanish Tapas', 'Vegetarian', '-Duis id lorem sit amet tortor posuere luctus eget ac tortor.\r\n-Nunc varius urna ultricies, congue enim non, lacinia mi.\r\n-Integer gravida odio et sollicitudin elementum.\r\n-Suspendisse rhoncus lorem eget ligula ultricies sodales.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget dignissim nisi. Nam in lacus at libero accumsan pulvinar. Duis at maximus nisi, a vehicula urna. Sed porta leo orci, in euismod sapien dignissim eu. Suspendisse finibus elit ac est dignissim semper. Maecenas blandit ac enim ut tristique. Curabitur vel magna consequat, egestas justo id, semper enim. Quisque vulputate varius augue, ac bibendum ligula tempor in. Etiam efficitur vel enim eu egestas. Nulla condimentum sem eu finibus gravida. Phasellus lacinia id sapien sed convallis. Quisque semper dui sit amet odio sodales tempor. Vivamus quis velit in ante tempor consequat. Ut imperdiet dignissim turpis, sollicitudin molestie lorem rhoncus vel.', '00:45:00', 'test.jpg'),
(13, 'Thai Red Curry', 'Meat', '-Duis id lorem sit amet tortor posuere\r\n-Nunc varius urna ultricies\r\n-Integer gravida odio \r\n-Suspendisse rhoncus lorem', 'In sed tellus quis nunc aliquam posuere id aliquam augue. Integer vel justo porttitor tellus laoreet convallis. Pellentesque feugiat feugiat purus. Mauris in justo convallis, lobortis odio a, malesuada justo. Etiam semper, nisi aliquet accumsan accumsan, justo turpis elementum orci, non malesuada felis ante sit amet lacus. Morbi eu sem nulla. Sed sit amet rutrum tellus. Suspendisse purus augue, lacinia sed lacus ac, egestas lobortis libero. Maecenas maximus mauris quis velit egestas consequat. Mauris consequat sodales tellus sit amet feugiat. Morbi vitae velit imperdiet, sollicitudin lacus at, accumsan arcu. Aliquam imperdiet faucibus dolor.', '01:45:00', 'test.jpg'),
(14, 'Fish and Chips', 'Meat', '-Duis id lorem sit amet tortor posuere\r\n-Nunc varius urna ultricies\r\n-Integer gravida odio \r\n-Suspendisse rhoncus lorem', 'Praesent odio urna, sollicitudin sodales magna ac, egestas hendrerit lorem. Pellentesque molestie nunc elit, consectetur feugiat libero lobortis in. Sed sit amet leo lacinia odio faucibus condimentum et eu ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas nibh dolor, fermentum in neque in, viverra ullamcorper justo. Cras molestie libero eu mattis porta. Sed eu mauris scelerisque, tempor tortor non, consectetur ligula. In feugiat sem a lacus condimentum dapibus.', '00:55:00', 'test.jpg'),
(15, 'Tacos', 'Meat', '-Duis id lorem sit amet tortor posuere\r\n-Nunc varius urna ultricies\r\n-Integer gravida odio \r\n-Suspendisse rhoncus lorem', 'Praesent odio urna, sollicitudin sodales magna ac, egestas hendrerit lorem. Pellentesque molestie nunc elit, consectetur feugiat libero lobortis in. Sed sit amet leo lacinia odio faucibus condimentum et eu ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas nibh dolor, fermentum in neque in, viverra ullamcorper justo. Cras molestie libero eu mattis porta. Sed eu mauris scelerisque, tempor tortor non, consectetur ligula. In feugiat sem a lacus condimentum dapibus.', '00:35:00', 'test.jpg'),
(16, 'Guacamole Potato Salad', 'Vegan', '-Duis id lorem sit amet tortor posuere\r\n-Nunc varius urna ultricies\r\n-Integer gravida odio \r\n-Suspendisse rhoncus lorem', 'Praesent odio urna, sollicitudin sodales magna ac, egestas hendrerit lorem. Pellentesque molestie nunc elit, consectetur feugiat libero lobortis in. Sed sit amet leo lacinia odio faucibus condimentum et eu ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas nibh dolor, fermentum in neque in, viverra ullamcorper justo. Cras molestie libero eu mattis porta. Sed eu mauris scelerisque, tempor tortor non, consectetur ligula. In feugiat sem a lacus condimentum dapibus.', '01:10:00', 'test.jpg'),
(17, 'Hoi Sin Pancakes', 'Vegetarian', '-Sed sit amet quam non leo tempus\r\n-Sed vel nibh sagittis, facilisis lorem \r\n-Sed sollicitudin velit \r\n-Nunc vitae dui sit amet ', 'Praesent odio urna, sollicitudin sodales magna ac, egestas hendrerit lorem. Pellentesque molestie nunc elit, consectetur feugiat libero lobortis in. Sed sit amet leo lacinia odio faucibus condimentum et eu ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas nibh dolor, fermentum in neque in, viverra ullamcorper justo. Cras molestie libero eu mattis porta. Sed eu mauris scelerisque, tempor tortor non, consectetur ligula. In feugiat sem a lacus condimentum dapibus.', '00:45:00', 'test.jpg'),
(18, 'Roast Vegetables', 'Vegan', '-Sed sit amet quam non leo tempus imperdiet at eu magna.\r\n-Sed vel nibh sagittis, facilisis lorem ac, eleifend leo.\r\n-Sed sollicitudin velit non ipsum finibus auctor.\r\n-Nunc vitae dui sit amet libero bibendum mollis at eget lorem.', 'Fusce sed neque tincidunt, gravida nulla eu, egestas leo. Etiam hendrerit magna mauris, eu molestie ante varius id. In maximus at lorem in ornare. Nulla facilisi. Suspendisse quam massa, imperdiet ultricies urna tincidunt, tincidunt tincidunt leo. Proin tincidunt euismod quam. Fusce nulla ex, consequat sit amet lectus ac, congue placerat lorem. Maecenas vestibulum nulla quis tellus consectetur porta. In porta sem dolor, ac dictum lorem ullamcorper pulvinar. Donec at enim diam. Etiam eget purus justo. Nam finibus lorem at sagittis convallis. Nunc eu dictum erat. Curabitur imperdiet iaculis aliquam. Mauris sollicitudin vestibulum sem, imperdiet finibus ex dictum eget.', '00:40:00', 'test.jpg'),
(19, 'Vegetable Stir Fry', 'Vegan', '-Vivamus ut ipsum et sapien congue tristique nec eu dui.\r\n-Donec ut lectus a velit mollis auctor.\r\n-Phasellus tempus lectus sed cursus aliquam.\r\n-Praesent porttitor arcu at tempor sollicitudin.\r\n-Aenean id leo ac orci gravida ultricies.', 'In a mi scelerisque, lobortis erat vel, ultricies elit. Fusce semper arcu diam, vitae aliquet felis lacinia vel. In hac habitasse platea dictumst. Nulla ornare, augue quis feugiat faucibus, massa arcu eleifend neque, vitae lacinia neque ligula a ligula. Vivamus faucibus, nisi non auctor pharetra, lectus enim rhoncus neque, ut maximus ex nisi a ligula. Vestibulum a bibendum orci. Ut elementum lectus at neque pulvinar, in consectetur velit egestas. Morbi aliquam convallis urna, at lacinia eros gravida elementum. Ut suscipit feugiat lorem ut lobortis. Aenean eu justo ullamcorper, dapibus augue eu, sollicitudin ex. Maecenas at nisi et quam viverra congue. Donec cursus venenatis quam, quis efficitur diam fringilla bibendum. Aliquam tempus nibh vitae urna convallis, eget porta tellus vehicula. Pellentesque libero nisi, rhoncus id odio eget, venenatis rhoncus magna.', '01:20:00', 'test.jpg'),
(20, 'Pumpkin Soup', 'Vegan', '-Sed volutpat sem accumsan justo pellentesque, ac sodales augue rhoncus.\r\n-Praesent ultrices est nec quam interdum, sed viverra ante pharetra.\r\n-Nulla ut nisi eu libero sagittis tempus.\r\n-Donec quis elit sit amet quam sollicitudin tristique.', 'Donec a sem dignissim, sagittis ante sit amet, eleifend nisl. Nunc non efficitur odio. Donec eget urna et neque porta facilisis. Donec ut risus vel erat vehicula sagittis vitae in nisi. Curabitur porta elementum sapien, pharetra dictum diam. Proin luctus viverra sapien, non accumsan velit dignissim in. Integer tellus tortor, laoreet commodo accumsan sit amet, facilisis vel nisi. Pellentesque vitae neque lacus. Sed ornare id felis vitae suscipit. Vivamus sagittis magna turpis, ut interdum dolor tempor eget. Aenean volutpat rutrum metus at tempus. In in orci lacus. Sed a neque semper dui sollicitudin placerat.', '01:25:00', 'test.jpg'),
(21, 'Seafood Pasta', 'Meat', '-Lorem ipsum dolor.\r\n-Vivamus vel.\r\n-Integer ornare enim id finibus sodales.\r\n-Aenean \r\n-Fusce cursus risus.', 'Mauris interdum sit amet quam at eleifend. Donec convallis mollis magna, eleifend ultrices mi rhoncus id. Pellentesque vitae sem suscipit, blandit eros non, facilisis ligula. Praesent magna magna, placerat a urna non, venenatis efficitur ligula. Quisque sed diam ut massa ultrices elementum in eget dolor. Sed velit turpis, tempor id malesuada ut, rhoncus nec mi. Morbi in sem ornare, hendrerit risus rutrum, semper nisl. Sed nec sem neque.', '00:40:00', 'test.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`) VALUES
(8, 'Ula', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0000-00-00 00:00:00'),
(9, 'Ula', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0000-00-00 00:00:00'),
(10, 'Jan', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0000-00-00 00:00:00'),
(11, 'Ann', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `weeklysets`
--

CREATE TABLE `weeklysets` (
  `wid` int(10) NOT NULL,
  `f1` int(10) NOT NULL,
  `f2` int(10) NOT NULL,
  `f3` int(10) NOT NULL,
  `f4` int(10) NOT NULL,
  `f5` int(10) NOT NULL,
  `live` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weeklysets`
--

INSERT INTO `weeklysets` (`wid`, `f1`, `f2`, `f3`, `f4`, `f5`, `live`) VALUES
(1, 8, 9, 1, 10, 11, 1),
(2, 16, 15, 2, 17, 7, 0),
(3, 21, 20, 9, 18, 12, 0),
(4, 17, 15, 13, 1, 8, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weeklysets`
--
ALTER TABLE `weeklysets`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `weeklysets`
--
ALTER TABLE `weeklysets`
  MODIFY `wid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
