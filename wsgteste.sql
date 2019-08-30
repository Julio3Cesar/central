-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 186.202.152.109
-- Generation Time: 28-Ago-2019 às 18:30
-- Versão do servidor: 5.6.40-84.0-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsgteste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `article_has_attachments`
--

CREATE TABLE `article_has_attachments` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) DEFAULT '0',
  `filename` varchar(250) DEFAULT '0',
  `savename` varchar(250) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_id` int(140) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(30) NOT NULL,
  `userpic` varchar(150) NOT NULL DEFAULT 'no-pic.png',
  `city` varchar(45) DEFAULT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT '0',
  `access` varchar(150) DEFAULT '0',
  `last_active` varchar(50) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `company_id`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `address`, `zipcode`, `userpic`, `city`, `hashed_password`, `inactive`, `access`, `last_active`, `last_login`) VALUES
(83, 83, 'Renê Muniz /', '335.103.058-41', 'luizpimentel@gmail.com', '11999166570', '11992429212', 'Avenida Bezerra de Menezes, 251', '09851-130', 'no-pic.png', 'São Bernardo do Campo', '671358d4527c406784fed151bd81fd3a36e46f2287d8a2209949c185e57838768bd37cfabd1944347c98f431d67983b275a9aa1b7a7f2ce6a9604a1b9c7a341b', 0, '14,12,13,17,', '1567025919', '1567023937');

-- --------------------------------------------------------

--
-- Estrutura da tabela `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `name` varchar(140) DEFAULT NULL,
  `client_id` varchar(140) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(30) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT '0',
  `website` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `vat` varchar(250) DEFAULT NULL,
  `note` longtext,
  `province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `companies`
--

INSERT INTO `companies` (`id`, `reference`, `name`, `client_id`, `phone`, `mobile`, `address`, `zipcode`, `city`, `inactive`, `website`, `country`, `vat`, `note`, `province`) VALUES
(83, 41060, 'Renê Muniz /', '83', '11999166570', '11992429212', 'Avenida Bezerra de Menezes, 251', '09851-130', 'São Bernardo do Campo', 0, 'odontologiarobertomachado.com.br', 'Brasil', '41553827848', NULL, 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `core`
--

CREATE TABLE `core` (
  `id` int(11) NOT NULL,
  `version` char(10) NOT NULL DEFAULT '0',
  `domain` varchar(65) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `autobackup` int(11) DEFAULT NULL,
  `cronjob` int(11) DEFAULT NULL,
  `last_cronjob` int(11) DEFAULT NULL,
  `last_autobackup` int(11) DEFAULT NULL,
  `invoice_terms` mediumtext,
  `company_reference` int(6) DEFAULT NULL,
  `project_reference` int(6) DEFAULT NULL,
  `invoice_reference` int(6) DEFAULT NULL,
  `subscription_reference` int(6) DEFAULT NULL,
  `ticket_reference` int(10) DEFAULT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `date_time_format` varchar(20) DEFAULT NULL,
  `invoice_mail_subject` varchar(150) DEFAULT NULL,
  `pw_reset_mail_subject` varchar(150) DEFAULT NULL,
  `pw_reset_link_mail_subject` varchar(150) DEFAULT NULL,
  `credentials_mail_subject` varchar(150) DEFAULT NULL,
  `notification_mail_subject` varchar(150) DEFAULT NULL,
  `language` varchar(150) DEFAULT NULL,
  `invoice_address` varchar(200) DEFAULT NULL,
  `invoice_city` varchar(200) DEFAULT NULL,
  `invoice_contact` varchar(200) DEFAULT NULL,
  `invoice_tel` varchar(50) DEFAULT NULL,
  `subscription_mail_subject` varchar(250) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `template` varchar(200) DEFAULT 'blueline',
  `paypal` varchar(5) DEFAULT '1',
  `paypal_currency` varchar(200) DEFAULT 'EUR',
  `paypal_account` varchar(200) DEFAULT '',
  `invoice_logo` varchar(150) DEFAULT 'assets/blueline/img/invoice_logo.png',
  `pc` varchar(150) DEFAULT NULL,
  `vat` varchar(150) DEFAULT NULL,
  `ticket_email` varchar(250) DEFAULT NULL,
  `ticket_default_owner` int(10) DEFAULT '1',
  `ticket_default_queue` int(10) DEFAULT '1',
  `ticket_default_type` int(10) DEFAULT '1',
  `ticket_default_status` varchar(200) DEFAULT 'new',
  `ticket_config_host` varchar(250) DEFAULT NULL,
  `ticket_config_login` varchar(250) DEFAULT NULL,
  `ticket_config_pass` varchar(250) DEFAULT NULL,
  `ticket_config_port` varchar(250) DEFAULT NULL,
  `ticket_config_ssl` varchar(250) DEFAULT NULL,
  `ticket_config_email` varchar(250) DEFAULT NULL,
  `ticket_config_flags` varchar(250) DEFAULT '/notls',
  `ticket_config_search` varchar(250) DEFAULT 'UNSEEN',
  `ticket_config_timestamp` int(11) DEFAULT '0',
  `ticket_config_mailbox` varchar(250) DEFAULT NULL,
  `ticket_config_delete` int(11) DEFAULT '0',
  `ticket_config_active` int(11) DEFAULT '0',
  `ticket_config_imap` int(11) DEFAULT '1',
  `stripe` int(11) DEFAULT '0',
  `stripe_key` varchar(250) DEFAULT NULL,
  `stripe_p_key` varchar(255) DEFAULT '',
  `stripe_currency` varchar(255) DEFAULT 'USD',
  `bank_transfer` int(11) DEFAULT '0',
  `bank_transfer_text` longtext NOT NULL,
  `estimate_terms` longtext NOT NULL,
  `estimate_prefix` varchar(250) DEFAULT 'EST',
  `estimate_pdf_template` varchar(250) DEFAULT 'templates/estimate/blueline',
  `invoice_pdf_template` varchar(250) DEFAULT 'templates/invoice/blueline',
  `second_tax` varchar(5) DEFAULT '',
  `estimate_mail_subject` varchar(255) DEFAULT 'New Estimate #{estimate_id}',
  `money_format` int(20) UNSIGNED NOT NULL DEFAULT '1',
  `money_currency_position` int(20) UNSIGNED NOT NULL DEFAULT '1',
  `pdf_font` varchar(255) DEFAULT 'NotoSans',
  `pdf_path` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `registration` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `core`
--

INSERT INTO `core` (`id`, `version`, `domain`, `email`, `company`, `tax`, `currency`, `autobackup`, `cronjob`, `last_cronjob`, `last_autobackup`, `invoice_terms`, `company_reference`, `project_reference`, `invoice_reference`, `subscription_reference`, `ticket_reference`, `date_format`, `date_time_format`, `invoice_mail_subject`, `pw_reset_mail_subject`, `pw_reset_link_mail_subject`, `credentials_mail_subject`, `notification_mail_subject`, `language`, `invoice_address`, `invoice_city`, `invoice_contact`, `invoice_tel`, `subscription_mail_subject`, `logo`, `template`, `paypal`, `paypal_currency`, `paypal_account`, `invoice_logo`, `pc`, `vat`, `ticket_email`, `ticket_default_owner`, `ticket_default_queue`, `ticket_default_type`, `ticket_default_status`, `ticket_config_host`, `ticket_config_login`, `ticket_config_pass`, `ticket_config_port`, `ticket_config_ssl`, `ticket_config_email`, `ticket_config_flags`, `ticket_config_search`, `ticket_config_timestamp`, `ticket_config_mailbox`, `ticket_config_delete`, `ticket_config_active`, `ticket_config_imap`, `stripe`, `stripe_key`, `stripe_p_key`, `stripe_currency`, `bank_transfer`, `bank_transfer_text`, `estimate_terms`, `estimate_prefix`, `estimate_pdf_template`, `invoice_pdf_template`, `second_tax`, `estimate_mail_subject`, `money_format`, `money_currency_position`, `pdf_font`, `pdf_path`, `registration`) VALUES
(1, '2.3.5', 'central.asofbm.org.br', 'asofbm@gmail.com', 'Associação dos Oficiais da Brigada Militar', '0', 'R$', 1, 1, 1503536678, 1503536682, '<br>', 41061, 51020, 31067, 61004, 10004, 'd/m/Y', 'H:i', 'Nova fatura', 'Password Reset', 'Password Reset', 'Login Details', 'Notification', 'portuguese', 'Trav. Francisco Leonardo Truda – Nº 40, Cj. 28, CEP 90010-050 Porto Alegre, RS', 'São Paulo SP', 'ASOFBM', '(51) 3212-0170', 'New Subscription', 'files/media/oficial-asofbm.png', 'blueline', '1', 'BRL', 'kaiqueexp@gmail.com', 'files/media/oficial-asofbm1.png', '', '', NULL, 11, 1, 1, 'new', 'email-ssl.com.br', 'contato@websitego.com.br', 'Welcome100%', '993', '1', 'contato@websitego.com.br', '/novalidate-cert', 'UNSEEN', 0, 'INBOX', 0, 1, 1, 0, '', '', 'BRL', 0, '<span style=\"font-weight: bold;\">Ag</span>: 2921<div><span style=\"font-weight: bold;\">Cc</span>: 35972-1</div><div><span style=\"font-weight: bold;\">Kaique </span>Paes Alves</div><div><span style=\"font-weight: bold;\">CPF</span>: 40716300869</div><div><span style=\"font-weight: bold;\">Banco Itau</span></div>', '', 'EST', 'templates/estimate/blueline', 'templates/invoice/blueline', '', 'New Estimate #{estimate_id}', 1, 1, 'NotoSans', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_quotations`
--

