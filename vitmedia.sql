-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 09:04 AM
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
  `comment_id` int(100) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content_comment` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES
(3, '5', '2', 'Mark Anthony Monaya', 'cute ah', 'upload/6.jpg', ''),
(4, '1', '2', 'Mark Anthony Monaya', 'cute pre ah .ikaw na gd na..', 'upload/6.jpg', ''),
(5, '2', '2', 'Mark Anthony Monaya', 'bkud tnie qng nka upod ka pre..', 'upload/6.jpg', ''),
(6, '2', '1', 'Rolyn Jasper Demerin', 'mayu pre buh .nd mn b puedi pre .ok lang na ah', 'upload/rolyn.jpg', ''),
(7, '2', '1', 'Rolyn Jasper Demerin', 'hehehe. :d', 'upload/rolyn.jpg', ''),
(8, '1', '1', 'Rolyn Jasper Demerin', 'wahaha . ayus pre ah', 'upload/rolyn.jpg', ''),
(11, '3', '2', 'Mark Anthony Monaya', 'pra mai ma comment mn sa pp mu..', 'upload/6.jpg', ''),
(12, '3', '2', 'Mark Anthony Monaya', 'pra mai ma comment mn sa pp mu..', 'upload/6.jpg', ''),
(13, '7', '2', 'Mark Anthony Monaya', 'wahaha', 'upload/6.jpg', ''),
(14, '7', '2', 'Mark Anthony Monaya', 'dkfjfj', 'upload/6.jpg', ''),
(15, '7', '2', 'Mark Anthony Monaya', 'ok na?', 'upload/6.jpg', '1413322175'),
(16, '8', '2', 'Mark Anthony Monaya', 'ok mn pre?', 'upload/6.jpg', '1413322623'),
(18, '9', '2', 'Mark Anthony Monaya', 'kk', 'upload/6.jpg', '1413323909'),
(19, '9', '2', 'Mark Anthony Monaya', 'kjbhkj', 'upload/6.jpg', '1413323915'),
(21, '11', '5', 'janobe sourcecode', 'sad', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605570528'),
(22, '11', '5', 'janobe sourcecode', 'asd', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605570531'),
(23, '10', '5', 'janobe sourcecode', 'sad', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605575090'),
(24, '9', '1', 'Rolyn Jasper Demerin', 'What?', 'upload/rolyn.jpg', '1615823703');

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
(2, 10, 8),
(3, 8, 11);

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
(3, 8, 1),
(5, 8, 4),
(7, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES
(1, 'upload/10355746_10201322838071324_4012919269830340563_n.jpg', '1', '2014-10-13 01:11:07'),
(2, 'upload/1554634_934733823220509_3613827536046659520_n.jpg', '3', '2014-10-13 01:12:00'),
(3, 'upload/10009346_637081149680216_1873786828_n.jpg', '3', '2014-10-13 01:22:41'),
(4, 'upload/10409409_812993662052447_8357350814467004075_n.jpg', '3', '2014-10-13 01:28:18'),
(5, 'upload/1391735_10201428940032137_674307711_n.jpg', '3', '2014-10-13 01:28:23'),
(6, 'upload/988842_777445008951996_1989282849_n.jpg', '3', '2014-10-13 01:51:59'),
(7, 'upload/2.jpg', '1', '2014-10-13 06:00:08'),
(8, 'upload/10.jpg', '2', '2014-10-14 07:34:19'),
(9, 'upload/covernirolyn.jpg', '1', '2014-10-14 18:51:36'),
(10, 'upload/covernimark.jpg', '2', '2014-10-14 18:53:51');

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
(1, '1', 'upload/postnirolyn.jpg', 'cute mark ai?', ''),
(2, '2', 'upload/boracaycmark.jpg', 'sa boracay kmi n pre...wahahhaa.. @Rolyn', ''),
(3, '1', 'upload/rolyn.jpg', '...ayus ai? pp qn bla', ''),
(9, '2', 'upload/8.jpg', 'ok mn?', '1413322666'),
(10, '2', 'upload/7.jpg', 'ok mn n?', '1413322682'),
(11, '5', 'upload/2020-11-16 (2).png', 'sadasd', '1605570522'),
(12, '8', 'upload/chintu.jpg', 'She proposed me today!!!!', '1616654338');

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
(1, 'Rolyn Jasper', 'Demerin', 'revengeHatred', '13/November/1995', 'male', '09989781348', 'CSE', 'rolyn02@gmail.com', '12345', 'upload/rolyn.jpg', 'upload/covernirolyn.jpg'),
(2, 'Mark Anthony', 'Monaya', 'bobaytot11', '1995-11-13', 'Male', '09989781346', 'CSE', 'markmonaya@gmail.com', '123456', 'upload/6.jpg', 'upload/covernimark.jpg'),
(3, 'Jhonalyn', 'Montero', 'jho_phet', '14/June/1996', 'female', '09285444196', 'CSE', 'jho_montero@gmail.com', 'jhopeta', 'upload/400076_2586928959209_1713686254_n.jpg', ''),
(4, 'Shaira', 'Gaston', 'djBatman', '1/January/1901', 'female', '09989781356', 'CSE', 'shaira_gaston@gmail.com', '1234567', 'upload/1554634_934733823220509_3613827536046659520_n.jpg', ''),
(5, 'janobe', 'sourcecode', 'admin', '1/January/1901', 'male', '09305235022', 'CSE', 'janobe@gmail.com', 'admin', 'upload/img_6993_gallery__5cac08eb3f426.jpg', 'upload/nacpan-beach-el-nido-4.jpg'),
(8, 'S C Sai SatyaNarayana', 'Gudimetla', 'sarath143', '1/January/1901', 'male', '8790360069', 'CSE', 'sarathchandhra365@gmail.com', '$2y$10$urt6sp2a..cB97GV0uvhSuvYnNryQBMG4.4oyAI99ndDOQAO4f5ve', 'upload/sarath.jpg', ''),
(10, 'banti', 'karri', 'banti', '23/10/1999', 'Male', '7903600691', 'MECH', 'banti@gmail.com', '$2y$10$O8kwJ61lSX6GRP1XxdjZRe776GavPJIaZAkJg3sF.qE1LwaDqDOyS', 'upload/OkeluY.jpg', ''),
(11, 'Santhan', 'Edara', 'santhan', '24/03/1999', 'Male', '7674967510', 'ECE', 'edarasanthan.1999@gmail.com', '$2y$10$W2UPyzjRhFcD6tNCjJ.pduUp//M.va6QBJU5XOzrw/5UIjFJB4B7e', 'upload/santhan.PNG', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

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
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
