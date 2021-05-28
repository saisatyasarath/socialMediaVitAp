-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 07:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `uid`, `pid`, `description`) VALUES
(1, 8, 14, 'Hey'),
(2, 8, 14, 'This is sarath'),
(3, 12, 14, 'heyy this is meghana'),
(4, 8, 14, 'woww'),
(5, 8, 14, 'Checking'),
(6, 8, 14, 'checking'),
(7, 8, 13, 'Haha'),
(8, 8, 13, 'What?'),
(9, 8, 13, ''),
(10, 8, 12, 'Hey hey'),
(11, 12, 12, 'Hii chintu annayya'),
(12, 8, 14, 'Haha'),
(13, 12, 14, 'Don\'t laugh'),
(14, 8, 14, 'OK OK'),
(15, 12, 14, 'Yup'),
(16, 8, 15, 'Haha'),
(17, 8, 12, 'haha'),
(18, 8, 27, 'Hii everyone'),
(19, 20, 27, 'Hii');

-- --------------------------------------------------------

--
-- Table structure for table `commentsfound`
--

CREATE TABLE `commentsfound` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentsfound`
--

INSERT INTO `commentsfound` (`commentid`, `uid`, `pid`, `description`) VALUES
(0, 12, 1, 'Testing'),
(0, 8, 6, 'Its mine');

-- --------------------------------------------------------

--
-- Table structure for table `commentslost`
--

CREATE TABLE `commentslost` (
  `commentid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commentslost`
--

INSERT INTO `commentslost` (`commentid`, `uid`, `pid`, `description`) VALUES
(0, 8, 7, 'I havent found it yet!!'),
(0, 8, 7, 'Anyone respond'),
(0, 12, 10, 'I found it!!'),
(0, 11, 11, 'I saw a bag near steps few minutes back!!');

-- --------------------------------------------------------

--
-- Table structure for table `found`
--

CREATE TABLE `found` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `found`
--

INSERT INTO `found` (`id`, `uid`, `name`, `description`, `image`, `created_at`) VALUES
(3, 15, 'bag', 'I found this bag. Contact me', 'upload/2021_05_26 09_41_32am 15 download.jfif', '1622014892'),
(4, 15, 'water bottle', 'If this is anyone\'s bottle..Contact me.', 'upload/2021_05_26 09_42_18am 15 download (1).jfif', '1622014938'),
(6, 8, 'anaonyous', 'I found something', 'Hello', '');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user1`, `user2`) VALUES
(1, 8, 11),
(2, 11, 10),
(3, 11, 14),
(4, 14, 15),
(5, 11, 15),
(6, 11, 12),
(7, 14, 12),
(8, 15, 12),
(9, 11, 13),
(10, 12, 13),
(11, 14, 13),
(12, 15, 13),
(13, 12, 8),
(14, 14, 8),
(16, 15, 8),
(17, 16, 15),
(18, 16, 8),
(19, 18, 8),
(20, 12, 10),
(21, 14, 10),
(22, 15, 10),
(23, 16, 10),
(24, 10, 8),
(26, 16, 12),
(28, 20, 10),
(29, 20, 12),
(30, 20, 15),
(31, 20, 11),
(32, 20, 8);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `sender`, `receiver`) VALUES
(14, 11, 5),
(34, 16, 11),
(37, 16, 14),
(38, 16, 13),
(40, 17, 10),
(41, 17, 11),
(42, 17, 8),
(43, 17, 12),
(44, 17, 15),
(45, 17, 14),
(46, 17, 13),
(47, 17, 16),
(49, 18, 11),
(50, 18, 10),
(51, 18, 12),
(52, 18, 14),
(57, 8, 13),
(61, 20, 19);

-- --------------------------------------------------------

--
-- Table structure for table `likefounds`
--

CREATE TABLE `likefounds` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likefounds`
--

INSERT INTO `likefounds` (`lid`, `pid`, `uid`) VALUES
(0, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likelosts`
--

CREATE TABLE `likelosts` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likelosts`
--

INSERT INTO `likelosts` (`lid`, `pid`, `uid`) VALUES
(0, 9, 11),
(0, 7, 11),
(0, 10, 11),
(0, 10, 12),
(0, 9, 12),
(0, 7, 12),
(0, 11, 12),
(0, 11, 11),
(0, 11, 8),
(0, 10, 8),
(0, 9, 8),
(0, 7, 8),
(0, 9, 15),
(0, 15, 8);

-- --------------------------------------------------------

--
-- Table structure for table `likeposts`
--

CREATE TABLE `likeposts` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likeposts`
--