CREATE TABLE `custom_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT '',
  `formcontent` longtext NOT NULL,
  `inactive` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `created` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_quotation_requests`
--

CREATE TABLE `custom_quotation_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form` longtext NOT NULL,
  `custom_quotation_id` int(11) UNSIGNED NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) NOT NULL,
  `description` varchar(250) DEFAULT '',
  `type` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `date` varchar(250) DEFAULT '',
  `currency` varchar(250) DEFAULT '',
  `value` float DEFAULT '0',
  `vat` varchar(250) DEFAULT '',
  `reference` varchar(250) DEFAULT '',
  `project_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `rebill` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `invoice_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attachment` varchar(250) DEFAULT '',
  `attachment_description` varchar(250) DEFAULT '',
  `recurring` varchar(250) DEFAULT '',
  `recurring_until` varchar(250) DEFAULT '',
  `user_id` int(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `expenses`
--

INSERT INTO `expenses` (`id`, `description`, `type`, `category`, `date`, `currency`, `value`, `vat`, `reference`, `project_id`, `rebill`, `invoice_id`, `attachment`, `attachment_description`, `recurring`, `recurring_until`, `user_id`) VALUES
(2, '3 Crachás', 'payment', 'Marketing - ', '2017-08-16', 'R$', 51, '', '', 0, 0, 0, 'f4bb817e2ec1e34fed758e4bb3736d57.jpeg', 'Comprovante de Pagamento', '', '', 11),
(3, 'Registro de Domínio - websitego.com.br', 'payment', 'Web Hosting', '2017-09-16', 'R$', 40, '', '', 0, 0, 0, '', '', '', '', 11),
(4, 'Registro de Domínio - vbarquiteturainteriores.com.br', 'payment', 'Web Hosting', '2017-09-27', 'R$', 40, '', '', 0, 0, 0, '', '', '', '', 11),
(5, '3 Camisetas Website GO -', 'payment', 'Marketing - ', '2017-10-16', 'R$', 209.71, '', '', 0, 0, 0, '', '', '', '', 11),
(6, 'Registro de Domínio - kingyotemakeria.com.br', 'payment', 'Web Hosting', '2017-10-24', 'R$', 40, '', '', 0, 0, 0, '', '', '', '', 11),
(7, 'Indicação vbarquitetura', 'payment', 'Marketing - ', '2017-11-13', 'R$', 50, '', '', 0, 0, 0, 'a24ecae812d86b633d72b2a28a85e490.jpeg', 'Juros de 7,50', '', '', 11),
(8, 'Desenvolvimento Logo Kingyotemakeria', 'payment', 'Web Hosting', '2017-12-05', 'R$', 80, '', '', 19, 0, 0, '', '', '', '', 11),
(9, 'PABX Virtual', 'payment', 'Accommodation', '2017-12-09', 'R$', 59.9, '', '', 0, 0, 0, '', '', '', '', 11),
(10, 'Pagamento Juliany', 'payment', 'Subscriptions', '2017-12-15', 'R$', 100, '', '', 0, 0, 0, '', '', '', '', 11),
(11, 'Felipe Palma - Jacquet', 'payment', 'Marketing - ', '2017-12-21', 'R$', 3600, '', '', 0, 0, 0, '', '', '', '', 11),
(12, 'Pagamento para Lucas', 'payment', 'Marketing - ', '2017-12-27', 'R$', 50, '', '', 0, 0, 0, '', '', '', '', 11),
(14, 'Registro de domínio - consorciovolkswagenonline.com.br', 'payment', 'Web Hosting', '2018-01-16', 'R$', 40, '', '', 0, 0, 0, '', '', '', '', 11),
(15, 'Registro de domínio - consorciovwdefabrica.com.br', 'payment', 'Web Hosting', '2018-01-16', 'R$', 40, '', '', 0, 0, 0, '', '', '', '', 11),
(16, 'Novos Cartões WebsiteGO', 'payment', 'Marketing - ', '2018-01-30', 'R$', 170, '', '', 0, 0, 0, '', '', '', '', 11),
(17, 'Chip - WebsiteGO', 'payment', 'Marketing - ', '2018-02-02', 'R$', 20, '', '', 0, 0, 0, '', '', '', '', 11),
(18, 'Anúncios / Facebook / Instagram / Adwords', 'payment', 'Marketing - ', '2018-02-02', 'R$', 150, '', '', 0, 0, 0, '', '', '', '', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `issue_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `sent_date` varchar(20) DEFAULT NULL,
  `paid_date` varchar(20) DEFAULT NULL,
  `terms` mediumtext,
  `discount` varchar(50) DEFAULT '0',
  `subscription_id` varchar(50) DEFAULT '0',
  `project_id` int(11) DEFAULT '0',
  `tax` varchar(255) DEFAULT '',
  `estimate` int(11) DEFAULT '0',
  `estimate_status` varchar(255) DEFAULT '0',
  `estimate_accepted_date` varchar(255) DEFAULT '0',
  `estimate_sent` varchar(255) DEFAULT '0',
  `sum` float DEFAULT '0',
  `second_tax` varchar(5) DEFAULT '',
  `estimate_reference` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `invoice_has_items`
