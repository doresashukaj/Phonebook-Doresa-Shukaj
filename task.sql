-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 10:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `population` int(11) NOT NULL,
  `continent` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `capital`, `population`, `continent`) VALUES
(1, 0, 'Afghanistan', '', 0, ''),
(2, 0, 'Aland Islands', '', 0, ''),
(3, 0, 'Albania', '', 0, ''),
(4, 0, 'Algeria', '', 0, ''),
(5, 0, 'American Samoa', '', 0, ''),
(6, 0, 'Andorra', '', 0, ''),
(7, 0, 'Anguilla', '', 0, ''),
(8, 0, 'Antarctica', '', 0, ''),
(9, 0, 'Antigua and Barbuda', '', 0, ''),
(10, 0, 'Argentina', '', 0, ''),
(11, 0, 'Armenia', '', 0, ''),
(12, 0, 'Aruba', '', 0, ''),
(13, 0, 'Australia', '', 0, ''),
(14, 0, 'Austria', '', 0, ''),
(15, 0, 'Azerbaijan', '', 0, ''),
(16, 0, 'Bahamas', '', 0, ''),
(17, 0, 'Bahrain', '', 0, ''),
(18, 0, 'Bangladesh', '', 0, ''),
(19, 0, 'Barbados', '', 0, ''),
(20, 0, 'Belarus', '', 0, ''),
(21, 0, 'Belgium', '', 0, ''),
(22, 0, 'Belize', '', 0, ''),
(23, 0, 'Benin', '', 0, ''),
(24, 0, 'Bermuda', '', 0, ''),
(25, 0, 'Bhutan', '', 0, ''),
(26, 0, 'Bolivia', '', 0, ''),
(27, 0, 'Bosnia and Herzegovina', '', 0, ''),
(28, 0, 'Botswana', '', 0, ''),
(29, 0, 'Bouvet Island', '', 0, ''),
(30, 0, 'Brazil', '', 0, ''),
(31, 0, 'British Indian Ocean Territory', '', 0, ''),
(32, 0, 'Brunei Darussalam', '', 0, ''),
(33, 0, 'Bulgaria', '', 0, ''),
(34, 0, 'Burkina Faso', '', 0, ''),
(35, 0, 'Burundi', '', 0, ''),
(36, 0, 'Cambodia', '', 0, ''),
(37, 0, 'Cameroon', '', 0, ''),
(38, 0, 'Canada', '', 0, ''),
(39, 0, 'Cape Verde', '', 0, ''),
(40, 0, 'Cayman Islands', '', 0, ''),
(41, 0, 'Central African Republic', '', 0, ''),
(42, 0, 'Chad', '', 0, ''),
(43, 0, 'Chile', '', 0, ''),
(44, 0, 'China', '', 0, ''),
(45, 0, 'Christmas Island', '', 0, ''),
(46, 0, 'Cocos (Keeling) Islands', '', 0, ''),
(47, 0, 'Colombia', '', 0, ''),
(48, 0, 'Comoros', '', 0, ''),
(49, 0, 'Democratic Republic of the Congo', '', 0, ''),
(50, 0, 'Republic of Congo', '', 0, ''),
(51, 0, 'Cook Islands', '', 0, ''),
(52, 0, 'Costa Rica', '', 0, ''),
(53, 0, 'Croatia (Hrvatska)', '', 0, ''),
(54, 0, 'Cuba', '', 0, ''),
(55, 0, 'Cyprus', '', 0, ''),
(56, 0, 'Czech Republic', '', 0, ''),
(57, 0, 'Denmark', '', 0, ''),
(58, 0, 'Djibouti', '', 0, ''),
(59, 0, 'Dominica', '', 0, ''),
(60, 0, 'Dominican Republic', '', 0, ''),
(61, 0, 'East Timor', '', 0, ''),
(62, 0, 'Ecuador', '', 0, ''),
(63, 0, 'Egypt', '', 0, ''),
(64, 0, 'El Salvador', '', 0, ''),
(65, 0, 'Equatorial Guinea', '', 0, ''),
(66, 0, 'Eritrea', '', 0, ''),
(67, 0, 'Estonia', '', 0, ''),
(68, 0, 'Ethiopia', '', 0, ''),
(69, 0, 'Falkland Islands (Malvinas)', '', 0, ''),
(70, 0, 'Faroe Islands', '', 0, ''),
(71, 0, 'Fiji', '', 0, ''),
(72, 0, 'Finland', '', 0, ''),
(73, 0, 'France', '', 0, ''),
(74, 0, 'France, Metropolitan', '', 0, ''),
(75, 0, 'French Guiana', '', 0, ''),
(76, 0, 'French Polynesia', '', 0, ''),
(77, 0, 'French Southern Territories', '', 0, ''),
(78, 0, 'Gabon', '', 0, ''),
(79, 0, 'Gambia', '', 0, ''),
(80, 0, 'Georgia', '', 0, ''),
(81, 0, 'Germany', '', 0, ''),
(82, 0, 'Ghana', '', 0, ''),
(83, 0, 'Gibraltar', '', 0, ''),
(84, 0, 'Guernsey', '', 0, ''),
(85, 0, 'Greece', '', 0, ''),
(86, 0, 'Greenland', '', 0, ''),
(87, 0, 'Grenada', '', 0, ''),
(88, 0, 'Guadeloupe', '', 0, ''),
(89, 0, 'Guam', '', 0, ''),
(90, 0, 'Guatemala', '', 0, ''),
(91, 0, 'Guinea', '', 0, ''),
(92, 0, 'Guinea-Bissau', '', 0, ''),
(93, 0, 'Guyana', '', 0, ''),
(94, 0, 'Haiti', '', 0, ''),
(95, 0, 'Heard and Mc Donald Islands', '', 0, ''),
(96, 0, 'Honduras', '', 0, ''),
(97, 0, 'Hong Kong', '', 0, ''),
(98, 0, 'Hungary', '', 0, ''),
(99, 0, 'Iceland', '', 0, ''),
(100, 0, 'India', '', 0, ''),
(101, 0, 'Isle of Man', '', 0, ''),
(102, 0, 'Indonesia', '', 0, ''),
(103, 0, 'Iran (Islamic Republic of)', '', 0, ''),
(104, 0, 'Iraq', '', 0, ''),
(105, 0, 'Ireland', '', 0, ''),
(106, 0, 'Israel', '', 0, ''),
(107, 0, 'Italy', '', 0, ''),
(108, 0, 'Ivory Coast', '', 0, ''),
(109, 0, 'Jersey', '', 0, ''),
(110, 0, 'Jamaica', '', 0, ''),
(111, 0, 'Japan', '', 0, ''),
(112, 0, 'Jordan', '', 0, ''),
(113, 0, 'Kazakhstan', '', 0, ''),
(114, 0, 'Kenya', '', 0, ''),
(115, 0, 'Kiribati', '', 0, ''),
(116, 0, 'Korea, Democratic People\'s Republic of', '', 0, ''),
(117, 0, 'Korea, Republic of', '', 0, ''),
(118, 0, 'Kosovo', '', 0, ''),
(119, 0, 'Kuwait', '', 0, ''),
(120, 0, 'Kyrgyzstan', '', 0, ''),
(121, 0, 'Lao People\'s Democratic Republic', '', 0, ''),
(122, 0, 'Latvia', '', 0, ''),
(123, 0, 'Lebanon', '', 0, ''),
(124, 0, 'Lesotho', '', 0, ''),
(125, 0, 'Liberia', '', 0, ''),
(126, 0, 'Libyan Arab Jamahiriya', '', 0, ''),
(127, 0, 'Liechtenstein', '', 0, ''),
(128, 0, 'Lithuania', '', 0, ''),
(129, 0, 'Luxembourg', '', 0, ''),
(130, 0, 'Macau', '', 0, ''),
(131, 0, 'North Macedonia', '', 0, ''),
(132, 0, 'Madagascar', '', 0, ''),
(133, 0, 'Malawi', '', 0, ''),
(134, 0, 'Malaysia', '', 0, ''),
(135, 0, 'Maldives', '', 0, ''),
(136, 0, 'Mali', '', 0, ''),
(137, 0, 'Malta', '', 0, ''),
(138, 0, 'Marshall Islands', '', 0, ''),
(139, 0, 'Martinique', '', 0, ''),
(140, 0, 'Mauritania', '', 0, ''),
(141, 0, 'Mauritius', '', 0, ''),
(142, 0, 'Mayotte', '', 0, ''),
(143, 0, 'Mexico', '', 0, ''),
(144, 0, 'Micronesia, Federated States of', '', 0, ''),
(145, 0, 'Moldova, Republic of', '', 0, ''),
(146, 0, 'Monaco', '', 0, ''),
(147, 0, 'Mongolia', '', 0, ''),
(148, 0, 'Montenegro', '', 0, ''),
(149, 0, 'Montserrat', '', 0, ''),
(150, 0, 'Morocco', '', 0, ''),
(151, 0, 'Mozambique', '', 0, ''),
(152, 0, 'Myanmar', '', 0, ''),
(153, 0, 'Namibia', '', 0, ''),
(154, 0, 'Nauru', '', 0, ''),
(155, 0, 'Nepal', '', 0, ''),
(156, 0, 'Netherlands', '', 0, ''),
(157, 0, 'Netherlands Antilles', '', 0, ''),
(158, 0, 'New Caledonia', '', 0, ''),
(159, 0, 'New Zealand', '', 0, ''),
(160, 0, 'Nicaragua', '', 0, ''),
(161, 0, 'Niger', '', 0, ''),
(162, 0, 'Nigeria', '', 0, ''),
(163, 0, 'Niue', '', 0, ''),
(164, 0, 'Norfolk Island', '', 0, ''),
(165, 0, 'Northern Mariana Islands', '', 0, ''),
(166, 0, 'Norway', '', 0, ''),
(167, 0, 'Oman', '', 0, ''),
(168, 0, 'Pakistan', '', 0, ''),
(169, 0, 'Palau', '', 0, ''),
(170, 0, 'Palestine', '', 0, ''),
(171, 0, 'Panama', '', 0, ''),
(172, 0, 'Papua New Guinea', '', 0, ''),
(173, 0, 'Paraguay', '', 0, ''),
(174, 0, 'Peru', '', 0, ''),
(175, 0, 'Philippines', '', 0, ''),
(176, 0, 'Pitcairn', '', 0, ''),
(177, 0, 'Poland', '', 0, ''),
(178, 0, 'Portugal', '', 0, ''),
(179, 0, 'Puerto Rico', '', 0, ''),
(180, 0, 'Qatar', '', 0, ''),
(181, 0, 'Reunion', '', 0, ''),
(182, 0, 'Romania', '', 0, ''),
(183, 0, 'Russian Federation', '', 0, ''),
(184, 0, 'Rwanda', '', 0, ''),
(185, 0, 'Saint Kitts and Nevis', '', 0, ''),
(186, 0, 'Saint Lucia', '', 0, ''),
(187, 0, 'Saint Vincent and the Grenadines', '', 0, ''),
(188, 0, 'Samoa', '', 0, ''),
(189, 0, 'San Marino', '', 0, ''),
(190, 0, 'Sao Tome and Principe', '', 0, ''),
(191, 0, 'Saudi Arabia', '', 0, ''),
(192, 0, 'Senegal', '', 0, ''),
(193, 0, 'Serbia', '', 0, ''),
(194, 0, 'Seychelles', '', 0, ''),
(195, 0, 'Sierra Leone', '', 0, ''),
(196, 0, 'Singapore', '', 0, ''),
(197, 0, 'Slovakia', '', 0, ''),
(198, 0, 'Slovenia', '', 0, ''),
(199, 0, 'Solomon Islands', '', 0, ''),
(200, 0, 'Somalia', '', 0, ''),
(201, 0, 'South Africa', '', 0, ''),
(202, 0, 'South Georgia South Sandwich Islands', '', 0, ''),
(203, 0, 'South Sudan', '', 0, ''),
(204, 0, 'Spain', '', 0, ''),
(205, 0, 'Sri Lanka', '', 0, ''),
(206, 0, 'St. Helena', '', 0, ''),
(207, 0, 'St. Pierre and Miquelon', '', 0, ''),
(208, 0, 'Sudan', '', 0, ''),
(209, 0, 'Suriname', '', 0, ''),
(210, 0, 'Svalbard and Jan Mayen Islands', '', 0, ''),
(211, 0, 'Eswatini', '', 0, ''),
(212, 0, 'Sweden', '', 0, ''),
(213, 0, 'Switzerland', '', 0, ''),
(214, 0, 'Syrian Arab Republic', '', 0, ''),
(215, 0, 'Taiwan', '', 0, ''),
(216, 0, 'Tajikistan', '', 0, ''),
(217, 0, 'Tanzania, United Republic of', '', 0, ''),
(218, 0, 'Thailand', '', 0, ''),
(219, 0, 'Togo', '', 0, ''),
(220, 0, 'Tokelau', '', 0, ''),
(221, 0, 'Tonga', '', 0, ''),
(222, 0, 'Trinidad and Tobago', '', 0, ''),
(223, 0, 'Tunisia', '', 0, ''),
(224, 0, 'Turkey', '', 0, ''),
(225, 0, 'Turkmenistan', '', 0, ''),
(226, 0, 'Turks and Caicos Islands', '', 0, ''),
(227, 0, 'Tuvalu', '', 0, ''),
(228, 0, 'Uganda', '', 0, ''),
(229, 0, 'Ukraine', '', 0, ''),
(230, 0, 'United Arab Emirates', '', 0, ''),
(231, 0, 'United Kingdom', '', 0, ''),
(232, 0, 'United States', '', 0, ''),
(233, 0, 'United States minor outlying islands', '', 0, ''),
(234, 0, 'Uruguay', '', 0, ''),
(235, 0, 'Uzbekistan', '', 0, ''),
(236, 0, 'Vanuatu', '', 0, ''),
(237, 0, 'Vatican City State', '', 0, ''),
(238, 0, 'Venezuela', '', 0, ''),
(239, 0, 'Vietnam', '', 0, ''),
(240, 0, 'Virgin Islands (British)', '', 0, ''),
(241, 0, 'Virgin Islands (U.S.)', '', 0, ''),
(242, 0, 'Wallis and Futuna Islands', '', 0, ''),
(243, 0, 'Western Sahara', '', 0, ''),
(244, 0, 'Yemen', '', 0, ''),
(245, 0, 'Zambia', '', 0, ''),
(246, 0, 'Zimbabwe', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(128) NOT NULL,
  `zipcity` varchar(64) NOT NULL,
  `country` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `address`, `zipcity`, `country`, `publish`, `timestamp`) VALUES
