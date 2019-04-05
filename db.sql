/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.2.3-MariaDB-log : Database - cp_live
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `cms_apicustom` */

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_apicustom` */

insert  into `cms_apicustom`(`id`,`permalink`,`tabel`,`aksi`,`kolom`,`orderby`,`sub_query_1`,`sql_where`,`nama`,`keterangan`,`parameter`,`created_at`,`updated_at`,`method_type`,`parameters`,`responses`) values 
(2,'registration','cms_users','save_add',NULL,NULL,NULL,NULL,'Registration',NULL,NULL,NULL,NULL,'post','a:7:{i:0;a:5:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:5;a:5:{s:4:\"name\";s:6:\"mobile\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:6;a:5:{s:4:\"name\";s:11:\"is_verified\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}','a:10:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:6:\"mobile\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:11:\"is_verified\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(3,'report','cp_report','save_add',NULL,NULL,NULL,NULL,'Report',NULL,NULL,NULL,NULL,'post','a:5:{i:0;a:5:{s:4:\"name\";s:14:\"document_title\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:15:\"document_remark\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:14:\"reference_file\";s:4:\"type\";s:4:\"file\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:4;a:5:{s:4:\"name\";s:9:\"doctor_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}','a:6:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:14:\"document_title\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:15:\"document_remark\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:14:\"reference_file\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:9:\"doctor_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(4,'schedule','cp_schedule','save_add',NULL,NULL,NULL,NULL,'Schedule',NULL,NULL,NULL,NULL,'post','a:4:{i:0;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:9:\"doctor_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:12:\"registred_by\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:3;a:5:{s:4:\"name\";s:13:\"schedule_date\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}','a:13:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"doctor_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:12:\"registred_by\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:13:\"schedule_date\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:26:\"schedule_duration_required\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:26:\"actual_consulting_duration\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"payment_stute\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:17:\"payment_reference\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:17:\"registration_mode\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:15:\"consulting_mode\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:17:\"consulting_status\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:18:\"consulting_remarks\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(5,'advice','doctor_advice','save_add',NULL,NULL,NULL,NULL,'Advice',NULL,NULL,NULL,NULL,'post','a:3:{i:0;a:5:{s:4:\"name\";s:11:\"schedule_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:7:\"remarks\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:15:\"advice_document\";s:4:\"type\";s:4:\"file\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}','a:4:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"schedule_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:7:\"remarks\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:15:\"advice_document\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(6,'registration_update','cms_users','save_edit',NULL,NULL,NULL,'id=[id]','Registration update',NULL,NULL,NULL,NULL,'post','a:3:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:2;a:5:{s:4:\"name\";s:11:\"is_verified\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}','a:12:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:8:\"password\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:17:\"id_cms_privileges\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:19:\"cms_privileges_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:28:\"cms_privileges_is_superadmin\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:26:\"cms_privileges_theme_color\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:11:\"is_verified\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(7,'user_schedule','cp_schedule','list',NULL,NULL,NULL,'customer_id=[customer_id]','User Schedule',NULL,NULL,NULL,NULL,'post','a:1:{i:0;a:5:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}','a:13:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"customer_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"doctor_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:12:\"registred_by\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:13:\"schedule_date\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:26:\"schedule_duration_required\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:6;a:4:{s:4:\"name\";s:26:\"actual_consulting_duration\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:7;a:4:{s:4:\"name\";s:13:\"payment_stute\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:17:\"payment_reference\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:17:\"registration_mode\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:15:\"consulting_mode\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:17:\"consulting_status\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:18:\"consulting_remarks\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

/*Table structure for table `cms_apikey` */

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_apikey` */

/*Table structure for table `cms_dashboard` */

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_dashboard` */

/*Table structure for table `cms_email_queues` */

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_email_queues` */

/*Table structure for table `cms_email_templates` */

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_email_templates` */

insert  into `cms_email_templates`(`id`,`name`,`slug`,`subject`,`content`,`description`,`from_name`,`from_email`,`cc_email`,`created_at`,`updated_at`) values 
(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2018-08-28 04:49:23',NULL);

/*Table structure for table `cms_logs` */

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_logs` */