--

CREATE TABLE `invoice_has_items` (
  `id` int(10) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` char(11) DEFAULT NULL,
  `description` mediumtext,
  `value` float DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT '0',
  `description` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT '0',
  `media_id` int(11) DEFAULT '0',
  `from` varchar(120) DEFAULT NULL,
  `text` text,
  `datetime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modules`
--

CREATE TABLE `modules` (
  `id` int(10) NOT NULL,
  `name` varchar(250) DEFAULT '0',
  `link` varchar(250) DEFAULT '0',
  `type` varchar(250) DEFAULT '0',
  `icon` varchar(150) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modules`
--

INSERT INTO `modules` (`id`, `name`, `link`, `type`, `icon`, `sort`) VALUES
(1, 'Dashboard', 'dashboard', 'main', 'icon-th', 1),
(2, 'Messages', 'messages', 'main', 'icon-inbox', 2),
(3, 'Projects', 'projects', 'main', 'icon-briefcase', 3),
(4, 'Clients', 'clients', 'main', 'icon-user', 4),
(5, 'Invoices', 'invoices', 'main', 'icon-list-alt', 5),
(6, 'Items', 'items', 'main', 'icon-file', 7),
(7, 'Quotations', 'quotations', 'main', 'icon-list-alt', 8),
(8, 'Subscriptions', 'subscriptions', 'main', 'icon-calendar', 6),
(9, 'Settings', 'settings', 'main', 'icon-cog', 20),
(10, 'QuickAccess', 'quickaccess', 'widget', NULL, 50),
(11, 'User Online', 'useronline', 'widget', NULL, 51),
(12, 'Projects', 'cprojects', 'client', 'icon-briefcase', 2),
(13, 'Invoices', 'cinvoices', 'client', 'icon-list-alt', 3),
(14, 'Messages', 'cmessages', 'client', 'icon-inbox', 1),
(15, 'Subscriptions', 'csubscriptions', 'client', 'icon-calendar', 4),
(16, 'Tickets', 'tickets', 'main', 'icon-tag', 8),
(17, 'Tickets', 'ctickets', 'client', 'icon-tag', 4),
(18, 'Estimates', 'estimates', 'main', 'fa-files-o', 5),
(19, 'Expenses', 'expenses', 'main', 'fa-money', 5),
(107, 'Estimates', 'cestimates', 'client', 'fa-files-o', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `privatemessages`
--

CREATE TABLE `privatemessages` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` varchar(150) NOT NULL,
  `sender` varchar(250) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `time` varchar(100) NOT NULL,
  `conversation` varchar(32) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `attachment` varchar(255) DEFAULT '',
  `attachment_link` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `privatemessages`
--

INSERT INTO `privatemessages` (`id`, `status`, `sender`, `recipient`, `subject`, `message`, `time`, `conversation`, `deleted`, `attachment`, `attachment_link`) VALUES
(160, 'New', 'c83', 'u20', 'Gostaria de convidar pra', 'sdsdpsldps', '2019-08-27 21:03', '5793dfae70398fd6767690b72e3d5fb9', 0, '', ''),
(161, 'Read', 'c83', 'u21', 'Gostaria de convidar pra', 'dfdfdf', '2019-08-27 21:59', '1afa70b9289e59b27480550848e4e730', 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `name` varchar(65) DEFAULT NULL,
  `description` text,
  `start` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `progress` decimal(3,0) DEFAULT NULL,
  `phases` varchar(150) DEFAULT NULL,
  `tracking` int(11) DEFAULT NULL,
  `time_spent` int(11) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  `sticky` enum('1','0') DEFAULT '0',
  `category` varchar(150) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `note` longtext NOT NULL,
  `progress_calc` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_has_activities`
--

CREATE TABLE `project_has_activities` (
  `id` bigint(20) NOT NULL,
  `project_id` bigint(20) DEFAULT '0',
  `user_id` bigint(20) DEFAULT '0',
  `client_id` bigint(20) DEFAULT '0',
  `datetime` varchar(250) DEFAULT '0',
  `subject` varchar(250) DEFAULT '0',
  `message` longtext,
  `type` varchar(250) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_has_files`
--

CREATE TABLE `project_has_files` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `client_id` int(10) DEFAULT '0',
  `type` varchar(80) DEFAULT '0',
  `name` varchar(120) DEFAULT '0',
  `filename` varchar(150) DEFAULT '0',
  `description` text,
  `savename` varchar(200) DEFAULT '0',
  `phase` varchar(100) DEFAULT '0',
  `date` varchar(50) DEFAULT '0',
  `download_counter` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_has_invoices`
--

CREATE TABLE `project_has_invoices` (
  `id` bigint(20) NOT NULL,
  `project_id` bigint(20) DEFAULT '0',
  `invoice_id` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_has_tasks`
--

CREATE TABLE `project_has_tasks` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT '0',
  `name` varchar(250) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `status` varchar(50) DEFAULT '0',
  `public` int(10) DEFAULT '0',
  `datetime` int(11) DEFAULT NULL,
  `due_date` varchar(250) DEFAULT NULL,
  `description` text,
  `value` int(11) DEFAULT '0',
  `priority` smallint(6) DEFAULT '0',
  `time` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `project_has_workers`
--

CREATE TABLE `project_has_workers` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pw_reset`
--

CREATE TABLE `pw_reset` (
  `id` int(10) NOT NULL,
  `email` varchar(250) DEFAULT '0',
  `timestamp` varchar(250) DEFAULT '0',
  `token` varchar(250) DEFAULT '0',
  `user` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT '0',
  `description` varchar(250) DEFAULT '0',
  `inactive` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `queues`
--

INSERT INTO `queues` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Jurídico - ASOFBM', 'Jurídico - ASOFBM', 0),
(2, 'Administração - ASOFBM', 'Administração - ASOFBM', 0),
(3, 'Comercial - ASOFBM', 'Comercial - ASOFBM', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `q1` varchar(50) DEFAULT NULL,
  `q2` varchar(50) DEFAULT NULL,
  `q3` varchar(50) DEFAULT NULL,
  `q4` varchar(150) DEFAULT NULL,
  `q5` text,
  `q6` varchar(50) DEFAULT NULL,
  `company` varchar(150) DEFAULT '-',
  `fullname` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `comment` text,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(150) DEFAULT '0',
  `user_id` int(50) DEFAULT '0',
  `replied` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `company_id` int(10) DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `issue_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `frequency` varchar(20) DEFAULT NULL,
  `next_payment` varchar(20) DEFAULT NULL,
  `terms` mediumtext,
  `discount` varchar(50) DEFAULT '0',
  `subscribed` varchar(50) DEFAULT '0',
  `tax` varchar(255) DEFAULT '',
  `second_tax` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscription_has_items`
--

CREATE TABLE `subscription_has_items` (
  `id` int(10) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` char(11) DEFAULT NULL,
  `description` mediumtext,
  `value` float DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `text` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `from` varchar(250) DEFAULT '0',
  `reference` varchar(250) DEFAULT '0',
  `type_id` smallint(6) DEFAULT '1',
  `lock` smallint(6) DEFAULT '0',
  `subject` varchar(250) DEFAULT '0',
  `text` text,
  `status` varchar(50) DEFAULT '0',
  `client_id` int(11) DEFAULT '0',
  `company_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `escalation_time` int(11) DEFAULT '0',
  `priority` varchar(50) DEFAULT '0',
  `created` int(11) DEFAULT '0',
  `queue_id` int(11) DEFAULT '0',
  `updated` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tickets`
--

INSERT INTO `tickets` (`id`, `from`, `reference`, `type_id`, `lock`, `subject`, `text`, `status`, `client_id`, `company_id`, `user_id`, `escalation_time`, `priority`, `created`, `queue_id`, `updated`) VALUES
(55, 'Renê Muniz / 335.103.058-41 - luizpimentel@gmail.com', '10003', 1, 0, 'Gostaria de convidar pra', 'fgfgfgfg', 'open', 83, 83, 11, 0, '0', 1566950665, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ticket_has_articles`
--

CREATE TABLE `ticket_has_articles` (
  `id` bigint(20) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `from` varchar(250) NOT NULL DEFAULT '0',
  `reply_to` varchar(250) DEFAULT '0',
  `to` varchar(250) DEFAULT '0',
  `cc` varchar(250) DEFAULT '0',
  `subject` varchar(250) DEFAULT '0',
  `message` text,
  `datetime` varchar(250) DEFAULT NULL,
  `internal` int(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ticket_has_articles`
--

INSERT INTO `ticket_has_articles` (`id`, `ticket_id`, `from`, `reply_to`, `to`, `cc`, `subject`, `message`, `datetime`, `internal`) VALUES
(124, 55, 'Administrador   - asofbm@asofbm.org.br', 'asofbm@asofbm.org.br', 'luizpimentel@gmail.com', '0', 'Gostaria de convidar pra', 'Teste', '1566951759', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ticket_has_attachments`
--

CREATE TABLE `ticket_has_attachments` (
  `id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) DEFAULT '0',
  `filename` varchar(250) DEFAULT '0',
  `savename` varchar(250) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `types`
--

CREATE TABLE `types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT '0',
  `description` varchar(250) DEFAULT '0',
  `inactive` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `types`
--

INSERT INTO `types` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Dúvidas frequentes', 'Dúvidas frequentes', 0),
(2, 'Administrativo', 'Administrativo', 0),
(3, 'Auxílio', 'Auxílio', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `firstname` varchar(120) DEFAULT NULL,
  `lastname` varchar(120) DEFAULT NULL,
  `hashed_password` varchar(128) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `status` enum('active','inactive','deleted') DEFAULT NULL,
  `admin` enum('0','1') DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userpic` varchar(250) DEFAULT 'no-pic.png',
  `title` varchar(150) NOT NULL,
  `access` varchar(150) NOT NULL DEFAULT '1,2',
  `last_active` varchar(50) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `queue` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `status`, `admin`, `created`, `userpic`, `title`, `access`, `last_active`, `last_login`, `queue`) VALUES
(19, 'suporte@websitego.com.br', 'WebsiteGO', ' Criação de Sites', '7816cdce3e9be68f52a6083665b11b7d02b7c762b6e4ca088b728669723bfb0e8ff0d32fabfff8c18abc7b84263bd04cbf3a1b06fafd0e2b99eae3a3a6adcf40', 'suporte@websitego.com.br', 'active', '1', '2019-08-27 21:10:58', 'no-pic.png', 'WebsiteGO', '1,2,3,4,5,18,19,8,6,7,16,9,10,11', '0', '1567002997', 0),
(21, 'asofbm', 'ASOFBM -', 'Administrador', '14c0e6170394ff1d6de82f57c60e3c2e8e81615f06a366d66103006052c9e11f9116707a85e3e42998e5f11ced4395c3665356e65d5b27179a7893b7a7ae1f2d', 'asofbm@asofbm.org.br', 'active', '0', '2019-08-28 00:57:34', 'no-pic.png', 'Administrador', '1,2,4,16,10,11', '0', '1567023774', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_has_attachments`
--
ALTER TABLE `article_has_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_quotations`
--
ALTER TABLE `custom_quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_quotation_requests`
--
ALTER TABLE `custom_quotation_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_has_items`
--
ALTER TABLE `invoice_has_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privatemessages`
--
ALTER TABLE `privatemessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_clients1` (`company_id`);

--
-- Indexes for table `project_has_activities`
--
ALTER TABLE `project_has_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_files`
--
ALTER TABLE `project_has_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_invoices`
--
ALTER TABLE `project_has_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_tasks`
--
ALTER TABLE `project_has_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_workers`
--
ALTER TABLE `project_has_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_reset`
--
ALTER TABLE `pw_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_has_items`
--
ALTER TABLE `subscription_has_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_has_articles`
--
ALTER TABLE `ticket_has_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_has_attachments`
--
ALTER TABLE `ticket_has_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_has_attachments`
--
ALTER TABLE `article_has_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `core`
--
ALTER TABLE `core`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_quotations`
--
ALTER TABLE `custom_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_quotation_requests`
--
ALTER TABLE `custom_quotation_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `invoice_has_items`
--
ALTER TABLE `invoice_has_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `privatemessages`
--
ALTER TABLE `privatemessages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_activities`
--
ALTER TABLE `project_has_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_has_files`
--
ALTER TABLE `project_has_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `project_has_invoices`
--
ALTER TABLE `project_has_invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_tasks`
--
ALTER TABLE `project_has_tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_workers`
--
ALTER TABLE `project_has_workers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `pw_reset`
--
ALTER TABLE `pw_reset`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription_has_items`
--
ALTER TABLE `subscription_has_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ticket_has_articles`
--
ALTER TABLE `ticket_has_articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `ticket_has_attachments`
--
ALTER TABLE `ticket_has_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