INSERT INTO `likeposts` (`lid`, `pid`, `uid`) VALUES
(130, 13, 12),
(132, 16, 12),
(140, 14, 8),
(146, 12, 8),
(149, 17, 8),
(151, 18, 8),
(153, 19, 8),
(154, 13, 8),
(155, 15, 8),
(156, 20, 20),
(159, 27, 20);

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(600) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lost`
--

INSERT INTO `lost` (`id`, `uid`, `name`, `description`, `image`, `created_at`) VALUES
(7, 8, 'id card', 'I lost my id card.. If anyone finds it inform me', 'Hello', ''),
(10, 11, 'watch', 'I lost my watch in the ground,If anyone finds please inform me.', 'upload/2021_05_25 17_25_06pm 11 thumb.jfif', '1621956306'),
(11, 12, 'bag', 'I lost my bag. I forgot it near library.', 'Hello', ''),
(14, 15, 'ring', 'I lost this ring', 'upload/2021_05_26 09_40_25am 15 images.jfif', '1622014825'),
(15, 8, 'gold chain', 'I lost this gold Chain', 'upload/2021_05_26 12_11_13pm 8 Darcey-Gold-Chain.jpg', '1622023873'),
(16, 8, 'bag', 'I lost my bag near ground.If anyone finds it please inform', 'upload/2021_05_26 14_20_54pm 8 download.jfif', '1622031654');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(12, '8', 'upload/chintu.jpg', 'She proposed me today!!!!', '1616654338'),
(13, '11', 'upload/santhan.PNG', 'Hi , I am Santhan and a topper', '1620643103'),
(14, '15', 'upload/var.PNG', 'I am god and Devil', '1620976744'),
(15, '12', 'upload/387645.jpg', 'I love nature', '1620977119'),
(16, '13', 'upload/OkeluY.jpg', 'Its raining!!!', '1620977312'),
(17, '8', 'Hello', 'Hii, I am sarath', '1621969366'),
(18, '8', 'upload/2021_05_25 21_05_02pm 8 kishore.PNG', 'Just for fun', '1621969502'),
(19, '8', 'upload/2021_05_26 06_25_10am 8 WIN_20210526_09_48_30_Pro.jpg', 'Heyyy, My new pic!!', '1622003110'),
(20, '20', 'Hello', 'Hi friends, I just joined this mediaa...', '1622013767'),
(21, '11', 'upload/2021_05_26 09_46_57am 11 OkeluY.jpg', 'Heyy, Just wanted to share that I got this..', '1622015217'),
(22, '8', 'upload/2021_05_26 10_24_07am 8 krish.PNG', 'with MOM', '1622017447'),
(24, '8', 'upload/2021_05_26 10_27_15am 8 64405508_467673843995285_3067242068280606720_n.jpg', 'Heyyyy', '1622017635'),
(25, '20', 'upload/2021_05_26 12_38_36pm 20 sarath.jpg', 'good evening', '1622025516'),
(26, '8', 'Hello', 'Good evening evryone', '1622031348');

-- --------------------------------------------------------

--
-- Table structure for table `saveposts`
--

CREATE TABLE `saveposts` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saveposts`
--

