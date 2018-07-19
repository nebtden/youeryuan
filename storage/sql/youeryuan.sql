/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : youeryuan

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-19 17:37:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kg_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_config`;
CREATE TABLE `kg_admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_config
-- ----------------------------

-- ----------------------------
-- Table structure for kg_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_menu`;
CREATE TABLE `kg_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_menu
-- ----------------------------
INSERT INTO `kg_admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `kg_admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `kg_admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `kg_admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `kg_admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `kg_admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `kg_admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `kg_admin_menu` VALUES ('8', '0', '7', 'Helpers', 'fa-gears', '', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_menu` VALUES ('9', '8', '8', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_menu` VALUES ('10', '8', '9', 'Database terminal', 'fa-database', 'helpers/terminal/database', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_menu` VALUES ('11', '8', '10', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_menu` VALUES ('12', '8', '11', 'Routes', 'fa-list-alt', 'helpers/routes', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_menu` VALUES ('13', '0', '12', 'Backup', 'fa-copy', 'backup', '2018-07-18 06:23:35', '2018-07-18 06:23:35');
INSERT INTO `kg_admin_menu` VALUES ('14', '0', '13', 'Config', 'fa-toggle-on', 'config', '2018-07-18 06:25:08', '2018-07-18 06:25:08');
INSERT INTO `kg_admin_menu` VALUES ('15', '0', '14', 'Exception Reporter', 'fa-bug', 'exceptions', '2018-07-18 07:17:27', '2018-07-18 07:17:27');
INSERT INTO `kg_admin_menu` VALUES ('16', '0', '15', 'Backup', 'fa-copy', 'backup', '2018-07-19 09:37:33', '2018-07-19 09:37:33');

-- ----------------------------
-- Table structure for kg_admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_operation_log`;
CREATE TABLE `kg_admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_operation_log
-- ----------------------------
INSERT INTO `kg_admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-18 06:06:46', '2018-07-18 06:06:46');
INSERT INTO `kg_admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-18 06:07:22', '2018-07-18 06:07:22');
INSERT INTO `kg_admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-18 06:19:55', '2018-07-18 06:19:55');
INSERT INTO `kg_admin_operation_log` VALUES ('4', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-07-18 07:18:26', '2018-07-18 07:18:26');
INSERT INTO `kg_admin_operation_log` VALUES ('5', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"ZCf9IQPELkcuyH16ac0zEa2HdrJpVZXiljHyUdyZ\"}', '2018-07-18 07:18:37', '2018-07-18 07:18:37');
INSERT INTO `kg_admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-07-19 09:34:38', '2018-07-19 09:34:38');
INSERT INTO `kg_admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-19 09:35:20', '2018-07-19 09:35:20');

-- ----------------------------
-- Table structure for kg_admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_permissions`;
CREATE TABLE `kg_admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_permissions
-- ----------------------------
INSERT INTO `kg_admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `kg_admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `kg_admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `kg_admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `kg_admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `kg_admin_permissions` VALUES ('6', 'Admin helpers', 'ext.helpers', null, '/helpers/*', '2018-07-18 06:21:19', '2018-07-18 06:21:19');
INSERT INTO `kg_admin_permissions` VALUES ('7', 'Backup', 'ext.backup', null, '/backup*', '2018-07-18 06:23:35', '2018-07-18 06:23:35');
INSERT INTO `kg_admin_permissions` VALUES ('8', 'Admin Config', 'ext.config', null, '/config*', '2018-07-18 06:25:08', '2018-07-18 06:25:08');
INSERT INTO `kg_admin_permissions` VALUES ('9', 'Exceptions reporter', 'ext.reporter', null, '/exceptions*', '2018-07-18 07:17:28', '2018-07-18 07:17:28');

-- ----------------------------
-- Table structure for kg_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_roles`;
CREATE TABLE `kg_admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_roles
-- ----------------------------
INSERT INTO `kg_admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-07-18 06:06:19', '2018-07-18 06:06:19');

-- ----------------------------
-- Table structure for kg_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_role_menu`;
CREATE TABLE `kg_admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_role_menu
-- ----------------------------
INSERT INTO `kg_admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for kg_admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_role_permissions`;
CREATE TABLE `kg_admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_role_permissions
-- ----------------------------
INSERT INTO `kg_admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for kg_admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_role_users`;
CREATE TABLE `kg_admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_role_users
-- ----------------------------
INSERT INTO `kg_admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for kg_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_users`;
CREATE TABLE `kg_admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_users
-- ----------------------------
INSERT INTO `kg_admin_users` VALUES ('1', 'admin', '$2y$10$1zrWn6s9yFInT8rLghaexO9pCYLrmRsRqbCew3RDsfp.UYeRTVbpG', 'Administrator', null, null, '2018-07-18 06:06:19', '2018-07-18 06:06:19');

-- ----------------------------
-- Table structure for kg_admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `kg_admin_user_permissions`;
CREATE TABLE `kg_admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for kg_clients
-- ----------------------------
DROP TABLE IF EXISTS `kg_clients`;
CREATE TABLE `kg_clients` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT ' 商家名称',
  `contact_person` varchar(50) DEFAULT '' COMMENT '联系人',
  `phone` varchar(50) NOT NULL COMMENT '联系电话',
  `app_key` varchar(30) NOT NULL COMMENT '调用api的appkey',
  `app_secret` varchar(50) DEFAULT NULL COMMENT 'api加密字符串,限制为16位，后续可升级',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `short_name` varchar(2) NOT NULL COMMENT '用',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '绑定的登陆用户',
  `settlement_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0  充值结算方式   1手工结算发送账单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kg_clients
-- ----------------------------
INSERT INTO `kg_clients` VALUES ('1', 'Kilimall', 'simon', '86975', 'kilimall_kenya', '9fo55mUo5I8SHEcKD2JfcDXUga1sY', '1', 'ke', '0', '0');
INSERT INTO `kg_clients` VALUES ('2', 'Kilimall', '1', '1', 'kilimall_nigeria', '9fo55mUo5I8SHEcKD2JfcDXUga1sY', '1', 'ng', '0', '0');
INSERT INTO `kg_clients` VALUES ('3', 'Kilimall', '1', '1', 'kilimall_uganda', '9fo55mUo5I8SHEcKD2JfcDXUga1sY', '1', 'ug', '0', '0');
INSERT INTO `kg_clients` VALUES ('4', 'globalshopping', '1', '1', 'huanqiu', '9fo5xxxsssshuanqiumUo59fo55mUo', '1', 'hq', '2533', '1');
INSERT INTO `kg_clients` VALUES ('5', 'feisuda', '1', '1', 'huanqiu1', 'In2xaPbPyaucIsqh5CGEslsYrT5mUso', '1', 'hq', '2533', '1');

-- ----------------------------
-- Table structure for kg_laravel_exceptions
-- ----------------------------
DROP TABLE IF EXISTS `kg_laravel_exceptions`;
CREATE TABLE `kg_laravel_exceptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` int(11) NOT NULL,
  `trace` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_laravel_exceptions
-- ----------------------------

-- ----------------------------
-- Table structure for kg_migrations
-- ----------------------------
DROP TABLE IF EXISTS `kg_migrations`;
CREATE TABLE `kg_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_migrations
-- ----------------------------
INSERT INTO `kg_migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `kg_migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `kg_migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `kg_migrations` VALUES ('4', '2017_07_17_040159_create_config_table', '2');
INSERT INTO `kg_migrations` VALUES ('5', '2017_07_17_040159_create_exceptions_table', '3');

-- ----------------------------
-- Table structure for kg_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `kg_password_resets`;
CREATE TABLE `kg_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for kg_users
-- ----------------------------
DROP TABLE IF EXISTS `kg_users`;
CREATE TABLE `kg_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kg_users
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
