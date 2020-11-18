/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : 127.0.0.1:3306
 Source Schema         : dblog

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 18/11/2020 16:48:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'feather icon-settings', '', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', '', 'auth/users', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', '', 'auth/roles', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', '', 'auth/permissions', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', '', 'auth/menu', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', '', 'auth/logs', '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 8, 'Contents', 'fa-book', NULL, '2020-11-18 07:06:11', '2020-11-18 07:11:55');
INSERT INTO `admin_menu` VALUES (9, 8, 9, 'Posts', NULL, '/post', '2020-11-18 07:11:01', '2020-11-18 07:11:01');
INSERT INTO `admin_menu` VALUES (10, 8, 10, 'Categories', NULL, '/category', '2020-11-18 07:56:13', '2020-11-18 07:56:41');
INSERT INTO `admin_menu` VALUES (11, 8, 11, 'Tags', NULL, '/tag', '2020-11-18 07:57:14', '2020-11-18 07:59:37');
INSERT INTO `admin_menu` VALUES (12, 0, 12, 'Friends', 'fa-bicycle', NULL, '2020-11-18 07:58:00', '2020-11-18 08:01:16');
INSERT INTO `admin_menu` VALUES (13, 12, 13, 'Friends', NULL, '/friend', '2020-11-18 07:58:58', '2020-11-18 07:58:58');
INSERT INTO `admin_menu` VALUES (14, 0, 14, 'Settings', 'fa-cogs', NULL, '2020-11-18 08:00:16', '2020-11-18 08:00:57');
INSERT INTO `admin_menu` VALUES (15, 14, 15, 'Settings', NULL, '/setting', '2020-11-18 08:00:35', '2020-11-18 08:22:34');
INSERT INTO `admin_menu` VALUES (16, 8, 16, 'Pages', NULL, '/page', '2020-11-18 08:02:03', '2020-11-18 08:02:03');
COMMIT;

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-11-18 06:33:25', '2020-11-18 06:33:25');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"NhDCHUHTimYGQh5l611w1hO3jazyxyRzjnYhNmur\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-11-18 06:33:51', '2020-11-18 06:33:51');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 06:33:51', '2020-11-18 06:33:51');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:34:06', '2020-11-18 06:34:06');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:35:33', '2020-11-18 06:35:33');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:35:53', '2020-11-18 06:35:53');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:39:11', '2020-11-18 06:39:11');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:39:14', '2020-11-18 06:39:14');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:40:21', '2020-11-18 06:40:21');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:40:24', '2020-11-18 06:40:24');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"post\"}', '2020-11-18 06:40:41', '2020-11-18 06:40:41');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"posts\"}', '2020-11-18 06:40:43', '2020-11-18 06:40:43');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"posts\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Post\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PostController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Post\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":{\"1\":{\"name\":\"auth_id\",\"translation\":\"\\u4f5c\\u8005\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u4f5c\\u8005\"},\"2\":{\"name\":\"title\",\"translation\":\"\\u6807\\u9898\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6807\\u9898\"},\"3\":{\"name\":\"slug\",\"translation\":\"slug\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"slug\"},\"4\":{\"name\":\"summary\",\"translation\":\"\\u6458\\u8981\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6458\\u8981\"},\"5\":{\"name\":\"content\",\"translation\":\"MarkDown\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"MarkDown\\u5185\\u5bb9\"},\"6\":{\"name\":\"html_content\",\"translation\":\"HTML\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"HTML\\u5185\\u5bb9\"},\"7\":{\"name\":\"seo_keyword\",\"translation\":\"SEO\\u5173\\u952e\\u8bcd\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"SEO\\u5173\\u952e\\u8bcd\"},\"8\":{\"name\":\"seo_description\",\"translation\":\"SEO\\u63cf\\u8ff0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"SEO\\u63cf\\u8ff0\"},\"9\":{\"name\":\"category_id\",\"translation\":\"\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7c7b\\u578b\"},\"10\":{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"},\"11\":{\"name\":\"cover\",\"translation\":\"\\u5c01\\u9762\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5c01\\u9762\"},\"12\":{\"name\":\"is_hot\",\"translation\":\"\\u70ed\\u95e8\",\"type\":\"integer\",\"key\":null,\"default\":\"1\",\"comment\":\"\\u70ed\\u95e8\"},\"13\":{\"name\":\"is_recommand\",\"translation\":\"\\u63a8\\u8350\",\"type\":\"integer\",\"key\":null,\"default\":\"1\",\"comment\":\"\\u63a8\\u8350\"},\"14\":{\"name\":\"deleted_at\",\"translation\":\"\\u5220\\u9664\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u5220\\u9664\\u65f6\\u95f4\"},\"15\":{\"name\":\"published_at\",\"translation\":\"\\u53d1\\u5e03\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u53d1\\u5e03\\u65f6\\u95f4\"},\"16\":{\"name\":\"created_at\",\"translation\":\"\\u521b\\u5efa\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u521b\\u5efa\\u65f6\\u95f4\"},\"17\":{\"name\":\"updated_at\",\"translation\":\"\\u66f4\\u65b0\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u66f4\\u65b0\\u65f6\\u95f4\"}},\"primary_key\":\"id\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\"}', '2020-11-18 06:53:55', '2020-11-18 06:53:55');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 06:53:56', '2020-11-18 06:53:56');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:38', '2020-11-18 06:58:38');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:43', '2020-11-18 06:58:43');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:46', '2020-11-18 06:58:46');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:47', '2020-11-18 06:58:47');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:47', '2020-11-18 06:58:47');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:47', '2020-11-18 06:58:47');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:48', '2020-11-18 06:58:48');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:58:48', '2020-11-18 06:58:48');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 06:58:59', '2020-11-18 06:58:59');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:24', '2020-11-18 06:59:24');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:30', '2020-11-18 06:59:30');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:32', '2020-11-18 06:59:32');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:44', '2020-11-18 06:59:44');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:47', '2020-11-18 06:59:47');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:48', '2020-11-18 06:59:48');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 06:59:51', '2020-11-18 06:59:51');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:00:18', '2020-11-18 07:00:18');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:00:36', '2020-11-18 07:00:36');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:00:38', '2020-11-18 07:00:38');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:00:42', '2020-11-18 07:00:42');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Posts management\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:01:14', '2020-11-18 07:01:14');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:01:14', '2020-11-18 07:01:14');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:01:20', '2020-11-18 07:01:20');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:01:34', '2020-11-18 07:01:34');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-11-18 07:04:13', '2020-11-18 07:04:13');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:15', '2020-11-18 07:04:15');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:16', '2020-11-18 07:04:16');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:16', '2020-11-18 07:04:16');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:16', '2020-11-18 07:04:16');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:16', '2020-11-18 07:04:16');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:04:18', '2020-11-18 07:04:18');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Posts management\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/post*\",null],\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:04:33', '2020-11-18 07:04:33');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:33', '2020-11-18 07:04:33');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:46', '2020-11-18 07:04:46');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:04:52', '2020-11-18 07:04:52');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"Post\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permissions\":\"7\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\"}', '2020-11-18 07:06:11', '2020-11-18 07:06:11');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:06:12', '2020-11-18 07:06:12');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:06:21', '2020-11-18 07:06:21');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:06:40', '2020-11-18 07:06:40');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post\",\"icon\":\"fa-book\",\"uri\":\"\\/post\",\"roles\":[null],\"permissions\":\"7\",\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:06:58', '2020-11-18 07:06:58');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:06:58', '2020-11-18 07:06:58');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:07:00', '2020-11-18 07:07:00');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:01', '2020-11-18 07:07:01');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:07:01', '2020-11-18 07:07:01');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:07:16', '2020-11-18 07:07:16');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:22', '2020-11-18 07:07:22');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:24', '2020-11-18 07:07:24');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:27', '2020-11-18 07:07:27');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"20\"}', '2020-11-18 07:07:33', '2020-11-18 07:07:33');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:38', '2020-11-18 07:07:38');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:41', '2020-11-18 07:07:41');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:07:46', '2020-11-18 07:07:46');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:07:54', '2020-11-18 07:07:54');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:08:17', '2020-11-18 07:08:17');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Posts management\",\"name\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[null],\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\"}', '2020-11-18 07:08:30', '2020-11-18 07:08:30');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:08:30', '2020-11-18 07:08:30');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:08:39', '2020-11-18 07:08:39');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"7\",\"slug\":\"Posts\",\"name\":\"Posts\",\"http_method\":[null],\"http_path\":[\"\\/post*\",null],\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:09:19', '2020-11-18 07:09:19');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:19', '2020-11-18 07:09:19');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:24', '2020-11-18 07:09:24');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:27', '2020-11-18 07:09:27');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 07:09:30', '2020-11-18 07:09:30');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:32', '2020-11-18 07:09:32');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:33', '2020-11-18 07:09:33');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:33', '2020-11-18 07:09:33');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:09:36', '2020-11-18 07:09:36');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:09:55', '2020-11-18 07:09:55');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permissions\":\"8\",\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:10:14', '2020-11-18 07:10:14');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:10:14', '2020-11-18 07:10:14');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:10:16', '2020-11-18 07:10:16');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:10:18', '2020-11-18 07:10:18');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Post\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:10:22', '2020-11-18 07:10:22');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:10:22', '2020-11-18 07:10:22');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:10:24', '2020-11-18 07:10:24');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Posts\",\"icon\":null,\"uri\":\"\\/post\",\"roles\":[null],\"permissions\":\"8\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\"}', '2020-11-18 07:11:01', '2020-11-18 07:11:01');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:11:03', '2020-11-18 07:11:03');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:11:05', '2020-11-18 07:11:05');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:08', '2020-11-18 07:11:08');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:11', '2020-11-18 07:11:11');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:13', '2020-11-18 07:11:13');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:13', '2020-11-18 07:11:13');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:14', '2020-11-18 07:11:14');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:14', '2020-11-18 07:11:14');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:17', '2020-11-18 07:11:17');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:24', '2020-11-18 07:11:24');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:30', '2020-11-18 07:11:30');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:33', '2020-11-18 07:11:33');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:39', '2020-11-18 07:11:39');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:11:44', '2020-11-18 07:11:44');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Contents\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"uk17TFPsfNDU4t7pdi9CYr0mANWrmRCcrAPD5ExD\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:11:55', '2020-11-18 07:11:55');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:11:55', '2020-11-18 07:11:55');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:11:57', '2020-11-18 07:11:57');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:13:35', '2020-11-18 07:13:35');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:13:39', '2020-11-18 07:13:39');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:43', '2020-11-18 07:13:43');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:46', '2020-11-18 07:13:46');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:46', '2020-11-18 07:13:46');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:46', '2020-11-18 07:13:46');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:47', '2020-11-18 07:13:47');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:47', '2020-11-18 07:13:47');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:48', '2020-11-18 07:13:48');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:13:49', '2020-11-18 07:13:49');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:53', '2020-11-18 07:13:53');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:54', '2020-11-18 07:13:54');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:55', '2020-11-18 07:13:55');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:13:55', '2020-11-18 07:13:55');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:09', '2020-11-18 07:14:09');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:10', '2020-11-18 07:14:10');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:11', '2020-11-18 07:14:11');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:14', '2020-11-18 07:14:14');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:20', '2020-11-18 07:14:20');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/post/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:23', '2020-11-18 07:14:23');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/post/create', 'GET', '127.0.0.1', '[]', '2020-11-18 07:14:28', '2020-11-18 07:14:28');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:35', '2020-11-18 07:14:35');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/post/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:37', '2020-11-18 07:14:37');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:14:38', '2020-11-18 07:14:38');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:15:55', '2020-11-18 07:15:55');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:15:57', '2020-11-18 07:15:57');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:00', '2020-11-18 07:16:00');
INSERT INTO `admin_operation_log` VALUES (134, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-11-18 07:16:00', '2020-11-18 07:16:00');
INSERT INTO `admin_operation_log` VALUES (135, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"CwgwFNJFfTZBfYObXFUbSfqwGkmIXWHJLxlNuMsC\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-11-18 07:16:04', '2020-11-18 07:16:04');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 07:16:04', '2020-11-18 07:16:04');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 07:16:06', '2020-11-18 07:16:06');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:09', '2020-11-18 07:16:09');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:12', '2020-11-18 07:16:12');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:16:15', '2020-11-18 07:16:15');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:35', '2020-11-18 07:16:35');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:35', '2020-11-18 07:16:35');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:36', '2020-11-18 07:16:36');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:37', '2020-11-18 07:16:37');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:40', '2020-11-18 07:16:40');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:42', '2020-11-18 07:16:42');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:43', '2020-11-18 07:16:43');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:52', '2020-11-18 07:16:52');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:16:56', '2020-11-18 07:16:56');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-11-18 07:17:51', '2020-11-18 07:17:51');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:17:53', '2020-11-18 07:17:53');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:17:58', '2020-11-18 07:17:58');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:17:59', '2020-11-18 07:17:59');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:18:00', '2020-11-18 07:18:00');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:18:01', '2020-11-18 07:18:01');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:18:02', '2020-11-18 07:18:02');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:18:04', '2020-11-18 07:18:04');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:18:22', '2020-11-18 07:18:22');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:18:33', '2020-11-18 07:18:33');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:18:38', '2020-11-18 07:18:38');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:19:12', '2020-11-18 07:19:12');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:19:14', '2020-11-18 07:19:14');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:17', '2020-11-18 07:19:17');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:19:19', '2020-11-18 07:19:19');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:21', '2020-11-18 07:19:21');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:22', '2020-11-18 07:19:22');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:23', '2020-11-18 07:19:23');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:24', '2020-11-18 07:19:24');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:24', '2020-11-18 07:19:24');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:26', '2020-11-18 07:19:26');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:28', '2020-11-18 07:19:28');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:28', '2020-11-18 07:19:28');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:19:30', '2020-11-18 07:19:30');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:20:36', '2020-11-18 07:20:36');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/post', 'GET', '127.0.0.1', '[]', '2020-11-18 07:20:38', '2020-11-18 07:20:38');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:21:55', '2020-11-18 07:21:55');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"tags\"}', '2020-11-18 07:22:02', '2020-11-18 07:22:02');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tags\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Tag\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TagController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Tag\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u540d\\u79f0\"},{\"name\":\"created_at\",\"translation\":\"\\u521b\\u5efa\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u521b\\u5efa\\u65f6\\u95f4\"}],\"primary_key\":\"id\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:23:46', '2020-11-18 07:23:46');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:23:46', '2020-11-18 07:23:46');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:23:49', '2020-11-18 07:23:49');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:23:54', '2020-11-18 07:23:54');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:23:55', '2020-11-18 07:23:55');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:23:56', '2020-11-18 07:23:56');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:23:56', '2020-11-18 07:23:56');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:23:58', '2020-11-18 07:23:58');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categor\"}', '2020-11-18 07:24:05', '2020-11-18 07:24:05');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"catego\"}', '2020-11-18 07:24:05', '2020-11-18 07:24:05');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categoy\"}', '2020-11-18 07:24:07', '2020-11-18 07:24:07');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"catego\"}', '2020-11-18 07:24:09', '2020-11-18 07:24:09');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categor\"}', '2020-11-18 07:24:09', '2020-11-18 07:24:09');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"category\"}', '2020-11-18 07:24:11', '2020-11-18 07:24:11');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categorys\"}', '2020-11-18 07:24:14', '2020-11-18 07:24:14');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categor\"}', '2020-11-18 07:24:20', '2020-11-18 07:24:20');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"categories\"}', '2020-11-18 07:24:21', '2020-11-18 07:24:21');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"categories\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Category\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CategoryController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Category\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u540d\\u79f0\"},{\"name\":\"pid\",\"translation\":\"\\u7236\\u7ea7\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7236\\u7ea7\"},{\"name\":\"url\",\"translation\":\"\\u94fe\\u63a5\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u94fe\\u63a5\"},{\"name\":\"sort_by\",\"translation\":\"\\u6392\\u5e8f\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6392\\u5e8f\"},{\"name\":\"is_show\",\"translation\":\"\\u663e\\u793a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u663e\\u793a\"},{\"name\":\"depth\",\"translation\":\"\\u6df1\\u5ea6\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6df1\\u5ea6\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:27:25', '2020-11-18 07:27:25');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:27:25', '2020-11-18 07:27:25');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:27:42', '2020-11-18 07:27:42');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":null}', '2020-11-18 07:27:44', '2020-11-18 07:27:44');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"friend\"}', '2020-11-18 07:27:48', '2020-11-18 07:27:48');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"friends\"}', '2020-11-18 07:27:50', '2020-11-18 07:27:50');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"f\"}', '2020-11-18 07:27:55', '2020-11-18 07:27:55');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"fde\"}', '2020-11-18 07:27:57', '2020-11-18 07:27:57');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"fri\"}', '2020-11-18 07:27:59', '2020-11-18 07:27:59');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"frien\"}', '2020-11-18 07:28:00', '2020-11-18 07:28:00');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"friend\"}', '2020-11-18 07:28:01', '2020-11-18 07:28:01');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"friends\"}', '2020-11-18 07:28:03', '2020-11-18 07:28:03');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"friends\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Friend\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FriendController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Friend\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"type\",\"translation\":\"\\u7c7b\\u578b\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link_name\",\"translation\":\"\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link_url\",\"translation\":\"\\u94fe\\u63a5\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link_logo\",\"translation\":\"LOGO\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link_description\",\"translation\":\"\\u63cf\\u8ff0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"is_show\",\"translation\":\"\\u663e\\u793a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:30:10', '2020-11-18 07:30:10');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:30:10', '2020-11-18 07:30:10');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:38:20', '2020-11-18 07:38:20');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"dblog\",\"tb\":\"pages\"}', '2020-11-18 07:38:24', '2020-11-18 07:38:24');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"pages\"}', '2020-11-18 07:38:25', '2020-11-18 07:38:25');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"pages\",\"exist-table\":\"dblog|pages\",\"model_name\":\"App\\\\Models\\\\Page\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PageController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Page\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"author\",\"translation\":\"\\u4f5c\\u8005\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u4f5c\\u8005\"},{\"name\":\"content\",\"translation\":\"MarkDown\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"MarkDown\\u5185\\u5bb9\"},{\"name\":\"html_content\",\"translation\":\"HTML\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"HTML\\u5185\\u5bb9\"},{\"name\":\"published_at\",\"translation\":\"\\u53d1\\u5e03\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u53d1\\u5e03\\u65f6\\u95f4\"},{\"name\":\"seo_description\",\"translation\":\"SEO\\u63cf\\u8ff0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"SEO\\u63cf\\u8ff0\"},{\"name\":\"seo_keyword\",\"translation\":\"SEO\\u5173\\u952e\\u8bcd\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"SEO\\u5173\\u952e\\u8bcd\"},{\"name\":\"slug\",\"translation\":\"slug\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"slug\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"},{\"name\":\"summary\",\"translation\":\"\\u6458\\u8981\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6458\\u8981\"},{\"name\":\"title\",\"translation\":\"\\u6807\\u9898\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6807\\u9898\"}],\"primary_key\":\"id\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:38:50', '2020-11-18 07:38:50');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:38:50', '2020-11-18 07:38:50');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:38:54', '2020-11-18 07:38:54');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"post\"}', '2020-11-18 07:40:19', '2020-11-18 07:40:19');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"post_\"}', '2020-11-18 07:40:22', '2020-11-18 07:40:22');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"post_t\"}', '2020-11-18 07:40:22', '2020-11-18 07:40:22');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"post_tags\"}', '2020-11-18 07:40:23', '2020-11-18 07:40:23');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"post_tags\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\PostTag\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PostTagController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\PostTag\",\"create\":[\"migration\",\"model\",\"migrate\",\"lang\"],\"fields\":[{\"name\":\"post_id\",\"translation\":\"\\u6587\\u7ae0ID\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6587\\u7ae0ID\"},{\"name\":\"tag_id\",\"translation\":\"\\u6807\\u7b7eID\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u6807\\u7b7eID\"},{\"name\":\"created_at\",\"translation\":\"\\u521b\\u5efa\\u65f6\\u95f4\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u521b\\u5efa\\u65f6\\u95f4\"}],\"primary_key\":\"id\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:42:24', '2020-11-18 07:42:24');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:42:24', '2020-11-18 07:42:24');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"site\"}', '2020-11-18 07:42:55', '2020-11-18 07:42:55');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"s\"}', '2020-11-18 07:43:02', '2020-11-18 07:43:02');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"sett\"}', '2020-11-18 07:43:03', '2020-11-18 07:43:03');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"setting\"}', '2020-11-18 07:43:05', '2020-11-18 07:43:05');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"setting\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\Setting\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SettingController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\Setting\",\"create\":[\"migration\",\"model\",\"repository\",\"controller\",\"migrate\",\"lang\"],\"fields\":[{\"name\":\"type\",\"translation\":\"\\u7c7b\\u578b\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7c7b\\u578b\"},{\"name\":\"setting_key\",\"translation\":\"\\u952e\\u503c\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u952e\\u503c\"},{\"name\":\"setting_val\",\"translation\":\"\\u503c\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u503c\"},{\"name\":\"created_at\",\"translation\":\"\\u521b\\u5efa\\u65f6\\u95f4\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u521b\\u5efa\\u65f6\\u95f4\"}],\"primary_key\":\"id\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:45:10', '2020-11-18 07:45:10');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-11-18 07:45:10', '2020-11-18 07:45:10');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:47:06', '2020-11-18 07:47:06');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:47:14', '2020-11-18 07:47:14');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:47:24', '2020-11-18 07:47:24');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Posts management\",\"name\":\"Posts management\",\"http_method\":[null],\"http_path\":[null],\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:47:36', '2020-11-18 07:47:36');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:47:36', '2020-11-18 07:47:36');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:47:40', '2020-11-18 07:47:40');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Pages management\",\"name\":\"Pages management\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:47:55', '2020-11-18 07:47:55');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:47:55', '2020-11-18 07:47:55');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:48:00', '2020-11-18 07:48:00');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:00', '2020-11-18 07:51:00');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:01', '2020-11-18 07:51:01');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:01', '2020-11-18 07:51:01');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:02', '2020-11-18 07:51:02');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:02', '2020-11-18 07:51:02');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:02', '2020-11-18 07:51:02');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:51:05', '2020-11-18 07:51:05');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Pages\",\"name\":\"Pages\",\"http_method\":[null],\"http_path\":[\"\\/page*\",null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:51:21', '2020-11-18 07:51:21');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:21', '2020-11-18 07:51:21');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:51:24', '2020-11-18 07:51:24');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"slug\":\"Pages\",\"name\":\"Pages\",\"http_method\":[null],\"http_path\":[\"\\/page*\",null],\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:51:30', '2020-11-18 07:51:30');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:51:30', '2020-11-18 07:51:30');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:51:45', '2020-11-18 07:51:45');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Categories management\",\"name\":\"Categories management\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:52:15', '2020-11-18 07:52:15');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:52:15', '2020-11-18 07:52:15');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:52:18', '2020-11-18 07:52:18');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"slug\":\"Categories\",\"name\":\"Categories\",\"http_method\":[null],\"http_path\":[\"\\/category*\",null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:52:41', '2020-11-18 07:52:41');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:52:41', '2020-11-18 07:52:41');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:52:46', '2020-11-18 07:52:46');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Setting management\",\"name\":\"Setting management\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:53:02', '2020-11-18 07:53:02');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:53:02', '2020-11-18 07:53:02');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:53:04', '2020-11-18 07:53:04');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"13\",\"slug\":\"Setting\",\"name\":\"Setting\",\"http_method\":[null],\"http_path\":[\"\\/setting*\",null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:53:22', '2020-11-18 07:53:22');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:53:22', '2020-11-18 07:53:22');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:53:30', '2020-11-18 07:53:30');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Friends management\",\"name\":\"Friends management\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:53:48', '2020-11-18 07:53:48');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:53:48', '2020-11-18 07:53:48');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:53:49', '2020-11-18 07:53:49');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"slug\":\"Friends\",\"name\":\"Friends\",\"http_method\":[null],\"http_path\":[\"\\/friend*\",null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:54:06', '2020-11-18 07:54:06');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:54:07', '2020-11-18 07:54:07');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:54:17', '2020-11-18 07:54:17');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"Tags management\",\"name\":\"Tags management\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:54:31', '2020-11-18 07:54:31');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:54:31', '2020-11-18 07:54:31');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:54:33', '2020-11-18 07:54:33');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"slug\":\"Tags\",\"name\":\"Tags\",\"http_method\":[null],\"http_path\":[\"\\/tag*\",null],\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/permissions\"}', '2020-11-18 07:54:51', '2020-11-18 07:54:51');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:54:51', '2020-11-18 07:54:51');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:55:01', '2020-11-18 07:55:01');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Categories\",\"icon\":null,\"uri\":\"\\/\",\"roles\":[null],\"permissions\":\"12\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:56:13', '2020-11-18 07:56:13');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:56:14', '2020-11-18 07:56:14');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:18', '2020-11-18 07:56:18');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:20', '2020-11-18 07:56:20');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:20', '2020-11-18 07:56:20');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:24', '2020-11-18 07:56:24');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:56:30', '2020-11-18 07:56:30');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:56:33', '2020-11-18 07:56:33');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Categories\",\"icon\":null,\"uri\":\"\\/category\",\"roles\":[null],\"permissions\":\"12\",\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:56:41', '2020-11-18 07:56:41');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:41', '2020-11-18 07:56:41');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:56:42', '2020-11-18 07:56:42');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:44', '2020-11-18 07:56:44');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2020-11-18 07:56:46', '2020-11-18 07:56:46');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:48', '2020-11-18 07:56:48');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:56:51', '2020-11-18 07:56:51');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Tags\",\"icon\":null,\"uri\":\"\\/tage\",\"roles\":[null],\"permissions\":\"18\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:57:14', '2020-11-18 07:57:14');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:57:15', '2020-11-18 07:57:15');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"Friend\",\"icon\":\"fa-commenting\",\"uri\":null,\"roles\":[null],\"permissions\":\"16\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:58:00', '2020-11-18 07:58:00');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:58:02', '2020-11-18 07:58:02');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:58:06', '2020-11-18 07:58:06');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Friend\",\"icon\":\"fa-commenting\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:58:13', '2020-11-18 07:58:13');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:58:13', '2020-11-18 07:58:13');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:58:15', '2020-11-18 07:58:15');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:58:17', '2020-11-18 07:58:17');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:58:23', '2020-11-18 07:58:23');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"Friends\",\"icon\":null,\"uri\":\"\\/friend\",\"roles\":[null],\"permissions\":\"16\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 07:58:58', '2020-11-18 07:58:58');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:59:00', '2020-11-18 07:59:00');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:59:05', '2020-11-18 07:59:05');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Friends\",\"icon\":\"fa-commenting\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:59:08', '2020-11-18 07:59:08');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:08', '2020-11-18 07:59:08');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:59:10', '2020-11-18 07:59:10');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:12', '2020-11-18 07:59:12');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/friend', 'GET', '127.0.0.1', '[]', '2020-11-18 07:59:14', '2020-11-18 07:59:14');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:15', '2020-11-18 07:59:15');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:20', '2020-11-18 07:59:20');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:31', '2020-11-18 07:59:31');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 07:59:34', '2020-11-18 07:59:34');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Tags\",\"icon\":null,\"uri\":\"\\/tag\",\"roles\":[null],\"permissions\":\"18\",\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 07:59:37', '2020-11-18 07:59:37');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:37', '2020-11-18 07:59:37');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 07:59:39', '2020-11-18 07:59:39');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:41', '2020-11-18 07:59:41');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:44', '2020-11-18 07:59:44');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:45', '2020-11-18 07:59:45');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:47', '2020-11-18 07:59:47');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 07:59:52', '2020-11-18 07:59:52');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"Settings\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 08:00:16', '2020-11-18 08:00:16');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:00:17', '2020-11-18 08:00:17');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"Settings\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":\"14\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 08:00:35', '2020-11-18 08:00:35');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:00:36', '2020-11-18 08:00:36');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 08:00:39', '2020-11-18 08:00:39');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Settings\",\"icon\":\"fa-cogs\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 08:00:57', '2020-11-18 08:00:57');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:00:57', '2020-11-18 08:00:57');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:00:58', '2020-11-18 08:00:58');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:06', '2020-11-18 08:01:06');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 08:01:09', '2020-11-18 08:01:09');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Friends\",\"icon\":\"fa-bicycle\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 08:01:16', '2020-11-18 08:01:16');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:16', '2020-11-18 08:01:16');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:01:18', '2020-11-18 08:01:18');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:01:21', '2020-11-18 08:01:21');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:23', '2020-11-18 08:01:23');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:25', '2020-11-18 08:01:25');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:27', '2020-11-18 08:01:27');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:28', '2020-11-18 08:01:28');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:01:38', '2020-11-18 08:01:38');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Pages\",\"icon\":null,\"uri\":\"\\/page\",\"roles\":[null],\"permissions\":\"10\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 08:02:03', '2020-11-18 08:02:03');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:02:04', '2020-11-18 08:02:04');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:08', '2020-11-18 08:02:08');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:09', '2020-11-18 08:02:09');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:10', '2020-11-18 08:02:10');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:10', '2020-11-18 08:02:10');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:11', '2020-11-18 08:02:11');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:15', '2020-11-18 08:02:15');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:02:20', '2020-11-18 08:02:20');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-11-18 08:20:52', '2020-11-18 08:20:52');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:20:58', '2020-11-18 08:20:58');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:20:59', '2020-11-18 08:20:59');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:00', '2020-11-18 08:21:00');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:01', '2020-11-18 08:21:01');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:01', '2020-11-18 08:21:01');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:02', '2020-11-18 08:21:02');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:03', '2020-11-18 08:21:03');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:03', '2020-11-18 08:21:03');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:05', '2020-11-18 08:21:05');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/friend', 'GET', '127.0.0.1', '[]', '2020-11-18 08:21:53', '2020-11-18 08:21:53');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:21:57', '2020-11-18 08:21:57');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:00', '2020-11-18 08:22:00');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:01', '2020-11-18 08:22:01');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:02', '2020-11-18 08:22:02');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:04', '2020-11-18 08:22:04');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:05', '2020-11-18 08:22:05');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:06', '2020-11-18 08:22:06');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:06', '2020-11-18 08:22:06');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:06', '2020-11-18 08:22:06');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:06', '2020-11-18 08:22:06');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:08', '2020-11-18 08:22:08');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:11', '2020-11-18 08:22:11');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:16', '2020-11-18 08:22:16');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-11-18 08:22:21', '2020-11-18 08:22:21');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"Settings\",\"icon\":null,\"uri\":\"\\/setting\",\"roles\":[null],\"permissions\":\"14\",\"_method\":\"PUT\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/auth\\/menu\"}', '2020-11-18 08:22:33', '2020-11-18 08:22:33');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:34', '2020-11-18 08:22:34');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-11-18 08:22:35', '2020-11-18 08:22:35');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:37', '2020-11-18 08:22:37');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/friend', 'GET', '127.0.0.1', '[]', '2020-11-18 08:22:40', '2020-11-18 08:22:40');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:41', '2020-11-18 08:22:41');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:42', '2020-11-18 08:22:42');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:42', '2020-11-18 08:22:42');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:42', '2020-11-18 08:22:42');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:42', '2020-11-18 08:22:42');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:45', '2020-11-18 08:22:45');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:46', '2020-11-18 08:22:46');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:47', '2020-11-18 08:22:47');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:58', '2020-11-18 08:22:58');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:22:59', '2020-11-18 08:22:59');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/friend', 'GET', '127.0.0.1', '[]', '2020-11-18 08:23:00', '2020-11-18 08:23:00');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:03', '2020-11-18 08:23:03');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:16', '2020-11-18 08:23:16');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:30', '2020-11-18 08:23:30');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:32', '2020-11-18 08:23:32');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:35', '2020-11-18 08:23:35');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:39', '2020-11-18 08:23:39');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:40', '2020-11-18 08:23:40');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:40', '2020-11-18 08:23:40');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:41', '2020-11-18 08:23:41');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:41', '2020-11-18 08:23:41');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:57', '2020-11-18 08:23:57');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/page/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:23:58', '2020-11-18 08:23:58');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/page', 'POST', '127.0.0.1', '{\"author\":null,\"content\":null,\"html_content\":null,\"published_at\":null,\"seo_description\":null,\"seo_keyword\":null,\"slug\":null,\"status\":null,\"summary\":null,\"title\":null,\"after-save\":\"3\",\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\",\"_previous_\":\"http:\\/\\/d_blog-local.com\\/admin\\/page\"}', '2020-11-18 08:24:09', '2020-11-18 08:24:09');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/page/create', 'GET', '127.0.0.1', '[]', '2020-11-18 08:24:12', '2020-11-18 08:24:12');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/page', 'POST', '127.0.0.1', '{\"author\":null,\"content\":null,\"html_content\":null,\"published_at\":null,\"seo_description\":null,\"seo_keyword\":null,\"slug\":null,\"status\":null,\"summary\":null,\"title\":null,\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 08:24:17', '2020-11-18 08:24:17');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/page', 'POST', '127.0.0.1', '{\"author\":null,\"content\":null,\"html_content\":null,\"published_at\":null,\"seo_description\":null,\"seo_keyword\":null,\"slug\":null,\"status\":null,\"summary\":null,\"title\":null,\"_token\":\"wG0QAys541fzlNysAabW1RFjWhoLDSFwe02MX89i\"}', '2020-11-18 08:24:27', '2020-11-18 08:24:27');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/page/create', 'GET', '127.0.0.1', '[]', '2020-11-18 08:46:54', '2020-11-18 08:46:54');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/page/create', 'GET', '127.0.0.1', '[]', '2020-11-18 08:47:24', '2020-11-18 08:47:24');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:29', '2020-11-18 08:47:29');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:37', '2020-11-18 08:47:37');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/friend', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:39', '2020-11-18 08:47:39');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:41', '2020-11-18 08:47:41');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:41', '2020-11-18 08:47:41');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/tag', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:42', '2020-11-18 08:47:42');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/page', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-11-18 08:47:42', '2020-11-18 08:47:42');
COMMIT;

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_permission_menu` VALUES (8, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (10, 16, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (12, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (14, 15, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (16, 13, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (18, 11, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `parent_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-11-18 06:30:24', NULL);
INSERT INTO `admin_permissions` VALUES (7, 'Posts management', 'Posts management', '', '', 7, 0, '2020-11-18 07:01:14', '2020-11-18 07:47:36');
INSERT INTO `admin_permissions` VALUES (8, 'Posts', 'Posts', '', '/post*', 8, 7, '2020-11-18 07:09:19', '2020-11-18 07:09:19');
INSERT INTO `admin_permissions` VALUES (9, 'Pages management', 'Pages management', '', '', 9, 0, '2020-11-18 07:47:55', '2020-11-18 07:47:55');
INSERT INTO `admin_permissions` VALUES (10, 'Pages', 'Pages', '', '/page*', 10, 9, '2020-11-18 07:51:21', '2020-11-18 07:51:30');
INSERT INTO `admin_permissions` VALUES (11, 'Categories management', 'Categories management', '', '', 11, 0, '2020-11-18 07:52:15', '2020-11-18 07:52:15');
INSERT INTO `admin_permissions` VALUES (12, 'Categories', 'Categories', '', '/category*', 12, 11, '2020-11-18 07:52:41', '2020-11-18 07:52:41');
INSERT INTO `admin_permissions` VALUES (13, 'Setting management', 'Setting management', '', '', 13, 0, '2020-11-18 07:53:02', '2020-11-18 07:53:02');
INSERT INTO `admin_permissions` VALUES (14, 'Setting', 'Setting', '', '/setting*', 14, 13, '2020-11-18 07:53:22', '2020-11-18 07:53:22');
INSERT INTO `admin_permissions` VALUES (15, 'Friends management', 'Friends management', '', '', 15, 0, '2020-11-18 07:53:48', '2020-11-18 07:53:48');
INSERT INTO `admin_permissions` VALUES (16, 'Friends', 'Friends', '', '/friend*', 16, 15, '2020-11-18 07:54:07', '2020-11-18 07:54:07');
INSERT INTO `admin_permissions` VALUES (17, 'Tags management', 'Tags management', '', '', 17, 0, '2020-11-18 07:54:31', '2020-11-18 07:54:31');
INSERT INTO `admin_permissions` VALUES (18, 'Tags', 'Tags', '', '/tag*', 18, 17, '2020-11-18 07:54:51', '2020-11-18 07:54:51');
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-11-18 06:30:24', '2020-11-18 06:30:25');
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$Z9TwRDjbTRfIrAgk/e1EE.5a79v/Uc5eM0cYsRFy7zfcH2xUYDkV.', 'Administrator', NULL, NULL, '2020-11-18 06:30:24', '2020-11-18 06:30:24');
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `pid` int NOT NULL COMMENT '父级',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `sort_by` int NOT NULL COMMENT '排序',
  `is_show` tinyint NOT NULL COMMENT '显示',
  `depth` int NOT NULL COMMENT '深度',
  `status` tinyint NOT NULL COMMENT '状态',
  `created_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_show` tinyint NOT NULL,
  `created_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of friends
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_11_18_065355_create_posts_table', 2);
INSERT INTO `migrations` VALUES (6, '2020_11_18_072346_create_tags_table', 3);
INSERT INTO `migrations` VALUES (7, '2020_11_18_072725_create_categories_table', 3);
INSERT INTO `migrations` VALUES (8, '2020_11_18_073010_create_friends_table', 3);
INSERT INTO `migrations` VALUES (9, '2020_11_18_073617_create_pages_table', 3);
INSERT INTO `migrations` VALUES (10, '2020_11_18_074224_create_post_tags_table', 4);
INSERT INTO `migrations` VALUES (11, '2020_11_18_074510_create_setting_table', 5);
INSERT INTO `migrations` VALUES (13, '2020_11_18_080344_update_users_table', 6);
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author` int NOT NULL COMMENT '作者',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'slug',
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MarkDown内容',
  `html_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'HTML内容',
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `status` tinyint NOT NULL COMMENT '状态',
  `deleted_at` int NOT NULL DEFAULT '0' COMMENT '删除时间',
  `published_at` int NOT NULL DEFAULT '0' COMMENT '发布时间',
  `created_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL COMMENT '文章ID',
  `tag_id` int NOT NULL COMMENT '标签ID',
  `created_at` int NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author` int NOT NULL COMMENT '作者',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'slug',
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MarkDown内容',
  `html_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'HTML内容',
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `category_id` int NOT NULL COMMENT '类型',
  `status` int NOT NULL COMMENT '状态',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '封面',
  `is_hot` int NOT NULL DEFAULT '1' COMMENT '热门',
  `is_recommend` int NOT NULL DEFAULT '1' COMMENT '推荐',
  `deleted_at` int NOT NULL DEFAULT '0' COMMENT '删除时间',
  `published_at` int NOT NULL DEFAULT '0' COMMENT '发布时间',
  `created_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `setting_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '键值',
  `setting_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '值',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of setting
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `created_at` int NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `wechat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
