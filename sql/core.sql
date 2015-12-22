-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 22/12/2015 às 09:08
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
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
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Teste de Categoria de Produto', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2015-12-22 00:48:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(25) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(25) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
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
-- Fazendo dump de dados para tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cnpj`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `estado_id`, `cep`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'SGA Brasil - Consultoria de Negócios Ltda.', '09.250.032/0001-10', 'Av. Francisco Matarazzo', '229', 'Cj. 82/83', 'Perdizes', 'São Paulo', 1, '01000-000', '2015-12-21 09:59:36', 0, '2015-12-21 10:30:10', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(25) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(25) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
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
-- Fazendo dump de dados para tabela `empresa`
--

INSERT INTO `empresa` (`id`, `nome`, `cnpj`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `estado_id`, `cep`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'SGA Brasil - Consultoria de Negócios Ltda.', '09.250.032/0001-10', 'Av. Francisco Matarazzo', '229', 'Cj. 82/83', 'Perdizes', 'São Paulo', 1, '01000-000', '2015-12-21 11:13:28', 0, '2015-12-21 14:35:45', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(2) DEFAULT NULL,
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
(1, 'São Paulo', 'SP', '2015-12-21 10:25:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

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
(1, 'Dados Básicos', '2015-11-25 11:40:44', 1, '2015-12-21 10:05:48', 1, '0000-00-00 00:00:00', 0),
(2, 'Cadastros Gerais', '2015-11-25 11:40:58', 1, '2015-12-21 10:06:55', 1, '0000-00-00 00:00:00', 0),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Fazendo dump de dados para tabela `module`
--

INSERT INTO `module` (`id`, `menu_id`, `name`, `controller`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(8, 2, 'Clientes', 'clientes', '2015-12-21 10:06:09', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 2, 'Empresas', 'empresas', '2015-12-21 11:13:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Estados', 'estados', '2015-12-21 11:21:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 2, 'Categorias', 'categorias', '2015-12-21 20:12:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 2, 'Produtos', 'produtos', '2015-12-21 20:19:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 2, 'Servicos', 'servicos', '2015-12-22 10:02:54', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Fazendo dump de dados para tabela `parameter`
--

INSERT INTO `parameter` (`id`, `key`, `value`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'system_title', 'Dashboard', '2015-10-29 15:02:12', 0, '2015-12-22 10:18:03', 1, '0000-00-00 00:00:00', 0),
(2, 'use_permissions', '1', '2015-11-03 22:30:33', 1, '2015-12-21 14:34:36', 1, '0000-00-00 00:00:00', 0),
(3, 'bootstrap_panel_style', 'panel-primary', '2015-11-09 11:11:35', 1, '2015-11-23 09:20:04', 1, '0000-00-00 00:00:00', 0),
(5, 'company_name', 'SGA Brasil - Consultoria de Negócios Ltda.', '2015-12-05 16:49:46', 1, '2015-12-21 14:01:02', 1, '0000-00-00 00:00:00', 0),
(6, 'encrypt-passwords', '1', '2015-12-07 22:42:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 'rows_per_page', '12', '2015-12-08 17:19:10', 0, '2015-12-22 00:29:17', 1, '0000-00-00 00:00:00', 0),
(8, 'system_font_size', '15', '2015-12-18 13:13:31', 0, '2015-12-18 14:49:02', 1, '0000-00-00 00:00:00', 0),
(9, 'physical_exclusion', 'false', '2015-12-18 14:02:29', 0, '2015-12-18 14:06:18', 1, '0000-00-00 00:00:00', 0),
(10, 'network_proxy', '10.11.25.2:3128', '2015-12-21 08:48:59', 0, '2015-12-22 10:02:23', 1, '0000-00-00 00:00:00', 0),
(11, 'system_theme', 'default', '2015-12-21 13:09:59', 0, '2015-12-22 10:17:59', 1, '0000-00-00 00:00:00', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

--
-- Fazendo dump de dados para tabela `permission`
--

INSERT INTO `permission` (`id`, `module`, `group_id`, `p_index`, `p_insert`, `p_update`, `p_delete`, `p_export`, `p_print`, `p_search`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(99, 'clientes', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-21 10:28:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 'clientes', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-21 10:28:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 'clientes', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-21 10:28:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 'clientes', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-21 10:28:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 'clientes', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-21 10:28:17', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 'clientes', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-21 10:28:18', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 'clientes', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-21 10:28:18', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 'estados', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 'estados', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 'estados', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 'estados', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 'estados', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 'estados', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 'estados', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-21 10:28:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 'empresas', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 'empresas', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 'empresas', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 'empresas', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 'empresas', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 'empresas', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 'empresas', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-21 11:13:05', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 'produtos', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 'produtos', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 'produtos', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 'produtos', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 'produtos', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 'produtos', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 'produtos', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-21 20:19:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 'servicos', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 'servicos', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 'servicos', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 'servicos', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 'servicos', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 'servicos', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 'servicos', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:02:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 'categorias', 1, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 'categorias', 1, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 'categorias', 1, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 'categorias', 1, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 'categorias', 1, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 'categorias', 1, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 'categorias', 1, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:16:58', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 'categorias', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 'categorias', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 'categorias', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 'categorias', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 'categorias', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 'categorias', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 'categorias', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:20', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 'clientes', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 'clientes', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 'clientes', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 'clientes', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:21', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 'clientes', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 'clientes', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 'clientes', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:22', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 'empresas', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 'empresas', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 'empresas', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 'empresas', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 'empresas', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 'empresas', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 'empresas', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 'estados', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 'estados', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:24', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 'estados', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 'estados', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 'estados', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 'estados', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 'estados', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:25', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 'produtos', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 'produtos', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 'produtos', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 'produtos', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 'produtos', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 'produtos', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 'produtos', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:26', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 'servicos', 2, 1, 0, 0, 0, 0, 0, 0, '2015-12-22 10:17:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 'servicos', 2, 0, 1, 0, 0, 0, 0, 0, '2015-12-22 10:17:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 'servicos', 2, 0, 0, 1, 0, 0, 0, 0, '2015-12-22 10:17:27', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 'servicos', 2, 0, 0, 0, 1, 0, 0, 0, '2015-12-22 10:17:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 'servicos', 2, 0, 0, 0, 0, 1, 0, 0, '2015-12-22 10:17:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 'servicos', 2, 0, 0, 0, 0, 0, 1, 0, '2015-12-22 10:17:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 'servicos', 2, 0, 0, 0, 0, 0, 0, 1, '2015-12-22 10:17:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `ncm` varchar(25) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `description` longtext,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Fazendo dump de dados para tabela `produto`
--

INSERT INTO `produto` (`id`, `categoria_id`, `name`, `slug`, `ncm`, `attachment`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 00:11:49', 0, '2015-12-22 00:45:09', 1, '0000-00-00 00:00:00', 0),
(2, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 00:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 00:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 00:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 00:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Teste de Produto', 'teste_de_produto', '6753547352877364', '485dac8b438a2519bc5766a1fc2e6842b687c972e2b2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:11:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Teste de Produto 001', 'teste_de_produto_001', '6753547352877364', '8ddd163612f4e64e16ca40ea49f69e6afab306d6e4c0.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Teste de Produto 002', 'teste_de_produto_002', '6753547352877364', '787110d0d0ce767b56ff8bc504fb598d5ad088bb4af3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:13:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Teste de Produto 003', 'teste_de_produto_003', '6753547352877364', '71dd2471c5b721e1e308b3551ebb51ee0f95b61e41bf.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:12', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Teste de Produto 004', 'teste_de_produto_004', '6753547352877364', '9839465ba305118ee6c62dfb526bbae3dc950866c9f8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', '2015-12-22 02:14:33', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `ncm` varchar(25) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `description` longtext,
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
-- Fazendo dump de dados para tabela `servico`
--

INSERT INTO `servico` (`id`, `name`, `slug`, `ncm`, `attachment`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Realocação Profissional', 'realocacao_profissional', '6753547352877364', '592a41b6742c369e4d23bafa033ab2cfeebdfac39ed3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2015-12-22 10:04:14', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`id`, `group_id`, `name`, `email`, `password`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 'ROOT', 'root@root.com.br', 'h4n6iui0', 1, '2015-10-26 13:52:19', 0, '2015-12-18 13:53:57', 1, '0000-00-00 00:00:00', 0),
(2, 2, 'Usuário Teste', 'teste@teste', 'teste', 1, '2015-12-21 14:32:47', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
