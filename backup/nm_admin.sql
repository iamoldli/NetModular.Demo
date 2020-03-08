/*
 Navicat Premium Data Transfer

 Source Server         : 129.211.40.240
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 129.211.40.240:13306
 Source Schema         : nm_admin

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/03/2020 15:36:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(6) NOT NULL DEFAULT 0,
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Status` smallint(6) NOT NULL DEFAULT 0,
  `IsLock` bit(1) NOT NULL DEFAULT b'0',
  `ClosedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ClosedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', 0, 'admin', 'E739279CB28CDAFD7373618313803524', '管理员', '', '', 1, b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2020-01-14 15:20:04', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000');
INSERT INTO `account` VALUES ('39f3cb37-983d-5df5-804a-cd89851288e9', 1, 'oldli', 'EC14EC81C79CA1977C868424B87702F7', 'OLDLI', '', '', 0, b'1', '2020-03-08 15:27:34', '00000000-0000-0000-0000-000000000000', '2020-03-08 15:27:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:27:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', b'0', '2020-03-08 15:27:34', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for account_auth_info
-- ----------------------------
DROP TABLE IF EXISTS `account_auth_info`;
CREATE TABLE `account_auth_info`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(6) NOT NULL DEFAULT 0,
  `RefreshToken` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RefreshTokenExpiredTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `LoginTime` bigint(20) NOT NULL DEFAULT 0,
  `LoginIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_auth_info
-- ----------------------------
INSERT INTO `account_auth_info` VALUES (1, '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', 0, '2c196bc337de4d7ab8b2aa2054e196c5', '2020-03-15 15:32:46', 1583652766, '117.89.14.166');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_config
-- ----------------------------
INSERT INTO `account_config` VALUES (1, '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', 'classics', 'blue-dark', 'small');

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO `account_role` VALUES (1, '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38');
INSERT INTO `account_role` VALUES (2, '39f3cb37-983d-5df5-804a-cd89851288e9', '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38');

-- ----------------------------
-- Table structure for button
-- ----------------------------
DROP TABLE IF EXISTS `button`;
CREATE TABLE `button`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button
-- ----------------------------
INSERT INTO `button` VALUES ('39f3c07f-f7f9-0c7b-7b15-819975d7de10', 'admin_cache', '清除', 'delete', 'admin_cache_clear', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52cf-ef81-a69f-62c12c7efcbc', 'admin_menu', '添加', 'add', 'admin_menu_add', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52da-a0b7-d62e-04ca3d63c084', 'admin_menu', '编辑', 'edit', 'admin_menu_edit', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52e3-63ae-4169-115e459b85c1', 'admin_menu', '删除', 'delete', 'admin_menu_del', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52ed-6e3a-dbee-4840776855a3', 'admin_menu', '排序', 'sort', 'admin_menu_sort', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6323-540a-50e6-cacd0011d073', 'admin_role', '添加', 'add', 'admin_role_add', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-632c-e947-8989-5d8a92db6532', 'admin_role', '编辑', 'edit', 'admin_role_edit', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6333-0aa3-a47b-36e781f8e26e', 'admin_role', '删除', 'delete', 'admin_role_del', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-633f-e381-19e3-b58c1441bdb0', 'admin_role', '绑定菜单', 'bind', 'admin_role_bind_menu', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6358-1794-d5f2-be1c9c7ba726', 'admin_role', '平台权限', 'android', 'admin_role_bind_permission', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70d7-0758-e8b4-cb06fc5a283a', 'admin_account', '添加', 'add', 'admin_account_add', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70dd-2729-46eb-4c51500dd28f', 'admin_account', '编辑', 'edit', 'admin_account_edit', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70e6-ffe2-83ef-3a8224fcafd2', 'admin_account', '删除', 'delete', 'admin_account_del', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70ec-c8dd-ac1e-0f5d0070f706', 'admin_account', '重置密码', 'refresh', 'admin_account_reset_password', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-837d-6244-f0a9-4876babb3223', 'admin_auditinfo', '详情', 'detail', 'admin_auditinfo_details', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-8385-47b4-d7d1-4cdeba0516b0', 'admin_auditinfo', '导出', 'export', 'admin_auditinfo_export', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-1e58-0459-ce57-0769895f0be7', 'common_area', '添加', 'add', 'common_area_add', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-1e74-871e-43dd-e855324d4686', 'common_area', '编辑', 'edit', 'common_area_edit', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-1e82-43c9-944b-cdd077bd26c6', 'common_area', '删除', 'delete', 'common_area_del', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-2bba-1452-8510-1ffab4d9c5eb', 'common_attachment', '删除', 'delete', 'common_attachment_del', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-2bc5-93d2-44b6-e99a0d5b16ac', 'common_attachment', '导出', 'export', 'common_attachment_export', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-359b-dd3a-2ca0-0a1829b5d7e5', 'common_mediatype', '添加', 'add', 'common_mediatype_add', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-35a1-e2db-4fe0-e9e5b4abb6a8', 'common_mediatype', '编辑', 'edit', 'common_mediatype_edit', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-35b0-dbad-123c-713a4d98245c', 'common_mediatype', '删除', 'delete', 'common_mediatype_del', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-6bb1-2988-093f-f6fe48d381bf', 'common_dictgroup', '添加', 'add', 'common_dictgroup_add', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-6bc1-8105-d06f-71ff0f4d1347', 'common_dictgroup', '编辑', 'edit', 'common_dictgroup_edit', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-6bd8-c464-795c-fe56c7400801', 'common_dictgroup', '删除', 'delete', 'common_dictgroup_del', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-75c7-73bc-cfc0-07e229ad030f', 'common_dict', '添加', 'add', 'common_dict_add', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-75d6-371d-7242-5f1d559572c2', 'common_dict', '编辑', 'edit', 'common_dict_edit', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-75e2-528c-5977-31571fabf76c', 'common_dict', '删除', 'delete', 'common_dict_del', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-75f2-f116-501e-d3901965cbc4', 'common_dict', '管理数据项', 'edit', 'common_dict_item', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-a09a-ae2a-cf8b-9833a77bf0d6', 'quartz_group', '添加', 'add', 'quartz_group_add', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-a0ac-240a-884d-bf1f92a7436a', 'quartz_group', '删除', 'delete', 'quartz_group_del', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa05-5a3a-0529-82116105b122', 'quartz_job', '添加', 'add', 'quartz_job_add', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa14-1931-2503-03f4d128f2a9', 'quartz_job', '编辑', 'edit', 'quartz_job_edit', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa25-bc5b-e628-21493888169e', 'quartz_job', '暂停', 'pause', 'quartz_job_pause', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa39-ce53-6b71-5c3a349e8595', 'quartz_job', '启动', 'run', 'quartz_job_resume', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa3f-ce59-96f3-3a81e44afae7', 'quartz_job', '停止', 'stop', 'quartz_job_stop', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa4e-b597-4e17-4049c52d5859', 'quartz_job', '日志', 'log', 'quartz_job_log', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-aa5d-29f0-a9fb-f6a4a1bdc4f6', 'quartz_job', '删除', 'delete', 'quartz_job_del', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-cae8-954a-75fa-cd1ddce0a5cc', 'codegenerator_module', '添加', 'add', 'codegenerator_module_add', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-caf7-a197-8680-401307ff8a8d', 'codegenerator_module', '编辑', 'edit', 'codegenerator_module_edit', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-cb05-04ef-e66a-5c9ad2be8394', 'codegenerator_module', '删除', 'delete', 'codegenerator_module_del', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-cb11-3052-0a4a-6997dbd65fbc', 'codegenerator_module', '生成代码', 'download', 'codegenerator_module_build_code', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-cb17-55c4-a07b-7dcebea20621', 'codegenerator_module', '实体管理', 'database', 'codegenerator_module_class_manage', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-ecd9-0038-85ae-37bccfe392c7', 'codegenerator_enum', '添加', 'add', 'codegenerator_enum_add', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-ece7-8dd4-04a8-f6996a429c90', 'codegenerator_enum', '编辑', 'edit', 'codegenerator_enum_edit', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-ecfc-000c-904c-85318979b0ee', 'codegenerator_enum', '删除', 'delete', 'codegenerator_enum_del', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb13-ed06-3f0c-95fb-ce4cb82ea674', 'codegenerator_enum', '配置项', 'tag', 'codegenerator_enum_item', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-1957-5871-7a17-5de8f615a659', 'personnelfiles_department', '添加', 'add', 'personnelfiles_department_add', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-1961-a81a-8c6a-b8d0a7d18a70', 'personnelfiles_department', '编辑', 'edit', 'personnelfiles_department_edit', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-1965-bb15-b666-d7ebffaba548', 'personnelfiles_department', '删除', 'delete', 'personnelfiles_department_del', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-2969-9da2-593e-c4945c4493dd', 'personnelfiles_position', '添加', 'add', 'personnelfiles_position_add', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-2978-256f-cbc6-2a5b779d7888', 'personnelfiles_position', '编辑', 'edit', 'personnelfiles_position_edit', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-2983-aebf-c592-641a3e314590', 'personnelfiles_position', '删除', 'delete', 'personnelfiles_position_del', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3359-96a0-dd40-ec15dce0a351', 'personnelfiles_post', '添加', 'add', 'personnelfiles_post_add', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3365-70b1-0298-74247ef8703d', 'personnelfiles_post', '编辑', 'edit', 'personnelfiles_post_edit', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3369-51e2-dcde-f4ccbc88cac8', 'personnelfiles_post', '删除', 'delete', 'personnelfiles_post_del', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3e0e-b85e-5520-7d6aab50d147', 'personnelfiles_employee', '添加', 'add', 'personnelfiles_employee_add', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3e19-dd9f-e4bf-81454bbbc7b9', 'personnelfiles_employee', '编辑', 'edit', 'personnelfiles_employee_edit', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3e27-3a3e-a105-58cfefd61120', 'personnelfiles_employee', '删除', 'delete', 'personnelfiles_employee_del', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3e30-333d-5ea3-b870a69d2819', 'personnelfiles_employee', '离职', 'edit', 'personnelfiles_employee_leave', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3cb14-3e47-15e3-7cd1-93b1f32560c2', 'personnelfiles_employee', '预览', 'preview', 'personnelfiles_employee_preview', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for button_permission
-- ----------------------------
DROP TABLE IF EXISTS `button_permission`;
CREATE TABLE `button_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ButtonCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button_permission
-- ----------------------------
INSERT INTO `button_permission` VALUES (1, 'admin_cache_clear', 'admin_cache_clear_delete');
INSERT INTO `button_permission` VALUES (2, 'admin_menu_add', 'admin_menu_add_post');
INSERT INTO `button_permission` VALUES (3, 'admin_menu_edit', 'admin_menu_edit_get');
INSERT INTO `button_permission` VALUES (4, 'admin_menu_edit', 'admin_menu_update_post');
INSERT INTO `button_permission` VALUES (5, 'admin_menu_del', 'admin_menu_delete_delete');
INSERT INTO `button_permission` VALUES (6, 'admin_menu_sort', 'admin_menu_sort_get');
INSERT INTO `button_permission` VALUES (7, 'admin_menu_sort', 'admin_menu_sort_post');
INSERT INTO `button_permission` VALUES (8, 'admin_role_add', 'admin_role_add_post');
INSERT INTO `button_permission` VALUES (9, 'admin_role_edit', 'admin_role_edit_get');
INSERT INTO `button_permission` VALUES (10, 'admin_role_edit', 'admin_role_update_post');
INSERT INTO `button_permission` VALUES (11, 'admin_role_del', 'admin_role_delete_delete');
INSERT INTO `button_permission` VALUES (12, 'admin_role_bind_menu', 'admin_role_menulist_get');
INSERT INTO `button_permission` VALUES (13, 'admin_role_bind_menu', 'admin_role_bindmenu_post');
INSERT INTO `button_permission` VALUES (14, 'admin_role_bind_menu', 'admin_role_menubuttonlist_get');
INSERT INTO `button_permission` VALUES (15, 'admin_role_bind_menu', 'admin_role_bindmenubutton_post');
INSERT INTO `button_permission` VALUES (16, 'admin_role_bind_permission', 'admin_permission_tree_get');
INSERT INTO `button_permission` VALUES (17, 'admin_role_bind_permission', 'admin_role_platformpermissionlist_get');
INSERT INTO `button_permission` VALUES (18, 'admin_role_bind_permission', 'admin_role_platformpermissionbind_post');
INSERT INTO `button_permission` VALUES (19, 'admin_account_add', 'admin_account_add_post');
INSERT INTO `button_permission` VALUES (20, 'admin_account_edit', 'admin_account_edit_get');
INSERT INTO `button_permission` VALUES (21, 'admin_account_edit', 'admin_account_update_post');
INSERT INTO `button_permission` VALUES (22, 'admin_account_del', 'admin_account_delete_delete');
INSERT INTO `button_permission` VALUES (23, 'admin_account_reset_password', 'admin_account_updatepassword_post');
INSERT INTO `button_permission` VALUES (24, 'admin_auditinfo_details', 'admin_auditinfo_details_get');
INSERT INTO `button_permission` VALUES (25, 'admin_auditinfo_export', 'admin_auditinfo_export_post');
INSERT INTO `button_permission` VALUES (26, 'common_area_add', 'common_area_add_post');
INSERT INTO `button_permission` VALUES (27, 'common_area_edit', 'common_area_edit_get');
INSERT INTO `button_permission` VALUES (28, 'common_area_edit', 'common_area_update_post');
INSERT INTO `button_permission` VALUES (29, 'common_area_del', 'common_area_delete_delete');
INSERT INTO `button_permission` VALUES (30, 'common_attachment_del', 'common_attachment_delete_delete');
INSERT INTO `button_permission` VALUES (31, 'common_attachment_export', 'common_attachment_export_get');
INSERT INTO `button_permission` VALUES (32, 'common_mediatype_add', 'common_mediatype_add_post');
INSERT INTO `button_permission` VALUES (33, 'common_mediatype_edit', 'common_mediatype_edit_get');
INSERT INTO `button_permission` VALUES (34, 'common_mediatype_edit', 'common_mediatype_update_post');
INSERT INTO `button_permission` VALUES (35, 'common_mediatype_del', 'common_mediatype_delete_delete');
INSERT INTO `button_permission` VALUES (36, 'common_dictgroup_add', 'common_dictgroup_add_post');
INSERT INTO `button_permission` VALUES (37, 'common_dictgroup_edit', 'common_dictgroup_edit_get');
INSERT INTO `button_permission` VALUES (38, 'common_dictgroup_edit', 'common_dictgroup_update_post');
INSERT INTO `button_permission` VALUES (39, 'common_dictgroup_del', 'common_dictgroup_delete_delete');
INSERT INTO `button_permission` VALUES (40, 'common_dict_add', 'common_dict_add_post');
INSERT INTO `button_permission` VALUES (41, 'common_dict_edit', 'common_dict_edit_get');
INSERT INTO `button_permission` VALUES (42, 'common_dict_edit', 'common_dict_update_post');
INSERT INTO `button_permission` VALUES (43, 'common_dict_del', 'common_dict_delete_delete');
INSERT INTO `button_permission` VALUES (44, 'common_dict_item', 'common_dictitem_query_get');
INSERT INTO `button_permission` VALUES (45, 'common_dict_item', 'common_dictitem_add_post');
INSERT INTO `button_permission` VALUES (46, 'common_dict_item', 'common_dictitem_edit_get');
INSERT INTO `button_permission` VALUES (47, 'common_dict_item', 'common_dictitem_update_post');
INSERT INTO `button_permission` VALUES (48, 'common_dict_item', 'common_dictitem_delete_delete');
INSERT INTO `button_permission` VALUES (49, 'quartz_group_add', 'quartz_group_add_post');
INSERT INTO `button_permission` VALUES (50, 'quartz_group_del', 'quartz_group_delete_delete');
INSERT INTO `button_permission` VALUES (51, 'quartz_job_add', 'quartz_job_add_post');
INSERT INTO `button_permission` VALUES (52, 'quartz_job_add', 'quartz_job_addhttpjob_post');
INSERT INTO `button_permission` VALUES (53, 'quartz_job_edit', 'quartz_job_edit_get');
INSERT INTO `button_permission` VALUES (54, 'quartz_job_edit', 'quartz_job_update_post');
INSERT INTO `button_permission` VALUES (55, 'quartz_job_edit', 'quartz_job_edithttpjob_get');
INSERT INTO `button_permission` VALUES (56, 'quartz_job_edit', 'quartz_job_updatehttpjob_post');
INSERT INTO `button_permission` VALUES (57, 'quartz_job_pause', 'quartz_job_pause_post');
INSERT INTO `button_permission` VALUES (58, 'quartz_job_resume', 'quartz_job_resume_post');
INSERT INTO `button_permission` VALUES (59, 'quartz_job_stop', 'quartz_job_stop_post');
INSERT INTO `button_permission` VALUES (60, 'quartz_job_log', 'quartz_job_log_get');
INSERT INTO `button_permission` VALUES (61, 'quartz_job_del', 'quartz_job_delete_delete');
INSERT INTO `button_permission` VALUES (62, 'codegenerator_module_add', 'codegenerator_module_add_post');
INSERT INTO `button_permission` VALUES (63, 'codegenerator_module_edit', 'codegenerator_module_edit_get');
INSERT INTO `button_permission` VALUES (64, 'codegenerator_module_edit', 'codegenerator_module_update_post');
INSERT INTO `button_permission` VALUES (65, 'codegenerator_module_del', 'codegenerator_module_delete_delete');
INSERT INTO `button_permission` VALUES (66, 'codegenerator_module_build_code', 'codegenerator_module_buildcode_post');
INSERT INTO `button_permission` VALUES (67, 'codegenerator_enum_add', 'codegenerator_enum_add_post');
INSERT INTO `button_permission` VALUES (68, 'codegenerator_enum_edit', 'codegenerator_enum_edit_get');
INSERT INTO `button_permission` VALUES (69, 'codegenerator_enum_edit', 'codegenerator_enum_update_post');
INSERT INTO `button_permission` VALUES (70, 'codegenerator_enum_del', 'codegenerator_enum_delete_delete');
INSERT INTO `button_permission` VALUES (71, 'personnelfiles_department_add', 'personnelfiles_department_add_post');
INSERT INTO `button_permission` VALUES (72, 'personnelfiles_department_edit', 'personnelfiles_department_edit_get');
INSERT INTO `button_permission` VALUES (73, 'personnelfiles_department_edit', 'personnelfiles_department_update_post');
INSERT INTO `button_permission` VALUES (74, 'personnelfiles_department_del', 'personnelfiles_department_delete_delete');
INSERT INTO `button_permission` VALUES (75, 'personnelfiles_position_add', 'personnelfiles_position_add_post');
INSERT INTO `button_permission` VALUES (76, 'personnelfiles_position_edit', 'personnelfiles_position_edit_get');
INSERT INTO `button_permission` VALUES (77, 'personnelfiles_position_edit', 'personnelfiles_position_update_post');
INSERT INTO `button_permission` VALUES (78, 'personnelfiles_position_del', 'personnelfiles_position_delete_delete');
INSERT INTO `button_permission` VALUES (79, 'personnelfiles_post_add', 'personnelfiles_post_add_post');
INSERT INTO `button_permission` VALUES (80, 'personnelfiles_post_add', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (81, 'personnelfiles_post_add', 'personnelfiles_position_get_get');
INSERT INTO `button_permission` VALUES (82, 'personnelfiles_post_edit', 'personnelfiles_post_edit_get');
INSERT INTO `button_permission` VALUES (83, 'personnelfiles_post_edit', 'personnelfiles_post_update_post');
INSERT INTO `button_permission` VALUES (84, 'personnelfiles_post_del', 'personnelfiles_post_delete_delete');
INSERT INTO `button_permission` VALUES (85, 'personnelfiles_post_del', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (86, 'personnelfiles_post_del', 'personnelfiles_position_get_get');
INSERT INTO `button_permission` VALUES (87, 'personnelfiles_employee_add', 'personnelfiles_employee_add_post');
INSERT INTO `button_permission` VALUES (88, 'personnelfiles_employee_edit', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (89, 'personnelfiles_employee_edit', 'personnelfiles_employee_update_post');
INSERT INTO `button_permission` VALUES (90, 'personnelfiles_employee_edit', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (91, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatecontact_post');
INSERT INTO `button_permission` VALUES (92, 'personnelfiles_employee_edit', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (93, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `button_permission` VALUES (94, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (95, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyadd_post');
INSERT INTO `button_permission` VALUES (96, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyedit_get');
INSERT INTO `button_permission` VALUES (97, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyupdate_post');
INSERT INTO `button_permission` VALUES (98, 'personnelfiles_employee_edit', 'personnelfiles_employee_familydelete_delete');
INSERT INTO `button_permission` VALUES (99, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (100, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationadd_post');
INSERT INTO `button_permission` VALUES (101, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationedit_get');
INSERT INTO `button_permission` VALUES (102, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationupdate_post');
INSERT INTO `button_permission` VALUES (103, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `button_permission` VALUES (104, 'personnelfiles_employee_edit', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (105, 'personnelfiles_employee_edit', 'personnelfiles_employee_workadd_post');
INSERT INTO `button_permission` VALUES (106, 'personnelfiles_employee_edit', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (107, 'personnelfiles_employee_edit', 'personnelfiles_employee_workupdate_post');
INSERT INTO `button_permission` VALUES (108, 'personnelfiles_employee_edit', 'personnelfiles_employee_workdelete_delete');
INSERT INTO `button_permission` VALUES (109, 'personnelfiles_employee_edit', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (110, 'personnelfiles_employee_edit', 'personnelfiles_employee_updateaccount_post');
INSERT INTO `button_permission` VALUES (111, 'personnelfiles_employee_del', 'personnelfiles_employee_delete_delete');
INSERT INTO `button_permission` VALUES (112, 'personnelfiles_employee_leave', 'personnelfiles_employee_leave_post');
INSERT INTO `button_permission` VALUES (113, 'personnelfiles_employee_leave', 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `button_permission` VALUES (114, 'personnelfiles_employee_preview', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (115, 'personnelfiles_employee_preview', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (116, 'personnelfiles_employee_preview', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (117, 'personnelfiles_employee_preview', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (118, 'personnelfiles_employee_preview', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (119, 'personnelfiles_employee_preview', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (120, 'personnelfiles_employee_preview', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (121, 'personnelfiles_employee_preview', 'personnelfiles_employee_editaccount_get');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` smallint(6) NOT NULL DEFAULT 0,
  `Key` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 1, 'sys_title', 'NetModular 通用权限管理系统', '系统标题', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (2, 1, 'sys_logo', '', '系统Logo', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (3, 1, 'sys_home', '/admin/home', '系统首页地址', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (4, 1, 'sys_userinfo_page', '', '个人信息页', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (5, 1, 'sys_copyright', '版权所有：尼古拉斯·老李 | 用代码改变世界 Powered by .Net Core 3.1.0 on Linux', '版权声明', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (6, 1, 'sys_login_type', 'neon', '登录页类型', '2020-01-14 15:16:49', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:49', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (7, 1, 'sys_login_verify_code', 'False', '启用验证码功能', '2020-01-14 15:16:49', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:49', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (8, 1, 'sys_toolbar_fullscreen', 'True', '全屏按钮', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (9, 1, 'sys_toolbar_skin', 'True', '皮肤设置按钮', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (10, 1, 'sys_toolbar_logout', 'True', '退出按钮', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (11, 1, 'sys_toolbar_userinfo', 'True', '用户信息按钮', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:16:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (12, 1, 'sys_component_menu_unique_opened', 'True', '是否只保持一个子菜单的展开', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (13, 1, 'sys_component_dialog_close_on_click_modal', 'False', '是否可以点击模态框关闭', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (14, 1, 'sys_component_list_serial_number_name', '', '列表页序号名称', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (15, 1, 'sys_component_tabnav_showicon', 'True', '标签导航是否显示图标', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (16, 1, 'sys_component_custom_css', '', '自定义Css样式', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (17, 1, 'sys_permission_validate', 'True', '开启权限验证', '2020-01-14 15:20:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (18, 1, 'sys_permission_button', 'True', '启用按钮权限', '2020-01-14 15:20:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (19, 1, 'sys_permission_single_account_login', 'True', '单账户登录', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (20, 1, 'sys_component_dialog_draggable', 'True', '对话框默认可拖拽', '2020-03-06 14:05:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (21, 1, 'sys_component_tabnav_maxopencount', '20', '标签导航最大页面数量', '2020-03-06 14:05:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 14:18:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (22, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.AuditingEnabled', 'True', '启用审计日志', '2020-02-07 13:19:39', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:35:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (23, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.RefreshTokenExpires', '7', 'JWT刷新令牌有效期(天)', '2020-02-07 13:19:39', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:35:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (24, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.DefaultPassword', '123456', '账户默认密码', '2020-02-07 13:19:40', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-06 14:35:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (25, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.RefreshModuleOrPermission', 'True', '启动时刷新模块和权限', '2020-03-06 14:35:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 14:35:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (26, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyName', '武林联盟科技有限公司', '公司单位名称', '2020-03-08 14:52:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:25:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (27, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyAddress', '', '公司单位地址', '2020-03-08 14:52:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:25:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (28, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyContact', '', '公司单位联系人', '2020-03-08 14:52:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:25:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (29, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyPhone', '', '公司单位联系电话', '2020-03-08 14:52:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:25:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (30, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyFax', '', '公司单位传真', '2020-03-08 14:52:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:25:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (31, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.Enabled', 'True', '开启', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (32, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.EnabledLogger', 'True', '启用日志', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (33, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.InstanceName', 'QuartzServer', '实例名称', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (34, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.TablePrefix', 'QRTZ_', '表前缀', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (35, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.SerializerType', '0', '序列化方式', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (36, 2, 'NetModular.Module.Quartz.Infrastructure.QuartzOptions.Provider', NULL, '数据库', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:24:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(6) NOT NULL DEFAULT 0,
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
  `Target` smallint(6) NOT NULL DEFAULT 0,
  `DialogWidth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DialogHeight` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DialogFullscreen` bit(1) NOT NULL DEFAULT b'0',
  `Remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('39f3c07d-0ddc-5bfc-f09e-208a33065684', '', 0, '00000000-0000-0000-0000-000000000000', '系统配置', '', '', '', '', 'system', '', 0, b'1', 5, -1, '', '', b'1', '', '2020-03-06 13:27:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07d-6c6a-526d-2141-8b59afb1a68f', '', 0, '00000000-0000-0000-0000-000000000000', '权限管理', '', '', '', '', 'permission', '', 0, b'1', 4, -1, '', '', b'1', '', '2020-03-06 13:28:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07d-e4c8-3e5b-a38a-b23d07e31fac', '', 2, '00000000-0000-0000-0000-000000000000', '官方文档', '', '', '', 'https://docs.17mkh.com', 'archives', '', 0, b'1', 6, 0, '', '', b'1', '', '2020-03-06 13:28:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07e-4307-e67b-eb2d-055485b30dba', '', 2, '00000000-0000-0000-0000-000000000000', 'GitHub', '', '', '', 'https://github.com/iamoldli/NetModular', 'github', '', 0, b'1', 7, 0, '', '', b'1', '', '2020-03-06 13:28:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07f-e6f1-4dc6-4c59-a8d3880e9cd6', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '配置管理', 'admin_config', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:30:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07f-f7de-8751-b142-bbe846fb80b1', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '缓存管理', 'admin_cache', '', '', '', 'redis', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-0184-43ad-6bff-0bd8db042dde', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '图标管理', 'admin_icon', '', '', '', 'icon', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:30:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-296a-2511-6f7d-dace45a22f7a', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '模块中心', 'admin_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-52b8-edc7-66bf-598cd6e0af29', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '菜单管理', 'admin_menu', '', '', '', 'menu', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-6316-6ea3-17aa-025926a5ed46', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '角色管理', 'admin_role', '', '', '', 'role', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-70cc-12eb-a145-a11d88d3749b', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '账户管理', 'admin_account', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-8367-67d2-6439-06ef2b2038c4', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '审计日志', 'admin_auditinfo', '', '', '', 'log', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb11-36da-7b90-b4ef-93466a6cd29f', '', 0, '00000000-0000-0000-0000-000000000000', '基础数据', '', '', '', '', 'entity', '', 0, b'1', 3, -1, '', '', b'1', '', '2020-03-08 14:45:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb11-ee36-28e0-0844-89b71411f141', '', 0, '00000000-0000-0000-0000-000000000000', '任务调度', '', '', '', '', 'timer', '', 0, b'1', 2, -1, '', '', b'1', '', '2020-03-08 14:46:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb12-277e-ab8b-1c81-75df90f68d5f', '', 0, '00000000-0000-0000-0000-000000000000', '模块创建', '', '', '', '', 'app', '', 0, b'1', 1, -1, '', '', b'1', '', '2020-03-08 14:46:41', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb12-76c6-be92-1221-7b888ab32c4e', '', 0, '00000000-0000-0000-0000-000000000000', '人事档案', '', '', '', '', 'personnel-files', '', 0, b'1', 0, -1, '', '', b'1', '', '2020-03-08 14:47:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb12-c84b-70ee-fe8d-1e9d15099470', '', 0, '39f3cb11-36da-7b90-b4ef-93466a6cd29f', '数据字典', '', '', '', '', 'tag', '', 1, b'1', 0, -1, '', '', b'1', '', '2020-03-08 14:47:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-1e2f-9157-f125-2047d62c8f4e', 'Common', 1, '39f3cb11-36da-7b90-b4ef-93466a6cd29f', '区划代码', 'common_area', '', '', '', 'area', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-2b94-59a6-3c56-c01488d8e434', 'Common', 1, '39f3cb11-36da-7b90-b4ef-93466a6cd29f', '附件管理', 'common_attachment', '', '', '', 'attachment', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-357b-d128-cc49-901d2eef0792', 'Common', 1, '39f3cb11-36da-7b90-b4ef-93466a6cd29f', '多媒体', 'common_mediatype', '', '', '', 'media', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:47:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-6b97-f7e4-1741-17870cf12586', 'Common', 1, '39f3cb12-c84b-70ee-fe8d-1e9d15099470', '字典分组', 'common_dictgroup', '', '', '', 'entity', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-75ad-1332-7657-535f30e993fa', 'Common', 1, '39f3cb12-c84b-70ee-fe8d-1e9d15099470', '字典列表', 'common_dict', '', '', '', 'tag', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-a082-882e-208e-37ccc4722984', 'Quartz', 1, '39f3cb11-ee36-28e0-0844-89b71411f141', '任务分组', 'quartz_group', '', '', '', 'group', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-a9e6-0257-93ef-cbac5612fcbf', 'Quartz', 1, '39f3cb11-ee36-28e0-0844-89b71411f141', '任务列表', 'quartz_job', '', '', '', 'list', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-cac9-8eeb-0788-124ad98d0d1e', 'CodeGenerator', 1, '39f3cb12-277e-ab8b-1c81-75df90f68d5f', '模块列表', 'codegenerator_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb13-ecb7-b1ab-843e-9cec84ede933', 'CodeGenerator', 1, '39f3cb12-277e-ab8b-1c81-75df90f68d5f', '枚举列表', 'codegenerator_enum', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb14-1934-2df0-6dde-c484ad77a890', 'PersonnelFiles', 1, '39f3cb12-76c6-be92-1221-7b888ab32c4e', '组织机构', 'personnelfiles_department', '', '', '', 'department', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb14-2952-ad4e-3179-778dca837b6f', 'PersonnelFiles', 1, '39f3cb12-76c6-be92-1221-7b888ab32c4e', '职位管理', 'personnelfiles_position', '', '', '', 'position', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb14-3347-e5ff-d346-d0d6ad5203df', 'PersonnelFiles', 1, '39f3cb12-76c6-be92-1221-7b888ab32c4e', '岗位管理', 'personnelfiles_post', '', '', '', 'post', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb14-3df0-7bc6-b182-024e48ef1fe3', 'PersonnelFiles', 1, '39f3cb12-76c6-be92-1221-7b888ab32c4e', '员工档案', 'personnelfiles_employee', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:48:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3cb14-47f2-29be-9a1b-293fe28115f5', 'PersonnelFiles', 1, '39f3cb12-76c6-be92-1221-7b888ab32c4e', '组件演示', 'personnelfiles_employee_demo', '', '', '', 'develop', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-08 14:49:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 14:49:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `menu_permission`;
CREATE TABLE `menu_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_permission
-- ----------------------------
INSERT INTO `menu_permission` VALUES (1, 'admin_config', 'admin_config_query_get');
INSERT INTO `menu_permission` VALUES (2, 'admin_config', 'admin_config_add_post');
INSERT INTO `menu_permission` VALUES (3, 'admin_config', 'admin_config_edit_get');
INSERT INTO `menu_permission` VALUES (4, 'admin_config', 'admin_config_update_post');
INSERT INTO `menu_permission` VALUES (5, 'admin_config', 'admin_config_delete_delete');
INSERT INTO `menu_permission` VALUES (6, 'admin_config', 'admin_module_optionsedit_get');
INSERT INTO `menu_permission` VALUES (7, 'admin_config', 'admin_module_optionsupdate_post');
INSERT INTO `menu_permission` VALUES (8, 'admin_config', 'admin_system_updatebaseconfig_post');
INSERT INTO `menu_permission` VALUES (9, 'admin_config', 'admin_system_updatecomponentconfig_post');
INSERT INTO `menu_permission` VALUES (10, 'admin_config', 'admin_system_updateloginconfig_post');
INSERT INTO `menu_permission` VALUES (11, 'admin_config', 'admin_system_updatepermissionconfig_post');
INSERT INTO `menu_permission` VALUES (12, 'admin_config', 'admin_system_updatetoolbarconfig_post');
INSERT INTO `menu_permission` VALUES (13, 'admin_config', 'admin_system_updatepathconfig_post');
INSERT INTO `menu_permission` VALUES (14, 'admin_config', 'admin_system_uploadlogo_post');
INSERT INTO `menu_permission` VALUES (15, 'admin_cache', 'admin_cache_query_get');
INSERT INTO `menu_permission` VALUES (16, 'admin_module', 'admin_module_query_get');
INSERT INTO `menu_permission` VALUES (17, 'admin_module', 'admin_permission_query_get');
INSERT INTO `menu_permission` VALUES (18, 'admin_module', 'admin_permission_querybycodes_get');
INSERT INTO `menu_permission` VALUES (19, 'admin_menu', 'admin_menu_query_get');
INSERT INTO `menu_permission` VALUES (20, 'admin_menu', 'admin_menu_tree_get');
INSERT INTO `menu_permission` VALUES (21, 'admin_role', 'admin_role_query_get');
INSERT INTO `menu_permission` VALUES (22, 'admin_account', 'admin_account_query_get');
INSERT INTO `menu_permission` VALUES (23, 'admin_auditinfo', 'admin_auditinfo_query_get');
INSERT INTO `menu_permission` VALUES (24, 'common_area', 'common_area_query_get');
INSERT INTO `menu_permission` VALUES (25, 'common_area', 'common_area_querychildren_get');
INSERT INTO `menu_permission` VALUES (26, 'common_attachment', 'common_attachment_query_get');
INSERT INTO `menu_permission` VALUES (27, 'common_mediatype', 'common_mediatype_query_get');
INSERT INTO `menu_permission` VALUES (28, 'common_dictgroup', 'common_dictgroup_query_get');
INSERT INTO `menu_permission` VALUES (29, 'common_dict', 'common_dict_query_get');
INSERT INTO `menu_permission` VALUES (30, 'common_dict', 'common_dict_querychildren_get');
INSERT INTO `menu_permission` VALUES (31, 'quartz_group', 'quartz_group_query_get');
INSERT INTO `menu_permission` VALUES (32, 'quartz_job', 'quartz_job_query_get');
INSERT INTO `menu_permission` VALUES (33, 'quartz_job', 'quartz_job_jobhttpdetails_get');
INSERT INTO `menu_permission` VALUES (34, 'codegenerator_module', 'codegenerator_module_query_get');
INSERT INTO `menu_permission` VALUES (35, 'codegenerator_enum', 'codegenerator_enum_query_get');
INSERT INTO `menu_permission` VALUES (36, 'personnelfiles_department', 'personnelfiles_department_query_get');
INSERT INTO `menu_permission` VALUES (37, 'personnelfiles_department', 'personnelfiles_department_tree_get');
INSERT INTO `menu_permission` VALUES (38, 'personnelfiles_position', 'personnelfiles_position_query_get');
INSERT INTO `menu_permission` VALUES (39, 'personnelfiles_post', 'personnelfiles_post_query_get');
INSERT INTO `menu_permission` VALUES (40, 'personnelfiles_employee', 'personnelfiles_employee_query_get');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApiRequestCount` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('39f3cb0d-5a9e-749e-731d-ee1f8cca1669', '权限管理', 'Admin', 'permission', '1.8.0', '权限管理模块用于身份认证以及授权等功能', 90652);
INSERT INTO `module` VALUES ('39f3cb0d-5b18-1bb1-31d8-1c73cb99b420', '代码生成', 'CodeGenerator', 'develop', '1.6.5', '', 22956);
INSERT INTO `module` VALUES ('39f3cb0d-5b3d-44b2-3f6f-752c460f3845', '通用模块', 'Common', 'database', '1.5.9', '', 32834);
INSERT INTO `module` VALUES ('39f3cb0d-5b49-f6e0-0329-65d6ff3dfe07', '人事档案', 'PersonnelFiles', 'personnel-files', '1.5.4', '', 25542);
INSERT INTO `module` VALUES ('39f3cb0d-5b57-2c0d-a93d-54fecdd51f66', '任务调度', 'Quartz', 'timer', '1.5.7', '', 17913);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Controller` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `HttpMethod` smallint(6) NOT NULL DEFAULT 0,
  `Code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('39f3cb3b-3742-8a02-2fcc-fa3c14392aee', '账户管理_查询', 'Admin', 'Account', 'Query', 0, 'admin_account_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3756-eb2b-8f93-0d63a7d453a2', '账户管理_添加', 'Admin', 'Account', 'Add', 2, 'admin_account_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3756-f67d-dcde-f48589b58faf', '账户管理_编辑', 'Admin', 'Account', 'Edit', 0, 'admin_account_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3757-90a9-c2c4-027897912bbe', '账户管理_更新', 'Admin', 'Account', 'Update', 2, 'admin_account_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3757-cbaf-b1ad-85ff0d89f9c1', '账户管理_删除', 'Admin', 'Account', 'Delete', 3, 'admin_account_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3757-e58c-020b-63580a877177', '账户管理_绑定角色', 'Admin', 'Account', 'BindRole', 2, 'admin_account_bindrole_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3758-9408-553e-920246d06997', '账户管理_重置密码', 'Admin', 'Account', 'ResetPassword', 2, 'admin_account_resetpassword_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3758-a25c-fecb-deced3170cd9', '审计信息_详情', 'Admin', 'AuditInfo', 'Details', 0, 'admin_auditinfo_details_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3758-b0b0-1cc8-02a62d554fe1', '审计信息_查询', 'Admin', 'AuditInfo', 'Query', 0, 'admin_auditinfo_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3759-35e3-c3de-e76f65342049', '缓存管理_查询指定模块缓存键列表', 'Admin', 'Cache', 'Query', 0, 'admin_cache_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3759-4a70-3c6d-88892ffde46a', '审计信息_导出', 'Admin', 'AuditInfo', 'Export', 2, 'admin_auditinfo_export_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3759-78e3-1b8a-ad56cd827dee', '按钮管理_查询', 'Admin', 'Button', 'Query', 0, 'admin_button_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375a-2425-ea58-7dc4e5378b16', '配置管理_查询', 'Admin', 'Config', 'Query', 0, 'admin_config_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375a-5f88-8bd3-72174d4d2b7b', '缓存管理_清除指定前缀的缓存', 'Admin', 'Cache', 'Clear', 3, 'admin_cache_clear_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-375a-851b-eaac-c856994c2405', '配置管理_添加', 'Admin', 'Config', 'Add', 2, 'admin_config_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375b-57cb-a5c7-46b1a6d0b2a8', '配置管理_删除', 'Admin', 'Config', 'Delete', 3, 'admin_config_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-375b-7a78-402a-088f4ab0772a', '配置管理_编辑', 'Admin', 'Config', 'Edit', 0, 'admin_config_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375c-04d8-69c6-e3dfe607011e', '配置管理_修改', 'Admin', 'Config', 'Update', 2, 'admin_config_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375c-70cd-663e-b56607b434a2', '菜单管理_菜单树', 'Admin', 'Menu', 'Tree', 0, 'admin_menu_tree_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375c-c94c-0064-e984ac951e22', '菜单管理_查询菜单列表', 'Admin', 'Menu', 'Query', 0, 'admin_menu_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375d-1391-f7c3-0f4695537921', '菜单管理_添加', 'Admin', 'Menu', 'Add', 2, 'admin_menu_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375d-cd14-91ed-c882047f9013', '菜单管理_编辑', 'Admin', 'Menu', 'Edit', 0, 'admin_menu_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375d-d599-fade-86a390b0d1f0', '菜单管理_删除', 'Admin', 'Menu', 'Delete', 3, 'admin_menu_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-375e-00ac-eee4-d1ac77817c4c', '菜单管理_更新排序信息', 'Admin', 'Menu', 'Sort', 2, 'admin_menu_sort_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375e-6d6c-3e27-06845e6be698', '菜单管理_获取排序信息', 'Admin', 'Menu', 'Sort', 0, 'admin_menu_sort_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375e-eb66-d7e2-8a222234802a', '菜单管理_更新', 'Admin', 'Menu', 'Update', 2, 'admin_menu_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375f-45a6-9585-ca8c33d04718', '模块信息_编辑模块配置信息', 'Admin', 'Module', 'OptionsEdit', 0, 'admin_module_optionsedit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-375f-900a-c87d-dba96082af7e', '模块信息_更新模块配置信息', 'Admin', 'Module', 'OptionsUpdate', 2, 'admin_module_optionsupdate_post');
INSERT INTO `permission` VALUES ('39f3cb3b-375f-9aab-f7c4-e8e9aad47abe', '模块信息_查询', 'Admin', 'Module', 'Query', 0, 'admin_module_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3760-ab1d-f5b0-70ed29f9d4a8', '权限接口_查询', 'Admin', 'Permission', 'Query', 0, 'admin_permission_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3760-e25d-f6b7-63b9ffa7aa7b', '权限接口_权限树', 'Admin', 'Permission', 'Tree', 0, 'admin_permission_tree_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3761-2cbf-0ca6-7a802b4fc43f', '角色管理_添加', 'Admin', 'Role', 'Add', 2, 'admin_role_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3761-a097-2f93-5919ff83e333', '权限接口_根据编码查询', 'Admin', 'Permission', 'QueryByCodes', 0, 'admin_permission_querybycodes_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3761-adc3-8ffe-d98e21964211', '角色管理_查询', 'Admin', 'Role', 'Query', 0, 'admin_role_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3762-30f7-e8d5-b150a4fe8f22', '角色管理_删除', 'Admin', 'Role', 'Delete', 3, 'admin_role_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3762-34f3-10e5-99b9e04e4d41', '角色管理_修改', 'Admin', 'Role', 'Update', 2, 'admin_role_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3762-5587-6bb8-a86b3928fa94', '角色管理_编辑', 'Admin', 'Role', 'Edit', 0, 'admin_role_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3763-0558-3c75-a95505df2a51', '角色管理_获取角色关联的菜单按钮列表', 'Admin', 'Role', 'MenuButtonList', 0, 'admin_role_menubuttonlist_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3763-92a9-c458-85ac73ee2eb2', '角色管理_绑定菜单', 'Admin', 'Role', 'BindMenu', 2, 'admin_role_bindmenu_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3763-dd9d-4175-6569e46d540d', '角色管理_获取角色的关联菜单列表', 'Admin', 'Role', 'MenuList', 0, 'admin_role_menulist_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3764-a621-505a-fcbd416d474f', '角色管理_查询平台权限列表', 'Admin', 'Role', 'PlatformPermissionList', 0, 'admin_role_platformpermissionlist_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3764-e564-ff53-815bd78bc3c0', '角色管理_绑定菜单按钮', 'Admin', 'Role', 'BindMenuButton', 2, 'admin_role_bindmenubutton_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3765-b00c-669f-33071da10d44', '系统_修改系统基础配置', 'Admin', 'System', 'UpdateBaseConfig', 2, 'admin_system_updatebaseconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3765-c148-cfcd-1380bb46bf27', '角色管理_绑定平台权限列表', 'Admin', 'Role', 'PlatformPermissionBind', 2, 'admin_role_platformpermissionbind_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3765-e522-eedb-ecf5475597b2', '系统_修改系统组件配置', 'Admin', 'System', 'UpdateComponentConfig', 2, 'admin_system_updatecomponentconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3766-198f-d579-7b2fe2859212', '系统_修改系统权限配置', 'Admin', 'System', 'UpdatePermissionConfig', 2, 'admin_system_updatepermissionconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3766-7a95-3f56-1227689b1632', '系统_修改系统工具栏配置', 'Admin', 'System', 'UpdateToolbarConfig', 2, 'admin_system_updatetoolbarconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3766-da35-478e-898139549c99', '系统_修改系统登录配置', 'Admin', 'System', 'UpdateLoginConfig', 2, 'admin_system_updateloginconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3767-33d5-89a5-5a94099bea4b', '系统_修改系统路径配置', 'Admin', 'System', 'UpdatePathConfig', 2, 'admin_system_updatepathconfig_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3767-96be-8c71-91d455c1cb84', '系统_上传Logo', 'Admin', 'System', 'UploadLogo', 2, 'admin_system_uploadlogo_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3767-edf7-bbfa-108377070abe', '通用工具_枚举下拉列表接口', 'Admin', 'Tool', 'EnumSelect', 0, 'admin_tool_enumselect_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3768-0e01-5d7e-83473e56825d', '实体管理_查询', 'CodeGenerator', 'Class', 'Query', 0, 'codegenerator_class_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3768-3b27-dde4-631d748cbdde', '实体管理_添加', 'CodeGenerator', 'Class', 'Add', 2, 'codegenerator_class_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3768-565e-63f3-673faf9cce64', '实体管理_删除', 'CodeGenerator', 'Class', 'Delete', 3, 'codegenerator_class_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3769-3507-7c12-09891c9f4249', '实体管理_编辑', 'CodeGenerator', 'Class', 'Edit', 0, 'codegenerator_class_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3769-f60e-3de8-c73ae4dafaa6', '实体管理_修改', 'CodeGenerator', 'Class', 'Update', 2, 'codegenerator_class_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376a-3b73-4fd8-40685bb973b6', '枚举管理_查询', 'CodeGenerator', 'Enum', 'Query', 0, 'codegenerator_enum_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376a-7bdf-6c2a-76c4493c570d', '实体管理_生成代码', 'CodeGenerator', 'Class', 'BuildCode', 0, 'codegenerator_class_buildcode_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376a-c58a-da1c-d42b6f8294cd', '枚举管理_添加', 'CodeGenerator', 'Enum', 'Add', 2, 'codegenerator_enum_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376b-d11f-bd59-082c1654d7ef', '枚举管理_编辑', 'CodeGenerator', 'Enum', 'Edit', 0, 'codegenerator_enum_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376b-df29-b0d0-57bdfba7c19c', '枚举管理_修改', 'CodeGenerator', 'Enum', 'Update', 2, 'codegenerator_enum_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376b-f2c9-dff2-b90461c2ca49', '枚举管理_删除', 'CodeGenerator', 'Enum', 'Delete', 3, 'codegenerator_enum_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-376c-0c8c-5871-fdfbf9b6f6aa', '枚举项管理_查询', 'CodeGenerator', 'EnumItem', 'Query', 0, 'codegenerator_enumitem_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376c-8cae-beb3-be6f9c09d620', '枚举项管理_添加', 'CodeGenerator', 'EnumItem', 'Add', 2, 'codegenerator_enumitem_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376d-0ff5-277d-9a00fa8eff87', '枚举项管理_修改', 'CodeGenerator', 'EnumItem', 'Update', 2, 'codegenerator_enumitem_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376d-994d-727a-9dc2eb77e54f', '枚举项管理_编辑', 'CodeGenerator', 'EnumItem', 'Edit', 0, 'codegenerator_enumitem_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376d-c25f-1eeb-c666f8e732fe', '枚举项管理_删除', 'CodeGenerator', 'EnumItem', 'Delete', 3, 'codegenerator_enumitem_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-376e-6ad4-5b16-aeacb7efe87e', '枚举项管理_更新排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 2, 'codegenerator_enumitem_sort_post');
INSERT INTO `permission` VALUES ('39f3cb3b-376e-a0af-73f5-489d29aa4a32', '模型属性管理_查询', 'CodeGenerator', 'ModelProperty', 'Query', 0, 'codegenerator_modelproperty_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376e-df5b-0821-e39dfe99e38f', '枚举项管理_获取排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 0, 'codegenerator_enumitem_sort_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376f-226a-4353-bb99499922a7', '模型属性管理_删除', 'CodeGenerator', 'ModelProperty', 'Delete', 3, 'codegenerator_modelproperty_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-376f-2bfb-cff4-d2af60c7940b', '模型属性管理_编辑', 'CodeGenerator', 'ModelProperty', 'Edit', 0, 'codegenerator_modelproperty_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-376f-e9ce-47f0-b7f7ad03794f', '模型属性管理_添加', 'CodeGenerator', 'ModelProperty', 'Add', 2, 'codegenerator_modelproperty_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3770-3754-a595-aec1d26c3c3a', '模型属性管理_更新排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 2, 'codegenerator_modelproperty_sort_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3770-9ed6-cdc5-14e50da826ac', '模型属性管理_修改', 'CodeGenerator', 'ModelProperty', 'Update', 2, 'codegenerator_modelproperty_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3770-b895-4876-2cb21854d68c', '模型属性管理_获取排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 0, 'codegenerator_modelproperty_sort_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3771-6dc6-daf4-325877e5344b', '模型属性管理_修改可空状态', 'CodeGenerator', 'ModelProperty', 'UpdateNullable', 2, 'codegenerator_modelproperty_updatenullable_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3771-aeb0-5a14-69dbefe9d428', '模型属性管理_获取下拉列表', 'CodeGenerator', 'ModelProperty', 'Select', 0, 'codegenerator_modelproperty_select_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3777-c1a7-2dd8-45470b161014', '模块管理_查询', 'CodeGenerator', 'Module', 'Query', 0, 'codegenerator_module_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3777-f1ba-e711-360a93d4db83', '模型属性管理_从实体中导入属性', 'CodeGenerator', 'ModelProperty', 'ImportFromEntity', 2, 'codegenerator_modelproperty_importfromentity_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3778-443c-f7ba-cb52f9f14533', '模块管理_添加', 'CodeGenerator', 'Module', 'Add', 2, 'codegenerator_module_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3778-56b2-5fb0-6aae866a08f2', '模块管理_删除', 'CodeGenerator', 'Module', 'Delete', 3, 'codegenerator_module_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3778-e045-1e59-cddcb69b9250', '模块管理_编辑', 'CodeGenerator', 'Module', 'Edit', 0, 'codegenerator_module_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3779-20d2-574b-15767521e8f2', '在线模块管理_查询', 'CodeGenerator', 'OnlineModule', 'Query', 0, 'codegenerator_onlinemodule_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3779-ad29-2f2b-d4c1aad78a1c', '模块管理_生成代码', 'CodeGenerator', 'Module', 'BuildCode', 2, 'codegenerator_module_buildcode_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3779-ebb8-86fb-a2a112d3fc98', '模块管理_修改', 'CodeGenerator', 'Module', 'Update', 2, 'codegenerator_module_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377a-4e06-3281-412432639434', '在线模块管理_添加', 'CodeGenerator', 'OnlineModule', 'Add', 2, 'codegenerator_onlinemodule_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377a-5e41-6eda-94a861b6867f', '在线模块管理_删除', 'CodeGenerator', 'OnlineModule', 'Delete', 3, 'codegenerator_onlinemodule_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-377b-5076-aa22-485e2366cc01', '在线模块管理_编辑', 'CodeGenerator', 'OnlineModule', 'Edit', 0, 'codegenerator_onlinemodule_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377b-6db8-cb16-10f1134b7233', '实体属性管理_查询', 'CodeGenerator', 'Property', 'Query', 0, 'codegenerator_property_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377b-7804-2d01-bbe16ce79f24', '在线模块管理_修改', 'CodeGenerator', 'OnlineModule', 'Update', 2, 'codegenerator_onlinemodule_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377c-1e0f-82ae-6b7171e1b512', '实体属性管理_删除', 'CodeGenerator', 'Property', 'Delete', 3, 'codegenerator_property_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-377c-35b9-987c-f8d663fad4d8', '实体属性管理_编辑', 'CodeGenerator', 'Property', 'Edit', 0, 'codegenerator_property_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377c-8720-4dc6-9306916b71d5', '实体属性管理_添加', 'CodeGenerator', 'Property', 'Add', 2, 'codegenerator_property_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377d-1515-1f6e-f4fc8f66c9ff', '实体属性管理_获取属性类型下拉列表', 'CodeGenerator', 'Property', 'PropertyTypeSelect', 0, 'codegenerator_property_propertytypeselect_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377d-b965-5047-ec792a6b28f9', '实体属性管理_获取排序信息', 'CodeGenerator', 'Property', 'Sort', 0, 'codegenerator_property_sort_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377d-c0a8-d903-5d0c8beef096', '实体属性管理_修改', 'CodeGenerator', 'Property', 'Update', 2, 'codegenerator_property_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377e-be06-3fc6-dfb404aeafdf', '实体属性管理_更新排序信息', 'CodeGenerator', 'Property', 'Sort', 2, 'codegenerator_property_sort_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377e-f4e1-386a-a9091cbe0288', '实体属性管理_修改可空状态', 'CodeGenerator', 'Property', 'UpdateNullable', 2, 'codegenerator_property_updatenullable_post');
INSERT INTO `permission` VALUES ('39f3cb3b-377f-11fc-462c-8571daad6aa9', '实体属性管理_获取下拉列表', 'CodeGenerator', 'Property', 'Select', 0, 'codegenerator_property_select_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377f-5288-a68d-8c458e4c6c7b', '区划代码管理_查询', 'Common', 'Area', 'Query', 0, 'common_area_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-377f-eb5b-8fec-851f187c43d7', '实体属性管理_修改列表显示状态', 'CodeGenerator', 'Property', 'UpdateShowInList', 2, 'codegenerator_property_updateshowinlist_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3780-38d0-f120-0bcd383a2fba', '区划代码管理_编辑', 'Common', 'Area', 'Edit', 0, 'common_area_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3780-7dd6-3fa2-f1fd6f1e1520', '区划代码管理_删除', 'Common', 'Area', 'Delete', 3, 'common_area_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3780-eb8c-2614-3dc4e302fa92', '区划代码管理_添加', 'Common', 'Area', 'Add', 2, 'common_area_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3781-12d7-674f-f653c85e8e17', '字典管理_查询', 'Common', 'Dict', 'Query', 0, 'common_dict_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3781-3a94-12da-a073ec3f941f', '附件表管理_查询', 'Common', 'Attachment', 'Query', 0, 'common_attachment_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3781-aa8d-d512-3f844a19d659', '区划代码管理_修改', 'Common', 'Area', 'Update', 2, 'common_area_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3782-07a4-282f-d7514aadf75b', '字典管理_添加', 'Common', 'Dict', 'Add', 2, 'common_dict_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3782-15ae-8f9f-df32425dbadf', '字典管理_删除', 'Common', 'Dict', 'Delete', 3, 'common_dict_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3783-349c-0d9d-1acf20702dff', '字典分组管理_查询', 'Common', 'DictGroup', 'Query', 0, 'common_dictgroup_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3783-4160-e0dc-7023e5095913', '字典管理_编辑', 'Common', 'Dict', 'Edit', 0, 'common_dict_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3783-f7c9-d26c-73d660e8eff7', '字典管理_修改', 'Common', 'Dict', 'Update', 2, 'common_dict_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3784-136b-a660-372e3302477e', '字典分组管理_添加', 'Common', 'DictGroup', 'Add', 2, 'common_dictgroup_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3784-71e3-9d97-b3029c567f5f', '字典分组管理_删除', 'Common', 'DictGroup', 'Delete', 3, 'common_dictgroup_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3784-e6d2-44df-e73cc524e7ee', '字典分组管理_编辑', 'Common', 'DictGroup', 'Edit', 0, 'common_dictgroup_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3785-2fe5-1ac3-8a242e92de74', '字典数据项管理_添加', 'Common', 'DictItem', 'Add', 2, 'common_dictitem_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3785-3ca0-2d30-f4de0c656b0e', '字典数据项管理_查询', 'Common', 'DictItem', 'Query', 0, 'common_dictitem_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3785-82bc-8651-531df70806c6', '字典分组管理_修改', 'Common', 'DictGroup', 'Update', 2, 'common_dictgroup_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3786-a067-a150-d4dc0e82404a', '字典数据项管理_删除', 'Common', 'DictItem', 'Delete', 3, 'common_dictitem_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3786-ea3b-c0b0-cc8866978d09', '字典数据项管理_编辑', 'Common', 'DictItem', 'Edit', 0, 'common_dictitem_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3787-3d29-8b8a-5220fe583515', '多媒体管理_添加', 'Common', 'MediaType', 'Add', 2, 'common_mediatype_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3787-a6fd-f462-916cb9c0c183', '字典数据项管理_修改', 'Common', 'DictItem', 'Update', 2, 'common_dictitem_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3787-f0bb-dc98-480719ea8b49', '多媒体管理_查询', 'Common', 'MediaType', 'Query', 0, 'common_mediatype_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3788-3331-326e-24ca646c260b', '多媒体管理_删除', 'Common', 'MediaType', 'Delete', 3, 'common_mediatype_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3788-768e-d72a-0f76e816b95c', '多媒体管理_编辑', 'Common', 'MediaType', 'Edit', 0, 'common_mediatype_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3788-9654-2173-b11718df675f', '多媒体管理_修改', 'Common', 'MediaType', 'Update', 2, 'common_mediatype_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3789-79a7-686b-3c4e0f9e1d4b', '部门管理_部门树', 'PersonnelFiles', 'Department', 'Tree', 0, 'personnelfiles_department_tree_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3789-9688-51fb-e074beab4ff8', '部门管理_查询', 'PersonnelFiles', 'Department', 'Query', 0, 'personnelfiles_department_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378a-109c-466a-fed06d60b6f5', '部门管理_编辑', 'PersonnelFiles', 'Department', 'Edit', 0, 'personnelfiles_department_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378a-5a87-d6f5-a3587ed063ed', '部门管理_添加', 'PersonnelFiles', 'Department', 'Add', 2, 'personnelfiles_department_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378a-dfd0-1517-5ec2fd38eb8f', '部门管理_删除', 'PersonnelFiles', 'Department', 'Delete', 3, 'personnelfiles_department_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-378b-044a-0bf4-e53462583ec2', '员工管理_查询', 'PersonnelFiles', 'Employee', 'Query', 0, 'personnelfiles_employee_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378b-ce25-1d2c-30ef511ecb1a', '部门管理_修改', 'PersonnelFiles', 'Department', 'Update', 2, 'personnelfiles_department_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378c-2e90-6763-761705298dbd', '员工管理_添加', 'PersonnelFiles', 'Employee', 'Add', 2, 'personnelfiles_employee_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378c-3c3f-bddf-ecbd52e109d4', '员工管理_编辑', 'PersonnelFiles', 'Employee', 'Edit', 0, 'personnelfiles_employee_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378c-7607-9064-901bac5cad55', '员工管理_删除', 'PersonnelFiles', 'Employee', 'Delete', 3, 'personnelfiles_employee_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-378d-1937-3a63-e54994eb6294', '员工管理_离职', 'PersonnelFiles', 'Employee', 'Leave', 2, 'personnelfiles_employee_leave_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378d-da85-fb33-3433df1c3f40', '员工管理_获取离职信息', 'PersonnelFiles', 'Employee', 'LeaveInfo', 0, 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378d-e677-4b8c-25ef44756b41', '员工管理_修改', 'PersonnelFiles', 'Employee', 'Update', 2, 'personnelfiles_employee_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378e-89d3-7bd1-58048ea494df', '员工管理_查询家庭情况信息列表', 'PersonnelFiles', 'Employee', 'FamilyQuery', 0, 'personnelfiles_employee_familyquery_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378e-be1c-9dd2-1f4ecc4dae62', '员工管理_编辑个人信息', 'PersonnelFiles', 'Employee', 'EditPersonal', 0, 'personnelfiles_employee_editpersonal_get');
INSERT INTO `permission` VALUES ('39f3cb3b-378e-ef8e-4404-54ca2bba75da', '员工管理_修改个人信息', 'PersonnelFiles', 'Employee', 'UpdatePersonal', 2, 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `permission` VALUES ('39f3cb3b-378f-53b2-97f9-dc9c14eb53a6', '员工管理_删除家庭情况', 'PersonnelFiles', 'Employee', 'FamilyDelete', 3, 'personnelfiles_employee_familydelete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-378f-66dc-edb8-5e9316e0ad2b', '员工管理_添加家庭情况', 'PersonnelFiles', 'Employee', 'FamilyAdd', 2, 'personnelfiles_employee_familyadd_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3790-700c-f7a0-65964b724317', '员工管理_修改家庭情况', 'PersonnelFiles', 'Employee', 'FamilyUpdate', 2, 'personnelfiles_employee_familyupdate_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3790-8278-c26c-2bd7418b2733', '员工管理_编辑通讯信息', 'PersonnelFiles', 'Employee', 'EditContact', 0, 'personnelfiles_employee_editcontact_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3790-9b0c-473c-bab5a025c549', '员工管理_编辑家庭情况', 'PersonnelFiles', 'Employee', 'FamilyEdit', 0, 'personnelfiles_employee_familyedit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3791-1aa0-a4a0-5d2938306a43', '员工管理_修改联系信息', 'PersonnelFiles', 'Employee', 'UpdateContact', 2, 'personnelfiles_employee_updatecontact_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3791-7612-4e8d-129ed755bf60', '员工管理_查询教育背景信息列表', 'PersonnelFiles', 'Employee', 'EducationQuery', 0, 'personnelfiles_employee_educationquery_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3791-f75b-8dad-3a9c70d83227', '员工管理_联系信息详情', 'PersonnelFiles', 'Employee', 'ContactDetails', 0, 'personnelfiles_employee_contactdetails_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3792-0abe-0942-a25c56af4954', '员工管理_添加教育背景', 'PersonnelFiles', 'Employee', 'EducationAdd', 2, 'personnelfiles_employee_educationadd_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3792-e31f-180a-4af91aaff095', '员工管理_删除教育背景', 'PersonnelFiles', 'Employee', 'EducationDelete', 3, 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3793-c402-ee7c-1a4b6a7c20e2', '员工管理_编辑教育背景', 'PersonnelFiles', 'Employee', 'EducationEdit', 0, 'personnelfiles_employee_educationedit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3793-d105-cc14-54fc50e9d50f', '员工管理_查询工作经历信息列表', 'PersonnelFiles', 'Employee', 'WorkQuery', 0, 'personnelfiles_employee_workquery_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3793-ebe7-249b-2a0ed3b5274b', '员工管理_修改教育背景', 'PersonnelFiles', 'Employee', 'EducationUpdate', 2, 'personnelfiles_employee_educationupdate_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3794-3a22-86ec-29cff6c55b09', '员工管理_编辑工作经历', 'PersonnelFiles', 'Employee', 'WorkEdit', 0, 'personnelfiles_employee_workedit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3794-657a-881d-d225850105a5', '员工管理_添加工作经历', 'PersonnelFiles', 'Employee', 'WorkAdd', 2, 'personnelfiles_employee_workadd_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3794-6dd0-a4d7-14795ab06415', '员工管理_删除工作经历', 'PersonnelFiles', 'Employee', 'WorkDelete', 3, 'personnelfiles_employee_workdelete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3795-2aaa-ceaa-6cccb27d3f04', '员工管理_账户更新', 'PersonnelFiles', 'Employee', 'UpdateAccount', 2, 'personnelfiles_employee_updateaccount_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3795-6640-8d88-2dc5df52b61c', '员工管理_账户编辑', 'PersonnelFiles', 'Employee', 'EditAccount', 0, 'personnelfiles_employee_editaccount_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3795-c980-ae9b-dfb25ccf86c5', '员工管理_修改工作经历', 'PersonnelFiles', 'Employee', 'WorkUpdate', 2, 'personnelfiles_employee_workupdate_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3796-79ce-0e91-017cd337ab76', '职位管理_删除', 'PersonnelFiles', 'Position', 'Delete', 3, 'personnelfiles_position_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3796-c361-43a5-5f74a6ec6c14', '职位管理_添加', 'PersonnelFiles', 'Position', 'Add', 2, 'personnelfiles_position_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3796-f96b-5d55-03669da61e66', '职位管理_查询', 'PersonnelFiles', 'Position', 'Query', 0, 'personnelfiles_position_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3797-19b2-c142-0d67613cdb73', '职位管理_编辑', 'PersonnelFiles', 'Position', 'Edit', 0, 'personnelfiles_position_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3797-5267-2c3d-1f5cbf08edd2', '职位管理_修改', 'PersonnelFiles', 'Position', 'Update', 2, 'personnelfiles_position_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3798-07e0-7c30-39acf3a2751c', '职位管理_修改', 'PersonnelFiles', 'Position', 'Get', 0, 'personnelfiles_position_get_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3798-1516-5550-64c7f78156e6', '岗位管理_添加', 'PersonnelFiles', 'Post', 'Add', 2, 'personnelfiles_post_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-3798-dda8-5e9b-aeba69e78a84', '岗位管理_查询', 'PersonnelFiles', 'Post', 'Query', 0, 'personnelfiles_post_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3799-7ca8-becc-6c29068f9fa0', '岗位管理_删除', 'PersonnelFiles', 'Post', 'Delete', 3, 'personnelfiles_post_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-3799-910a-71b0-cd93e2a276ac', '岗位管理_编辑', 'PersonnelFiles', 'Post', 'Edit', 0, 'personnelfiles_post_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-3799-a0a3-c057-56ebfaa74139', '岗位管理_修改', 'PersonnelFiles', 'Post', 'Update', 2, 'personnelfiles_post_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-379a-2dbc-0fd1-0cd632e3fa15', '任务组管理_添加', 'Quartz', 'Group', 'Add', 2, 'quartz_group_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-379a-b08b-f87e-84952e08d0b1', '任务组管理_查询', 'Quartz', 'Group', 'Query', 0, 'quartz_group_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-379b-4a8a-f68e-9720c7f43e74', '任务管理_添加', 'Quartz', 'Job', 'Add', 2, 'quartz_job_add_post');
INSERT INTO `permission` VALUES ('39f3cb3b-379b-b730-0fe9-50e462953082', '任务组管理_删除', 'Quartz', 'Group', 'Delete', 3, 'quartz_group_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-379b-cf3b-8057-a2e708d4d985', '任务管理_查询', 'Quartz', 'Job', 'Query', 0, 'quartz_job_query_get');
INSERT INTO `permission` VALUES ('39f3cb3b-379c-4731-2d49-4126878492ad', '任务管理_编辑', 'Quartz', 'Job', 'Edit', 0, 'quartz_job_edit_get');
INSERT INTO `permission` VALUES ('39f3cb3b-379c-c4f4-d97b-eb080bcd8970', '任务管理_修改', 'Quartz', 'Job', 'Update', 2, 'quartz_job_update_post');
INSERT INTO `permission` VALUES ('39f3cb3b-379d-228f-7d54-3b84948f8ca6', '任务管理_删除', 'Quartz', 'Job', 'Delete', 3, 'quartz_job_delete_delete');
INSERT INTO `permission` VALUES ('39f3cb3b-379d-913b-5478-0271c556cef7', '任务管理_暂停', 'Quartz', 'Job', 'Pause', 2, 'quartz_job_pause_post');
INSERT INTO `permission` VALUES ('39f3cb3b-37a4-2e8b-d31f-e45008afb8e8', '任务管理_回复', 'Quartz', 'Job', 'Resume', 2, 'quartz_job_resume_post');
INSERT INTO `permission` VALUES ('39f3cb3b-37a5-3a9e-0780-3d51e602be2b', '任务管理_日志', 'Quartz', 'Job', 'Log', 0, 'quartz_job_log_get');
INSERT INTO `permission` VALUES ('39f3cb3b-37a5-7238-940a-3b18b4809550', '任务管理_停止', 'Quartz', 'Job', 'Stop', 2, 'quartz_job_stop_post');
INSERT INTO `permission` VALUES ('39f3cb3b-37a6-6da5-e06f-01e4cb41ce30', '任务管理_添加HTTP任务', 'Quartz', 'Job', 'AddHttpJob', 2, 'quartz_job_addhttpjob_post');
INSERT INTO `permission` VALUES ('39f3cb3b-37a6-8e74-340f-f64b0cc0177a', '任务管理_编辑HTTP任务', 'Quartz', 'Job', 'EditHttpJob', 0, 'quartz_job_edithttpjob_get');
INSERT INTO `permission` VALUES ('39f3cb3b-37a7-8878-6e84-1707ef75a8ea', '任务管理_HTTP任务详情', 'Quartz', 'Job', 'JobHttpDetails', 0, 'quartz_job_jobhttpdetails_get');
INSERT INTO `permission` VALUES ('39f3cb3b-37a7-cff8-9560-735df3c709b9', '任务管理_修改HTTP任务', 'Quartz', 'Job', 'UpdateHttpJob', 2, 'quartz_job_updatehttpjob_post');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IsSpecified` bit(1) NOT NULL DEFAULT b'0',
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '超级管理员', '超级管理员', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000', '2020-01-13 19:26:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', b'0', '2019-09-29 10:19:21', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (80, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '00000000-0000-0000-0000-000000000000');
INSERT INTO `role_menu` VALUES (81, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb12-76c6-be92-1221-7b888ab32c4e');
INSERT INTO `role_menu` VALUES (82, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-1934-2df0-6dde-c484ad77a890');
INSERT INTO `role_menu` VALUES (83, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-2952-ad4e-3179-778dca837b6f');
INSERT INTO `role_menu` VALUES (84, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3347-e5ff-d346-d0d6ad5203df');
INSERT INTO `role_menu` VALUES (85, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3');
INSERT INTO `role_menu` VALUES (86, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-47f2-29be-9a1b-293fe28115f5');
INSERT INTO `role_menu` VALUES (87, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb12-277e-ab8b-1c81-75df90f68d5f');
INSERT INTO `role_menu` VALUES (88, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e');
INSERT INTO `role_menu` VALUES (89, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-ecb7-b1ab-843e-9cec84ede933');
INSERT INTO `role_menu` VALUES (90, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb11-ee36-28e0-0844-89b71411f141');
INSERT INTO `role_menu` VALUES (91, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a082-882e-208e-37ccc4722984');
INSERT INTO `role_menu` VALUES (92, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf');
INSERT INTO `role_menu` VALUES (93, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb11-36da-7b90-b4ef-93466a6cd29f');
INSERT INTO `role_menu` VALUES (94, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb12-c84b-70ee-fe8d-1e9d15099470');
INSERT INTO `role_menu` VALUES (95, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-6b97-f7e4-1741-17870cf12586');
INSERT INTO `role_menu` VALUES (96, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-75ad-1332-7657-535f30e993fa');
INSERT INTO `role_menu` VALUES (97, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-1e2f-9157-f125-2047d62c8f4e');
INSERT INTO `role_menu` VALUES (98, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-2b94-59a6-3c56-c01488d8e434');
INSERT INTO `role_menu` VALUES (99, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-357b-d128-cc49-901d2eef0792');
INSERT INTO `role_menu` VALUES (100, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07d-6c6a-526d-2141-8b59afb1a68f');
INSERT INTO `role_menu` VALUES (101, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-296a-2511-6f7d-dace45a22f7a');
INSERT INTO `role_menu` VALUES (102, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-52b8-edc7-66bf-598cd6e0af29');
INSERT INTO `role_menu` VALUES (103, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46');
INSERT INTO `role_menu` VALUES (104, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-70cc-12eb-a145-a11d88d3749b');
INSERT INTO `role_menu` VALUES (105, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-8367-67d2-6439-06ef2b2038c4');
INSERT INTO `role_menu` VALUES (106, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07d-0ddc-5bfc-f09e-208a33065684');
INSERT INTO `role_menu` VALUES (107, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07f-e6f1-4dc6-4c59-a8d3880e9cd6');
INSERT INTO `role_menu` VALUES (108, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07f-f7de-8751-b142-bbe846fb80b1');
INSERT INTO `role_menu` VALUES (109, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-0184-43ad-6bff-0bd8db042dde');
INSERT INTO `role_menu` VALUES (110, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07d-e4c8-3e5b-a38a-b23d07e31fac');
INSERT INTO `role_menu` VALUES (111, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07e-4307-e67b-eb2d-055485b30dba');

-- ----------------------------
-- Table structure for role_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_button`;
CREATE TABLE `role_menu_button`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ButtonId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu_button
-- ----------------------------
INSERT INTO `role_menu_button` VALUES (1, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c07f-f7de-8751-b142-bbe846fb80b1', '39f3c07f-f7f9-0c7b-7b15-819975d7de10');
INSERT INTO `role_menu_button` VALUES (2, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-52b8-edc7-66bf-598cd6e0af29', '39f3c080-52cf-ef81-a69f-62c12c7efcbc');
INSERT INTO `role_menu_button` VALUES (3, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-52b8-edc7-66bf-598cd6e0af29', '39f3c080-52da-a0b7-d62e-04ca3d63c084');
INSERT INTO `role_menu_button` VALUES (4, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-52b8-edc7-66bf-598cd6e0af29', '39f3c080-52e3-63ae-4169-115e459b85c1');
INSERT INTO `role_menu_button` VALUES (5, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-52b8-edc7-66bf-598cd6e0af29', '39f3c080-52ed-6e3a-dbee-4840776855a3');
INSERT INTO `role_menu_button` VALUES (6, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46', '39f3c080-6323-540a-50e6-cacd0011d073');
INSERT INTO `role_menu_button` VALUES (7, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46', '39f3c080-632c-e947-8989-5d8a92db6532');
INSERT INTO `role_menu_button` VALUES (8, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46', '39f3c080-6333-0aa3-a47b-36e781f8e26e');
INSERT INTO `role_menu_button` VALUES (9, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46', '39f3c080-633f-e381-19e3-b58c1441bdb0');
INSERT INTO `role_menu_button` VALUES (10, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-6316-6ea3-17aa-025926a5ed46', '39f3c080-6358-1794-d5f2-be1c9c7ba726');
INSERT INTO `role_menu_button` VALUES (11, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-70cc-12eb-a145-a11d88d3749b', '39f3c080-70d7-0758-e8b4-cb06fc5a283a');
INSERT INTO `role_menu_button` VALUES (12, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-70cc-12eb-a145-a11d88d3749b', '39f3c080-70dd-2729-46eb-4c51500dd28f');
INSERT INTO `role_menu_button` VALUES (13, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-70cc-12eb-a145-a11d88d3749b', '39f3c080-70e6-ffe2-83ef-3a8224fcafd2');
INSERT INTO `role_menu_button` VALUES (14, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-70cc-12eb-a145-a11d88d3749b', '39f3c080-70ec-c8dd-ac1e-0f5d0070f706');
INSERT INTO `role_menu_button` VALUES (15, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-8367-67d2-6439-06ef2b2038c4', '39f3c080-837d-6244-f0a9-4876babb3223');
INSERT INTO `role_menu_button` VALUES (16, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-8367-67d2-6439-06ef2b2038c4', '39f3c080-8385-47b4-d7d1-4cdeba0516b0');
INSERT INTO `role_menu_button` VALUES (17, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-6b97-f7e4-1741-17870cf12586', '39f3cb13-6bb1-2988-093f-f6fe48d381bf');
INSERT INTO `role_menu_button` VALUES (18, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-6b97-f7e4-1741-17870cf12586', '39f3cb13-6bc1-8105-d06f-71ff0f4d1347');
INSERT INTO `role_menu_button` VALUES (19, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-6b97-f7e4-1741-17870cf12586', '39f3cb13-6bd8-c464-795c-fe56c7400801');
INSERT INTO `role_menu_button` VALUES (20, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-75ad-1332-7657-535f30e993fa', '39f3cb13-75c7-73bc-cfc0-07e229ad030f');
INSERT INTO `role_menu_button` VALUES (21, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-75ad-1332-7657-535f30e993fa', '39f3cb13-75d6-371d-7242-5f1d559572c2');
INSERT INTO `role_menu_button` VALUES (22, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-75ad-1332-7657-535f30e993fa', '39f3cb13-75e2-528c-5977-31571fabf76c');
INSERT INTO `role_menu_button` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-75ad-1332-7657-535f30e993fa', '39f3cb13-75f2-f116-501e-d3901965cbc4');
INSERT INTO `role_menu_button` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-1e2f-9157-f125-2047d62c8f4e', '39f3cb13-1e58-0459-ce57-0769895f0be7');
INSERT INTO `role_menu_button` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-1e2f-9157-f125-2047d62c8f4e', '39f3cb13-1e74-871e-43dd-e855324d4686');
INSERT INTO `role_menu_button` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-1e2f-9157-f125-2047d62c8f4e', '39f3cb13-1e82-43c9-944b-cdd077bd26c6');
INSERT INTO `role_menu_button` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-2b94-59a6-3c56-c01488d8e434', '39f3cb13-2bba-1452-8510-1ffab4d9c5eb');
INSERT INTO `role_menu_button` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-2b94-59a6-3c56-c01488d8e434', '39f3cb13-2bc5-93d2-44b6-e99a0d5b16ac');
INSERT INTO `role_menu_button` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-357b-d128-cc49-901d2eef0792', '39f3cb13-359b-dd3a-2ca0-0a1829b5d7e5');
INSERT INTO `role_menu_button` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-357b-d128-cc49-901d2eef0792', '39f3cb13-35a1-e2db-4fe0-e9e5b4abb6a8');
INSERT INTO `role_menu_button` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-357b-d128-cc49-901d2eef0792', '39f3cb13-35b0-dbad-123c-713a4d98245c');
INSERT INTO `role_menu_button` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa05-5a3a-0529-82116105b122');
INSERT INTO `role_menu_button` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa14-1931-2503-03f4d128f2a9');
INSERT INTO `role_menu_button` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa25-bc5b-e628-21493888169e');
INSERT INTO `role_menu_button` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa39-ce53-6b71-5c3a349e8595');
INSERT INTO `role_menu_button` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa3f-ce59-96f3-3a81e44afae7');
INSERT INTO `role_menu_button` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa4e-b597-4e17-4049c52d5859');
INSERT INTO `role_menu_button` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a9e6-0257-93ef-cbac5612fcbf', '39f3cb13-aa5d-29f0-a9fb-f6a4a1bdc4f6');
INSERT INTO `role_menu_button` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a082-882e-208e-37ccc4722984', '39f3cb13-a09a-ae2a-cf8b-9833a77bf0d6');
INSERT INTO `role_menu_button` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-a082-882e-208e-37ccc4722984', '39f3cb13-a0ac-240a-884d-bf1f92a7436a');
INSERT INTO `role_menu_button` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-ecb7-b1ab-843e-9cec84ede933', '39f3cb13-ecd9-0038-85ae-37bccfe392c7');
INSERT INTO `role_menu_button` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-ecb7-b1ab-843e-9cec84ede933', '39f3cb13-ece7-8dd4-04a8-f6996a429c90');
INSERT INTO `role_menu_button` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-ecb7-b1ab-843e-9cec84ede933', '39f3cb13-ecfc-000c-904c-85318979b0ee');
INSERT INTO `role_menu_button` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-ecb7-b1ab-843e-9cec84ede933', '39f3cb13-ed06-3f0c-95fb-ce4cb82ea674');
INSERT INTO `role_menu_button` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e', '39f3cb13-cae8-954a-75fa-cd1ddce0a5cc');
INSERT INTO `role_menu_button` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e', '39f3cb13-caf7-a197-8680-401307ff8a8d');
INSERT INTO `role_menu_button` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e', '39f3cb13-cb05-04ef-e66a-5c9ad2be8394');
INSERT INTO `role_menu_button` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e', '39f3cb13-cb11-3052-0a4a-6997dbd65fbc');
INSERT INTO `role_menu_button` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb13-cac9-8eeb-0788-124ad98d0d1e', '39f3cb13-cb17-55c4-a07b-7dcebea20621');
INSERT INTO `role_menu_button` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3', '39f3cb14-3e0e-b85e-5520-7d6aab50d147');
INSERT INTO `role_menu_button` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3', '39f3cb14-3e19-dd9f-e4bf-81454bbbc7b9');
INSERT INTO `role_menu_button` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3', '39f3cb14-3e27-3a3e-a105-58cfefd61120');
INSERT INTO `role_menu_button` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3', '39f3cb14-3e30-333d-5ea3-b870a69d2819');
INSERT INTO `role_menu_button` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3df0-7bc6-b182-024e48ef1fe3', '39f3cb14-3e47-15e3-7cd1-93b1f32560c2');
INSERT INTO `role_menu_button` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3347-e5ff-d346-d0d6ad5203df', '39f3cb14-3359-96a0-dd40-ec15dce0a351');
INSERT INTO `role_menu_button` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3347-e5ff-d346-d0d6ad5203df', '39f3cb14-3365-70b1-0298-74247ef8703d');
INSERT INTO `role_menu_button` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-3347-e5ff-d346-d0d6ad5203df', '39f3cb14-3369-51e2-dcde-f4ccbc88cac8');
INSERT INTO `role_menu_button` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-2952-ad4e-3179-778dca837b6f', '39f3cb14-2969-9da2-593e-c4945c4493dd');
INSERT INTO `role_menu_button` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-2952-ad4e-3179-778dca837b6f', '39f3cb14-2978-256f-cbc6-2a5b779d7888');
INSERT INTO `role_menu_button` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-2952-ad4e-3179-778dca837b6f', '39f3cb14-2983-aebf-c592-641a3e314590');
INSERT INTO `role_menu_button` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-1934-2df0-6dde-c484ad77a890', '39f3cb14-1957-5871-7a17-5de8f615a659');
INSERT INTO `role_menu_button` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-1934-2df0-6dde-c484ad77a890', '39f3cb14-1961-a81a-8c6a-b8d0a7d18a70');
INSERT INTO `role_menu_button` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3cb14-1934-2df0-6dde-c484ad77a890', '39f3cb14-1965-bb15-b666-d7ebffaba548');

-- ----------------------------
-- Table structure for role_platform_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_platform_permission`;
CREATE TABLE `role_platform_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(6) NOT NULL DEFAULT 0,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
