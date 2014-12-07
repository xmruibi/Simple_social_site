-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2014 at 09:43 PM
-- Server version: 5.5.38-log
-- PHP Version: 5.6.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simple_social_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
`cmtId` int(10) NOT NULL,
  `postId` int(10) NOT NULL,
  `replyCmtId` int(10) NOT NULL,
  `userId` int(5) NOT NULL,
  `creationTime` datetime NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cmtId`, `postId`, `replyCmtId`, `userId`, `creationTime`, `text`) VALUES
(1, 37, 1, 4, '2014-12-05 03:04:44', 'ddd'),
(21, 35, 1, 4, '2014-12-05 17:05:06', 'hello!!!!!'),
(32, 37, 1, 4, '2014-12-05 19:26:21', 'hedsfads'),
(33, 36, 1, 4, '2014-12-05 19:28:04', 'GUdsafsa'),
(34, 35, 1, 4, '2014-12-05 19:30:18', 'nimei'),
(35, 37, 1, 4, '2014-12-05 19:40:12', 'hahhhhh'),
(36, 37, 1, 4, '2014-12-05 19:40:13', 'hahhhhh'),
(37, 36, 1, 4, '2014-12-05 19:42:17', 'hahhhhhhhhh'),
(38, 36, 1, 4, '2014-12-05 19:44:52', 'hdsfdasfdasfafadsfadsf'),
(39, 36, 1, 4, '2014-12-05 19:45:03', 'nimei'),
(40, 36, 1, 4, '2014-12-05 19:45:39', 'nidasfdfdsafdsafdsfdsfdsfsa'),
(41, 37, 1, 4, '2014-12-05 19:59:15', 'asdf'),
(42, 37, 1, 4, '2014-12-05 19:59:21', 'asdf'),
(43, 36, 1, 4, '2014-12-05 19:59:30', 'gjhgghj'),
(44, 36, 1, 4, '2014-12-05 20:00:23', 'gun'),
(45, 36, 1, 4, '2014-12-05 20:03:12', 'sdfadsfdfdsfads'),
(46, 37, 1, 4, '2014-12-05 20:09:33', 'fffffff'),
(47, 37, 1, 4, '2014-12-05 20:09:51', 'sdfdsadfas'),
(48, 37, 1, 5, '2014-12-05 20:12:02', 'sdafafdsafas'),
(49, 37, 1, 3, '2014-12-05 21:21:54', '11'),
(50, 37, 1, 3, '2014-12-05 21:22:04', '11'),
(51, 35, 1, 3, '2014-12-05 21:22:41', 'dsfas'),
(52, 35, 1, 3, '2014-12-05 21:23:14', 'dsfassdf'),
(53, 40, 1, 3, '2014-12-07 13:59:39', 'sdf'),
(54, 37, 1, 3, '2014-12-07 13:59:56', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `contactInfo`
--

CREATE TABLE `contactInfo` (
`userId` int(5) NOT NULL,
  `call_1` varchar(15) DEFAULT NULL,
  `call_2` varchar(15) DEFAULT NULL,
  `text_1` varchar(15) DEFAULT NULL,
  `text_2` varchar(15) DEFAULT NULL,
  `email_1` varchar(30) DEFAULT NULL,
  `email_2` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactInfo`
--

INSERT INTO `contactInfo` (`userId`, `call_1`, `call_2`, `text_1`, `text_2`, `email_1`, `email_2`) VALUES
(3, '3123', '', '', '', 'test2@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedTag`
--

CREATE TABLE `feedTag` (
  `userId` int(5) NOT NULL,
  `tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedTag`
--

INSERT INTO `feedTag` (`userId`, `tag`) VALUES
(1, 'g');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
`postId` int(10) NOT NULL,
  `creationTime` timestamp NULL DEFAULT NULL,
  `userId` int(5) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `condi` int(1) DEFAULT NULL,
  `price` float NOT NULL,
  `body` varchar(500) NOT NULL,
  `imgUrl` varchar(500) DEFAULT NULL,
  `likeCount` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `creationTime`, `userId`, `status`, `title`, `type`, `condi`, `price`, `body`, `imgUrl`, `likeCount`) VALUES
(29, '2014-11-26 19:33:26', 3, NULL, 'ASDf', 'a', 1, 300, 'aedfasdf', '/Users/birui/NetbeansProjects/IMG_7129.jpg', 2),
(30, '2014-11-30 21:46:50', 3, NULL, 'Time Magazine', 'b', 4, 10, 'This magazine is very popular and new.', '/Users/linxiaohui/workspace/web_final_img/manazine1.jpeg', 5),
(31, '2014-11-30 21:52:09', 3, NULL, 'Glayour Magazine', 'b', 4, 12, 'I love this magazine. It is vey new.', '/Users/linxiaohui/workspace/web_final_img/magazine2.png', 2),
(32, '2014-11-30 21:54:14', 3, NULL, 'Amazing dress!!', 'f', 4, 40, 'This blue dress is suitable for party, which cen make you outstanding and elegant.', '/Users/linxiaohui/workspace/web_final_img/clothing2.jpg', 5),
(33, '2014-11-30 21:58:49', 3, NULL, 'Beautiful Clothing', 'f', 4, 100, 'This outfits is wonderful.', '/Users/linxiaohui/workspace/web_final_img/clothing1.jpg', 4),
(34, '2014-12-04 02:33:04', 3, NULL, 'Pittsburgh', 'b', 3, 20, 'This is a good magazine!!!', '/Users/birui/NetbeansProjects/img1.jpg', 3),
(35, '2014-12-04 07:37:00', 4, NULL, 'Hello', 'a', 3, 49, 'sdafds', '/Users/birui/NetbeansProjects/db er diagram (3).jpg', 2),
(36, '2014-12-04 07:42:36', 4, NULL, 'nihao', 'a', 4, 90, 'sdafdsfdsafdasfdsafdsddsafd', '/Users/birui/NetbeansProjects/img1.jpg', 3),
(37, '2014-12-04 08:56:04', 4, NULL, 'Interacitve Design', 'a', 4, 99, 'Very nice Book!!!', 'Macintosh HD/Users/huge/Documents/2560_final/build/web/book.jpg', 14),
(39, '2014-12-06 06:22:40', 3, NULL, 'Gift Card', 'f', 1, 123, '', '/2560_final/userImages/iTune Gift Card.jpg', 4),
(40, '2014-12-06 06:30:11', 3, NULL, 'test', 'c', 1, 1345, '', '/2560_final/userImages/cover_1.jpeg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
`uid` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(10) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `reputation` int(10) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `username`, `password`, `creationDate`, `gender`, `details`, `reputation`) VALUES
(1, 'bill@pitt.edu', 'bill', '123', '2014-12-07 03:32:36', 'female', 'I am bill', 0),
(2, 'mary@pitt.edu', 'mary', '123', '2014-11-27 05:00:00', '', '', 0),
(3, 'joe@pitt.edu', 'joe', '123', '2014-12-07 19:06:00', 'male', 'cool guy', NULL),
(4, 'sil29@pitt.edu', 'siwei', 'aywwai', '2014-12-04 03:13:29', 'male', 'Nice!', NULL),
(5, '123@pitt.edu', 'huge', 'huge', '2014-12-05 10:35:05', 'male', 'dsafdafdas', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`cmtId`);

--
-- Indexes for table `contactInfo`
--
ALTER TABLE `contactInfo`
 ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `feedTag`
--
ALTER TABLE `feedTag`
 ADD PRIMARY KEY (`userId`,`tag`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `cmtId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `contactInfo`
--
ALTER TABLE `contactInfo`
MODIFY `userId` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `postId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
