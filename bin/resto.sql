-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 13 Juin 2018 à 11:12
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `akorder`
--

CREATE TABLE `akorder` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_order` datetime DEFAULT NULL,
  `date_payment` datetime DEFAULT NULL,
  `status` tinytext NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `akorder`
--

INSERT INTO `akorder` (`id`, `user_id`, `product_id`, `date_order`, `date_payment`, `status`, `quantity`) VALUES
(1, 7, 2, '2018-06-07 12:13:30', '2018-06-07 16:42:12', 'wait', 3),
(2, 7, 2, '2018-06-07 12:14:16', '2018-06-07 16:42:12', 'wait', 3),
(3, 7, 1, '2018-06-07 12:14:16', '2018-06-07 16:42:12', 'wait', 4),
(4, 7, 2, '2018-06-07 12:14:49', '2018-06-07 16:42:12', 'wait', 3),
(5, 7, 1, '2018-06-07 12:14:49', '2018-06-07 16:42:12', 'wait', 4),
(6, 7, 2, '2018-06-07 12:16:18', '2018-06-07 16:20:29', 'wait', 3),
(7, 7, 2, '2018-06-07 12:17:12', '2018-06-07 16:20:29', 'wait', 3),
(8, 7, 1, '2018-06-07 12:17:12', '2018-06-07 16:20:29', 'wait', 4),
(9, 7, 2, '2018-06-07 12:19:59', '2018-06-07 16:20:29', 'wait', 3),
(10, 7, 1, '2018-06-07 12:19:59', '2018-06-07 16:20:29', 'wait', 4),
(11, 7, 1, '2018-06-07 14:40:42', '2018-06-07 16:20:29', 'wait', 1),
(12, 7, 3, '2018-06-07 14:40:42', '2018-06-07 16:20:29', 'wait', 3),
(13, 7, 1, '2018-06-07 14:41:46', '2018-06-07 16:20:29', 'wait', 1),
(14, 7, 3, '2018-06-07 14:41:46', '2018-06-07 16:20:29', 'wait', 3),
(15, 7, 1, '2018-06-07 16:42:34', '2018-06-07 16:42:37', 'wait', 2);

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `guests` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `booking`
--

INSERT INTO `booking` (`id`, `date`, `guests`, `user_id`) VALUES
(9, '2018-06-13 00:00:00', 2, 5),
(10, '2018-06-13 00:00:00', 2, 5),
(11, '2018-06-13 00:00:00', 2, 5),
(12, '2018-06-13 00:00:00', 2, 5),
(13, '2018-06-13 00:00:00', 20, 5),
(14, '2018-06-13 00:00:00', 1, 4),
(15, '2018-06-13 00:00:00', 1, 4),
(16, '2018-06-13 00:00:00', 6, 4),
(17, '2019-05-16 19:30:00', 7, 4),
(18, '2018-01-01 12:00:00', 1, 4),
(19, '2018-01-01 12:00:00', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total` decimal(5,2) NOT NULL,
  `status` varchar(15) NOT NULL,
  `paymentDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `price_sale` decimal(5,2) NOT NULL,
  `price_buy` decimal(5,2) NOT NULL,
  `quantity_stock` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `photo`, `price_sale`, `price_buy`, `quantity_stock`) VALUES
(1, 'Coca-Cola', 'Mmmm, le Coca-Cola avec 10 morceaux de sucres et tout plein de caféine !', 'coca.jpg', '3.00', '1.00', 0),
(2, 'Cheeseburger', 'Ce délicieux cheeseburger contient un steak haché viande française de 150g ainsi que d\'\'un buns grillé juste comme il faut, le tout accompagné de frites fraîches maison !', 'bagel_thon.jpg', '12.50', '1.50', 0),
(3, 'Bacon Cheeseburger', 'Ce délicieux cheeseburger contient un steak haché viande française de 150g ainsi que d\'un buns grillé juste comme il faut, le tout accompagné de frites fraîches maison !', 'bacon_cheeseburger.jpg', '11.20', '15.50', 5),
(4, 'name', 'description', 'drpepper.jpg', '3.00', '2.00', 10),
(5, 'name for test', 'description for test', 'chocolate_donut.jpg', '3.00', '2.00', 10),
(6, '3wa-112', 'sdfsdfsdf', 'screenshot.png', '3.00', '2.00', 10),
(7, 'testak', 'masalan', '5b1a44444f915er.jpg', '6.00', '2.00', 10),
(8, 'last name', 'last descript', '5b1a4525c7cb1qqqq.jpg', '3.00', '2.00', 10),
(9, 'salut', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.', '5b1a4649ae99821.jpeg', '3.00', '2.00', 10),
(10, 'dghdfgh', 'dfghdfgh', '5b1a46844923921.jpeg', '3.00', '2.00', 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthDate` date NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `uniqid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `birthDate`, `address`, `city`, `zipcode`, `phone`, `status`, `email`, `password`, `uniqid`) VALUES
(3, 'dsg', 'ggg', '2018-06-13', 'rrtte', 'djf', '4523', '4554545', 'uss', 'root2', 'ertertertert', 'lmiuiiyy'),
(4, 'Nasim', 'Ramezani', '1940-01-01', 'fgh', 'ville', '92340', '012458', 'user', 'root3', 'troiswa', '0'),
(5, 'Nasim', 'Ramezani', '1940-01-01', 'fgh', 'ville', '92340', '012458', 'user', 'rootfghfg', 'troiswafghfghfgh', '2222'),
(6, 'Meghdad', 'Abolfazli', '1973-03-14', 'sdfsdf', 'ville', '92340', '06123456', 'user', 'root@root.com', 'troiswahhhhhhhh', '0'),
(7, 'Nasim', 'Ramezani', '2018-01-01', '31 rue de la Pandoi', 'Paris', '75015', '063254887', 'user', 'root', '$2y$11$c6833ce8112ac97fe2146uqw68t19UylI4sJ1C0fY1rERDuV03pv6', '0');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `akorder`
--
ALTER TABLE `akorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `akorder`
--
ALTER TABLE `akorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `akorder`
--
ALTER TABLE `akorder`
  ADD CONSTRAINT `akorder_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `akorder_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
