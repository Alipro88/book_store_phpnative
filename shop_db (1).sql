-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 fév. 2023 à 17:03
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shop_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(51, 6, 'the orchid house', '78', '12449167.jpg', 1),
(52, 6, 'Stephen King ', '67', '41H8H8QGoPL.jpg', 1),
(53, 6, 'Memories Me ', '568', 'Memories-of-Me-Cover.jpg', 1),
(55, 13, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 1),
(56, 13, 'Sin eater ', '789', 'Sin-Eater-by-Megan-Campisi.jpg', 1),
(58, 15, 'the orchid house', '78', '12449167.jpg', 1),
(59, 15, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 1),
(60, 15, 'Sthephen King (Der Outsider)', '90', '55694202z.jpg', 1),
(61, 15, 'Sin eater ', '789', 'Sin-Eater-by-Megan-Campisi.jpg', 1),
(63, 16, 'Stephen King ', '67', '41H8H8QGoPL.jpg', 1),
(64, 17, 'the orchid house', '78', '12449167.jpg', 1),
(69, 17, 'Memories Me ', '568', 'Memories-of-Me-Cover.jpg', 1),
(71, 17, 'Sin eater ', '789', 'Sin-Eater-by-Megan-Campisi.jpg', 1),
(74, 17, 'Stephen King ', '67 ', '41H8H8QGoPL.jpg', 1),
(75, 18, 'the orchid house', '78', '12449167.jpg', 3),
(76, 18, 'Memories Me ', '568', 'Memories-of-Me-Cover.jpg', 1),
(77, 18, 'Stephen King (Nuit Noire)', '20', '91c8CyyrDdS.jpg', 1),
(78, 18, 'The orchid Thief', '39', '926509.jpg', 1),
(79, 18, 'the jungle', '69 ', 'images.jpeg', 1),
(80, 19, 'The book of Art ', '16 ', 'art-book-cover-design-template-34323b0f0734dccded21e0e3bebf004c_screen.jpg', 1),
(81, 19, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 3),
(82, 19, 'Sthephen King (Der Outsider)', '90', '55694202z.jpg', 2),
(84, 21, 'the jungle', '69 ', 'images.jpeg', 3),
(85, 21, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 4),
(86, 21, 'The outsider (from Stephen KIng)', '20', 'Outsider.jpg', 1),
(88, 4, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 1),
(89, 4, 'The orchid Thief', '39', '926509.jpg', 1),
(95, 22, 'the jungle', '69 ', 'images.jpeg', 2),
(96, 22, 'Stephen King ', '67 ', '41H8H8QGoPL.jpg', 3),
(97, 22, 'The book of Art ', '16', 'art-book-cover-design-template-34323b0f0734dccded21e0e3bebf004c_screen.jpg', 1),
(99, 24, 'Stephen King ', '67', '41H8H8QGoPL.jpg', 3),
(100, 24, 'the orchid house', '78', '12449167.jpg', 1),
(101, 24, 'Sthephen King (Der Outsider)', '90', '55694202z.jpg', 1),
(102, 24, 'The book of Art ', '16', 'art-book-cover-design-template-34323b0f0734dccded21e0e3bebf004c_screen.jpg', 1),
(103, 29, 'Stephen King ', '170', '41Mrda-IHnL.jpg', 1),
(104, 29, 'The book of Art ', '16', 'art-book-cover-design-template-34323b0f0734dccded21e0e3bebf004c_screen.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_prices` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_prices`, `placed_on`, `payment_status`, `flat`, `street`, `city`, `state`, `country`, `pin_code`) VALUES
(33, 0, 'user', '079656', 'user@gmail.com', 'cash on delivery', '', 'the jungle (3) , Stephen King  (4) , The outsider (from Stephen KIng) (1) ', 907, '', '', 'cau', 'lop', 'casa', 'sthay', 'Maroc', 123445),
(34, 0, 'user', '079656', 'user@gmail.com', 'cash on delivery', '', 'the jungle (3) , Stephen King  (4) , The outsider (from Stephen KIng) (1) ', 907, '', '', 'cau', 'lop', 'casa', 'sthay', 'Maroc', 123445),
(35, 0, 'user', '079656', 'user@gmail.com', 'cash on delivery', '', 'the jungle (3) , Stephen King  (4) , The outsider (from Stephen KIng) (1) ', 907, '', '', 'cau', 'lop', 'casa', 'sthay', 'Maroc', 123445);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`) VALUES
(15, 'the orchid house', 78, '12449167.jpg', 'the orchid house lucinda riley'),
(16, 'Stephen King ', 67, '41H8H8QGoPL.jpg', 'Stephen King  Outsider'),
(17, 'Stephen King ', 170, '41Mrda-IHnL.jpg', 'Stephen King  Sie '),
(19, 'Stephen King (Nuit Noire)', 20, '91c8CyyrDdS.jpg', 'Stephen King (Nuit Noire etoiles mortes)'),
(20, 'The orchid Thief', 39, '926509.jpg', 'The orchid Thief (susan orlen)'),
(23, 'Sthephen King (Der Outsider)', 90, '55694202z.jpg', 'Sthephen King (Der Outsider) Roman'),
(24, 'Stephen King The  outsider ', 8, 'the-outsider-9781501181016_hr.jpg', 'Stephen King (The  outsider ) HBO'),
(26, 'The outsider (from Stephen KIng)', 20, 'Outsider.jpg', 'The outsider (from Stephen KIng)'),
(38, 'The book of Art ', 16, 'art-book-cover-design-template-34323b0f0734dccded21e0e3bebf004c_screen.jpg', 'The book of Art (new)'),
(40, 'the jungle', 69, 'images.jpeg', 'the jungle (upton sinclor )'),
(41, 'The king of drugs ', 19, 'action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg', 'The king of drugs (Nora baret )'),
(42, 'Sin eater ', 789, 'Sin-Eater-by-Megan-Campisi.jpg', 'Sin eater (megan)'),
(43, 'The mind of a leader ', 56, 'téléchargement.png', 'The mind of a leader  by kiven anderson'),
(44, 'my book', 5900, 'design-for-writers-book-cover-tf-2-a-million-to-one.jpg', 'this is my book ');

-- --------------------------------------------------------

--
-- Structure de la table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(24, 'usertest', 'usertest@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'user'),
(28, 'adminow', 'adminow@gmail.com', '6c084659533230e70f3d5a1468d077b1', 'admin'),
(29, 'ali', 'alikamar@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'user'),
(30, 'loay', 'ahilmoko@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