insert  into `cms_logs`(`id`,`ipaddress`,`useragent`,`url`,`description`,`details`,`id_cms_users`,`created_at`,`updated_at`) values 
(1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address ::1','',1,'2018-08-28 04:56:04',NULL),
(2,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address ::1','',1,'2018-08-29 04:30:06',NULL),
(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2018-08-29 04:39:45',NULL),
(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0','http://localhost:8000/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-23 04:31:39',NULL),
(5,'127.0.0.1','PostmanRuntime/7.6.1','http://localhost:8000/api/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2019-03-23 06:57:19',NULL),
(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-03-25 15:15:31',NULL),
(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-03-30 06:33:45',NULL),
(8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/admin/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-03-30 13:10:23',NULL),
(9,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-04-03 01:03:32',NULL),
(10,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-04-03 15:31:47',NULL),
(11,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/login','admin@admin.com login with IP Address 127.0.0.1','',1,'2019-04-05 15:55:23',NULL),
(12,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/admin/users/add-save','Add New Data pasent at Users Management','',1,'2019-04-05 15:57:54',NULL),
(13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0','http://localhost:8000/admin/users/add-save','Add New Data doctor at Users Management','',1,'2019-04-05 15:58:31',NULL);

/*Table structure for table `cms_menus` */

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_menus` */

insert  into `cms_menus`(`id`,`name`,`type`,`path`,`color`,`icon`,`parent_id`,`is_active`,`is_dashboard`,`id_cms_privileges`,`sorting`,`created_at`,`updated_at`) values 
(1,'Report','Route','AdminCpReportControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,1,'2019-03-25 15:18:56',NULL),
(2,'Schedule','Route','AdminCpScheduleControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,2,'2019-03-25 15:21:09',NULL),
(3,'Advice','Route','AdminDoctorAdviceControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,3,'2019-03-25 15:24:18',NULL);

/*Table structure for table `cms_menus_privileges` */

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_menus_privileges` */

insert  into `cms_menus_privileges`(`id`,`id_cms_menus`,`id_cms_privileges`) values 
(1,1,1),
(2,2,1),
(3,3,1);

/*Table structure for table `cms_moduls` */

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_moduls` */

insert  into `cms_moduls`(`id`,`name`,`icon`,`path`,`table_name`,`controller`,`is_protected`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2018-08-28 04:49:22',NULL,NULL),
(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(12,'Report','fa fa-glass','cp_report','cp_report','AdminCpReportController',0,0,'2019-03-25 15:18:55',NULL,NULL),
(13,'Schedule','fa fa-glass','cp_schedule','cp_schedule','AdminCpScheduleController',0,0,'2019-03-25 15:21:08',NULL,NULL),
(14,'Advice','fa fa-glass','doctor_advice','doctor_advice','AdminDoctorAdviceController',0,0,'2019-03-25 15:24:17',NULL,NULL);

/*Table structure for table `cms_notifications` */

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_notifications` */

/*Table structure for table `cms_privileges` */

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_privileges` */

insert  into `cms_privileges`(`id`,`name`,`is_superadmin`,`theme_color`,`created_at`,`updated_at`) values 
(1,'Super Administrator',1,'skin-red','2018-08-28 04:49:22',NULL),
(2,'Customer',0,'skin-blue',NULL,NULL),
(3,'Doctor',0,'skin-blue',NULL,NULL);

/*Table structure for table `cms_privileges_roles` */

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_privileges_roles` */

insert  into `cms_privileges_roles`(`id`,`is_visible`,`is_create`,`is_read`,`is_edit`,`is_delete`,`id_cms_privileges`,`id_cms_moduls`,`created_at`,`updated_at`) values 
(1,1,0,0,0,0,1,1,'2018-08-28 04:49:22',NULL),
(2,1,1,1,1,1,1,2,'2018-08-28 04:49:22',NULL),
(3,0,1,1,1,1,1,3,'2018-08-28 04:49:22',NULL),
(4,1,1,1,1,1,1,4,'2018-08-28 04:49:22',NULL),
(5,1,1,1,1,1,1,5,'2018-08-28 04:49:22',NULL),
(6,1,1,1,1,1,1,6,'2018-08-28 04:49:22',NULL),
(7,1,1,1,1,1,1,7,'2018-08-28 04:49:22',NULL),
(8,1,1,1,1,1,1,8,'2018-08-28 04:49:22',NULL),
(9,1,1,1,1,1,1,9,'2018-08-28 04:49:22',NULL),
(10,1,1,1,1,1,1,10,'2018-08-28 04:49:22',NULL),
(11,1,0,1,0,1,1,11,'2018-08-28 04:49:22',NULL),
(12,1,1,1,1,1,1,12,NULL,NULL),
(13,1,1,1,1,1,1,13,NULL,NULL),
(14,1,1,1,1,1,1,14,NULL,NULL);

/*Table structure for table `cms_settings` */

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_settings` */

insert  into `cms_settings`(`id`,`name`,`content`,`content_input_type`,`dataenum`,`helper`,`created_at`,`updated_at`,`group_setting`,`label`) values 
(1,'login_background_color',NULL,'text',NULL,'Input hexacode','2018-08-28 04:49:22',NULL,'Login Register Style','Login Background Color'),
(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2018-08-28 04:49:22',NULL,'Login Register Style','Login Font Color'),
(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Login Register Style','Login Background Image'),
(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','Email Sender'),
(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2018-08-28 04:49:22',NULL,'Email Setting','Mail Driver'),
(6,'smtp_host','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Host'),
(7,'smtp_port','25','text',NULL,'default 25','2018-08-28 04:49:22',NULL,'Email Setting','SMTP Port'),
(8,'smtp_username','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Username'),
(9,'smtp_password','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Password'),
(10,'appname','CP','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Application Name'),
(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2018-08-28 04:49:22',NULL,'Application Setting','Default Paper Print Size'),
(12,'logo','uploads/2019-03/aef789319f7c79508c2c62241f349d1b.jpg','upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Logo'),
(13,'favicon',NULL,'upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Favicon'),
(14,'api_debug_mode','true','select','true,false',NULL,'2018-08-28 04:49:22',NULL,'Application Setting','API Debug Mode'),
(15,'google_api_key',NULL,'text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Google API Key'),
(16,'google_fcm_key',NULL,'text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Google FCM Key');

/*Table structure for table `cms_statistic_components` */

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_statistic_components` */

/*Table structure for table `cms_statistics` */

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_statistics` */

/*Table structure for table `cms_users` */

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_users` */

insert  into `cms_users`(`id`,`name`,`photo`,`email`,`password`,`id_cms_privileges`,`created_at`,`updated_at`,`status`,`is_verified`,`group_id`,`mobile`) values 
(1,'Super Admin',NULL,'admin@admin.com','$2y$10$t7CoA1F8awcb4kf/nUdJsuVymjMyEQb/bm5ha96MUlfldg25nXn5y',1,'2018-08-28 04:49:21',NULL,'Active',NULL,NULL,NULL),
(2,'pasent','uploads/1/2019-04/cloudonsolutions.png','pasent@gmail.com','$2y$10$iAefAgiFXztl6qL6U7Pjl.yHRYR3T6.j3ASVTa/LTNiqog7lURiji',2,'2019-04-05 15:57:53',NULL,NULL,NULL,NULL,'0987654321'),
(3,'doctor','uploads/1/2019-04/cloudonsolutions.png','doctor@gmail.com','$2y$10$mKtq1pDHAiE1Ir7PDw9bZOYrDdei58HBYW3SF0AFQhNmwPliCc0V2',3,'2019-04-05 15:58:31',NULL,NULL,NULL,NULL,'9876543210');

/*Table structure for table `cp_report` */

DROP TABLE IF EXISTS `cp_report`;

CREATE TABLE `cp_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_title` varchar(255) DEFAULT NULL,
  `document_remark` text DEFAULT NULL,
  `reference_file` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cp_report` */

/*Table structure for table `cp_schedule` */

DROP TABLE IF EXISTS `cp_schedule`;

CREATE TABLE `cp_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `registred_by` int(11) DEFAULT NULL,
  `schedule_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `schedule_duration_required` int(11) DEFAULT NULL,
  `actual_consulting_duration` int(11) DEFAULT NULL,
  `payment_stute` int(11) DEFAULT NULL,
  `payment_reference` int(11) DEFAULT NULL,
  `registration_mode` int(11) DEFAULT NULL,
  `consulting_mode` int(11) DEFAULT NULL,
  `consulting_status` int(11) DEFAULT NULL,
  `consulting_remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cp_schedule` */

insert  into `cp_schedule`(`id`,`customer_id`,`doctor_id`,`registred_by`,`schedule_date`,`schedule_duration_required`,`actual_consulting_duration`,`payment_stute`,`payment_reference`,`registration_mode`,`consulting_mode`,`consulting_status`,`consulting_remarks`,`created_at`,`updated_at`) values 
(1,2,3,2,'2019-04-05 21:23:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-05 16:05:47',NULL);

/*Table structure for table `doctor_advice` */

DROP TABLE IF EXISTS `doctor_advice`;

CREATE TABLE `doctor_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `advice_document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor_advice` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
