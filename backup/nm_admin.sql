/*
 Navicat Premium Data Transfer

 Source Server         : 129.211.40.240
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 129.211.40.240:13306
 Source Schema         : nm_demo_admin

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 01/08/2020 12:34:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TenantId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Status` smallint(3) NOT NULL DEFAULT 0,
  `IsLock` bit(1) NOT NULL DEFAULT b'0',
  `ClosedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ClosedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NULL DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', NULL, 0, 'admin', 'E739279CB28CDAFD7373618313803524', '管理员', '', '', 1, b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2020-01-14 15:20:04', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000');
INSERT INTO `account` VALUES ('39f6ba78-2f6d-36d7-72e8-c38c4c2f93a3', NULL, 1, 'ttt', '9C422CC1E1EC316E1D6B39AF04F43B0F', '123', '', '', 1, b'1', '2020-08-01 12:32:57', '00000000-0000-0000-0000-000000000000', '2020-08-01 12:32:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:32:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', b'0', '2020-08-01 12:32:57', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for account_auth_info
-- ----------------------------
DROP TABLE IF EXISTS `account_auth_info`;
CREATE TABLE `account_auth_info`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(3) NOT NULL DEFAULT 0,
  `RefreshToken` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RefreshTokenExpiredTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `LoginTime` bigint(20) NOT NULL DEFAULT 0,
  `LoginIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_auth_info
-- ----------------------------
INSERT INTO `account_auth_info` VALUES (1, '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', 0, '39c98351bed741c49f1f57c45ff61a04', '2020-08-08 12:26:21', 1596255981, '');

-- ----------------------------
-- Table structure for account_config
-- ----------------------------
DROP TABLE IF EXISTS `account_config`;
CREATE TABLE `account_config`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Skin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FontSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_config
-- ----------------------------
INSERT INTO `account_config` VALUES (1, '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', 'pretty', 'default', 'small');

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO `account_role` VALUES (1, '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 0, 'Quartz', '{\"Enabled\":false,\"Logger\":false,\"InstanceName\":\"QuartzServer\",\"TablePrefix\":\"QRTZ_\",\"SerializerType\":0,\"Provider\":1,\"ConnectionString\":\"server=localhost;port=13306;database=nm_demo_quartz;user id=root;password=iamoldli!@#123;allowuservariables=True;characterset=utf8;sslmode=None;allowpublickeyretrieval=True;minpoolsize=0;maxpoolsize=10\",\"DataSource\":\"default\"}');
INSERT INTO `config` VALUES (2, 0, 'System', '{\"title\":\"NetModular通用权限管理系统\",\"logo\":\"\",\"copyright\":\"版权所有：尼古拉斯·老李 | 用代码改变世界 Powered by .Net Core 3.1.0 on Linux\",\"userPage\":\"\"}');
INSERT INTO `config` VALUES (3, 1, 'Admin', '{\"auditing\":true,\"loginLog\":true,\"defaultPassword\":\"123456\"}');
INSERT INTO `config` VALUES (4, 0, 'Auth', '{\"verifyCode\":false,\"validate\":true,\"button\":true,\"singleAccount\":false,\"auditing\":true,\"jwt\":{\"key\":\"twAJ$j5##pVc5*y&\",\"issuer\":\"http://127.0.0.1:6220\",\"audience\":\"http://127.0.0.1:6220\",\"expires\":120,\"refreshTokenExpires\":7},\"loginMode\":{\"userName\":true,\"email\":true,\"userNameOrEmail\":true,\"phone\":true,\"weChatScanCode\":false,\"qq\":false,\"gitHub\":false}}');
INSERT INTO `config` VALUES (5, 0, 'Component', '{\"login\":{\"defaultAccountType\":0,\"pageType\":\"neon\",\"verifyCode\":false},\"menu\":{\"uniqueOpened\":true},\"dialog\":{\"closeOnClickModal\":false,\"draggable\":false},\"list\":{\"serialNumberName\":null},\"tabnav\":{\"enabled\":true,\"showHome\":true,\"homeUrl\":null,\"showIcon\":true,\"maxOpenCount\":20},\"toolbar\":{\"fullscreen\":true,\"skin\":true,\"logout\":true,\"userInfo\":true},\"customCss\":null}');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SaveId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FileName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Ext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Size` bigint(20) NOT NULL DEFAULT 0,
  `SizeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Md5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FullPath` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AccessMode` smallint(3) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NULL DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for file_owner
-- ----------------------------
DROP TABLE IF EXISTS `file_owner`;
CREATE TABLE `file_owner`  (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SaveId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of file_owner
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `ParentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteParams` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteQuery` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IconColor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Level` int(11) NOT NULL DEFAULT 0,
  `Show` bit(1) NOT NULL DEFAULT b'0',
  `Sort` int(11) NOT NULL DEFAULT 0,
  `Target` smallint(3) NOT NULL DEFAULT 0,
  `DialogWidth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DialogHeight` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DialogFullscreen` bit(1) NOT NULL DEFAULT b'0',
  `Remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('39F3C49B-5FC3-33BE-0FCD-652929D9EA73', '', 2, '00000000-0000-0000-0000-000000000000', '官方文档', '', '', '', 'http://docs.17mkh.com/', 'archives', '', 0, b'1', 7, 0, '', '', b'1', '', '2020-03-07 08:39:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49B-D757-EA18-E9C4-D9C768F77512', '', 2, '00000000-0000-0000-0000-000000000000', 'GitHub', '', '', '', 'https://github.com/iamoldli/NetModular', 'github', '', 0, b'1', 8, 0, '', '', b'1', '', '2020-03-07 08:39:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-1756-9047-34B5-6DCFADEFE28D', '', 0, '00000000-0000-0000-0000-000000000000', '系统运维', '', '', '', '', 'system', '', 0, b'1', 5, -1, '', '', b'1', '', '2020-03-07 08:40:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-400A-B33D-0C8F-E878AAABA954', '', 0, '00000000-0000-0000-0000-000000000000', '权限管理', '', '', '', '', 'verifycode', '', 0, b'1', 4, -1, '', '', b'1', '', '2020-03-07 08:40:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-8CCC-2A54-DAC7-B5DD6503D91A', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '配置中心', 'admin_config', '', '', '', 'tools', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:30', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:57:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-9EF2-C04B-FC63-5CDC9811C506', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '缓存清理', 'admin_cache', '', '', '', 'redis', '', 1, b'1', 3, 0, '', '', b'1', '', '2020-03-07 08:40:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:24', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-ADF2-D90F-9626-99ACECC76C37', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '图标预览', 'admin_icon', '', '', '', 'icon', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-03-07 08:40:38', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:59:57', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-D5DC-90A5-6CC3-B3A0B9040643', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '模块中心', 'admin_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:48', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-06-06 19:20:29', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-ED14-45E0-718C-7D650D850143', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '菜单管理', 'admin_menu', '', '', '', 'menu', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-06-06 19:20:29', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '角色管理', 'admin_role', '', '', '', 'role', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-06-06 19:20:29', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49D-0EB2-662F-2A0D-706F41140D12', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '账户管理', 'admin_account', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-06-06 19:20:29', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '', 0, '00000000-0000-0000-0000-000000000000', '系统日志', '', '', '', '', 'log', '', 0, b'1', 6, -1, '', '', b'1', '', '2020-04-26 13:42:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F4C72F-5F6B-1879-7D4C-7915512406E9', 'Admin', 1, '39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '审计日志', 'admin_auditinfo', '', '', '', 'log', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4C72F-6E11-71DE-E74B-67B7E152B442', 'Admin', 1, '39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '登录日志', 'admin_log_login', '', '', '', 'log', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-26 13:42:57', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:52:31', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4D6B4-CB9E-0BA7-E46E-442013F4D8BA', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', 'MIME', 'admin_mime', '', '', '', 'media', '', 1, b'1', 4, 0, '', '', b'1', '', '2020-04-29 14:02:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:41', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4D6D2-3508-0CFC-205E-7BD7B887F3F4', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '文件管理', 'admin_file', '', '', '', 'attachment', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-04-29 14:35:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:20:20', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39f6ba73-fa6e-b687-054c-6e71af442cee', '', 0, '00000000-0000-0000-0000-000000000000', '通用数据', '', '', '', '', 'entity', '', 0, b'1', 3, -1, '', '', b'1', '', '2020-08-01 12:28:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba74-2e7e-9ddb-5bf3-6ad51d8db890', 'Common', 1, '39f6ba73-fa6e-b687-054c-6e71af442cee', '区划代码', 'common_area', '', '', '', 'area', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-08-01 12:28:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:29:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba74-9319-7115-a7db-efe82c1562d7', '', 0, '39f6ba73-fa6e-b687-054c-6e71af442cee', '数据字典', '', '', '', '', 'tag', '', 1, b'1', 0, -1, '', '', b'1', '', '2020-08-01 12:29:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:29:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba74-bcbc-984d-3707-e207330c1990', 'Common', 1, '39f6ba74-9319-7115-a7db-efe82c1562d7', '字典分组', 'common_dictgroup', '', '', '', 'entity', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:29:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:29:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba74-ca75-edd0-a74f-f9b8adc70c96', 'Common', 1, '39f6ba74-9319-7115-a7db-efe82c1562d7', '字典列表', 'common_dict', '', '', '', 'tag', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:29:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:29:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba74-f8d6-9950-5da6-d9a06ac75277', 'Common', 1, '39f6ba73-fa6e-b687-054c-6e71af442cee', '多媒体', 'common_mediatype', '', '', '', 'media', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-08-01 12:29:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:29:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba75-6142-9cfc-f216-36595e9ccf0a', '', 0, '00000000-0000-0000-0000-000000000000', '任务调度', '', '', '', '', 'timer', '', 0, b'1', 2, -1, '', '', b'1', '', '2020-08-01 12:29:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba75-d89e-6018-db12-2008a0a33281', '', 0, '00000000-0000-0000-0000-000000000000', '模块创建', '', '', '', '', 'app', '', 0, b'1', 1, -1, '', '', b'1', '', '2020-08-01 12:30:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '', 0, '00000000-0000-0000-0000-000000000000', '人事档案', '', '', '', '', 'user', '', 0, b'1', 0, -1, '', '', b'1', '', '2020-08-01 12:30:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:30:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba76-90db-2295-e41d-0172e7bbb85d', 'Quartz', 1, '39f6ba75-6142-9cfc-f216-36595e9ccf0a', '任务分组', 'quartz_group', '', '', '', 'group', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba76-9a04-e35d-375e-ed0d525e9f61', 'Quartz', 1, '39f6ba75-6142-9cfc-f216-36595e9ccf0a', '任务列表', 'quartz_job', '', '', '', 'list', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba76-c180-408b-ec1d-09803b266d72', 'CodeGenerator', 1, '39f6ba75-d89e-6018-db12-2008a0a33281', '模块列表', 'codegenerator_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba76-ccdc-ab07-d3d5-570d077ca7cb', 'CodeGenerator', 1, '39f6ba75-d89e-6018-db12-2008a0a33281', '枚举列表', 'codegenerator_enum', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba76-ef8c-3929-33ca-aec8acf44ddd', 'PersonnelFiles', 1, '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '组织机构', 'personnelfiles_department', '', '', '', 'department', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba77-02f7-e410-13f5-e364d9da2945', 'PersonnelFiles', 1, '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '员工档案', 'personnelfiles_employee', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba77-0ea0-8a28-df5e-d57487147a11', 'PersonnelFiles', 1, '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '职位管理', 'personnelfiles_position', '', '', '', 'position', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba77-17de-a402-6a84-3ca205734653', 'PersonnelFiles', 1, '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '岗位管理', 'personnelfiles_post', '', '', '', 'post', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:45', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:45', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f6ba77-213f-7e91-6308-aab493811797', 'PersonnelFiles', 1, '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1', '组件演示', 'personnelfiles_employee_demo', '', '', '', 'develop', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-08-01 12:31:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-08-01 12:31:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for mime
-- ----------------------------
DROP TABLE IF EXISTS `mime`;
CREATE TABLE `mime`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mime
-- ----------------------------
INSERT INTO `mime` VALUES (1, '323', 'text/h323');
INSERT INTO `mime` VALUES (2, '3g2', 'video/3gpp2');
INSERT INTO `mime` VALUES (3, '3gp', 'video/3gpp');
INSERT INTO `mime` VALUES (4, '3gp2', 'video/3gpp2');
INSERT INTO `mime` VALUES (5, '3gpp', 'video/3gpp');
INSERT INTO `mime` VALUES (6, '7z', 'application/x-7z-compressed');
INSERT INTO `mime` VALUES (7, 'aa', 'audio/audible');
INSERT INTO `mime` VALUES (8, 'AAC', 'audio/aac');
INSERT INTO `mime` VALUES (9, 'aaf', 'application/octet-stream');
INSERT INTO `mime` VALUES (10, 'aax', 'audio/vnd.audible.aax');
INSERT INTO `mime` VALUES (11, 'ac3', 'audio/ac3');
INSERT INTO `mime` VALUES (12, 'aca', 'application/octet-stream');
INSERT INTO `mime` VALUES (13, 'accda', 'application/msaccess.addin');
INSERT INTO `mime` VALUES (14, 'accdb', 'application/msaccess');
INSERT INTO `mime` VALUES (15, 'accdc', 'application/msaccess.cab');
INSERT INTO `mime` VALUES (16, 'accde', 'application/msaccess');
INSERT INTO `mime` VALUES (17, 'accdr', 'application/msaccess.runtime');
INSERT INTO `mime` VALUES (18, 'accdt', 'application/msaccess');
INSERT INTO `mime` VALUES (19, 'accdw', 'application/msaccess.webapplication');
INSERT INTO `mime` VALUES (20, 'accft', 'application/msaccess.ftemplate');
INSERT INTO `mime` VALUES (21, 'acx', 'application/internet-property-stream');
INSERT INTO `mime` VALUES (22, 'AddIn', 'text/xml');
INSERT INTO `mime` VALUES (23, 'ade', 'application/msaccess');
INSERT INTO `mime` VALUES (24, 'adobebridge', 'application/x-bridge-url');
INSERT INTO `mime` VALUES (25, 'adp', 'application/msaccess');
INSERT INTO `mime` VALUES (26, 'ADT', 'audio/vnd.dlna.adts');
INSERT INTO `mime` VALUES (27, 'ADTS', 'audio/aac');
INSERT INTO `mime` VALUES (28, 'afm', 'application/octet-stream');
INSERT INTO `mime` VALUES (29, 'ai', 'application/postscript');
INSERT INTO `mime` VALUES (30, 'aif', 'audio/aiff');
INSERT INTO `mime` VALUES (31, 'aifc', 'audio/aiff');
INSERT INTO `mime` VALUES (32, 'aiff', 'audio/aiff');
INSERT INTO `mime` VALUES (33, 'air', 'application/vnd.adobe.air-application-installer-package+zip');
INSERT INTO `mime` VALUES (34, 'amc', 'application/mpeg');
INSERT INTO `mime` VALUES (35, 'anx', 'application/annodex');
INSERT INTO `mime` VALUES (36, 'apk', 'application/vnd.android.package-archive');
INSERT INTO `mime` VALUES (37, 'application', 'application/x-ms-application');
INSERT INTO `mime` VALUES (38, 'art', 'image/x-jg');
INSERT INTO `mime` VALUES (39, 'asa', 'application/xml');
INSERT INTO `mime` VALUES (40, 'asax', 'application/xml');
INSERT INTO `mime` VALUES (41, 'ascx', 'application/xml');
INSERT INTO `mime` VALUES (42, 'asd', 'application/octet-stream');
INSERT INTO `mime` VALUES (43, 'asf', 'video/x-ms-asf');
INSERT INTO `mime` VALUES (44, 'ashx', 'application/xml');
INSERT INTO `mime` VALUES (45, 'asi', 'application/octet-stream');
INSERT INTO `mime` VALUES (46, 'asm', 'text/plain');
INSERT INTO `mime` VALUES (47, 'asmx', 'application/xml');
INSERT INTO `mime` VALUES (48, 'aspx', 'application/xml');
INSERT INTO `mime` VALUES (49, 'asr', 'video/x-ms-asf');
INSERT INTO `mime` VALUES (50, 'asx', 'video/x-ms-asf');
INSERT INTO `mime` VALUES (51, 'atom', 'application/atom+xml');
INSERT INTO `mime` VALUES (52, 'au', 'audio/basic');
INSERT INTO `mime` VALUES (53, 'avi', 'video/x-msvideo');
INSERT INTO `mime` VALUES (54, 'axa', 'audio/annodex');
INSERT INTO `mime` VALUES (55, 'axs', 'application/olescript');
INSERT INTO `mime` VALUES (56, 'axv', 'video/annodex');
INSERT INTO `mime` VALUES (57, 'bas', 'text/plain');
INSERT INTO `mime` VALUES (58, 'bcpio', 'application/x-bcpio');
INSERT INTO `mime` VALUES (59, 'bin', 'application/octet-stream');
INSERT INTO `mime` VALUES (60, 'bmp', 'image/bmp');
INSERT INTO `mime` VALUES (61, 'c', 'text/plain');
INSERT INTO `mime` VALUES (62, 'cab', 'application/octet-stream');
INSERT INTO `mime` VALUES (63, 'caf', 'audio/x-caf');
INSERT INTO `mime` VALUES (64, 'calx', 'application/vnd.ms-office.calx');
INSERT INTO `mime` VALUES (65, 'cat', 'application/vnd.ms-pki.seccat');
INSERT INTO `mime` VALUES (66, 'cc', 'text/plain');
INSERT INTO `mime` VALUES (67, 'cd', 'text/plain');
INSERT INTO `mime` VALUES (68, 'cdda', 'audio/aiff');
INSERT INTO `mime` VALUES (69, 'cdf', 'application/x-cdf');
INSERT INTO `mime` VALUES (70, 'cer', 'application/x-x509-ca-cert');
INSERT INTO `mime` VALUES (71, 'cfg', 'text/plain');
INSERT INTO `mime` VALUES (72, 'chm', 'application/octet-stream');
INSERT INTO `mime` VALUES (73, 'class', 'application/x-java-applet');
INSERT INTO `mime` VALUES (74, 'clp', 'application/x-msclip');
INSERT INTO `mime` VALUES (75, 'cmd', 'text/plain');
INSERT INTO `mime` VALUES (76, 'cmx', 'image/x-cmx');
INSERT INTO `mime` VALUES (77, 'cnf', 'text/plain');
INSERT INTO `mime` VALUES (78, 'cod', 'image/cis-cod');
INSERT INTO `mime` VALUES (79, 'config', 'application/xml');
INSERT INTO `mime` VALUES (80, 'contact', 'text/x-ms-contact');
INSERT INTO `mime` VALUES (81, 'coverage', 'application/xml');
INSERT INTO `mime` VALUES (82, 'cpio', 'application/x-cpio');
INSERT INTO `mime` VALUES (83, 'cpp', 'text/plain');
INSERT INTO `mime` VALUES (84, 'crd', 'application/x-mscardfile');
INSERT INTO `mime` VALUES (85, 'crl', 'application/pkix-crl');
INSERT INTO `mime` VALUES (86, 'crt', 'application/x-x509-ca-cert');
INSERT INTO `mime` VALUES (87, 'cs', 'text/plain');
INSERT INTO `mime` VALUES (88, 'csdproj', 'text/plain');
INSERT INTO `mime` VALUES (89, 'csh', 'application/x-csh');
INSERT INTO `mime` VALUES (90, 'csproj', 'text/plain');
INSERT INTO `mime` VALUES (91, 'css', 'text/css');
INSERT INTO `mime` VALUES (92, 'csv', 'text/csv');
INSERT INTO `mime` VALUES (93, 'cur', 'application/octet-stream');
INSERT INTO `mime` VALUES (94, 'cxx', 'text/plain');
INSERT INTO `mime` VALUES (95, 'dat', 'application/octet-stream');
INSERT INTO `mime` VALUES (96, 'datasource', 'application/xml');
INSERT INTO `mime` VALUES (97, 'dbproj', 'text/plain');
INSERT INTO `mime` VALUES (98, 'dcr', 'application/x-director');
INSERT INTO `mime` VALUES (99, 'def', 'text/plain');
INSERT INTO `mime` VALUES (100, 'deploy', 'application/octet-stream');
INSERT INTO `mime` VALUES (101, 'der', 'application/x-x509-ca-cert');
INSERT INTO `mime` VALUES (102, 'dgml', 'application/xml');
INSERT INTO `mime` VALUES (103, 'dib', 'image/bmp');
INSERT INTO `mime` VALUES (104, 'dif', 'video/x-dv');
INSERT INTO `mime` VALUES (105, 'dir', 'application/x-director');
INSERT INTO `mime` VALUES (106, 'disco', 'text/xml');
INSERT INTO `mime` VALUES (107, 'divx', 'video/divx');
INSERT INTO `mime` VALUES (108, 'dll', 'application/x-msdownload');
INSERT INTO `mime` VALUES (109, 'dll.config', 'text/xml');
INSERT INTO `mime` VALUES (110, 'dlm', 'text/dlm');
INSERT INTO `mime` VALUES (111, 'doc', 'application/msword');
INSERT INTO `mime` VALUES (112, 'docm', 'application/vnd.ms-word.document.macroEnabled.12');
INSERT INTO `mime` VALUES (113, 'docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
INSERT INTO `mime` VALUES (114, 'dot', 'application/msword');
INSERT INTO `mime` VALUES (115, 'dotm', 'application/vnd.ms-word.template.macroEnabled.12');
INSERT INTO `mime` VALUES (116, 'dotx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.template');
INSERT INTO `mime` VALUES (117, 'dsp', 'application/octet-stream');
INSERT INTO `mime` VALUES (118, 'dsw', 'text/plain');
INSERT INTO `mime` VALUES (119, 'dtd', 'text/xml');
INSERT INTO `mime` VALUES (120, 'dtsConfig', 'text/xml');
INSERT INTO `mime` VALUES (121, 'dv', 'video/x-dv');
INSERT INTO `mime` VALUES (122, 'dvi', 'application/x-dvi');
INSERT INTO `mime` VALUES (123, 'dwf', 'drawing/x-dwf');
INSERT INTO `mime` VALUES (124, 'dwg', 'application/acad');
INSERT INTO `mime` VALUES (125, 'dwp', 'application/octet-stream');
INSERT INTO `mime` VALUES (126, 'dxf', 'application/x-dxf');
INSERT INTO `mime` VALUES (127, 'dxr', 'application/x-director');
INSERT INTO `mime` VALUES (128, 'eml', 'message/rfc822');
INSERT INTO `mime` VALUES (129, 'emz', 'application/octet-stream');
INSERT INTO `mime` VALUES (130, 'eot', 'application/vnd.ms-fontobject');
INSERT INTO `mime` VALUES (131, 'eps', 'application/postscript');
INSERT INTO `mime` VALUES (132, 'es', 'application/ecmascript');
INSERT INTO `mime` VALUES (133, 'etl', 'application/etl');
INSERT INTO `mime` VALUES (134, 'etx', 'text/x-setext');
INSERT INTO `mime` VALUES (135, 'evy', 'application/envoy');
INSERT INTO `mime` VALUES (136, 'exe', 'application/octet-stream');
INSERT INTO `mime` VALUES (137, 'exe.config', 'text/xml');
INSERT INTO `mime` VALUES (138, 'fdf', 'application/vnd.fdf');
INSERT INTO `mime` VALUES (139, 'fif', 'application/fractals');
INSERT INTO `mime` VALUES (140, 'filters', 'application/xml');
INSERT INTO `mime` VALUES (141, 'fla', 'application/octet-stream');
INSERT INTO `mime` VALUES (142, 'flac', 'audio/flac');
INSERT INTO `mime` VALUES (143, 'flr', 'x-world/x-vrml');
INSERT INTO `mime` VALUES (144, 'flv', 'video/x-flv');
INSERT INTO `mime` VALUES (145, 'fsscript', 'application/fsharp-script');
INSERT INTO `mime` VALUES (146, 'fsx', 'application/fsharp-script');
INSERT INTO `mime` VALUES (147, 'generictest', 'application/xml');
INSERT INTO `mime` VALUES (148, 'gif', 'image/gif');
INSERT INTO `mime` VALUES (149, 'gpx', 'application/gpx+xml');
INSERT INTO `mime` VALUES (150, 'group', 'text/x-ms-group');
INSERT INTO `mime` VALUES (151, 'gsm', 'audio/x-gsm');
INSERT INTO `mime` VALUES (152, 'gtar', 'application/x-gtar');
INSERT INTO `mime` VALUES (153, 'gz', 'application/x-gzip');
INSERT INTO `mime` VALUES (154, 'h', 'text/plain');
INSERT INTO `mime` VALUES (155, 'hdf', 'application/x-hdf');
INSERT INTO `mime` VALUES (156, 'hdml', 'text/x-hdml');
INSERT INTO `mime` VALUES (157, 'hhc', 'application/x-oleobject');
INSERT INTO `mime` VALUES (158, 'hhk', 'application/octet-stream');
INSERT INTO `mime` VALUES (159, 'hhp', 'application/octet-stream');
INSERT INTO `mime` VALUES (160, 'hlp', 'application/winhlp');
INSERT INTO `mime` VALUES (161, 'hpp', 'text/plain');
INSERT INTO `mime` VALUES (162, 'hqx', 'application/mac-binhex40');
INSERT INTO `mime` VALUES (163, 'hta', 'application/hta');
INSERT INTO `mime` VALUES (164, 'htc', 'text/x-component');
INSERT INTO `mime` VALUES (165, 'htm', 'text/html');
INSERT INTO `mime` VALUES (166, 'html', 'text/html');
INSERT INTO `mime` VALUES (167, 'htt', 'text/webviewhtml');
INSERT INTO `mime` VALUES (168, 'hxa', 'application/xml');
INSERT INTO `mime` VALUES (169, 'hxc', 'application/xml');
INSERT INTO `mime` VALUES (170, 'hxd', 'application/octet-stream');
INSERT INTO `mime` VALUES (171, 'hxe', 'application/xml');
INSERT INTO `mime` VALUES (172, 'hxf', 'application/xml');
INSERT INTO `mime` VALUES (173, 'hxh', 'application/octet-stream');
INSERT INTO `mime` VALUES (174, 'hxi', 'application/octet-stream');
INSERT INTO `mime` VALUES (175, 'hxk', 'application/xml');
INSERT INTO `mime` VALUES (176, 'hxq', 'application/octet-stream');
INSERT INTO `mime` VALUES (177, 'hxr', 'application/octet-stream');
INSERT INTO `mime` VALUES (178, 'hxs', 'application/octet-stream');
INSERT INTO `mime` VALUES (179, 'hxt', 'text/html');
INSERT INTO `mime` VALUES (180, 'hxv', 'application/xml');
INSERT INTO `mime` VALUES (181, 'hxw', 'application/octet-stream');
INSERT INTO `mime` VALUES (182, 'hxx', 'text/plain');
INSERT INTO `mime` VALUES (183, 'i', 'text/plain');
INSERT INTO `mime` VALUES (184, 'ico', 'image/x-icon');
INSERT INTO `mime` VALUES (185, 'ics', 'application/octet-stream');
INSERT INTO `mime` VALUES (186, 'idl', 'text/plain');
INSERT INTO `mime` VALUES (187, 'ief', 'image/ief');
INSERT INTO `mime` VALUES (188, 'iii', 'application/x-iphone');
INSERT INTO `mime` VALUES (189, 'inc', 'text/plain');
INSERT INTO `mime` VALUES (190, 'inf', 'application/octet-stream');
INSERT INTO `mime` VALUES (191, 'ini', 'text/plain');
INSERT INTO `mime` VALUES (192, 'inl', 'text/plain');
INSERT INTO `mime` VALUES (193, 'ins', 'application/x-internet-signup');
INSERT INTO `mime` VALUES (194, 'ipa', 'application/x-itunes-ipa');
INSERT INTO `mime` VALUES (195, 'ipg', 'application/x-itunes-ipg');
INSERT INTO `mime` VALUES (196, 'ipproj', 'text/plain');
INSERT INTO `mime` VALUES (197, 'ipsw', 'application/x-itunes-ipsw');
INSERT INTO `mime` VALUES (198, 'iqy', 'text/x-ms-iqy');
INSERT INTO `mime` VALUES (199, 'isp', 'application/x-internet-signup');
INSERT INTO `mime` VALUES (200, 'ite', 'application/x-itunes-ite');
INSERT INTO `mime` VALUES (201, 'itlp', 'application/x-itunes-itlp');
INSERT INTO `mime` VALUES (202, 'itms', 'application/x-itunes-itms');
INSERT INTO `mime` VALUES (203, 'itpc', 'application/x-itunes-itpc');
INSERT INTO `mime` VALUES (204, 'IVF', 'video/x-ivf');
INSERT INTO `mime` VALUES (205, 'jar', 'application/java-archive');
INSERT INTO `mime` VALUES (206, 'java', 'application/octet-stream');
INSERT INTO `mime` VALUES (207, 'jck', 'application/liquidmotion');
INSERT INTO `mime` VALUES (208, 'jcz', 'application/liquidmotion');
INSERT INTO `mime` VALUES (209, 'jfif', 'image/pjpeg');
INSERT INTO `mime` VALUES (210, 'jnlp', 'application/x-java-jnlp-file');
INSERT INTO `mime` VALUES (211, 'jpb', 'application/octet-stream');
INSERT INTO `mime` VALUES (212, 'jpe', 'image/jpeg');
INSERT INTO `mime` VALUES (213, 'jpeg', 'image/jpeg');
INSERT INTO `mime` VALUES (214, 'jpg', 'image/jpeg');
INSERT INTO `mime` VALUES (215, 'js', 'application/javascript');
INSERT INTO `mime` VALUES (216, 'json', 'application/json');
INSERT INTO `mime` VALUES (217, 'jsx', 'text/jscript');
INSERT INTO `mime` VALUES (218, 'jsxbin', 'text/plain');
INSERT INTO `mime` VALUES (219, 'latex', 'application/x-latex');
INSERT INTO `mime` VALUES (220, 'library-ms', 'application/windows-library+xml');
INSERT INTO `mime` VALUES (221, 'lit', 'application/x-ms-reader');
INSERT INTO `mime` VALUES (222, 'loadtest', 'application/xml');
INSERT INTO `mime` VALUES (223, 'lpk', 'application/octet-stream');
INSERT INTO `mime` VALUES (224, 'lsf', 'video/x-la-asf');
INSERT INTO `mime` VALUES (225, 'lst', 'text/plain');
INSERT INTO `mime` VALUES (226, 'lsx', 'video/x-la-asf');
INSERT INTO `mime` VALUES (227, 'lzh', 'application/octet-stream');
INSERT INTO `mime` VALUES (228, 'm13', 'application/x-msmediaview');
INSERT INTO `mime` VALUES (229, 'm14', 'application/x-msmediaview');
INSERT INTO `mime` VALUES (230, 'm1v', 'video/mpeg');
INSERT INTO `mime` VALUES (231, 'm2t', 'video/vnd.dlna.mpeg-tts');
INSERT INTO `mime` VALUES (232, 'm2ts', 'video/vnd.dlna.mpeg-tts');
INSERT INTO `mime` VALUES (233, 'm2v', 'video/mpeg');
INSERT INTO `mime` VALUES (234, 'm3u', 'audio/x-mpegurl');
INSERT INTO `mime` VALUES (235, 'm3u8', 'audio/x-mpegurl');
INSERT INTO `mime` VALUES (236, 'm4a', 'audio/m4a');
INSERT INTO `mime` VALUES (237, 'm4b', 'audio/m4b');
INSERT INTO `mime` VALUES (238, 'm4p', 'audio/m4p');
INSERT INTO `mime` VALUES (239, 'm4r', 'audio/x-m4r');
INSERT INTO `mime` VALUES (240, 'm4v', 'video/x-m4v');
INSERT INTO `mime` VALUES (241, 'mac', 'image/x-macpaint');
INSERT INTO `mime` VALUES (242, 'mak', 'text/plain');
INSERT INTO `mime` VALUES (243, 'man', 'application/x-troff-man');
INSERT INTO `mime` VALUES (244, 'manifest', 'application/x-ms-manifest');
INSERT INTO `mime` VALUES (245, 'map', 'text/plain');
INSERT INTO `mime` VALUES (246, 'master', 'application/xml');
INSERT INTO `mime` VALUES (247, 'mbox', 'application/mbox');
INSERT INTO `mime` VALUES (248, 'mda', 'application/msaccess');
INSERT INTO `mime` VALUES (249, 'mdb', 'application/x-msaccess');
INSERT INTO `mime` VALUES (250, 'mde', 'application/msaccess');
INSERT INTO `mime` VALUES (251, 'mdp', 'application/octet-stream');
INSERT INTO `mime` VALUES (252, 'me', 'application/x-troff-me');
INSERT INTO `mime` VALUES (253, 'mfp', 'application/x-shockwave-flash');
INSERT INTO `mime` VALUES (254, 'mht', 'message/rfc822');
INSERT INTO `mime` VALUES (255, 'mhtml', 'message/rfc822');
INSERT INTO `mime` VALUES (256, 'mid', 'audio/mid');
INSERT INTO `mime` VALUES (257, 'midi', 'audio/mid');
INSERT INTO `mime` VALUES (258, 'mix', 'application/octet-stream');
INSERT INTO `mime` VALUES (259, 'mk', 'text/plain');
INSERT INTO `mime` VALUES (260, 'mk3d', 'video/x-matroska-3d');
INSERT INTO `mime` VALUES (261, 'mka', 'audio/x-matroska');
INSERT INTO `mime` VALUES (262, 'mkv', 'video/x-matroska');
INSERT INTO `mime` VALUES (263, 'mmf', 'application/x-smaf');
INSERT INTO `mime` VALUES (264, 'mno', 'text/xml');
INSERT INTO `mime` VALUES (265, 'mny', 'application/x-msmoney');
INSERT INTO `mime` VALUES (266, 'mod', 'video/mpeg');
INSERT INTO `mime` VALUES (267, 'mov', 'video/quicktime');
INSERT INTO `mime` VALUES (268, 'movie', 'video/x-sgi-movie');
INSERT INTO `mime` VALUES (269, 'mp2', 'video/mpeg');
INSERT INTO `mime` VALUES (270, 'mp2v', 'video/mpeg');
INSERT INTO `mime` VALUES (271, 'mp3', 'audio/mpeg');
INSERT INTO `mime` VALUES (272, 'mp4', 'video/mp4');
INSERT INTO `mime` VALUES (273, 'mp4v', 'video/mp4');
INSERT INTO `mime` VALUES (274, 'mpa', 'video/mpeg');
INSERT INTO `mime` VALUES (275, 'mpe', 'video/mpeg');
INSERT INTO `mime` VALUES (276, 'mpeg', 'video/mpeg');
INSERT INTO `mime` VALUES (277, 'mpf', 'application/vnd.ms-mediapackage');
INSERT INTO `mime` VALUES (278, 'mpg', 'video/mpeg');
INSERT INTO `mime` VALUES (279, 'mpp', 'application/vnd.ms-project');
INSERT INTO `mime` VALUES (280, 'mpv2', 'video/mpeg');
INSERT INTO `mime` VALUES (281, 'mqv', 'video/quicktime');
INSERT INTO `mime` VALUES (282, 'ms', 'application/x-troff-ms');
INSERT INTO `mime` VALUES (283, 'msg', 'application/vnd.ms-outlook');
INSERT INTO `mime` VALUES (284, 'msi', 'application/octet-stream');
INSERT INTO `mime` VALUES (285, 'mso', 'application/octet-stream');
INSERT INTO `mime` VALUES (286, 'mts', 'video/vnd.dlna.mpeg-tts');
INSERT INTO `mime` VALUES (287, 'mtx', 'application/xml');
INSERT INTO `mime` VALUES (288, 'mvb', 'application/x-msmediaview');
INSERT INTO `mime` VALUES (289, 'mvc', 'application/x-miva-compiled');
INSERT INTO `mime` VALUES (290, 'mxp', 'application/x-mmxp');
INSERT INTO `mime` VALUES (291, 'nc', 'application/x-netcdf');
INSERT INTO `mime` VALUES (292, 'nsc', 'video/x-ms-asf');
INSERT INTO `mime` VALUES (293, 'nws', 'message/rfc822');
INSERT INTO `mime` VALUES (294, 'ocx', 'application/octet-stream');
INSERT INTO `mime` VALUES (295, 'oda', 'application/oda');
INSERT INTO `mime` VALUES (296, 'odb', 'application/vnd.oasis.opendocument.database');
INSERT INTO `mime` VALUES (297, 'odc', 'application/vnd.oasis.opendocument.chart');
INSERT INTO `mime` VALUES (298, 'odf', 'application/vnd.oasis.opendocument.formula');
INSERT INTO `mime` VALUES (299, 'odg', 'application/vnd.oasis.opendocument.graphics');
INSERT INTO `mime` VALUES (300, 'odh', 'text/plain');
INSERT INTO `mime` VALUES (301, 'odi', 'application/vnd.oasis.opendocument.image');
INSERT INTO `mime` VALUES (302, 'odl', 'text/plain');
INSERT INTO `mime` VALUES (303, 'odm', 'application/vnd.oasis.opendocument.text-master');
INSERT INTO `mime` VALUES (304, 'odp', 'application/vnd.oasis.opendocument.presentation');
INSERT INTO `mime` VALUES (305, 'ods', 'application/vnd.oasis.opendocument.spreadsheet');
INSERT INTO `mime` VALUES (306, 'odt', 'application/vnd.oasis.opendocument.text');
INSERT INTO `mime` VALUES (307, 'oga', 'audio/ogg');
INSERT INTO `mime` VALUES (308, 'ogg', 'audio/ogg');
INSERT INTO `mime` VALUES (309, 'ogv', 'video/ogg');
INSERT INTO `mime` VALUES (310, 'ogx', 'application/ogg');
INSERT INTO `mime` VALUES (311, 'one', 'application/onenote');
INSERT INTO `mime` VALUES (312, 'onea', 'application/onenote');
INSERT INTO `mime` VALUES (313, 'onepkg', 'application/onenote');
INSERT INTO `mime` VALUES (314, 'onetmp', 'application/onenote');
INSERT INTO `mime` VALUES (315, 'onetoc', 'application/onenote');
INSERT INTO `mime` VALUES (316, 'onetoc2', 'application/onenote');
INSERT INTO `mime` VALUES (317, 'opus', 'audio/ogg');
INSERT INTO `mime` VALUES (318, 'orderedtest', 'application/xml');
INSERT INTO `mime` VALUES (319, 'osdx', 'application/opensearchdescription+xml');
INSERT INTO `mime` VALUES (320, 'otf', 'application/font-sfnt');
INSERT INTO `mime` VALUES (321, 'otg', 'application/vnd.oasis.opendocument.graphics-template');
INSERT INTO `mime` VALUES (322, 'oth', 'application/vnd.oasis.opendocument.text-web');
INSERT INTO `mime` VALUES (323, 'otp', 'application/vnd.oasis.opendocument.presentation-template');
INSERT INTO `mime` VALUES (324, 'ots', 'application/vnd.oasis.opendocument.spreadsheet-template');
INSERT INTO `mime` VALUES (325, 'ott', 'application/vnd.oasis.opendocument.text-template');
INSERT INTO `mime` VALUES (326, 'oxt', 'application/vnd.openofficeorg.extension');
INSERT INTO `mime` VALUES (327, 'p10', 'application/pkcs10');
INSERT INTO `mime` VALUES (328, 'p12', 'application/x-pkcs12');
INSERT INTO `mime` VALUES (329, 'p7b', 'application/x-pkcs7-certificates');
INSERT INTO `mime` VALUES (330, 'p7c', 'application/pkcs7-mime');
INSERT INTO `mime` VALUES (331, 'p7m', 'application/pkcs7-mime');
INSERT INTO `mime` VALUES (332, 'p7r', 'application/x-pkcs7-certreqresp');
INSERT INTO `mime` VALUES (333, 'p7s', 'application/pkcs7-signature');
INSERT INTO `mime` VALUES (334, 'pbm', 'image/x-portable-bitmap');
INSERT INTO `mime` VALUES (335, 'pcast', 'application/x-podcast');
INSERT INTO `mime` VALUES (336, 'pct', 'image/pict');
INSERT INTO `mime` VALUES (337, 'pcx', 'application/octet-stream');
INSERT INTO `mime` VALUES (338, 'pcz', 'application/octet-stream');
INSERT INTO `mime` VALUES (339, 'pdf', 'application/pdf');
INSERT INTO `mime` VALUES (340, 'pfb', 'application/octet-stream');
INSERT INTO `mime` VALUES (341, 'pfm', 'application/octet-stream');
INSERT INTO `mime` VALUES (342, 'pfx', 'application/x-pkcs12');
INSERT INTO `mime` VALUES (343, 'pgm', 'image/x-portable-graymap');
INSERT INTO `mime` VALUES (344, 'pic', 'image/pict');
INSERT INTO `mime` VALUES (345, 'pict', 'image/pict');
INSERT INTO `mime` VALUES (346, 'pkgdef', 'text/plain');
INSERT INTO `mime` VALUES (347, 'pkgundef', 'text/plain');
INSERT INTO `mime` VALUES (348, 'pko', 'application/vnd.ms-pki.pko');
INSERT INTO `mime` VALUES (349, 'pls', 'audio/scpls');
INSERT INTO `mime` VALUES (350, 'pma', 'application/x-perfmon');
INSERT INTO `mime` VALUES (351, 'pmc', 'application/x-perfmon');
INSERT INTO `mime` VALUES (352, 'pml', 'application/x-perfmon');
INSERT INTO `mime` VALUES (353, 'pmr', 'application/x-perfmon');
INSERT INTO `mime` VALUES (354, 'pmw', 'application/x-perfmon');
INSERT INTO `mime` VALUES (355, 'png', 'image/png');
INSERT INTO `mime` VALUES (356, 'pnm', 'image/x-portable-anymap');
INSERT INTO `mime` VALUES (357, 'pnt', 'image/x-macpaint');
INSERT INTO `mime` VALUES (358, 'pntg', 'image/x-macpaint');
INSERT INTO `mime` VALUES (359, 'pnz', 'image/png');
INSERT INTO `mime` VALUES (360, 'pot', 'application/vnd.ms-powerpoint');
INSERT INTO `mime` VALUES (361, 'potm', 'application/vnd.ms-powerpoint.template.macroEnabled.12');
INSERT INTO `mime` VALUES (362, 'potx', 'application/vnd.openxmlformats-officedocument.presentationml.template');
INSERT INTO `mime` VALUES (363, 'ppa', 'application/vnd.ms-powerpoint');
INSERT INTO `mime` VALUES (364, 'ppam', 'application/vnd.ms-powerpoint.addin.macroEnabled.12');
INSERT INTO `mime` VALUES (365, 'ppm', 'image/x-portable-pixmap');
INSERT INTO `mime` VALUES (366, 'pps', 'application/vnd.ms-powerpoint');
INSERT INTO `mime` VALUES (367, 'ppsm', 'application/vnd.ms-powerpoint.slideshow.macroEnabled.12');
INSERT INTO `mime` VALUES (368, 'ppsx', 'application/vnd.openxmlformats-officedocument.presentationml.slideshow');
INSERT INTO `mime` VALUES (369, 'ppt', 'application/vnd.ms-powerpoint');
INSERT INTO `mime` VALUES (370, 'pptm', 'application/vnd.ms-powerpoint.presentation.macroEnabled.12');
INSERT INTO `mime` VALUES (371, 'pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation');
INSERT INTO `mime` VALUES (372, 'prf', 'application/pics-rules');
INSERT INTO `mime` VALUES (373, 'prm', 'application/octet-stream');
INSERT INTO `mime` VALUES (374, 'prx', 'application/octet-stream');
INSERT INTO `mime` VALUES (375, 'ps', 'application/postscript');
INSERT INTO `mime` VALUES (376, 'psc1', 'application/PowerShell');
INSERT INTO `mime` VALUES (377, 'psd', 'application/octet-stream');
INSERT INTO `mime` VALUES (378, 'psess', 'application/xml');
INSERT INTO `mime` VALUES (379, 'psm', 'application/octet-stream');
INSERT INTO `mime` VALUES (380, 'psp', 'application/octet-stream');
INSERT INTO `mime` VALUES (381, 'pst', 'application/vnd.ms-outlook');
INSERT INTO `mime` VALUES (382, 'pub', 'application/x-mspublisher');
INSERT INTO `mime` VALUES (383, 'pwz', 'application/vnd.ms-powerpoint');
INSERT INTO `mime` VALUES (384, 'qht', 'text/x-html-insertion');
INSERT INTO `mime` VALUES (385, 'qhtm', 'text/x-html-insertion');
INSERT INTO `mime` VALUES (386, 'qt', 'video/quicktime');
INSERT INTO `mime` VALUES (387, 'qti', 'image/x-quicktime');
INSERT INTO `mime` VALUES (388, 'qtif', 'image/x-quicktime');
INSERT INTO `mime` VALUES (389, 'qtl', 'application/x-quicktimeplayer');
INSERT INTO `mime` VALUES (390, 'qxd', 'application/octet-stream');
INSERT INTO `mime` VALUES (391, 'ra', 'audio/x-pn-realaudio');
INSERT INTO `mime` VALUES (392, 'ram', 'audio/x-pn-realaudio');
INSERT INTO `mime` VALUES (393, 'rar', 'application/x-rar-compressed');
INSERT INTO `mime` VALUES (394, 'ras', 'image/x-cmu-raster');
INSERT INTO `mime` VALUES (395, 'rat', 'application/rat-file');
INSERT INTO `mime` VALUES (396, 'rc', 'text/plain');
INSERT INTO `mime` VALUES (397, 'rc2', 'text/plain');
INSERT INTO `mime` VALUES (398, 'rct', 'text/plain');
INSERT INTO `mime` VALUES (399, 'rdlc', 'application/xml');
INSERT INTO `mime` VALUES (400, 'reg', 'text/plain');
INSERT INTO `mime` VALUES (401, 'resx', 'application/xml');
INSERT INTO `mime` VALUES (402, 'rf', 'image/vnd.rn-realflash');
INSERT INTO `mime` VALUES (403, 'rgb', 'image/x-rgb');
INSERT INTO `mime` VALUES (404, 'rgs', 'text/plain');
INSERT INTO `mime` VALUES (405, 'rm', 'application/vnd.rn-realmedia');
INSERT INTO `mime` VALUES (406, 'rmi', 'audio/mid');
INSERT INTO `mime` VALUES (407, 'rmp', 'application/vnd.rn-rn_music_package');
INSERT INTO `mime` VALUES (408, 'roff', 'application/x-troff');
INSERT INTO `mime` VALUES (409, 'rpm', 'audio/x-pn-realaudio-plugin');
INSERT INTO `mime` VALUES (410, 'rqy', 'text/x-ms-rqy');
INSERT INTO `mime` VALUES (411, 'rtf', 'application/rtf');
INSERT INTO `mime` VALUES (412, 'rtx', 'text/richtext');
INSERT INTO `mime` VALUES (413, 'rvt', 'application/octet-stream');
INSERT INTO `mime` VALUES (414, 'ruleset', 'application/xml');
INSERT INTO `mime` VALUES (415, 's', 'text/plain');
INSERT INTO `mime` VALUES (416, 'safariextz', 'application/x-safari-safariextz');
INSERT INTO `mime` VALUES (417, 'scd', 'application/x-msschedule');
INSERT INTO `mime` VALUES (418, 'scr', 'text/plain');
INSERT INTO `mime` VALUES (419, 'sct', 'text/scriptlet');
INSERT INTO `mime` VALUES (420, 'sd2', 'audio/x-sd2');
INSERT INTO `mime` VALUES (421, 'sdp', 'application/sdp');
INSERT INTO `mime` VALUES (422, 'sea', 'application/octet-stream');
INSERT INTO `mime` VALUES (423, 'searchConnector-ms', 'application/windows-search-connector+xml');
INSERT INTO `mime` VALUES (424, 'setpay', 'application/set-payment-initiation');
INSERT INTO `mime` VALUES (425, 'setreg', 'application/set-registration-initiation');
INSERT INTO `mime` VALUES (426, 'settings', 'application/xml');
INSERT INTO `mime` VALUES (427, 'sgimb', 'application/x-sgimb');
INSERT INTO `mime` VALUES (428, 'sgml', 'text/sgml');
INSERT INTO `mime` VALUES (429, 'sh', 'application/x-sh');
INSERT INTO `mime` VALUES (430, 'shar', 'application/x-shar');
INSERT INTO `mime` VALUES (431, 'shtml', 'text/html');
INSERT INTO `mime` VALUES (432, 'sit', 'application/x-stuffit');
INSERT INTO `mime` VALUES (433, 'sitemap', 'application/xml');
INSERT INTO `mime` VALUES (434, 'skin', 'application/xml');
INSERT INTO `mime` VALUES (435, 'skp', 'application/x-koan');
INSERT INTO `mime` VALUES (436, 'sldm', 'application/vnd.ms-powerpoint.slide.macroEnabled.12');
INSERT INTO `mime` VALUES (437, 'sldx', 'application/vnd.openxmlformats-officedocument.presentationml.slide');
INSERT INTO `mime` VALUES (438, 'slk', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (439, 'sln', 'text/plain');
INSERT INTO `mime` VALUES (440, 'slupkg-ms', 'application/x-ms-license');
INSERT INTO `mime` VALUES (441, 'smd', 'audio/x-smd');
INSERT INTO `mime` VALUES (442, 'smi', 'application/octet-stream');
INSERT INTO `mime` VALUES (443, 'smx', 'audio/x-smd');
INSERT INTO `mime` VALUES (444, 'smz', 'audio/x-smd');
INSERT INTO `mime` VALUES (445, 'snd', 'audio/basic');
INSERT INTO `mime` VALUES (446, 'snippet', 'application/xml');
INSERT INTO `mime` VALUES (447, 'snp', 'application/octet-stream');
INSERT INTO `mime` VALUES (448, 'sol', 'text/plain');
INSERT INTO `mime` VALUES (449, 'sor', 'text/plain');
INSERT INTO `mime` VALUES (450, 'spc', 'application/x-pkcs7-certificates');
INSERT INTO `mime` VALUES (451, 'spl', 'application/futuresplash');
INSERT INTO `mime` VALUES (452, 'spx', 'audio/ogg');
INSERT INTO `mime` VALUES (453, 'src', 'application/x-wais-source');
INSERT INTO `mime` VALUES (454, 'srf', 'text/plain');
INSERT INTO `mime` VALUES (455, 'SSISDeploymentManifest', 'text/xml');
INSERT INTO `mime` VALUES (456, 'ssm', 'application/streamingmedia');
INSERT INTO `mime` VALUES (457, 'sst', 'application/vnd.ms-pki.certstore');
INSERT INTO `mime` VALUES (458, 'stl', 'application/vnd.ms-pki.stl');
INSERT INTO `mime` VALUES (459, 'sv4cpio', 'application/x-sv4cpio');
INSERT INTO `mime` VALUES (460, 'sv4crc', 'application/x-sv4crc');
INSERT INTO `mime` VALUES (461, 'svc', 'application/xml');
INSERT INTO `mime` VALUES (462, 'svg', 'image/svg+xml');
INSERT INTO `mime` VALUES (463, 'swf', 'application/x-shockwave-flash');
INSERT INTO `mime` VALUES (464, 'step', 'application/step');
INSERT INTO `mime` VALUES (465, 'stp', 'application/step');
INSERT INTO `mime` VALUES (466, 't', 'application/x-troff');
INSERT INTO `mime` VALUES (467, 'tar', 'application/x-tar');
INSERT INTO `mime` VALUES (468, 'tcl', 'application/x-tcl');
INSERT INTO `mime` VALUES (469, 'testrunconfig', 'application/xml');
INSERT INTO `mime` VALUES (470, 'testsettings', 'application/xml');
INSERT INTO `mime` VALUES (471, 'tex', 'application/x-tex');
INSERT INTO `mime` VALUES (472, 'texi', 'application/x-texinfo');
INSERT INTO `mime` VALUES (473, 'texinfo', 'application/x-texinfo');
INSERT INTO `mime` VALUES (474, 'tgz', 'application/x-compressed');
INSERT INTO `mime` VALUES (475, 'thmx', 'application/vnd.ms-officetheme');
INSERT INTO `mime` VALUES (476, 'thn', 'application/octet-stream');
INSERT INTO `mime` VALUES (477, 'tif', 'image/tiff');
INSERT INTO `mime` VALUES (478, 'tiff', 'image/tiff');
INSERT INTO `mime` VALUES (479, 'tlh', 'text/plain');
INSERT INTO `mime` VALUES (480, 'tli', 'text/plain');
INSERT INTO `mime` VALUES (481, 'toc', 'application/octet-stream');
INSERT INTO `mime` VALUES (482, 'tr', 'application/x-troff');
INSERT INTO `mime` VALUES (483, 'trm', 'application/x-msterminal');
INSERT INTO `mime` VALUES (484, 'trx', 'application/xml');
INSERT INTO `mime` VALUES (485, 'ts', 'video/vnd.dlna.mpeg-tts');
INSERT INTO `mime` VALUES (486, 'tsv', 'text/tab-separated-values');
INSERT INTO `mime` VALUES (487, 'ttf', 'application/font-sfnt');
INSERT INTO `mime` VALUES (488, 'tts', 'video/vnd.dlna.mpeg-tts');
INSERT INTO `mime` VALUES (489, 'txt', 'text/plain');
INSERT INTO `mime` VALUES (490, 'u32', 'application/octet-stream');
INSERT INTO `mime` VALUES (491, 'uls', 'text/iuls');
INSERT INTO `mime` VALUES (492, 'user', 'text/plain');
INSERT INTO `mime` VALUES (493, 'ustar', 'application/x-ustar');
INSERT INTO `mime` VALUES (494, 'vb', 'text/plain');
INSERT INTO `mime` VALUES (495, 'vbdproj', 'text/plain');
INSERT INTO `mime` VALUES (496, 'vbk', 'video/mpeg');
INSERT INTO `mime` VALUES (497, 'vbproj', 'text/plain');
INSERT INTO `mime` VALUES (498, 'vbs', 'text/vbscript');
INSERT INTO `mime` VALUES (499, 'vcf', 'text/x-vcard');
INSERT INTO `mime` VALUES (500, 'vcproj', 'application/xml');
INSERT INTO `mime` VALUES (501, 'vcs', 'text/plain');
INSERT INTO `mime` VALUES (502, 'vcxproj', 'application/xml');
INSERT INTO `mime` VALUES (503, 'vddproj', 'text/plain');
INSERT INTO `mime` VALUES (504, 'vdp', 'text/plain');
INSERT INTO `mime` VALUES (505, 'vdproj', 'text/plain');
INSERT INTO `mime` VALUES (506, 'vdx', 'application/vnd.ms-visio.viewer');
INSERT INTO `mime` VALUES (507, 'vml', 'text/xml');
INSERT INTO `mime` VALUES (508, 'vscontent', 'application/xml');
INSERT INTO `mime` VALUES (509, 'vsct', 'text/xml');
INSERT INTO `mime` VALUES (510, 'vsd', 'application/vnd.visio');
INSERT INTO `mime` VALUES (511, 'vsi', 'application/ms-vsi');
INSERT INTO `mime` VALUES (512, 'vsix', 'application/vsix');
INSERT INTO `mime` VALUES (513, 'vsixlangpack', 'text/xml');
INSERT INTO `mime` VALUES (514, 'vsixmanifest', 'text/xml');
INSERT INTO `mime` VALUES (515, 'vsmdi', 'application/xml');
INSERT INTO `mime` VALUES (516, 'vspscc', 'text/plain');
INSERT INTO `mime` VALUES (517, 'vss', 'application/vnd.visio');
INSERT INTO `mime` VALUES (518, 'vsscc', 'text/plain');
INSERT INTO `mime` VALUES (519, 'vssettings', 'text/xml');
INSERT INTO `mime` VALUES (520, 'vssscc', 'text/plain');
INSERT INTO `mime` VALUES (521, 'vst', 'application/vnd.visio');
INSERT INTO `mime` VALUES (522, 'vstemplate', 'text/xml');
INSERT INTO `mime` VALUES (523, 'vsto', 'application/x-ms-vsto');
INSERT INTO `mime` VALUES (524, 'vsw', 'application/vnd.visio');
INSERT INTO `mime` VALUES (525, 'vsx', 'application/vnd.visio');
INSERT INTO `mime` VALUES (526, 'vtt', 'text/vtt');
INSERT INTO `mime` VALUES (527, 'vtx', 'application/vnd.visio');
INSERT INTO `mime` VALUES (528, 'wasm', 'application/wasm');
INSERT INTO `mime` VALUES (529, 'wav', 'audio/wav');
INSERT INTO `mime` VALUES (530, 'wave', 'audio/wav');
INSERT INTO `mime` VALUES (531, 'wax', 'audio/x-ms-wax');
INSERT INTO `mime` VALUES (532, 'wbk', 'application/msword');
INSERT INTO `mime` VALUES (533, 'wbmp', 'image/vnd.wap.wbmp');
INSERT INTO `mime` VALUES (534, 'wcm', 'application/vnd.ms-works');
INSERT INTO `mime` VALUES (535, 'wdb', 'application/vnd.ms-works');
INSERT INTO `mime` VALUES (536, 'wdp', 'image/vnd.ms-photo');
INSERT INTO `mime` VALUES (537, 'webarchive', 'application/x-safari-webarchive');
INSERT INTO `mime` VALUES (538, 'webm', 'video/webm');
INSERT INTO `mime` VALUES (539, 'webp', 'image/webp');
INSERT INTO `mime` VALUES (540, 'webtest', 'application/xml');
INSERT INTO `mime` VALUES (541, 'wiq', 'application/xml');
INSERT INTO `mime` VALUES (542, 'wiz', 'application/msword');
INSERT INTO `mime` VALUES (543, 'wks', 'application/vnd.ms-works');
INSERT INTO `mime` VALUES (544, 'WLMP', 'application/wlmoviemaker');
INSERT INTO `mime` VALUES (545, 'wlpginstall', 'application/x-wlpg-detect');
INSERT INTO `mime` VALUES (546, 'wlpginstall3', 'application/x-wlpg3-detect');
INSERT INTO `mime` VALUES (547, 'wm', 'video/x-ms-wm');
INSERT INTO `mime` VALUES (548, 'wma', 'audio/x-ms-wma');
INSERT INTO `mime` VALUES (549, 'wmd', 'application/x-ms-wmd');
INSERT INTO `mime` VALUES (550, 'wmf', 'application/x-msmetafile');
INSERT INTO `mime` VALUES (551, 'wml', 'text/vnd.wap.wml');
INSERT INTO `mime` VALUES (552, 'wmlc', 'application/vnd.wap.wmlc');
INSERT INTO `mime` VALUES (553, 'wmls', 'text/vnd.wap.wmlscript');
INSERT INTO `mime` VALUES (554, 'wmlsc', 'application/vnd.wap.wmlscriptc');
INSERT INTO `mime` VALUES (555, 'wmp', 'video/x-ms-wmp');
INSERT INTO `mime` VALUES (556, 'wmv', 'video/x-ms-wmv');
INSERT INTO `mime` VALUES (557, 'wmx', 'video/x-ms-wmx');
INSERT INTO `mime` VALUES (558, 'wmz', 'application/x-ms-wmz');
INSERT INTO `mime` VALUES (559, 'woff', 'application/font-woff');
INSERT INTO `mime` VALUES (560, 'woff2', 'application/font-woff2');
INSERT INTO `mime` VALUES (561, 'wpl', 'application/vnd.ms-wpl');
INSERT INTO `mime` VALUES (562, 'wps', 'application/vnd.ms-works');
INSERT INTO `mime` VALUES (563, 'wri', 'application/x-mswrite');
INSERT INTO `mime` VALUES (564, 'wrl', 'x-world/x-vrml');
INSERT INTO `mime` VALUES (565, 'wrz', 'x-world/x-vrml');
INSERT INTO `mime` VALUES (566, 'wsc', 'text/scriptlet');
INSERT INTO `mime` VALUES (567, 'wsdl', 'text/xml');
INSERT INTO `mime` VALUES (568, 'wvx', 'video/x-ms-wvx');
INSERT INTO `mime` VALUES (569, 'x', 'application/directx');
INSERT INTO `mime` VALUES (570, 'xaf', 'x-world/x-vrml');
INSERT INTO `mime` VALUES (571, 'xaml', 'application/xaml+xml');
INSERT INTO `mime` VALUES (572, 'xap', 'application/x-silverlight-app');
INSERT INTO `mime` VALUES (573, 'xbap', 'application/x-ms-xbap');
INSERT INTO `mime` VALUES (574, 'xbm', 'image/x-xbitmap');
INSERT INTO `mime` VALUES (575, 'xdr', 'text/plain');
INSERT INTO `mime` VALUES (576, 'xht', 'application/xhtml+xml');
INSERT INTO `mime` VALUES (577, 'xhtml', 'application/xhtml+xml');
INSERT INTO `mime` VALUES (578, 'xla', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (579, 'xlam', 'application/vnd.ms-excel.addin.macroEnabled.12');
INSERT INTO `mime` VALUES (580, 'xlc', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (581, 'xld', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (582, 'xlk', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (583, 'xll', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (584, 'xlm', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (585, 'xls', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (586, 'xlsb', 'application/vnd.ms-excel.sheet.binary.macroEnabled.12');
INSERT INTO `mime` VALUES (587, 'xlsm', 'application/vnd.ms-excel.sheet.macroEnabled.12');
INSERT INTO `mime` VALUES (588, 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
INSERT INTO `mime` VALUES (589, 'xlt', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (590, 'xltm', 'application/vnd.ms-excel.template.macroEnabled.12');
INSERT INTO `mime` VALUES (591, 'xltx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.template');
INSERT INTO `mime` VALUES (592, 'xlw', 'application/vnd.ms-excel');
INSERT INTO `mime` VALUES (593, 'xml', 'text/xml');
INSERT INTO `mime` VALUES (594, 'xmp', 'application/octet-stream');
INSERT INTO `mime` VALUES (595, 'xmta', 'application/xml');
INSERT INTO `mime` VALUES (596, 'xof', 'x-world/x-vrml');
INSERT INTO `mime` VALUES (597, 'XOML', 'text/plain');
INSERT INTO `mime` VALUES (598, 'xpm', 'image/x-xpixmap');
INSERT INTO `mime` VALUES (599, 'xps', 'application/vnd.ms-xpsdocument');
INSERT INTO `mime` VALUES (600, 'xrm-ms', 'text/xml');
INSERT INTO `mime` VALUES (601, 'xsc', 'application/xml');
INSERT INTO `mime` VALUES (602, 'xsd', 'text/xml');
INSERT INTO `mime` VALUES (603, 'xsf', 'text/xml');
INSERT INTO `mime` VALUES (604, 'xsl', 'text/xml');
INSERT INTO `mime` VALUES (605, 'xslt', 'text/xml');
INSERT INTO `mime` VALUES (606, 'xsn', 'application/octet-stream');
INSERT INTO `mime` VALUES (607, 'xss', 'application/xml');
INSERT INTO `mime` VALUES (608, 'xspf', 'application/xspf+xml');
INSERT INTO `mime` VALUES (609, 'xtp', 'application/octet-stream');
INSERT INTO `mime` VALUES (610, 'xwd', 'image/x-xwindowdump');
INSERT INTO `mime` VALUES (611, 'z', 'application/x-compress');
INSERT INTO `mime` VALUES (612, 'zip', 'application/zip');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Number` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApiRequestCount` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('39f6ba71-138a-20c0-2cb3-926ad2b03460', 2, '代码生成', 'CodeGenerator', 'develop', '1.7.13', 'NetModular Module CodeGenerator(代码生成) - WebHost', 0);
INSERT INTO `module` VALUES ('39f6ba71-13a2-b6a0-6c61-72adbb7c8829', 1, '通用模块', 'Common', 'database', '1.7.5', 'NetModular Module Common(通用模块) - WebHost', 0);
INSERT INTO `module` VALUES ('39f6ba71-13ac-97bf-5854-f56407a6415d', 4, '人事档案', 'PersonnelFiles', 'personnel-files', '1.6.5', 'NetModular Module PersonnelFiles(人事档案) - WebHost', 0);
INSERT INTO `module` VALUES ('39f6ba71-13b6-503d-beb9-050658b47b59', 3, '任务调度', 'Quartz', 'timer', '1.6.7', 'NetModular Module Quartz(任务调度) - WebHost', 0);
INSERT INTO `module` VALUES ('39f6ba71-13c1-2bb9-b7d8-b9d46e049d8f', 0, '权限管理', 'Admin', 'permission', '2.0.0-dev-002', '权限管理模块用于身份认证以及授权等功能', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IsSpecified` bit(1) NOT NULL DEFAULT b'0',
  `CreatedTime` datetime(0) NULL DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '超级管理员', '超级管理员', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2020-01-13 19:26:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for role_button
-- ----------------------------
DROP TABLE IF EXISTS `role_button`;
CREATE TABLE `role_button`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PageCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ButtonCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_button
-- ----------------------------
INSERT INTO `role_button` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account', 'admin_account_add');
INSERT INTO `role_button` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account', 'admin_account_edit');
INSERT INTO `role_button` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account', 'admin_account_del');
INSERT INTO `role_button` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account', 'admin_account_reset_password');
INSERT INTO `role_button` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account', 'admin_account_active');
INSERT INTO `role_button` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_auditinfo', 'admin_auditinfo_details');
INSERT INTO `role_button` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_auditinfo', 'admin_auditinfo_export');
INSERT INTO `role_button` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_cache', 'admin_cache_clear');
INSERT INTO `role_button` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_file', 'admin_file_export');
INSERT INTO `role_button` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_file', 'admin_file_del');
INSERT INTO `role_button` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_file', 'admin_file_harddel');
INSERT INTO `role_button` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_log_login', 'admin_log_login_export');
INSERT INTO `role_button` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_menu', 'admin_menu_add');
INSERT INTO `role_button` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_menu', 'admin_menu_edit');
INSERT INTO `role_button` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_menu', 'admin_menu_del');
INSERT INTO `role_button` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_menu', 'admin_menu_sort');
INSERT INTO `role_button` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_mime', 'admin_mime_add');
INSERT INTO `role_button` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_mime', 'admin_mime_edit');
INSERT INTO `role_button` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_mime', 'admin_mime_del');
INSERT INTO `role_button` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_add');
INSERT INTO `role_button` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_edit');
INSERT INTO `role_button` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_del');
INSERT INTO `role_button` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_bind_menus');
INSERT INTO `role_button` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_bind_pages');
INSERT INTO `role_button` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role', 'admin_role_bind_platform');
INSERT INTO `role_button` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_area', 'common_area_add');
INSERT INTO `role_button` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_area', 'common_area_edit');
INSERT INTO `role_button` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_area', 'common_area_del');
INSERT INTO `role_button` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_attachment', 'common_attachment_del');
INSERT INTO `role_button` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_attachment', 'common_attachment_export');
INSERT INTO `role_button` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dict', 'common_dict_add');
INSERT INTO `role_button` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dict', 'common_dict_edit');
INSERT INTO `role_button` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dict', 'common_dict_del');
INSERT INTO `role_button` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dict', 'common_dict_item');
INSERT INTO `role_button` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dictgroup', 'common_dictgroup_add');
INSERT INTO `role_button` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dictgroup', 'common_dictgroup_edit');
INSERT INTO `role_button` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dictgroup', 'common_dictgroup_del');
INSERT INTO `role_button` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_mediatype', 'common_mediatype_add');
INSERT INTO `role_button` VALUES (64, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_mediatype', 'common_mediatype_edit');
INSERT INTO `role_button` VALUES (65, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_mediatype', 'common_mediatype_del');
INSERT INTO `role_button` VALUES (66, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_enum', 'codegenerator_enum_add');
INSERT INTO `role_button` VALUES (67, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_enum', 'codegenerator_enum_edit');
INSERT INTO `role_button` VALUES (68, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_enum', 'codegenerator_enum_del');
INSERT INTO `role_button` VALUES (69, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_enum', 'codegenerator_enum_item');
INSERT INTO `role_button` VALUES (70, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module', 'codegenerator_module_add');
INSERT INTO `role_button` VALUES (71, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module', 'codegenerator_module_edit');
INSERT INTO `role_button` VALUES (72, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module', 'codegenerator_module_del');
INSERT INTO `role_button` VALUES (73, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module', 'codegenerator_module_build_code');
INSERT INTO `role_button` VALUES (74, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module', 'codegenerator_module_class_manage');
INSERT INTO `role_button` VALUES (75, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_group', 'quartz_group_add');
INSERT INTO `role_button` VALUES (76, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_group', 'quartz_group_del');
INSERT INTO `role_button` VALUES (77, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_add');
INSERT INTO `role_button` VALUES (78, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_edit');
INSERT INTO `role_button` VALUES (79, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_pause');
INSERT INTO `role_button` VALUES (80, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_resume');
INSERT INTO `role_button` VALUES (81, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_stop');
INSERT INTO `role_button` VALUES (82, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_log');
INSERT INTO `role_button` VALUES (83, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job', 'quartz_job_del');
INSERT INTO `role_button` VALUES (84, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_department', 'personnelfiles_department_add');
INSERT INTO `role_button` VALUES (85, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_department', 'personnelfiles_department_edit');
INSERT INTO `role_button` VALUES (86, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_department', 'personnelfiles_department_del');
INSERT INTO `role_button` VALUES (87, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee', 'personnelfiles_employee_add');
INSERT INTO `role_button` VALUES (88, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee', 'personnelfiles_employee_edit');
INSERT INTO `role_button` VALUES (89, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee', 'personnelfiles_employee_del');
INSERT INTO `role_button` VALUES (90, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee', 'personnelfiles_employee_leave');
INSERT INTO `role_button` VALUES (91, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee', 'personnelfiles_employee_preview');
INSERT INTO `role_button` VALUES (92, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_position', 'personnelfiles_position_add');
INSERT INTO `role_button` VALUES (93, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_position', 'personnelfiles_position_edit');
INSERT INTO `role_button` VALUES (94, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_position', 'personnelfiles_position_del');
INSERT INTO `role_button` VALUES (95, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_post', 'personnelfiles_post_add');
INSERT INTO `role_button` VALUES (96, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_post', 'personnelfiles_post_edit');
INSERT INTO `role_button` VALUES (97, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_post', 'personnelfiles_post_del');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (17, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba75-f3f8-6e17-bc7c-0be9adfc85a1');
INSERT INTO `role_menu` VALUES (18, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba76-ef8c-3929-33ca-aec8acf44ddd');
INSERT INTO `role_menu` VALUES (19, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba77-02f7-e410-13f5-e364d9da2945');
INSERT INTO `role_menu` VALUES (20, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba77-0ea0-8a28-df5e-d57487147a11');
INSERT INTO `role_menu` VALUES (21, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba77-17de-a402-6a84-3ca205734653');
INSERT INTO `role_menu` VALUES (22, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba77-213f-7e91-6308-aab493811797');
INSERT INTO `role_menu` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba75-d89e-6018-db12-2008a0a33281');
INSERT INTO `role_menu` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba76-c180-408b-ec1d-09803b266d72');
INSERT INTO `role_menu` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba76-ccdc-ab07-d3d5-570d077ca7cb');
INSERT INTO `role_menu` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba75-6142-9cfc-f216-36595e9ccf0a');
INSERT INTO `role_menu` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba76-90db-2295-e41d-0172e7bbb85d');
INSERT INTO `role_menu` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba76-9a04-e35d-375e-ed0d525e9f61');
INSERT INTO `role_menu` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba73-fa6e-b687-054c-6e71af442cee');
INSERT INTO `role_menu` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba74-9319-7115-a7db-efe82c1562d7');
INSERT INTO `role_menu` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba74-bcbc-984d-3707-e207330c1990');
INSERT INTO `role_menu` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba74-ca75-edd0-a74f-f9b8adc70c96');
INSERT INTO `role_menu` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba74-2e7e-9ddb-5bf3-6ad51d8db890');
INSERT INTO `role_menu` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f6ba74-f8d6-9950-5da6-d9a06ac75277');
INSERT INTO `role_menu` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-400a-b33d-0c8f-e878aaaba954');
INSERT INTO `role_menu` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-d5dc-90a5-6cc3-b3a0b9040643');
INSERT INTO `role_menu` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-ed14-45e0-718c-7d650d850143');
INSERT INTO `role_menu` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-ffc8-9de6-77eb-0fe0a8364f8c');
INSERT INTO `role_menu` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49d-0eb2-662f-2a0d-706f41140d12');
INSERT INTO `role_menu` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-1756-9047-34b5-6dcfadefe28d');
INSERT INTO `role_menu` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-8ccc-2a54-dac7-b5dd6503d91a');
INSERT INTO `role_menu` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4d6d2-3508-0cfc-205e-7bd7b887f3f4');
INSERT INTO `role_menu` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-adf2-d90f-9626-99acecc76c37');
INSERT INTO `role_menu` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-9ef2-c04b-fc63-5cdc9811c506');
INSERT INTO `role_menu` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4d6b4-cb9e-0ba7-e46e-442013f4d8ba');
INSERT INTO `role_menu` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-10a9-fc03-fcbd-b6a8a29a3709');
INSERT INTO `role_menu` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-5f6b-1879-7d4c-7915512406e9');
INSERT INTO `role_menu` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-6e11-71de-e74b-67b7e152b442');
INSERT INTO `role_menu` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49b-5fc3-33be-0fcd-652929d9ea73');
INSERT INTO `role_menu` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49b-d757-ea18-e9c4-d9c768f77512');

-- ----------------------------
-- Table structure for role_page
-- ----------------------------
DROP TABLE IF EXISTS `role_page`;
CREATE TABLE `role_page`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PageCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_page
-- ----------------------------
INSERT INTO `role_page` VALUES (13, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_account');
INSERT INTO `role_page` VALUES (14, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_auditinfo');
INSERT INTO `role_page` VALUES (15, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_cache');
INSERT INTO `role_page` VALUES (16, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_config');
INSERT INTO `role_page` VALUES (17, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_file');
INSERT INTO `role_page` VALUES (18, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'home');
INSERT INTO `role_page` VALUES (19, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_icon');
INSERT INTO `role_page` VALUES (20, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_log_login');
INSERT INTO `role_page` VALUES (21, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_menu');
INSERT INTO `role_page` VALUES (22, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_mime');
INSERT INTO `role_page` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_module');
INSERT INTO `role_page` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'admin_role');
INSERT INTO `role_page` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_area');
INSERT INTO `role_page` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_attachment');
INSERT INTO `role_page` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dict');
INSERT INTO `role_page` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_dictgroup');
INSERT INTO `role_page` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'common_mediatype');
INSERT INTO `role_page` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_enum');
INSERT INTO `role_page` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'codegenerator_module');
INSERT INTO `role_page` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_group');
INSERT INTO `role_page` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'quartz_job');
INSERT INTO `role_page` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_department');
INSERT INTO `role_page` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee_demo');
INSERT INTO `role_page` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_employee');
INSERT INTO `role_page` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_position');
INSERT INTO `role_page` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 'personnelfiles_post');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(3) NOT NULL DEFAULT 0,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_query_get');
INSERT INTO `role_permission` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_add_post');
INSERT INTO `role_permission` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_edit_get');
INSERT INTO `role_permission` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_update_post');
INSERT INTO `role_permission` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_delete_delete');
INSERT INTO `role_permission` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_resetpassword_post');
INSERT INTO `role_permission` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_account_active_post');
INSERT INTO `role_permission` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_auditinfo_query_get');
INSERT INTO `role_permission` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_auditinfo_details_get');
INSERT INTO `role_permission` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_auditinfo_export_post');
INSERT INTO `role_permission` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_cache_query_get');
INSERT INTO `role_permission` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_cache_clear_delete');
INSERT INTO `role_permission` VALUES (64, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_config_edit_get');
INSERT INTO `role_permission` VALUES (65, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_config_update_post');
INSERT INTO `role_permission` VALUES (66, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_config_UploadLogo_post');
INSERT INTO `role_permission` VALUES (67, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_config_LogoUrl_get');
INSERT INTO `role_permission` VALUES (68, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_config_Descriptors_get');
INSERT INTO `role_permission` VALUES (69, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_file_query_get');
INSERT INTO `role_permission` VALUES (70, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_file_export_get');
INSERT INTO `role_permission` VALUES (71, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_file_delete_delete');
INSERT INTO `role_permission` VALUES (72, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_file_hardDelete_delete');
INSERT INTO `role_permission` VALUES (73, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_log_login_get');
INSERT INTO `role_permission` VALUES (74, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_log_loginexport_post');
INSERT INTO `role_permission` VALUES (75, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_query_get');
INSERT INTO `role_permission` VALUES (76, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_tree_get');
INSERT INTO `role_permission` VALUES (77, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_add_post');
INSERT INTO `role_permission` VALUES (78, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_edit_Get');
INSERT INTO `role_permission` VALUES (79, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_update_post');
INSERT INTO `role_permission` VALUES (80, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_delete_delete');
INSERT INTO `role_permission` VALUES (81, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_sort_get');
INSERT INTO `role_permission` VALUES (82, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_menu_sort_post');
INSERT INTO `role_permission` VALUES (83, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_mime_query_get');
INSERT INTO `role_permission` VALUES (84, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_mime_add_post');
INSERT INTO `role_permission` VALUES (85, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_mime_edit_get');
INSERT INTO `role_permission` VALUES (86, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_mime_update_post');
INSERT INTO `role_permission` VALUES (87, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_mime_delete_delete');
INSERT INTO `role_permission` VALUES (88, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_module_query_get');
INSERT INTO `role_permission` VALUES (89, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_permission_query_get');
INSERT INTO `role_permission` VALUES (90, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_permission_querybycodes_get');
INSERT INTO `role_permission` VALUES (91, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_query_get');
INSERT INTO `role_permission` VALUES (92, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_add_post');
INSERT INTO `role_permission` VALUES (93, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_edit_get');
INSERT INTO `role_permission` VALUES (94, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_update_post');
INSERT INTO `role_permission` VALUES (95, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_delete_delete');
INSERT INTO `role_permission` VALUES (96, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindMenus_get');
INSERT INTO `role_permission` VALUES (97, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindMenus_post');
INSERT INTO `role_permission` VALUES (98, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindPages_get');
INSERT INTO `role_permission` VALUES (99, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindPages_post');
INSERT INTO `role_permission` VALUES (100, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_permission_tree_get');
INSERT INTO `role_permission` VALUES (101, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindPlatformPermissions_get');
INSERT INTO `role_permission` VALUES (102, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'admin_role_BindPlatformPermissions_post');
INSERT INTO `role_permission` VALUES (103, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_query_get');
INSERT INTO `role_permission` VALUES (104, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_querychildren_get');
INSERT INTO `role_permission` VALUES (105, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_add_post');
INSERT INTO `role_permission` VALUES (106, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_edit_get');
INSERT INTO `role_permission` VALUES (107, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_update_post');
INSERT INTO `role_permission` VALUES (108, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_area_delete_delete');
INSERT INTO `role_permission` VALUES (109, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_attachment_query_get');
INSERT INTO `role_permission` VALUES (110, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_attachment_delete_delete');
INSERT INTO `role_permission` VALUES (111, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_attachment_export_get');
INSERT INTO `role_permission` VALUES (112, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_query_get');
INSERT INTO `role_permission` VALUES (113, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_querychildren_get');
INSERT INTO `role_permission` VALUES (114, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_add_post');
INSERT INTO `role_permission` VALUES (115, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_edit_get');
INSERT INTO `role_permission` VALUES (116, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_update_post');
INSERT INTO `role_permission` VALUES (117, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dict_delete_delete');
INSERT INTO `role_permission` VALUES (118, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictitem_query_get');
INSERT INTO `role_permission` VALUES (119, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictitem_add_post');
INSERT INTO `role_permission` VALUES (120, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictitem_edit_get');
INSERT INTO `role_permission` VALUES (121, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictitem_update_post');
INSERT INTO `role_permission` VALUES (122, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictitem_delete_delete');
INSERT INTO `role_permission` VALUES (123, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictgroup_query_get');
INSERT INTO `role_permission` VALUES (124, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictgroup_add_post');
INSERT INTO `role_permission` VALUES (125, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictgroup_edit_get');
INSERT INTO `role_permission` VALUES (126, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictgroup_update_post');
INSERT INTO `role_permission` VALUES (127, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_dictgroup_delete_delete');
INSERT INTO `role_permission` VALUES (128, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_mediatype_query_get');
INSERT INTO `role_permission` VALUES (129, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_mediatype_add_post');
INSERT INTO `role_permission` VALUES (130, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_mediatype_edit_get');
INSERT INTO `role_permission` VALUES (131, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_mediatype_update_post');
INSERT INTO `role_permission` VALUES (132, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'common_mediatype_delete_delete');
INSERT INTO `role_permission` VALUES (133, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_enum_query_get');
INSERT INTO `role_permission` VALUES (134, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_enum_add_post');
INSERT INTO `role_permission` VALUES (135, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_enum_edit_get');
INSERT INTO `role_permission` VALUES (136, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_enum_update_post');
INSERT INTO `role_permission` VALUES (137, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_enum_delete_delete');
INSERT INTO `role_permission` VALUES (138, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_query_get');
INSERT INTO `role_permission` VALUES (139, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_add_post');
INSERT INTO `role_permission` VALUES (140, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_edit_get');
INSERT INTO `role_permission` VALUES (141, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_update_post');
INSERT INTO `role_permission` VALUES (142, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_delete_delete');
INSERT INTO `role_permission` VALUES (143, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'codegenerator_module_buildcode_post');
INSERT INTO `role_permission` VALUES (144, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_group_query_get');
INSERT INTO `role_permission` VALUES (145, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_group_add_post');
INSERT INTO `role_permission` VALUES (146, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_group_delete_delete');
INSERT INTO `role_permission` VALUES (147, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_query_get');
INSERT INTO `role_permission` VALUES (148, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_JobHttpDetails_get');
INSERT INTO `role_permission` VALUES (149, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_add_post');
INSERT INTO `role_permission` VALUES (150, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_addhttpjob_post');
INSERT INTO `role_permission` VALUES (151, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_edit_get');
INSERT INTO `role_permission` VALUES (152, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_update_post');
INSERT INTO `role_permission` VALUES (153, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_edithttpjob_get');
INSERT INTO `role_permission` VALUES (154, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_updatehttpjob_post');
INSERT INTO `role_permission` VALUES (155, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_pause_post');
INSERT INTO `role_permission` VALUES (156, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_resume_post');
INSERT INTO `role_permission` VALUES (157, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_stop_post');
INSERT INTO `role_permission` VALUES (158, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_log_get');
INSERT INTO `role_permission` VALUES (159, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'quartz_job_delete_delete');
INSERT INTO `role_permission` VALUES (160, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_query_get');
INSERT INTO `role_permission` VALUES (161, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_tree_get');
INSERT INTO `role_permission` VALUES (162, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_add_post');
INSERT INTO `role_permission` VALUES (163, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_edit_get');
INSERT INTO `role_permission` VALUES (164, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_update_post');
INSERT INTO `role_permission` VALUES (165, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_department_delete_delete');
INSERT INTO `role_permission` VALUES (166, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_query_get');
INSERT INTO `role_permission` VALUES (167, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_add_post');
INSERT INTO `role_permission` VALUES (168, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_edit_get');
INSERT INTO `role_permission` VALUES (169, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_update_post');
INSERT INTO `role_permission` VALUES (170, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editcontact_get');
INSERT INTO `role_permission` VALUES (171, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_updatecontact_post');
INSERT INTO `role_permission` VALUES (172, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editpersonal_get');
INSERT INTO `role_permission` VALUES (173, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `role_permission` VALUES (174, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familyquery_get');
INSERT INTO `role_permission` VALUES (175, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familyadd_post');
INSERT INTO `role_permission` VALUES (176, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familyedit_get');
INSERT INTO `role_permission` VALUES (177, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familyupdate_post');
INSERT INTO `role_permission` VALUES (178, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familydelete_delete');
INSERT INTO `role_permission` VALUES (179, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationquery_get');
INSERT INTO `role_permission` VALUES (180, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationadd_post');
INSERT INTO `role_permission` VALUES (181, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationedit_get');
INSERT INTO `role_permission` VALUES (182, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationupdate_post');
INSERT INTO `role_permission` VALUES (183, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `role_permission` VALUES (184, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workquery_get');
INSERT INTO `role_permission` VALUES (185, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workadd_post');
INSERT INTO `role_permission` VALUES (186, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workedit_get');
INSERT INTO `role_permission` VALUES (187, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workupdate_post');
INSERT INTO `role_permission` VALUES (188, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workdelete_delete');
INSERT INTO `role_permission` VALUES (189, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editaccount_get');
INSERT INTO `role_permission` VALUES (190, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_updateaccount_post');
INSERT INTO `role_permission` VALUES (191, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_delete_delete');
INSERT INTO `role_permission` VALUES (192, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_leave_post');
INSERT INTO `role_permission` VALUES (193, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `role_permission` VALUES (194, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_edit_get');
INSERT INTO `role_permission` VALUES (195, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editcontact_get');
INSERT INTO `role_permission` VALUES (196, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editpersonal_get');
INSERT INTO `role_permission` VALUES (197, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_familyquery_get');
INSERT INTO `role_permission` VALUES (198, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_educationquery_get');
INSERT INTO `role_permission` VALUES (199, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workquery_get');
INSERT INTO `role_permission` VALUES (200, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_workedit_get');
INSERT INTO `role_permission` VALUES (201, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_employee_editaccount_get');
INSERT INTO `role_permission` VALUES (202, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_query_get');
INSERT INTO `role_permission` VALUES (203, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_add_post');
INSERT INTO `role_permission` VALUES (204, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_edit_get');
INSERT INTO `role_permission` VALUES (205, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_update_post');
INSERT INTO `role_permission` VALUES (206, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_delete_delete');
INSERT INTO `role_permission` VALUES (207, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_post_query_get');
INSERT INTO `role_permission` VALUES (208, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_post_add_post');
INSERT INTO `role_permission` VALUES (209, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_query_get');
INSERT INTO `role_permission` VALUES (210, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_get_get');
INSERT INTO `role_permission` VALUES (211, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_post_edit_get');
INSERT INTO `role_permission` VALUES (212, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_post_update_post');
INSERT INTO `role_permission` VALUES (213, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_post_delete_delete');
INSERT INTO `role_permission` VALUES (214, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_query_get');
INSERT INTO `role_permission` VALUES (215, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', 0, 'personnelfiles_position_get_get');

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tenant
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