INSERT INTO `saveposts` (`id`, `uid`, `pid`) VALUES
(4, 8, 13),
(6, 8, 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `branch` varchar(40) NOT NULL DEFAULT 'CSE',
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `birthday`, `gender`, `number`, `branch`, `email`, `password`, `profile_picture`, `cover_picture`) VALUES
(8, 'SatyaNarayana', 'Gudimetla', 'sarath143', '23/10/1999', 'Male', '8790360069', 'CSE', 'sarathchandhra365@gmail.com', '$2y$10$ft04szMy1dNSiX4TbjQt3uNNnePembCpZ2Bry5TPauiTMJZklUjHa', 'upload/2021_05_20 10_12_41am 8 IMG_20210512_154856.jpg', 'upload/  8 Screenshot (113).png'),
(10, 'banti', 'karri', 'banti', '23/10/1999', 'Male', '7903600691', 'MECH', 'banti@gmail.com', '$2y$10$O8kwJ61lSX6GRP1XxdjZRe776GavPJIaZAkJg3sF.qE1LwaDqDOyS', 'upload/OkeluY.jpg', ''),
(11, 'Santhan', 'Edara', 'santhan', '24/03/1999', 'Male', '7674967510', 'ECE', 'edarasanthan.1999@gmail.com', '$2y$10$W2UPyzjRhFcD6tNCjJ.pduUp//M.va6QBJU5XOzrw/5UIjFJB4B7e', 'upload/santhan.PNG', 'upload/  11 andromeda-galaxy-wallpaper-hd-02.jpg'),
(12, 'Meghana', 'Karri', 'meghana', '21/10/2002', 'Female', '9585647563', 'CSE', 'meghana@gmail.com', '$2y$10$HaFCQx/SKPWcb2ErbpgmduwccEWTTRsSzaYo4fTYy7/tYw2htuW7S', 'upload/2021_05_14 09_24_49am 12 megha.PNG', 'upload/  12 387645.jpg'),
(13, 'krishnaveni', 'gudimetla', 'krishve', '14/06/1880', 'Female', '9704503658', 'CIVIL', 'gkvreddy3658@gmail.com', '$2y$10$ab.ZsfnO1ANuLscrrqAD2uGCYbBpLoToy/5mXuLvpM.pjUBIY9h2q', 'upload/2021_05_14 09_27_42am 13 krish.PNG', 'upload/  13 OkeluY.jpg'),
(14, 'Keerthana', 'Achalla', 'keerthi', '08/10/1999', 'Female', '8790857001', 'CSE', 'keerthicherry999@gmail.com', '$2y$10$7t7K7xRChB9f2O/w4f0AdumGfzDGjdjgbaHufM3YatnkkoK5s57gi', 'upload/2021_05_14 08_44_27am 14 keer.PNG', 'upload/  14   8 Screenshot (113).png'),
(15, 'Varshith', 'Gummadi', 'varsit', '04/06/1999', 'Male', '4561237895', 'MECH', 'varshithgummadi10@gmail.com', '$2y$10$eg.xZ4HFFxiB1nemwtZFBehdDpmBmGULIx2KIwBQUrosr.lWaJHkS', 'upload/2021_05_14 09_18_29am 15 var.PNG', 'upload/  15 HD-Galaxy-Wallpapers-Free-Download-115.jpg'),
(17, 'ganesh', 'perumalla', 'gannu', '04/06/1999', 'Male', '8795641235', 'MECH', 'pthushara2001@gmail.com', '$2y$10$EDgzP1yAcNWOSbIpwqokQOY4DutPmLW7RZAQpQhtgCanJfzX0AL1a', 'upload/2021_05_21 19_16_54pm 17 ganesh.PNG', 'upload/  17 HD-Galaxy-Wallpapers-Free-Download-115.jpg'),
(18, 'balakishore', 'kongara', 'nenuchesta', '21/01/2000', 'Male', '9542008445', 'CSE', 'kongabalakishore@gmail.com', '$2y$10$zNZzr6s8ZmxfWAhc8z1EX.4rAFBSgJDbExEQj21J/Us29mewEClw2', 'upload/2021_05_21 19_36_44pm 18 kishore.PNG', 'upload/  18 OkeluY.jpg'),
(19, 'thanu', 'thamanampudi', 'thanu', '04/09/2004', 'Female', '1234567890', 'CIVIL', 'thanu@gmail.com', '$2y$10$/g3U4QBC6v0ojSz6.mStR.q5i3wl/iAvdqiQy12OX..Vs9KdgDHfO', 'upload/2021_05_23 17_31_52pm 19 bg12.jpg', 'upload/  19 andromeda-galaxy-wallpaper-hd-02.jpg'),
(20, 'Sai ', 'Reddy', 'sai', '24/10/1999', 'Male', '9542008445', 'CSE', 'scssreddy.gudimetla@vitap.ac.in', '$2y$10$Y.kxtCw60eG0v6n/sDe8neHaGff4fYshYu8Qm9mQ5MsMDzF8klJpO', 'upload/2021_05_26 09_22_23am 20 sarath.jpg', 'upload/2021_05_26 09_22_13am 20 pexels-photo-949587.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `found`
--
ALTER TABLE `found`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likeposts`
--
ALTER TABLE `likeposts`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lost`
--
ALTER TABLE `lost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `saveposts`
--
ALTER TABLE `saveposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `found`
--
ALTER TABLE `found`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `likeposts`
--
ALTER TABLE `likeposts`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `lost`
--
ALTER TABLE `lost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `saveposts`
--
ALTER TABLE `saveposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
