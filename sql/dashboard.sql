-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 18/12/2015 às 17:42
-- Versão do servidor: 5.5.46-0ubuntu0.14.04.2
-- Versão do PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `core`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `controller` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `origin` longtext,
  `post` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Fazendo dump de dados para tabela `access`
--

INSERT INTO `access` (`id`, `user_id`, `date`, `controller`, `method`, `origin`, `post`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, '2015-12-18 16:50:13', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:50:13', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, '2015-12-18 16:50:16', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:50:16', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, '2015-12-18 16:50:18', 'users', 'index', '[]', '[]', '2015-12-18 18:50:18', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, '2015-12-18 16:50:20', 'groups', 'index', '[]', '[]', '2015-12-18 18:50:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, '2015-12-18 16:50:21', 'menu', 'index', '[]', '[]', '2015-12-18 18:50:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, '2015-12-18 16:50:23', 'permissions', 'index', '[]', '[]', '2015-12-18 18:50:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, '2015-12-18 16:50:25', 'installer', 'index', '[]', '[]', '2015-12-18 18:50:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, '2015-12-18 16:50:27', 'parameters', 'index', '[]', '[]', '2015-12-18 18:50:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, '2015-12-18 16:50:31', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:50:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, '2015-12-18 16:50:39', 'installer', 'index', '[]', '[]', '2015-12-18 18:50:39', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, '2015-12-18 16:50:43', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 18:50:43', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, '2015-12-18 16:50:47', 'installer', 'index', '[]', '[]', '2015-12-18 18:50:47', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, '2015-12-18 16:50:50', 'installer', 'index', '[]', '[]', '2015-12-18 18:50:50', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, '2015-12-18 16:50:57', 'installer', 'index', '[]', '[]', '2015-12-18 18:50:57', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, '2015-12-18 16:51:09', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 18:51:09', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, '2015-12-18 16:51:15', 'permissions', 'index', '[]', '[]', '2015-12-18 18:51:15', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, '2015-12-18 16:51:19', 'permissions', 'YesToAll', '[]', '{"module":"clientes","group_id":"1"}', '2015-12-18 18:51:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, '2015-12-18 16:51:20', 'permissions', 'index', '[]', '[]', '2015-12-18 18:51:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, '2015-12-18 16:51:21', 'permissions', 'addModuleToMenu', '[]', '{"module":"clientes","menu_id":"1"}', '2015-12-18 18:51:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, '2015-12-18 16:51:22', 'permissions', 'index', '[]', '[]', '2015-12-18 18:51:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, '2015-12-18 16:51:25', 'clientes', 'index', '[]', '[]', '2015-12-18 18:51:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, '2015-12-18 16:51:56', 'clientes', 'update', '[]', '[]', '2015-12-18 18:51:56', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, '2015-12-18 16:51:59', 'clientes', 'index', '[]', '[]', '2015-12-18 18:51:59', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, '2015-12-18 16:52:03', 'parameters', 'index', '[]', '[]', '2015-12-18 18:52:03', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, '2015-12-18 16:52:21', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:52:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, '2015-12-18 16:52:24', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:52:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, '2015-12-18 16:52:54', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:52:54', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, '2015-12-18 16:52:57', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:52:57', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, '2015-12-18 16:53:35', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:53:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, '2015-12-18 16:54:03', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:54:03', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, '2015-12-18 16:54:20', 'users', 'index', '[]', '[]', '2015-12-18 18:54:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, '2015-12-18 16:54:22', 'groups', 'index', '[]', '[]', '2015-12-18 18:54:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, '2015-12-18 16:54:24', 'menu', 'index', '[]', '[]', '2015-12-18 18:54:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, '2015-12-18 16:54:26', 'permissions', 'index', '[]', '[]', '2015-12-18 18:54:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, '2015-12-18 16:54:28', 'installer', 'index', '[]', '[]', '2015-12-18 18:54:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, '2015-12-18 16:54:31', 'parameters', 'index', '[]', '[]', '2015-12-18 18:54:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, '2015-12-18 16:54:36', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 18:54:36', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, '2015-12-18 17:01:43', 'installer', 'index', '[]', '[]', '2015-12-18 19:01:43', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, '2015-12-18 17:03:05', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:03:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, '2015-12-18 17:03:33', 'installer', 'index', '[]', '[]', '2015-12-18 19:03:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, '2015-12-18 17:03:36', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:03:36', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, '2015-12-18 17:04:18', 'installer', 'index', '[]', '[]', '2015-12-18 19:04:18', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, '2015-12-18 17:04:29', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:04:29', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, '2015-12-18 17:05:42', 'installer', 'index', '[]', '[]', '2015-12-18 19:05:42', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, '2015-12-18 17:05:49', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:05:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, '2015-12-18 17:06:40', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:06:40', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, '2015-12-18 17:07:11', 'installer', 'index', '[]', '[]', '2015-12-18 19:07:11', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, '2015-12-18 17:07:18', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:07:18', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, '2015-12-18 17:07:42', 'installer', 'index', '[]', '[]', '2015-12-18 19:07:42', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, '2015-12-18 17:07:55', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:07:55', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, '2015-12-18 17:08:22', 'installer', 'index', '[]', '[]', '2015-12-18 19:08:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, '2015-12-18 17:08:26', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:08:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, '2015-12-18 17:09:30', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:09:30', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, '2015-12-18 17:12:02', 'installer', 'index', '[]', '[]', '2015-12-18 19:12:02', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, '2015-12-18 17:12:07', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:12:07', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, '2015-12-18 17:12:24', 'installer', 'index', '[]', '[]', '2015-12-18 19:12:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, '2015-12-18 17:12:26', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:12:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, '2015-12-18 17:13:00', 'installer', 'index', '[]', '[]', '2015-12-18 19:13:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, '2015-12-18 17:13:04', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:13:04', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, '2015-12-18 17:13:30', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:13:30', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, '2015-12-18 17:15:47', 'installer', 'index', '[]', '[]', '2015-12-18 19:15:47', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, '2015-12-18 17:15:51', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:15:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, '2015-12-18 17:16:23', 'installer', 'index', '[]', '[]', '2015-12-18 19:16:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, '2015-12-18 17:16:31', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:16:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, '2015-12-18 17:16:56', 'installer', 'index', '[]', '[]', '2015-12-18 19:16:56', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, '2015-12-18 17:17:31', 'installer', 'index', '[]', '[]', '2015-12-18 19:17:31', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, '2015-12-18 17:17:36', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:17:36', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, '2015-12-18 17:17:49', 'clientes', 'index', '[]', '[]', '2015-12-18 19:17:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, '2015-12-18 17:17:51', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:17:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, '2015-12-18 17:17:57', 'clientes', 'index', '[]', '[]', '2015-12-18 19:17:57', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, '2015-12-18 17:18:40', 'installer', 'index', '[]', '[]', '2015-12-18 19:18:40', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, '2015-12-18 17:18:44', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:18:44', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, '2015-12-18 17:19:19', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:19:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, '2015-12-18 17:19:35', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:19:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, '2015-12-18 17:19:56', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:19:56', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, '2015-12-18 17:20:12', 'permissions', 'index', '[]', '[]', '2015-12-18 19:20:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, '2015-12-18 17:20:15', 'permissions', 'noToAll', '[]', '{"module":"clientes","group_id":"1"}', '2015-12-18 19:20:15', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, '2015-12-18 17:20:16', 'permissions', 'index', '[]', '[]', '2015-12-18 19:20:16', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, '2015-12-18 17:20:17', 'permissions', 'addModuleToMenu', '[]', '{"module":"clientes","menu_id":"0"}', '2015-12-18 19:20:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, '2015-12-18 17:20:19', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:20:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, '2015-12-18 17:20:27', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:20:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, '2015-12-18 17:21:36', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:21:36', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, '2015-12-18 17:21:40', 'users', 'index', '[]', '[]', '2015-12-18 19:21:40', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, '2015-12-18 17:21:43', 'users', 'update', '[]', '[]', '2015-12-18 19:21:43', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, '2015-12-18 17:21:48', 'installer', 'index', '[]', '[]', '2015-12-18 19:21:48', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, '2015-12-18 17:21:52', 'parameters', 'index', '[]', '[]', '2015-12-18 19:21:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, '2015-12-18 17:31:53', 'installer', 'index', '[]', '[]', '2015-12-18 19:31:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, '2015-12-18 17:32:01', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:32:01', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, '2015-12-18 17:32:23', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:32:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, '2015-12-18 17:32:51', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:32:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, '2015-12-18 17:33:30', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:33:30', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, '2015-12-18 17:34:19', 'permissions', 'index', '[]', '[]', '2015-12-18 19:34:19', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, '2015-12-18 17:34:22', 'permissions', 'YesToAll', '[]', '{"module":"clientes","group_id":"1"}', '2015-12-18 19:34:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, '2015-12-18 17:34:23', 'permissions', 'index', '[]', '[]', '2015-12-18 19:34:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, '2015-12-18 17:34:24', 'permissions', 'addModuleToMenu', '[]', '{"module":"clientes","menu_id":"1"}', '2015-12-18 19:34:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, '2015-12-18 17:34:27', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:34:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, '2015-12-18 17:34:28', 'clientes', 'index', '[]', '[]', '2015-12-18 19:34:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, '2015-12-18 17:34:30', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:34:30', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, '2015-12-18 17:34:35', 'installer', 'index', '[]', '[]', '2015-12-18 19:34:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, '2015-12-18 17:34:40', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:34:40', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, '2015-12-18 17:34:43', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:34:43', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, '2015-12-18 17:35:12', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:35:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, '2015-12-18 17:35:26', 'clientes', 'index', '[]', '[]', '2015-12-18 19:35:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, '2015-12-18 17:35:56', 'clientes', 'index', '[]', '[]', '2015-12-18 19:35:56', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, '2015-12-18 17:36:00', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:36:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, '2015-12-18 17:36:45', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:36:45', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, '2015-12-18 17:37:06', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:37:06', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, '2015-12-18 17:37:44', 'clientes', 'insert', '[]', '{"id":"","nome":"SGA Brasil - Consultoria de Neg\\u00f3cios Ltda.","cnpj":"09.250.032\\/0001-10","logradouro":"Av. Francisco Matarazzo","numero":"229","complemento":"Cj. 82\\/83","bairro":"Perdizes","cidade":"S\\u00e3o Paulo","estado_id":"1","cep":"01000-000"}', '2015-12-18 19:37:44', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, '2015-12-18 17:37:44', 'clientes', 'index', '[]', '[]', '2015-12-18 19:37:44', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, '2015-12-18 17:37:48', 'clientes', 'update', '[]', '[]', '2015-12-18 19:37:48', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, '2015-12-18 17:37:50', 'clientes', 'index', '[]', '[]', '2015-12-18 19:37:50', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, '2015-12-18 17:38:28', 'clientes', 'index', '[]', '[]', '2015-12-18 19:38:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, '2015-12-18 17:38:51', 'installer', 'index', '[]', '[]', '2015-12-18 19:38:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, '2015-12-18 17:38:59', 'installer', 'index', '[]', '{"url":"https:\\/\\/github.com\\/brajola\\/clientes\\/archive\\/master.zip","name":"clientes-master"}', '2015-12-18 19:38:59', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, '2015-12-18 17:39:16', 'clientes', 'index', '[]', '[]', '2015-12-18 19:39:16', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, '2015-12-18 17:39:17', 'clientes', 'insert', '[]', '[]', '2015-12-18 19:39:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, '2015-12-18 17:39:34', 'clientes', 'insert', '[]', '{"id":"","nome":"SGA Brasil - Consultoria de Neg\\u00f3cios Ltda.","cnpj":"09.250.032\\/0001-10","logradouro":"Av. Francisco Matarazzo","numero":"229","complemento":"Cj. 82\\/83","bairro":"Perdizes","cidade":"S\\u00e3o Paulo","estado_id":"1","cep":"01000-000"}', '2015-12-18 19:39:34', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, '2015-12-18 17:39:34', 'clientes', 'index', '[]', '[]', '2015-12-18 19:39:34', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, '2015-12-18 17:39:37', 'clientes', 'index', '[]', '[]', '2015-12-18 19:39:37', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, '2015-12-18 17:39:58', 'dashboard', 'getCurrentFeed', '[]', '[]', '2015-12-18 19:39:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, '2015-12-18 17:40:08', 'clientes', 'index', '[]', '[]', '2015-12-18 19:40:08', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, '2015-12-18 17:40:14', 'clientes', 'index', '[]', '[]', '2015-12-18 19:40:14', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, '2015-12-18 17:40:46', 'auth', 'logout', '[]', '[]', '2015-12-18 19:40:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, '2015-12-18 17:40:46', 'auth', 'logout', '[]', '[]', '2015-12-18 19:40:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `estado`
--

INSERT INTO `estado` (`id`, `name`, `short_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'São Paulo', 'SP', '2015-12-18 19:36:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `group`
--

INSERT INTO `group` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'System Administrators', '2015-10-29 16:56:48', 0, '2015-12-18 12:59:46', 1, '0000-00-00 00:00:00', 0),
(2, 'System Operators', '2015-12-09 00:58:16', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `menu`
--

INSERT INTO `menu` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Basic Data', '2015-11-25 11:40:44', 1, '2015-12-18 12:59:58', 1, '0000-00-00 00:00:00', 0),
(2, 'System Modules', '2015-11-25 11:40:58', 1, '2015-12-09 02:58:44', 1, '0000-00-00 00:00:00', 0),
(3, 'Módulo de Teste 003', '2015-11-25 11:41:05', 1, '0000-00-00 00:00:00', 0, '2015-12-07 10:54:43', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `controller` (`controller`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chave` (`key`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `parameter`
--

INSERT INTO `parameter` (`id`, `key`, `value`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'system_title', 'Dashboard', '2015-10-29 15:02:12', 0, '2015-12-18 13:00:18', 1, '0000-00-00 00:00:00', 0),
(2, 'use_permissions', '0', '2015-11-03 22:30:33', 1, '2015-12-18 14:03:39', 1, '0000-00-00 00:00:00', 0),
(3, 'bootstrap_panel_style', 'panel-primary', '2015-11-09 11:11:35', 1, '2015-11-23 09:20:04', 1, '0000-00-00 00:00:00', 0),
(4, 'database_prefix', 'api', '2015-11-23 08:55:56', 1, '2015-12-09 00:24:57', 1, '0000-00-00 00:00:00', 0),
(5, 'company_name', 'SGA Brasil - Consultoria de Negócios Ltda.', '2015-12-05 16:49:46', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 'encrypt-passwords', '1', '2015-12-07 22:42:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 'rows_per_page', '15', '2015-12-08 17:19:10', 0, '2015-12-18 13:37:24', 1, '0000-00-00 00:00:00', 0),
(8, 'system_font_size', '15', '2015-12-18 13:13:31', 0, '2015-12-18 14:49:02', 1, '0000-00-00 00:00:00', 0),
(9, 'physical_exclusion', 'false', '2015-12-18 14:02:29', 0, '2015-12-18 14:06:18', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `p_index` int(11) NOT NULL,
  `p_insert` int(11) NOT NULL,
  `p_update` int(11) NOT NULL,
  `p_delete` int(11) NOT NULL,
  `p_export` int(11) NOT NULL,
  `p_print` int(11) NOT NULL,
  `p_search` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `funcionalidade_id` (`module`),
  KEY `grupo_id` (`group_id`),
  KEY `p_index` (`p_index`),
  KEY `p_insert` (`p_insert`),
  KEY `p_update` (`p_update`),
  KEY `p_delete` (`p_delete`),
  KEY `p_export` (`p_export`),
  KEY `p_print` (`p_print`),
  KEY `p_search` (`p_search`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`group_id`),
  KEY `email` (`email`),
  KEY `senha` (`password`),
  KEY `is_active` (`is_active`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `updated_at` (`updated_at`),
  KEY `updated_by` (`updated_by`),
  KEY `deleted_at` (`deleted_at`),
  KEY `deleted_by` (`deleted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`id`, `group_id`, `name`, `email`, `password`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 'ROOT', 'root@root.com.br', 'h4n6iui0', 1, '2015-10-26 13:52:19', 0, '2015-12-18 13:53:57', 1, '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