(1, 'anna', '$2y$10$FbLUOUPhT/ZdrtHZPeOrUu64fVZBchvBvrgiY2UL093s67XzxIKsm', 'Anna', 'Hathaway', '23424, dfghcdfghj 5', '234687 London', 118, 1, '2023-02-13 20:19:24'),
(2, 'bob', '$2y$10$Q9kStt2x7DsKOENHht7hAOl6tGmJ0bwzUgCkbahfG4KmvWtNPmQva', 'Bob', 'XXXXXXXX', '707 E Greenlee Ct', '85232 Florence', 232, 1, '2023-02-13 21:08:16'),
(3, 'charly', '$2y$10$jYYfs0Xa5OWk.7tkwxT/i.mkgqWDhl.7fry2mBYVnCk67pwSthceW', 'Charly', 'XXXXXXXX', '20000, Rruga Tirana 5', '20000 Prizren', 118, 1, '2023-02-13 21:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_emails`
--

CREATE TABLE `user_emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_emails`
--

INSERT INTO `user_emails` (`id`, `user_id`, `email`, `publish`, `timestamp`) VALUES
(73, 1, 'anna@example.com', 1, '2023-02-13 22:43:21'),
(74, 1, 'anna@gmail.com', 0, '2023-02-13 22:43:21'),
(75, 1, 'anna@yahoo.com', 1, '2023-02-13 22:43:21'),
(76, 1, 'anna@msn.com', 1, '2023-02-13 22:43:21'),
(77, 1, 'anna@yandex.com', 0, '2023-02-13 22:43:21'),
(78, 3, 'charly@private.com', 0, '2023-02-13 22:44:41'),
(79, 3, 'charly@public.com', 1, '2023-02-13 22:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_phones`
--

CREATE TABLE `user_phones` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(26) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_phones`
--

INSERT INTO `user_phones` (`id`, `user_id`, `phone_number`, `publish`, `timestamp`) VALUES
(77, 1, '+xx-xx-xxxxxxx', 1, '2023-02-13 22:43:21'),
(78, 1, '+xx-xx-xxxxxxx', 1, '2023-02-13 22:43:21'),
(79, 1, '+xx-xx-xxxxxxx', 1, '2023-02-13 22:43:21'),
(80, 1, '+yy-yy-yyyyyyy', 0, '2023-02-13 22:43:21'),
(81, 1, '+38-45-5135545', 1, '2023-02-13 22:43:21'),
(82, 1, '+25-84-1357115', 0, '2023-02-13 22:43:21'),
(83, 3, '+38345654456', 1, '2023-02-13 22:44:41'),
(84, 3, '+38349123546', 1, '2023-02-13 22:44:41'),
(85, 3, '+38338158746', 1, '2023-02-13 22:44:41'),
(86, 3, '+38344111111', 0, '2023-02-13 22:44:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_emails`
--
ALTER TABLE `user_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_phones`
--
ALTER TABLE `user_phones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_emails`
--
ALTER TABLE `user_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `user_phones`
--
ALTER TABLE `user_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
