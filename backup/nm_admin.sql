/*
 Navicat Premium Data Transfer

 Source Server         : nm-demo
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : wsl:27210
 Source Schema         : nm_admin

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 03/03/2020 13:45:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
INSERT INTO `account` VALUES ('39f3b115-3a3c-f796-136d-f88f592da044', 1, 'oldli', 'EC14EC81C79CA1977C868424B87702F7', 'OLDLI', '', '', 0, b'1', '2020-03-03 13:39:55', '00000000-0000-0000-0000-000000000000', '2020-03-03 13:39:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:39:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', b'0', '2020-03-03 13:39:55', '00000000-0000-0000-0000-000000000000');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_auth_info
-- ----------------------------
INSERT INTO `account_auth_info` VALUES (1, '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', 0, '0b2d0bf3ba154712a6129cb0904b6a32', '2020-03-10 12:45:47', 1583210746, '0.0.0.1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO `account_role` VALUES (1, '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38');
INSERT INTO `account_role` VALUES (2, '39f3b115-3a3c-f796-136d-f88f592da044', '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38');

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
INSERT INTO `button` VALUES ('39F2B517-F0E9-3890-43A2-32022C7A3811', 'admin_moduleinfo', '同步', 'refresh', 'admin_moduleinfo_sync', '2020-01-14 15:18:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B517-F123-3549-9D5E-AB747B316B2F', 'admin_moduleinfo', '删除', 'delete', 'admin_moduleinfo_del', '2020-01-14 15:18:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B517-FD6B-7552-5CD9-06689FEC023B', 'admin_permission', '同步', 'refresh', 'admin_permission_sync', '2020-01-14 15:18:37', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:37', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-0F47-CE0C-0A00-DAA35430FEBE', 'admin_menu', '添加', 'add', 'admin_menu_add', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-0F7A-B9E7-C87F-3C8A01F08BA8', 'admin_menu', '编辑', 'edit', 'admin_menu_edit', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-0FB5-09DA-C060-805DB7BD658D', 'admin_menu', '删除', 'delete', 'admin_menu_del', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-0FE3-5A09-57A1-E9F25DF6B42B', 'admin_menu', '排序', 'sort', 'admin_menu_sort', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2133-D51D-5845-C3E4C3A7480E', 'admin_role', '添加', 'add', 'admin_role_add', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-216D-832B-6C93-39CB89C375A3', 'admin_role', '编辑', 'edit', 'admin_role_edit', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-21AE-E07A-520F-D0B48F5241DB', 'admin_role', '删除', 'delete', 'admin_role_del', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-21DF-11D8-42AC-1FAE1A48A460', 'admin_role', '绑定菜单', 'bind', 'admin_role_bind_menu', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2241-9A63-B21E-5CE347EF2CDF', 'admin_role', '平台权限', 'android', 'admin_role_bind_permission', '2020-01-14 15:18:47', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:47', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2EA2-AFA2-2C77-F99F3FB494A0', 'admin_account', '添加', 'add', 'admin_account_add', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2EE7-82B5-FBC3-9552A075FE42', 'admin_account', '编辑', 'edit', 'admin_account_edit', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2F3B-2161-8E34-280448E2A3E8', 'admin_account', '删除', 'delete', 'admin_account_del', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-2F7B-D946-E94F-6621DA5DE0F6', 'admin_account', '重置密码', 'refresh', 'admin_account_reset_password', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-393E-FA28-EBBC-7B16240C5E52', 'admin_auditinfo', '详情', 'detail', 'admin_auditinfo_details', '2020-01-14 15:18:52', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:52', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2B518-3974-4D35-CA88-563DD7024301', 'admin_auditinfo', '导出', 'export', 'admin_auditinfo_export', '2020-01-14 15:18:53', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:53', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F2D97A-B3F9-B459-757B-F868DD9666ED', 'admin_cache', '清除', 'delete', 'admin_cache_clear', '2020-01-21 16:52:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:52:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39f3b10b-b220-e8d7-413a-76757474c9b1', 'common_dictgroup', '添加', 'add', 'common_dictgroup_add', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-b233-7126-c5b3-86c9787a6784', 'common_dictgroup', '编辑', 'edit', 'common_dictgroup_edit', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-b23e-2399-c022-b834003893cf', 'common_dictgroup', '删除', 'delete', 'common_dictgroup_del', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-bc85-6e18-14c1-90095e77a324', 'common_dict', '添加', 'add', 'common_dict_add', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-bc8f-337b-582f-1a7e07ce7066', 'common_dict', '编辑', 'edit', 'common_dict_edit', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-bc99-8a91-216b-ecbf68a29b68', 'common_dict', '删除', 'delete', 'common_dict_del', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10b-bca5-15c3-aa6c-477ed81f659a', 'common_dict', '管理数据项', 'edit', 'common_dict_item', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-10cd-24f4-0404-544e7d9270d6', 'common_attachment', '删除', 'delete', 'common_attachment_del', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-10d6-fe63-3495-b574836ddc95', 'common_attachment', '导出', 'export', 'common_attachment_export', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-2030-3150-fdab-be1c5830983e', 'common_area', '添加', 'add', 'common_area_add', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-203b-5b94-776e-e8e4584a1997', 'common_area', '编辑', 'edit', 'common_area_edit', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-2045-f85f-588a-64c5b9c56fe3', 'common_area', '删除', 'delete', 'common_area_del', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-365f-0aa1-be95-90409254a9ba', 'common_mediatype', '添加', 'add', 'common_mediatype_add', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-366b-2652-8cb2-233f27ebe574', 'common_mediatype', '编辑', 'edit', 'common_mediatype_edit', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-3676-e6c4-9645-869f2f76e7aa', 'common_mediatype', '删除', 'delete', 'common_mediatype_del', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-8e69-c43a-9eac-fd1224b57e5a', 'codegenerator_module', '添加', 'add', 'codegenerator_module_add', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-8e75-ac8e-8d17-3a7014413a7b', 'codegenerator_module', '编辑', 'edit', 'codegenerator_module_edit', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-8e82-71fb-3d5d-231249715350', 'codegenerator_module', '删除', 'delete', 'codegenerator_module_del', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-8e8c-f049-f47f-be2cf28acd1a', 'codegenerator_module', '生成代码', 'download', 'codegenerator_module_build_code', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-8e9b-183a-936f-ba88d61f2e72', 'codegenerator_module', '实体管理', 'database', 'codegenerator_module_class_manage', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-97be-1d2e-cebf-a32f4eb6a1a5', 'codegenerator_enum', '添加', 'add', 'codegenerator_enum_add', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-97cb-79c2-8d29-ad478445d72b', 'codegenerator_enum', '编辑', 'edit', 'codegenerator_enum_edit', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-97d3-7bbb-6674-f5c119d5dd56', 'codegenerator_enum', '删除', 'delete', 'codegenerator_enum_del', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-97de-72fd-c593-36f657762d75', 'codegenerator_enum', '配置项', 'tag', 'codegenerator_enum_item', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-db4e-608a-b409-fe264b74ab59', 'quartz_group', '添加', 'add', 'quartz_group_add', '2020-03-03 13:31:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-db5b-8619-10b6-5bc37c18ca48', 'quartz_group', '删除', 'delete', 'quartz_group_del', '2020-03-03 13:31:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e5f9-6cf0-4f0d-64191cc61d39', 'quartz_job', '添加', 'add', 'quartz_job_add', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e606-c122-032b-d3a4b8c4c87d', 'quartz_job', '编辑', 'edit', 'quartz_job_edit', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e613-a667-96f7-389dc33d3574', 'quartz_job', '暂停', 'pause', 'quartz_job_pause', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e61e-1bb4-0f90-5d375dd82bac', 'quartz_job', '启动', 'run', 'quartz_job_resume', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e627-0283-902d-e59b23ca93b3', 'quartz_job', '停止', 'stop', 'quartz_job_stop', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e632-23d6-c4da-20af8a307247', 'quartz_job', '日志', 'log', 'quartz_job_log', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b10d-e638-a331-69ce-89ba958dc81c', 'quartz_job', '删除', 'delete', 'quartz_job_del', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-8ab4-dca0-058a-ee394a9b86b0', 'personnelfiles_department', '添加', 'add', 'personnelfiles_department_add', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-8ac3-4eef-dea7-3625149c8ad6', 'personnelfiles_department', '编辑', 'edit', 'personnelfiles_department_edit', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-8acc-95e8-7597-20030ac88b4c', 'personnelfiles_department', '删除', 'delete', 'personnelfiles_department_del', '2020-03-03 13:34:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-95b8-2379-ce8e-61eeda731cac', 'personnelfiles_employee', '添加', 'add', 'personnelfiles_employee_add', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-95c4-7f14-ded1-48a70641986a', 'personnelfiles_employee', '编辑', 'edit', 'personnelfiles_employee_edit', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-95d0-d0c7-ed33-b18458f2c44e', 'personnelfiles_employee', '删除', 'delete', 'personnelfiles_employee_del', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-95db-91aa-9799-9a860fa2e9f1', 'personnelfiles_employee', '离职', 'edit', 'personnelfiles_employee_leave', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-a343-2d88-8d2d-0446bb74fbab', 'personnelfiles_position', '添加', 'add', 'personnelfiles_position_add', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-a34b-fde6-5685-e436dc985743', 'personnelfiles_position', '编辑', 'edit', 'personnelfiles_position_edit', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-a354-028b-91f3-36b9e0f6fcca', 'personnelfiles_position', '删除', 'delete', 'personnelfiles_position_del', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-ad6a-33d3-c3b8-10d5a004a872', 'personnelfiles_post', '添加', 'add', 'personnelfiles_post_add', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-ad73-dc09-0666-ff3065dbaaa7', 'personnelfiles_post', '编辑', 'edit', 'personnelfiles_post_edit', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3b110-ad7c-e714-5360-5f3be7125dca', 'personnelfiles_post', '删除', 'delete', 'personnelfiles_post_del', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for button_permission
-- ----------------------------
DROP TABLE IF EXISTS `button_permission`;
CREATE TABLE `button_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ButtonCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button_permission
-- ----------------------------
INSERT INTO `button_permission` VALUES (1, 'admin_moduleinfo_sync', 'admin_moduleinfo_sync_post');
INSERT INTO `button_permission` VALUES (2, 'admin_moduleinfo_del', 'admin_moduleinfo_delete_delete');
INSERT INTO `button_permission` VALUES (3, 'admin_permission_sync', 'admin_permission_sync_post');
INSERT INTO `button_permission` VALUES (4, 'admin_menu_add', 'admin_menu_add_post');
INSERT INTO `button_permission` VALUES (5, 'admin_menu_edit', 'admin_menu_edit_get');
INSERT INTO `button_permission` VALUES (6, 'admin_menu_edit', 'admin_menu_update_post');
INSERT INTO `button_permission` VALUES (7, 'admin_menu_del', 'admin_menu_delete_delete');
INSERT INTO `button_permission` VALUES (8, 'admin_menu_sort', 'admin_menu_sort_get');
INSERT INTO `button_permission` VALUES (9, 'admin_menu_sort', 'admin_menu_sort_post');
INSERT INTO `button_permission` VALUES (10, 'admin_role_add', 'admin_role_add_post');
INSERT INTO `button_permission` VALUES (11, 'admin_role_edit', 'admin_role_edit_get');
INSERT INTO `button_permission` VALUES (12, 'admin_role_edit', 'admin_role_update_post');
INSERT INTO `button_permission` VALUES (13, 'admin_role_del', 'admin_role_delete_delete');
INSERT INTO `button_permission` VALUES (14, 'admin_role_bind_menu', 'admin_role_menulist_get');
INSERT INTO `button_permission` VALUES (15, 'admin_role_bind_menu', 'admin_role_bindmenu_post');
INSERT INTO `button_permission` VALUES (16, 'admin_role_bind_menu', 'admin_role_menubuttonlist_get');
INSERT INTO `button_permission` VALUES (17, 'admin_role_bind_menu', 'admin_role_bindmenubutton_post');
INSERT INTO `button_permission` VALUES (18, 'admin_role_bind_permission', 'admin_permission_tree_get');
INSERT INTO `button_permission` VALUES (19, 'admin_role_bind_permission', 'admin_role_platformpermissionlist_get');
INSERT INTO `button_permission` VALUES (20, 'admin_role_bind_permission', 'admin_role_platformpermissionbind_post');
INSERT INTO `button_permission` VALUES (21, 'admin_account_add', 'admin_account_add_post');
INSERT INTO `button_permission` VALUES (22, 'admin_account_edit', 'admin_account_edit_get');
INSERT INTO `button_permission` VALUES (23, 'admin_account_edit', 'admin_account_update_post');
INSERT INTO `button_permission` VALUES (24, 'admin_account_del', 'admin_account_delete_delete');
INSERT INTO `button_permission` VALUES (25, 'admin_account_reset_password', 'admin_account_updatepassword_post');
INSERT INTO `button_permission` VALUES (26, 'admin_auditinfo_details', 'admin_auditinfo_details_get');
INSERT INTO `button_permission` VALUES (27, 'admin_auditinfo_export', 'admin_auditinfo_export_post');
INSERT INTO `button_permission` VALUES (32, 'admin_cache_clear', 'admin_cache_clear_delete');
INSERT INTO `button_permission` VALUES (33, 'common_dictgroup_add', 'common_dictgroup_add_post');
INSERT INTO `button_permission` VALUES (34, 'common_dictgroup_edit', 'common_dictgroup_edit_get');
INSERT INTO `button_permission` VALUES (35, 'common_dictgroup_edit', 'common_dictgroup_update_post');
INSERT INTO `button_permission` VALUES (36, 'common_dictgroup_del', 'common_dictgroup_delete_delete');
INSERT INTO `button_permission` VALUES (37, 'common_dict_add', 'common_dict_add_post');
INSERT INTO `button_permission` VALUES (38, 'common_dict_edit', 'common_dict_edit_get');
INSERT INTO `button_permission` VALUES (39, 'common_dict_edit', 'common_dict_update_post');
INSERT INTO `button_permission` VALUES (40, 'common_dict_del', 'common_dict_delete_delete');
INSERT INTO `button_permission` VALUES (41, 'common_dict_item', 'common_dictitem_query_get');
INSERT INTO `button_permission` VALUES (42, 'common_dict_item', 'common_dictitem_add_post');
INSERT INTO `button_permission` VALUES (43, 'common_dict_item', 'common_dictitem_edit_get');
INSERT INTO `button_permission` VALUES (44, 'common_dict_item', 'common_dictitem_update_post');
INSERT INTO `button_permission` VALUES (45, 'common_dict_item', 'common_dictitem_delete_delete');
INSERT INTO `button_permission` VALUES (46, 'common_attachment_del', 'common_attachment_delete_delete');
INSERT INTO `button_permission` VALUES (47, 'common_attachment_export', 'common_attachment_export_get');
INSERT INTO `button_permission` VALUES (48, 'common_area_add', 'common_area_add_post');
INSERT INTO `button_permission` VALUES (49, 'common_area_edit', 'common_area_edit_get');
INSERT INTO `button_permission` VALUES (50, 'common_area_edit', 'common_area_update_post');
INSERT INTO `button_permission` VALUES (51, 'common_area_del', 'common_area_delete_delete');
INSERT INTO `button_permission` VALUES (52, 'common_mediatype_add', 'common_mediatype_add_post');
INSERT INTO `button_permission` VALUES (53, 'common_mediatype_edit', 'common_mediatype_edit_get');
INSERT INTO `button_permission` VALUES (54, 'common_mediatype_edit', 'common_mediatype_update_post');
INSERT INTO `button_permission` VALUES (55, 'common_mediatype_del', 'common_mediatype_delete_delete');
INSERT INTO `button_permission` VALUES (56, 'codegenerator_module_add', 'codegenerator_module_add_post');
INSERT INTO `button_permission` VALUES (57, 'codegenerator_module_edit', 'codegenerator_module_edit_get');
INSERT INTO `button_permission` VALUES (58, 'codegenerator_module_edit', 'codegenerator_module_update_post');
INSERT INTO `button_permission` VALUES (59, 'codegenerator_module_del', 'codegenerator_module_delete_delete');
INSERT INTO `button_permission` VALUES (60, 'codegenerator_module_build_code', 'codegenerator_module_buildcode_post');
INSERT INTO `button_permission` VALUES (61, 'codegenerator_enum_add', 'codegenerator_enum_add_post');
INSERT INTO `button_permission` VALUES (62, 'codegenerator_enum_edit', 'codegenerator_enum_edit_get');
INSERT INTO `button_permission` VALUES (63, 'codegenerator_enum_edit', 'codegenerator_enum_update_post');
INSERT INTO `button_permission` VALUES (64, 'codegenerator_enum_del', 'codegenerator_enum_delete_delete');
INSERT INTO `button_permission` VALUES (65, 'quartz_group_add', 'quartz_group_add_post');
INSERT INTO `button_permission` VALUES (66, 'quartz_group_del', 'quartz_group_delete_delete');
INSERT INTO `button_permission` VALUES (67, 'quartz_job_add', 'quartz_job_add_post');
INSERT INTO `button_permission` VALUES (68, 'quartz_job_add', 'quartz_job_addhttpjob_post');
INSERT INTO `button_permission` VALUES (69, 'quartz_job_edit', 'quartz_job_edit_get');
INSERT INTO `button_permission` VALUES (70, 'quartz_job_edit', 'quartz_job_update_post');
INSERT INTO `button_permission` VALUES (71, 'quartz_job_edit', 'quartz_job_edithttpjob_get');
INSERT INTO `button_permission` VALUES (72, 'quartz_job_edit', 'quartz_job_updatehttpjob_post');
INSERT INTO `button_permission` VALUES (73, 'quartz_job_pause', 'quartz_job_pause_post');
INSERT INTO `button_permission` VALUES (74, 'quartz_job_resume', 'quartz_job_resume_post');
INSERT INTO `button_permission` VALUES (75, 'quartz_job_stop', 'quartz_job_stop_post');
INSERT INTO `button_permission` VALUES (76, 'quartz_job_log', 'quartz_job_log_get');
INSERT INTO `button_permission` VALUES (77, 'quartz_job_del', 'quartz_job_delete_delete');
INSERT INTO `button_permission` VALUES (78, 'personnelfiles_department_add', 'personnelfiles_department_add_post');
INSERT INTO `button_permission` VALUES (79, 'personnelfiles_department_edit', 'personnelfiles_department_edit_get');
INSERT INTO `button_permission` VALUES (80, 'personnelfiles_department_edit', 'personnelfiles_department_update_post');
INSERT INTO `button_permission` VALUES (81, 'personnelfiles_department_del', 'personnelfiles_department_delete_delete');
INSERT INTO `button_permission` VALUES (82, 'personnelfiles_employee_add', 'personnelfiles_employee_add_post');
INSERT INTO `button_permission` VALUES (83, 'personnelfiles_employee_edit', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (84, 'personnelfiles_employee_edit', 'personnelfiles_employee_update_post');
INSERT INTO `button_permission` VALUES (85, 'personnelfiles_employee_edit', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (86, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatecontact_post');
INSERT INTO `button_permission` VALUES (87, 'personnelfiles_employee_edit', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (88, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `button_permission` VALUES (89, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (90, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyadd_post');
INSERT INTO `button_permission` VALUES (91, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyedit_get');
INSERT INTO `button_permission` VALUES (92, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyupdate_post');
INSERT INTO `button_permission` VALUES (93, 'personnelfiles_employee_edit', 'personnelfiles_employee_familydelete_delete');
INSERT INTO `button_permission` VALUES (94, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (95, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationadd_post');
INSERT INTO `button_permission` VALUES (96, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationedit_get');
INSERT INTO `button_permission` VALUES (97, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationupdate_post');
INSERT INTO `button_permission` VALUES (98, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `button_permission` VALUES (99, 'personnelfiles_employee_edit', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (100, 'personnelfiles_employee_edit', 'personnelfiles_employee_workadd_post');
INSERT INTO `button_permission` VALUES (101, 'personnelfiles_employee_edit', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (102, 'personnelfiles_employee_edit', 'personnelfiles_employee_workupdate_post');
INSERT INTO `button_permission` VALUES (103, 'personnelfiles_employee_edit', 'personnelfiles_employee_workdelete_delete');
INSERT INTO `button_permission` VALUES (104, 'personnelfiles_employee_edit', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (105, 'personnelfiles_employee_edit', 'personnelfiles_employee_updateaccount_post');
INSERT INTO `button_permission` VALUES (106, 'personnelfiles_employee_del', 'personnelfiles_employee_delete_delete');
INSERT INTO `button_permission` VALUES (107, 'personnelfiles_employee_leave', 'personnelfiles_employee_leave_post');
INSERT INTO `button_permission` VALUES (108, 'personnelfiles_employee_leave', 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `button_permission` VALUES (109, 'personnelfiles_position_add', 'personnelfiles_position_add_post');
INSERT INTO `button_permission` VALUES (110, 'personnelfiles_position_edit', 'personnelfiles_position_edit_get');
INSERT INTO `button_permission` VALUES (111, 'personnelfiles_position_edit', 'personnelfiles_position_update_post');
INSERT INTO `button_permission` VALUES (112, 'personnelfiles_position_del', 'personnelfiles_position_delete_delete');
INSERT INTO `button_permission` VALUES (113, 'personnelfiles_post_add', 'personnelfiles_post_add_post');
INSERT INTO `button_permission` VALUES (114, 'personnelfiles_post_add', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (115, 'personnelfiles_post_add', 'personnelfiles_position_get_get');
INSERT INTO `button_permission` VALUES (116, 'personnelfiles_post_edit', 'personnelfiles_post_edit_get');
INSERT INTO `button_permission` VALUES (117, 'personnelfiles_post_edit', 'personnelfiles_post_update_post');
INSERT INTO `button_permission` VALUES (118, 'personnelfiles_post_del', 'personnelfiles_post_delete_delete');
INSERT INTO `button_permission` VALUES (119, 'personnelfiles_post_del', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (120, 'personnelfiles_post_del', 'personnelfiles_position_get_get');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `Key` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `config` VALUES (12, 1, 'sys_component_menu_unique_opened', 'True', '菜单只能打开一个', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (13, 1, 'sys_component_dialog_close_on_click_modal', 'False', '是否可以点击模态框关闭', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (14, 1, 'sys_component_list_serial_number_name', '', '列表页序号名称', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (15, 1, 'sys_component_tabnav_showicon', 'True', '标签导航是否显示图标', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (16, 1, 'sys_component_custom_css', '', '自定义Css样式', '2020-01-14 15:16:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (17, 1, 'sys_permission_validate', 'True', '开启权限验证', '2020-01-14 15:20:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (18, 1, 'sys_permission_button', 'True', '启用按钮权限', '2020-01-14 15:20:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (19, 1, 'sys_permission_single_account_login', 'True', '单账户登录', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:53:25', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `config` VALUES (20, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.AuditingEnabled', 'True', '启用审计日志', '2020-02-07 13:19:39', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (21, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.RefreshTokenExpires', '7', 'JWT刷新令牌有效期(天)', '2020-02-07 13:19:39', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (22, 2, 'NetModular.Module.Admin.Infrastructure.AdminOptions.DefaultPassword', '123456', '账户默认密码', '2020-02-07 13:19:40', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:36:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (23, 1, 'sys_component_dialog_draggable', 'True', '对话框默认可拖拽', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (24, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyName', '南京欧德利信息科技有限公司', '公司单位名称', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (25, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyAddress', NULL, '公司单位地址', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (26, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyContact', NULL, '公司单位联系人', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (27, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyPhone', NULL, '公司单位联系电话', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `config` VALUES (28, 2, 'NetModular.Module.PersonnelFiles.Infrastructure.PersonnelFilesOptions.CompanyFax', NULL, '公司单位传真', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:36:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('39F2B516-E26C-C093-DACF-45CBCE17ADD3', '', 0, '00000000-0000-0000-0000-000000000000', '权限管理', '', '', '', '', 'permission', '', 0, b'1', 4, -1, '', '', b'1', '', '2020-01-14 15:17:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F2B517-0C88-FB75-3F11-FA8F466F4E4B', '', 0, '00000000-0000-0000-0000-000000000000', '系统配置', '', '', '', '', 'system', '', 0, b'1', 5, -1, '', '', b'1', '', '2020-01-14 15:17:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F2B517-80EE-C169-4B67-997987F02091', '', 2, '00000000-0000-0000-0000-000000000000', '文档说明', '', '', '', 'https://docs.17mkh.com', 'project', '', 0, b'1', 6, 0, '', '', b'1', '', '2020-01-14 15:18:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F2B517-AE80-CAF7-28E7-66C3234DD747', '', 2, '00000000-0000-0000-0000-000000000000', 'GitHub', '', '', '', 'https://github.com/iamoldli/NetModular', 'github', '', 0, b'1', 7, 0, '', '', b'1', '', '2020-01-14 15:18:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F2B517-F089-62AB-559A-8BC6EE07F096', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '模块管理', 'admin_moduleinfo', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-01-14 15:18:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B517-FD13-5F3F-D5E8-562BDD453392', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '权限列表', 'admin_permission', '', '', '', 'verifycode', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-01-14 15:18:37', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-0EF0-E6B1-9B40-AC9280C58538', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '菜单管理', 'admin_menu', '', '', '', 'menu', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-01-14 15:18:42', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '角色管理', 'admin_role', '', '', '', 'role', '', 1, b'1', 3, 0, '', '', b'1', '', '2020-01-14 15:18:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-2E52-0020-9656-C4893C7D35D8', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '账户管理', 'admin_account', '', '', '', 'user', '', 1, b'1', 4, 0, '', '', b'1', '', '2020-01-14 15:18:50', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-38FC-B844-A8A0-117F6CDE3852', 'Admin', 1, '39F2B516-E26C-C093-DACF-45CBCE17ADD3', '审计日志', 'admin_auditinfo', '', '', '', 'log', '', 1, b'1', 5, 0, '', '', b'1', '', '2020-01-14 15:18:52', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:18:58', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-7D73-D6C6-4485-82405D7C298E', 'Admin', 1, '39F2B517-0C88-FB75-3F11-FA8F466F4E4B', '配置管理', 'admin_config', '', '', '', 'tag', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-01-14 15:19:10', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-02-07 13:18:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2B518-8C79-D39B-6A4B-771875CF495A', 'Admin', 1, '39F2B517-0C88-FB75-3F11-FA8F466F4E4B', '图标管理', 'admin_icon', '', '', '', 'icon', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-01-14 15:19:14', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-14 15:19:18', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F2D97A-B39E-74B8-84F8-F1D7D8BF7F4E', 'Admin', 1, '39F2B517-0C88-FB75-3F11-FA8F466F4E4B', '缓存管理', 'admin_cache', '', '', '', 'redis', '', 1, b'1', 3, 0, '', '', b'1', '', '2020-01-21 16:52:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-01-21 16:52:46', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5', '', 0, '00000000-0000-0000-0000-000000000000', '基础数据', '', '', '', '', 'database', '', 0, b'1', 3, -1, '', '', b'1', '', '2020-03-03 12:46:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b0e4-597e-61d4-e7b5-b84e87e22a97', '', 0, '00000000-0000-0000-0000-000000000000', '任务调度', '', '', '', '', 'timer', '', 0, b'1', 1, -1, '', '', b'1', '', '2020-03-03 12:46:31', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b0e4-b443-9c6a-ae2f-b25c6073db34', '', 0, '00000000-0000-0000-0000-000000000000', '模块生成', '', '', '', '', 'develop', '', 0, b'1', 2, -1, '', '', b'1', '', '2020-03-03 12:46:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b0e5-016c-8f9a-ae97-29be68f820fc', '', 0, '00000000-0000-0000-0000-000000000000', '人事档案', '', '', '', '', 'personnel-files', '', 0, b'1', 0, -1, '', '', b'1', '', '2020-03-03 12:47:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:29', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b0e5-80ee-94f2-8093-395ca06cfb33', '', 0, '39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5', '数据字典', '', '', '', '', 'tag', '', 1, b'1', 0, -1, '', '', b'1', '', '2020-03-03 12:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 12:47:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10b-b1ea-43d2-690b-7c1e8d9bfda5', 'Common', 1, '39f3b0e5-80ee-94f2-8093-395ca06cfb33', '字典分组', 'common_dictgroup', '', '', '', 'entity', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10b-bc70-a639-b39a-8d76645daa96', 'Common', 1, '39f3b0e5-80ee-94f2-8093-395ca06cfb33', '字典列表', 'common_dict', '', '', '', 'tag', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-10c1-e93c-b543-98a735abdc39', 'Common', 1, '39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5', '附件管理', 'common_attachment', '', '', '', 'attachment', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-2024-15e5-0329-87de10e42dac', 'Common', 1, '39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5', '区划代码', 'common_area', '', '', '', 'area', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-364c-8904-162f-f00fe58063b5', 'Common', 1, '39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5', '多媒体', 'common_mediatype', '', '', '', 'media', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-8e5e-cc3f-386b-a1c05bb57996', 'CodeGenerator', 1, '39f3b0e4-b443-9c6a-ae2f-b25c6073db34', '模块列表', 'codegenerator_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-97ad-10f1-9dc7-fed515831de1', 'CodeGenerator', 1, '39f3b0e4-b443-9c6a-ae2f-b25c6073db34', '枚举列表', 'codegenerator_enum', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-db3f-18a8-007a-8f804d3fb9f5', 'Quartz', 1, '39f3b0e4-597e-61d4-e7b5-b84e87e22a97', '任务分组', 'quartz_group', '', '', '', 'group', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:31:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', 'Quartz', 1, '39f3b0e4-597e-61d4-e7b5-b84e87e22a97', '任务列表', 'quartz_job', '', '', '', 'list', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:31:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b110-8aa9-9f2a-ffaa-0206c0648769', 'PersonnelFiles', 1, '39f3b0e5-016c-8f9a-ae97-29be68f820fc', '组织机构', 'personnelfiles_department', '', '', '', 'department', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b110-95aa-89d8-c6b9-f4c19dc5cd13', 'PersonnelFiles', 1, '39f3b0e5-016c-8f9a-ae97-29be68f820fc', '员工档案', 'personnelfiles_employee', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b110-a330-bfdd-8c53-646cbc0d565b', 'PersonnelFiles', 1, '39f3b0e5-016c-8f9a-ae97-29be68f820fc', '职位管理', 'personnelfiles_position', '', '', '', 'position', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3b110-ad57-b8c0-6827-cfbcbf113e22', 'PersonnelFiles', 1, '39f3b0e5-016c-8f9a-ae97-29be68f820fc', '岗位管理', 'personnelfiles_post', '', '', '', 'post', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:34:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `menu_permission`;
CREATE TABLE `menu_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_permission
-- ----------------------------
INSERT INTO `menu_permission` VALUES (1, 'admin_moduleinfo', 'admin_moduleinfo_query_get');
INSERT INTO `menu_permission` VALUES (2, 'admin_permission', 'admin_permission_query_get');
INSERT INTO `menu_permission` VALUES (3, 'admin_menu', 'admin_menu_query_get');
INSERT INTO `menu_permission` VALUES (4, 'admin_menu', 'admin_menu_tree_get');
INSERT INTO `menu_permission` VALUES (5, 'admin_role', 'admin_role_query_get');
INSERT INTO `menu_permission` VALUES (6, 'admin_account', 'admin_account_query_get');
INSERT INTO `menu_permission` VALUES (7, 'admin_auditinfo', 'admin_auditinfo_query_get');
INSERT INTO `menu_permission` VALUES (8, 'admin_cache', 'admin_cache_query_get');
INSERT INTO `menu_permission` VALUES (9, 'admin_config', 'admin_config_query_get');
INSERT INTO `menu_permission` VALUES (10, 'admin_config', 'admin_config_add_post');
INSERT INTO `menu_permission` VALUES (11, 'admin_config', 'admin_config_edit_get');
INSERT INTO `menu_permission` VALUES (12, 'admin_config', 'admin_config_update_post');
INSERT INTO `menu_permission` VALUES (13, 'admin_config', 'admin_config_delete_delete');
INSERT INTO `menu_permission` VALUES (14, 'admin_config', 'admin_moduleoptions_edit_get');
INSERT INTO `menu_permission` VALUES (15, 'admin_config', 'admin_moduleoptions_update_post');
INSERT INTO `menu_permission` VALUES (16, 'admin_config', 'admin_system_updatebaseconfig_post');
INSERT INTO `menu_permission` VALUES (17, 'admin_config', 'admin_system_updatecomponentconfig_post');
INSERT INTO `menu_permission` VALUES (18, 'admin_config', 'admin_system_updateloginconfig_post');
INSERT INTO `menu_permission` VALUES (19, 'admin_config', 'admin_system_updatepermissionconfig_post');
INSERT INTO `menu_permission` VALUES (20, 'admin_config', 'admin_system_updatetoolbarconfig_post');
INSERT INTO `menu_permission` VALUES (21, 'admin_config', 'admin_system_updatepathconfig_post');
INSERT INTO `menu_permission` VALUES (22, 'admin_config', 'admin_system_uploadlogo_post');
INSERT INTO `menu_permission` VALUES (23, 'common_dictgroup', 'common_dictgroup_query_get');
INSERT INTO `menu_permission` VALUES (24, 'common_dict', 'common_dict_query_get');
INSERT INTO `menu_permission` VALUES (25, 'common_dict', 'common_dict_querychildren_get');
INSERT INTO `menu_permission` VALUES (26, 'common_attachment', 'common_attachment_query_get');
INSERT INTO `menu_permission` VALUES (27, 'common_area', 'common_area_query_get');
INSERT INTO `menu_permission` VALUES (28, 'common_area', 'common_area_querychildren_get');
INSERT INTO `menu_permission` VALUES (29, 'common_mediatype', 'common_mediatype_query_get');
INSERT INTO `menu_permission` VALUES (30, 'codegenerator_module', 'codegenerator_module_query_get');
INSERT INTO `menu_permission` VALUES (31, 'codegenerator_enum', 'codegenerator_enum_query_get');
INSERT INTO `menu_permission` VALUES (32, 'quartz_group', 'quartz_group_query_get');
INSERT INTO `menu_permission` VALUES (33, 'quartz_job', 'quartz_job_query_get');
INSERT INTO `menu_permission` VALUES (34, 'quartz_job', 'quartz_job_jobhttpdetails_get');
INSERT INTO `menu_permission` VALUES (35, 'personnelfiles_department', 'personnelfiles_department_query_get');
INSERT INTO `menu_permission` VALUES (36, 'personnelfiles_department', 'personnelfiles_department_tree_get');
INSERT INTO `menu_permission` VALUES (37, 'personnelfiles_employee', 'personnelfiles_employee_query_get');
INSERT INTO `menu_permission` VALUES (38, 'personnelfiles_position', 'personnelfiles_position_query_get');
INSERT INTO `menu_permission` VALUES (39, 'personnelfiles_post', 'personnelfiles_post_query_get');

-- ----------------------------
-- Table structure for moduleinfo
-- ----------------------------
DROP TABLE IF EXISTS `moduleinfo`;
CREATE TABLE `moduleinfo`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moduleinfo
-- ----------------------------
INSERT INTO `moduleinfo` VALUES ('39F2B515-86A2-6D4A-E814-0B2A95218EA8', '权限管理', 'Admin', 'permission', '1.7.7', '', '2020-01-14 15:15:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-03 13:28:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `moduleinfo` VALUES ('39f3b0e3-cdb3-2d1c-543a-00f32c3d43d8', '代码生成', 'CodeGenerator', 'develop', '1.6.2', '', '2020-03-03 12:45:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:28:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `moduleinfo` VALUES ('39f3b0e3-ce08-ae03-e7c0-b4a459cd1465', '通用模块', 'Common', 'database', '1.5.9', '', '2020-03-03 12:45:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:28:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `moduleinfo` VALUES ('39f3b0e3-ce1b-9735-e1ff-96bc06745b6a', '任务调度', 'Quartz', 'timer', '1.5.6', '', '2020-03-03 12:45:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:28:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `moduleinfo` VALUES ('39f3b10b-340a-bdf3-88fa-8ea9c8f89f96', '人事档案', 'PersonnelFiles', 'personnel-files', '1.5.1', NULL, '2020-03-03 13:28:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:28:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

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
  `HttpMethod` smallint(3) NOT NULL DEFAULT 0,
  `Code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('39f3b10b-45ae-3ced-9c1a-4b970a3450d6', '账户管理_查询', 'Admin', 'Account', 'Query', 0, 'admin_account_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45ba-6b98-3b80-6141b16b6dfd', '账户管理_添加', 'Admin', 'Account', 'Add', 2, 'admin_account_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45bb-e055-b0de-0f9750af60f3', '账户管理_编辑', 'Admin', 'Account', 'Edit', 0, 'admin_account_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45c1-78cb-6469-3a38c1f40d7b', '账户管理_更新', 'Admin', 'Account', 'Update', 2, 'admin_account_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45c4-27c1-0728-41bce1cf437b', '账户管理_删除', 'Admin', 'Account', 'Delete', 3, 'admin_account_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45c8-6d59-8ae6-219ee20fd928', '账户管理_绑定角色', 'Admin', 'Account', 'BindRole', 2, 'admin_account_bindrole_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45ca-4c2c-0ee9-6336931190b9', '账户管理_重置密码', 'Admin', 'Account', 'ResetPassword', 2, 'admin_account_resetpassword_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45cc-3b80-7533-b72d19be1530', '审计信息_查询', 'Admin', 'AuditInfo', 'Query', 0, 'admin_auditinfo_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45d3-db42-d340-e6fb6b4ca512', '审计信息_详情', 'Admin', 'AuditInfo', 'Details', 0, 'admin_auditinfo_details_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45da-8f38-2094-a659e06c91c2', '审计信息_导出', 'Admin', 'AuditInfo', 'Export', 2, 'admin_auditinfo_export_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45dd-f560-1a01-1a21c15dda3a', '按钮管理_查询', 'Admin', 'Button', 'Query', 0, 'admin_button_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45e6-a510-78f4-8272d8951aba', '缓存管理_查询指定模块缓存键列表', 'Admin', 'Cache', 'Query', 0, 'admin_cache_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45ef-ef76-60e6-16c54b26138f', '缓存管理_清除指定前缀的缓存', 'Admin', 'Cache', 'Clear', 3, 'admin_cache_clear_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45f3-b09d-cc87-dfbe74213b50', '配置管理_查询', 'Admin', 'Config', 'Query', 0, 'admin_config_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45f5-e606-b998-a526de333c13', '配置管理_添加', 'Admin', 'Config', 'Add', 2, 'admin_config_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45f9-f7b6-dd74-0c6c2147bf0c', '配置管理_删除', 'Admin', 'Config', 'Delete', 3, 'admin_config_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45fa-3c23-2b09-fe2858eb5370', '配置管理_编辑', 'Admin', 'Config', 'Edit', 0, 'admin_config_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45fb-4261-f3d1-3fdf0ec1cfa8', '配置管理_修改', 'Admin', 'Config', 'Update', 2, 'admin_config_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-45fd-adf1-cfff-2f0cf9935b5b', '菜单管理_菜单树', 'Admin', 'Menu', 'Tree', 0, 'admin_menu_tree_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4601-9b73-2f87-ea97f731a03d', '菜单管理_查询菜单列表', 'Admin', 'Menu', 'Query', 0, 'admin_menu_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4608-c5b4-2065-8d2a92a1537b', '菜单管理_添加', 'Admin', 'Menu', 'Add', 2, 'admin_menu_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-460c-0010-0e40-02eddb6a1253', '菜单管理_删除', 'Admin', 'Menu', 'Delete', 3, 'admin_menu_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-460e-2841-d5d9-00bb45585c7b', '菜单管理_编辑', 'Admin', 'Menu', 'Edit', 0, 'admin_menu_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4617-0596-7f03-4ab580dd77b9', '菜单管理_更新', 'Admin', 'Menu', 'Update', 2, 'admin_menu_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-461b-805d-cef6-bc8e6ac37209', '菜单管理_获取排序信息', 'Admin', 'Menu', 'Sort', 0, 'admin_menu_sort_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4625-67cb-97ca-58e7be807a7e', '菜单管理_更新排序信息', 'Admin', 'Menu', 'Sort', 2, 'admin_menu_sort_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-462b-adc1-717e-0fe0a3cff58a', '模块信息_查询', 'Admin', 'ModuleInfo', 'Query', 0, 'admin_moduleinfo_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-462f-9ea5-75a7-14912c58a7f0', '模块信息_同步模块数据', 'Admin', 'ModuleInfo', 'Sync', 2, 'admin_moduleinfo_sync_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4637-4afa-d9ee-5e1793b5226b', '模块信息_删除', 'Admin', 'ModuleInfo', 'Delete', 3, 'admin_moduleinfo_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4640-9e0c-747f-683373a800a8', '模块配置项管理_编辑模块配置信息', 'Admin', 'ModuleOptions', 'Edit', 0, 'admin_moduleoptions_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4645-35f4-1a82-7f7d7ef3e19f', '模块配置项管理_更新模块配置信息', 'Admin', 'ModuleOptions', 'Update', 2, 'admin_moduleoptions_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4648-dcbc-0f5a-4092a3df557b', '权限接口_查询', 'Admin', 'Permission', 'Query', 0, 'admin_permission_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-464a-cee8-be35-18c18e358c7b', '权限接口_同步', 'Admin', 'Permission', 'Sync', 2, 'admin_permission_sync_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-464c-41f3-5c02-749fdbee8fe7', '权限接口_权限树', 'Admin', 'Permission', 'Tree', 0, 'admin_permission_tree_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-464e-e4e1-06a5-2e1e14b21356', '角色管理_查询', 'Admin', 'Role', 'Query', 0, 'admin_role_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4651-e39f-4d87-51d018db3044', '角色管理_添加', 'Admin', 'Role', 'Add', 2, 'admin_role_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-465e-5101-b8eb-0a701076ad82', '角色管理_删除', 'Admin', 'Role', 'Delete', 3, 'admin_role_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4662-48c6-8631-430b62b26810', '角色管理_编辑', 'Admin', 'Role', 'Edit', 0, 'admin_role_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-466d-715f-f0ff-00e2f3714ba1', '角色管理_修改', 'Admin', 'Role', 'Update', 2, 'admin_role_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4671-82a7-901c-99ca4e866c52', '角色管理_获取角色的关联菜单列表', 'Admin', 'Role', 'MenuList', 0, 'admin_role_menulist_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-467e-a46a-d5f3-7685dfbafea0', '角色管理_绑定菜单', 'Admin', 'Role', 'BindMenu', 2, 'admin_role_bindmenu_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4683-953a-76d1-09e78010e804', '角色管理_获取角色关联的菜单按钮列表', 'Admin', 'Role', 'MenuButtonList', 0, 'admin_role_menubuttonlist_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-468a-0146-39f4-3e27609175fb', '角色管理_绑定菜单按钮', 'Admin', 'Role', 'BindMenuButton', 2, 'admin_role_bindmenubutton_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4691-db21-9bc0-34289b79c943', '角色管理_查询平台权限列表', 'Admin', 'Role', 'PlatformPermissionList', 0, 'admin_role_platformpermissionlist_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4695-3356-43a8-779a98202424', '角色管理_绑定平台权限列表', 'Admin', 'Role', 'PlatformPermissionBind', 2, 'admin_role_platformpermissionbind_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4698-25d4-12e4-b15e4f700af0', '系统_修改系统基础配置', 'Admin', 'System', 'UpdateBaseConfig', 2, 'admin_system_updatebaseconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-469a-dcaf-e38b-2544eee103f7', '系统_修改系统组件配置', 'Admin', 'System', 'UpdateComponentConfig', 2, 'admin_system_updatecomponentconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-469b-d4b1-59bb-435951c5aadf', '系统_修改系统登录配置', 'Admin', 'System', 'UpdateLoginConfig', 2, 'admin_system_updateloginconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-469d-5624-92e0-24eb25b2ebf4', '系统_修改系统权限配置', 'Admin', 'System', 'UpdatePermissionConfig', 2, 'admin_system_updatepermissionconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-469e-65aa-365c-895c75af42b4', '系统_修改系统工具栏配置', 'Admin', 'System', 'UpdateToolbarConfig', 2, 'admin_system_updatetoolbarconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46a1-7d22-6344-59ba0a1ee9cb', '系统_修改系统路径配置', 'Admin', 'System', 'UpdatePathConfig', 2, 'admin_system_updatepathconfig_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46a3-4bea-6ca3-c2b1c958479e', '系统_上传Logo', 'Admin', 'System', 'UploadLogo', 2, 'admin_system_uploadlogo_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46a4-62c3-e693-cb69ba410f71', '通用工具_枚举下拉列表接口', 'Admin', 'Tool', 'EnumSelect', 0, 'admin_tool_enumselect_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46a9-0e3a-b1eb-d2d31ab6b05e', '实体管理_查询', 'CodeGenerator', 'Class', 'Query', 0, 'codegenerator_class_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46ac-bb5e-eff8-a71836c450c9', '实体管理_添加', 'CodeGenerator', 'Class', 'Add', 2, 'codegenerator_class_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46b0-1d31-5bf9-43c4a98a9e42', '实体管理_删除', 'CodeGenerator', 'Class', 'Delete', 3, 'codegenerator_class_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46c3-78a5-dab6-b00c593c6b0e', '实体管理_编辑', 'CodeGenerator', 'Class', 'Edit', 0, 'codegenerator_class_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46c7-4519-0a0f-962b67b51fde', '实体管理_修改', 'CodeGenerator', 'Class', 'Update', 2, 'codegenerator_class_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46cd-6a67-e025-4f5e62bee06d', '实体管理_生成代码', 'CodeGenerator', 'Class', 'BuildCode', 0, 'codegenerator_class_buildcode_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46d2-4af6-66f0-fb51c0c93b8b', '枚举管理_查询', 'CodeGenerator', 'Enum', 'Query', 0, 'codegenerator_enum_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46d5-2ca3-caf2-f0c8cd69002a', '枚举管理_添加', 'CodeGenerator', 'Enum', 'Add', 2, 'codegenerator_enum_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46db-e7f7-e323-d28c74837d92', '枚举管理_删除', 'CodeGenerator', 'Enum', 'Delete', 3, 'codegenerator_enum_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46de-8b94-40fb-485682dafd79', '枚举管理_编辑', 'CodeGenerator', 'Enum', 'Edit', 0, 'codegenerator_enum_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46e3-1cb2-1b68-efb7083176aa', '枚举管理_修改', 'CodeGenerator', 'Enum', 'Update', 2, 'codegenerator_enum_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46e5-2c9a-e0be-f45a38ac18d9', '枚举项管理_查询', 'CodeGenerator', 'EnumItem', 'Query', 0, 'codegenerator_enumitem_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46e8-e0e0-48ae-9fd76acc5d62', '枚举项管理_添加', 'CodeGenerator', 'EnumItem', 'Add', 2, 'codegenerator_enumitem_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46ec-db9c-0d5f-c3c844954d5b', '枚举项管理_删除', 'CodeGenerator', 'EnumItem', 'Delete', 3, 'codegenerator_enumitem_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46ee-48be-6b36-5493ca77ed58', '枚举项管理_编辑', 'CodeGenerator', 'EnumItem', 'Edit', 0, 'codegenerator_enumitem_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46f5-b76a-ba98-4d73169db4c6', '枚举项管理_修改', 'CodeGenerator', 'EnumItem', 'Update', 2, 'codegenerator_enumitem_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-46fa-8504-e0f4-230d0914bd40', '枚举项管理_获取排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 0, 'codegenerator_enumitem_sort_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4700-8c8d-9ffd-fe4b6aecc43d', '枚举项管理_更新排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 2, 'codegenerator_enumitem_sort_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4703-1b52-3e13-e0c3adc5414d', '模型属性管理_查询', 'CodeGenerator', 'ModelProperty', 'Query', 0, 'codegenerator_modelproperty_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4705-a5bb-abaf-764ab271119a', '模型属性管理_添加', 'CodeGenerator', 'ModelProperty', 'Add', 2, 'codegenerator_modelproperty_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4706-17cd-c506-3764e082a20c', '模型属性管理_删除', 'CodeGenerator', 'ModelProperty', 'Delete', 3, 'codegenerator_modelproperty_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4708-3f22-1aea-7cac56ee8595', '模型属性管理_编辑', 'CodeGenerator', 'ModelProperty', 'Edit', 0, 'codegenerator_modelproperty_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-470d-39d6-c74d-a10db4bafe6e', '模型属性管理_修改', 'CodeGenerator', 'ModelProperty', 'Update', 2, 'codegenerator_modelproperty_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4710-6c6f-3bf3-bc3eb9e3f293', '模型属性管理_获取排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 0, 'codegenerator_modelproperty_sort_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4713-ef22-68d4-c984ec65e04f', '模型属性管理_更新排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 2, 'codegenerator_modelproperty_sort_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4715-191e-fa83-96bce2930727', '模型属性管理_修改可空状态', 'CodeGenerator', 'ModelProperty', 'UpdateNullable', 2, 'codegenerator_modelproperty_updatenullable_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4716-9cc4-3305-a242442b15d1', '模型属性管理_获取下拉列表', 'CodeGenerator', 'ModelProperty', 'Select', 0, 'codegenerator_modelproperty_select_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4718-7816-dde9-87c4fdafa73a', '模型属性管理_从实体中导入属性', 'CodeGenerator', 'ModelProperty', 'ImportFromEntity', 2, 'codegenerator_modelproperty_importfromentity_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4719-edcb-32b7-7acf6f3cb26e', '模块管理_查询', 'CodeGenerator', 'Module', 'Query', 0, 'codegenerator_module_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-471c-eb5f-8ac7-3dc440238e10', '模块管理_添加', 'CodeGenerator', 'Module', 'Add', 2, 'codegenerator_module_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-471e-efde-862c-ef4924c737fe', '模块管理_删除', 'CodeGenerator', 'Module', 'Delete', 3, 'codegenerator_module_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4720-fe2f-e1b0-0bb1c0601399', '模块管理_编辑', 'CodeGenerator', 'Module', 'Edit', 0, 'codegenerator_module_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4721-6dd2-7377-880079bf19d0', '模块管理_修改', 'CodeGenerator', 'Module', 'Update', 2, 'codegenerator_module_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4722-5ad0-d064-6340c76b035f', '模块管理_生成代码', 'CodeGenerator', 'Module', 'BuildCode', 2, 'codegenerator_module_buildcode_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4724-da3f-fc3c-7c59b3b881c2', '实体属性管理_查询', 'CodeGenerator', 'Property', 'Query', 0, 'codegenerator_property_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4725-0606-4a7c-c2fb2c0622c0', '实体属性管理_添加', 'CodeGenerator', 'Property', 'Add', 2, 'codegenerator_property_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4726-9f95-73be-dc2e75b94527', '实体属性管理_删除', 'CodeGenerator', 'Property', 'Delete', 3, 'codegenerator_property_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4728-5041-51a6-3029fc43e905', '实体属性管理_编辑', 'CodeGenerator', 'Property', 'Edit', 0, 'codegenerator_property_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4729-fa9d-77fd-b6732ea42f88', '实体属性管理_修改', 'CodeGenerator', 'Property', 'Update', 2, 'codegenerator_property_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-472c-3361-fb1c-d9c78ef8d7d1', '实体属性管理_获取属性类型下拉列表', 'CodeGenerator', 'Property', 'PropertyTypeSelect', 0, 'codegenerator_property_propertytypeselect_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-472e-5eb2-5c29-d25e1c71ca19', '实体属性管理_获取排序信息', 'CodeGenerator', 'Property', 'Sort', 0, 'codegenerator_property_sort_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-472f-1654-6a7b-50f691af7986', '实体属性管理_更新排序信息', 'CodeGenerator', 'Property', 'Sort', 2, 'codegenerator_property_sort_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4731-10ea-98d9-64ac9fcab09c', '实体属性管理_修改可空状态', 'CodeGenerator', 'Property', 'UpdateNullable', 2, 'codegenerator_property_updatenullable_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4732-fd03-d325-3008cbe5762e', '实体属性管理_修改列表显示状态', 'CodeGenerator', 'Property', 'UpdateShowInList', 2, 'codegenerator_property_updateshowinlist_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4734-231f-c668-7b8413950182', '实体属性管理_获取下拉列表', 'CodeGenerator', 'Property', 'Select', 0, 'codegenerator_property_select_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4737-e954-5e51-81af20a4bf70', '区划代码管理_查询', 'Common', 'Area', 'Query', 0, 'common_area_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4739-3c35-33c8-376f517ef053', '区划代码管理_添加', 'Common', 'Area', 'Add', 2, 'common_area_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-473d-58fb-0598-869744876991', '区划代码管理_删除', 'Common', 'Area', 'Delete', 3, 'common_area_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-473f-ddf6-1cde-713f55253586', '区划代码管理_编辑', 'Common', 'Area', 'Edit', 0, 'common_area_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4740-0bbd-410b-5d0c48f07c60', '区划代码管理_修改', 'Common', 'Area', 'Update', 2, 'common_area_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4742-48bb-c6d3-ab2d6b8e0626', '附件表管理_查询', 'Common', 'Attachment', 'Query', 0, 'common_attachment_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4743-f9fc-e471-cf138b99b948', '字典管理_查询', 'Common', 'Dict', 'Query', 0, 'common_dict_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4744-fc16-73f4-a610c573657c', '字典管理_添加', 'Common', 'Dict', 'Add', 2, 'common_dict_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4746-7bc3-2d52-3e33b0fd00a3', '字典管理_删除', 'Common', 'Dict', 'Delete', 3, 'common_dict_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4747-f506-36d3-00cffe015661', '字典管理_编辑', 'Common', 'Dict', 'Edit', 0, 'common_dict_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4749-6968-9f26-9c6303decf54', '字典管理_修改', 'Common', 'Dict', 'Update', 2, 'common_dict_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-474a-4970-1b6a-04dc28e6057d', '字典分组管理_查询', 'Common', 'DictGroup', 'Query', 0, 'common_dictgroup_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-474c-9ff6-7807-fee1c02d2e4a', '字典分组管理_添加', 'Common', 'DictGroup', 'Add', 2, 'common_dictgroup_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-474e-2bad-2c5a-b76197397150', '字典分组管理_删除', 'Common', 'DictGroup', 'Delete', 3, 'common_dictgroup_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-474f-97a7-4aba-33a34c4c1c50', '字典分组管理_编辑', 'Common', 'DictGroup', 'Edit', 0, 'common_dictgroup_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4751-2134-87ee-ea8b90293a01', '字典分组管理_修改', 'Common', 'DictGroup', 'Update', 2, 'common_dictgroup_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4753-4092-ae00-1b21c41e625a', '字典数据项管理_查询', 'Common', 'DictItem', 'Query', 0, 'common_dictitem_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4756-c978-9942-ebf70c9375fb', '字典数据项管理_添加', 'Common', 'DictItem', 'Add', 2, 'common_dictitem_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-475a-b89a-8d99-41acd30a7fe6', '字典数据项管理_删除', 'Common', 'DictItem', 'Delete', 3, 'common_dictitem_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-475c-ab6e-4956-8ea595900e7b', '字典数据项管理_编辑', 'Common', 'DictItem', 'Edit', 0, 'common_dictitem_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-475f-6e3b-148a-e16740277db3', '字典数据项管理_修改', 'Common', 'DictItem', 'Update', 2, 'common_dictitem_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4761-431d-628d-119ec36a44c5', '多媒体管理_查询', 'Common', 'MediaType', 'Query', 0, 'common_mediatype_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4762-375f-4336-3a9355d5bc7a', '多媒体管理_添加', 'Common', 'MediaType', 'Add', 2, 'common_mediatype_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4764-41cf-4a56-df89f09e6897', '多媒体管理_删除', 'Common', 'MediaType', 'Delete', 3, 'common_mediatype_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4766-8795-c3ed-87718fe8e2c2', '多媒体管理_编辑', 'Common', 'MediaType', 'Edit', 0, 'common_mediatype_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4767-107e-9435-14099f202b9b', '多媒体管理_修改', 'Common', 'MediaType', 'Update', 2, 'common_mediatype_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4769-356e-3616-c33f162b8d94', '部门管理_部门树', 'PersonnelFiles', 'Department', 'Tree', 0, 'personnelfiles_department_tree_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-476a-80db-1868-07da891fe363', '部门管理_查询', 'PersonnelFiles', 'Department', 'Query', 0, 'personnelfiles_department_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-476c-c0a3-7ae1-06f5f01cde37', '部门管理_添加', 'PersonnelFiles', 'Department', 'Add', 2, 'personnelfiles_department_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-476e-1b24-64c9-9ccc43b89ce8', '部门管理_删除', 'PersonnelFiles', 'Department', 'Delete', 3, 'personnelfiles_department_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4770-0682-bb31-5e6ddee98c5f', '部门管理_编辑', 'PersonnelFiles', 'Department', 'Edit', 0, 'personnelfiles_department_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4772-a3b7-501d-56b568636fc9', '部门管理_修改', 'PersonnelFiles', 'Department', 'Update', 2, 'personnelfiles_department_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4775-3f9b-ca42-7739395cff6b', '员工管理_查询', 'PersonnelFiles', 'Employee', 'Query', 0, 'personnelfiles_employee_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4777-9de2-a790-710dbd9bc490', '员工管理_添加', 'PersonnelFiles', 'Employee', 'Add', 2, 'personnelfiles_employee_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-477a-7d45-2638-8e09cecb1cb9', '员工管理_删除', 'PersonnelFiles', 'Employee', 'Delete', 3, 'personnelfiles_employee_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-477c-5d13-ce3c-06e3979c3c33', '员工管理_编辑', 'PersonnelFiles', 'Employee', 'Edit', 0, 'personnelfiles_employee_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-477f-0596-7268-b610f4b3b683', '员工管理_修改', 'PersonnelFiles', 'Employee', 'Update', 2, 'personnelfiles_employee_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4781-f99e-4324-cea1f0e29d8b', '员工管理_离职', 'PersonnelFiles', 'Employee', 'Leave', 2, 'personnelfiles_employee_leave_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4782-ed78-7d36-70f5b4a0f436', '员工管理_获取离职信息', 'PersonnelFiles', 'Employee', 'LeaveInfo', 0, 'personnelfiles_employee_leaveinfo_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4784-1101-d377-e440d4064fd1', '员工管理_编辑个人信息', 'PersonnelFiles', 'Employee', 'EditPersonal', 0, 'personnelfiles_employee_editpersonal_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4785-4ff3-b776-457bfd9ea548', '员工管理_修改个人信息', 'PersonnelFiles', 'Employee', 'UpdatePersonal', 2, 'personnelfiles_employee_updatepersonal_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4787-31bf-4cb6-621743efff6e', '员工管理_查询家庭情况信息列表', 'PersonnelFiles', 'Employee', 'FamilyQuery', 0, 'personnelfiles_employee_familyquery_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4789-a627-f1f0-3b0912f634c9', '员工管理_添加家庭情况', 'PersonnelFiles', 'Employee', 'FamilyAdd', 2, 'personnelfiles_employee_familyadd_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-478b-bea0-7641-438e787352bd', '员工管理_删除家庭情况', 'PersonnelFiles', 'Employee', 'FamilyDelete', 3, 'personnelfiles_employee_familydelete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-478d-025f-1fb5-65cea078903f', '员工管理_编辑家庭情况', 'PersonnelFiles', 'Employee', 'FamilyEdit', 0, 'personnelfiles_employee_familyedit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-478f-267e-faeb-41401d7364e4', '员工管理_修改家庭情况', 'PersonnelFiles', 'Employee', 'FamilyUpdate', 2, 'personnelfiles_employee_familyupdate_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4792-de7e-0296-71ed1fb2042e', '员工管理_编辑通讯信息', 'PersonnelFiles', 'Employee', 'EditContact', 0, 'personnelfiles_employee_editcontact_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4795-cd1c-6ce8-171fdea5d233', '员工管理_修改联系信息', 'PersonnelFiles', 'Employee', 'UpdateContact', 2, 'personnelfiles_employee_updatecontact_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-4799-d9fa-197f-95d96f3ebd77', '员工管理_联系信息详情', 'PersonnelFiles', 'Employee', 'ContactDetails', 0, 'personnelfiles_employee_contactdetails_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-479c-a474-3be8-4bb29140a7bc', '员工管理_查询教育背景信息列表', 'PersonnelFiles', 'Employee', 'EducationQuery', 0, 'personnelfiles_employee_educationquery_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-479e-3e54-e5f4-6f1524dd8a1f', '员工管理_添加教育背景', 'PersonnelFiles', 'Employee', 'EducationAdd', 2, 'personnelfiles_employee_educationadd_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47a1-42c1-42f2-2e226c8cc4d6', '员工管理_删除教育背景', 'PersonnelFiles', 'Employee', 'EducationDelete', 3, 'personnelfiles_employee_educationdelete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47a3-3a0a-310f-8584de640c87', '员工管理_编辑教育背景', 'PersonnelFiles', 'Employee', 'EducationEdit', 0, 'personnelfiles_employee_educationedit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47a5-f640-b943-dbb4a1fa6094', '员工管理_修改教育背景', 'PersonnelFiles', 'Employee', 'EducationUpdate', 2, 'personnelfiles_employee_educationupdate_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47a6-d3c8-ff4c-1c33ba81bd91', '员工管理_查询工作经历信息列表', 'PersonnelFiles', 'Employee', 'WorkQuery', 0, 'personnelfiles_employee_workquery_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47a8-2aef-1328-0b1e4c29b9ee', '员工管理_添加工作经历', 'PersonnelFiles', 'Employee', 'WorkAdd', 2, 'personnelfiles_employee_workadd_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47aa-ca6b-1a60-2e1416e33223', '员工管理_删除工作经历', 'PersonnelFiles', 'Employee', 'WorkDelete', 3, 'personnelfiles_employee_workdelete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47ac-ff76-4e99-6cead3281b23', '员工管理_编辑工作经历', 'PersonnelFiles', 'Employee', 'WorkEdit', 0, 'personnelfiles_employee_workedit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47ad-1e63-ebd0-8330817d2dfb', '员工管理_修改工作经历', 'PersonnelFiles', 'Employee', 'WorkUpdate', 2, 'personnelfiles_employee_workupdate_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47af-700f-cbb6-63161febbff9', '员工管理_账户编辑', 'PersonnelFiles', 'Employee', 'EditAccount', 0, 'personnelfiles_employee_editaccount_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47b1-d632-a35d-aad1d2d7299a', '员工管理_账户更新', 'PersonnelFiles', 'Employee', 'UpdateAccount', 2, 'personnelfiles_employee_updateaccount_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47b5-11a9-3efd-fba067830209', '职位管理_查询', 'PersonnelFiles', 'Position', 'Query', 0, 'personnelfiles_position_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47b8-56b6-e9d1-cf3ca4a03f1e', '职位管理_添加', 'PersonnelFiles', 'Position', 'Add', 2, 'personnelfiles_position_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47bb-1588-7ced-eaaad3f3ce80', '职位管理_删除', 'PersonnelFiles', 'Position', 'Delete', 3, 'personnelfiles_position_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47bd-0ff7-a1f7-b5aa0985e4fa', '职位管理_编辑', 'PersonnelFiles', 'Position', 'Edit', 0, 'personnelfiles_position_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47bf-6e5d-8888-5a4f12605d29', '职位管理_修改', 'PersonnelFiles', 'Position', 'Update', 2, 'personnelfiles_position_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47c2-78ef-77df-dff6c98d15ab', '职位管理_修改', 'PersonnelFiles', 'Position', 'Get', 0, 'personnelfiles_position_get_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47c3-97d4-6fa5-f961389cbaa5', '岗位管理_查询', 'PersonnelFiles', 'Post', 'Query', 0, 'personnelfiles_post_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47c5-8f6e-90cd-978131020838', '岗位管理_添加', 'PersonnelFiles', 'Post', 'Add', 2, 'personnelfiles_post_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47c6-4ccd-5cc6-05fe5222f92c', '岗位管理_删除', 'PersonnelFiles', 'Post', 'Delete', 3, 'personnelfiles_post_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47c8-8bc8-5c0b-293299fe6ebd', '岗位管理_编辑', 'PersonnelFiles', 'Post', 'Edit', 0, 'personnelfiles_post_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47ca-24f8-d409-a1c94bd6dd78', '岗位管理_修改', 'PersonnelFiles', 'Post', 'Update', 2, 'personnelfiles_post_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47cc-cfb0-6385-2e0256a9c224', '任务组管理_查询', 'Quartz', 'Group', 'Query', 0, 'quartz_group_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47ce-1b4d-2ead-a3a3a0a5af14', '任务组管理_添加', 'Quartz', 'Group', 'Add', 2, 'quartz_group_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47d0-3a0c-83ed-16b75d7d4a08', '任务组管理_删除', 'Quartz', 'Group', 'Delete', 3, 'quartz_group_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47d2-5ca2-3b49-9cce66825d56', '任务管理_查询', 'Quartz', 'Job', 'Query', 0, 'quartz_job_query_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47d4-9c38-2629-78cdac032ef6', '任务管理_添加', 'Quartz', 'Job', 'Add', 2, 'quartz_job_add_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47d8-969c-9482-f44a86923652', '任务管理_编辑', 'Quartz', 'Job', 'Edit', 0, 'quartz_job_edit_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47da-7df7-7291-7fef39fe259e', '任务管理_修改', 'Quartz', 'Job', 'Update', 2, 'quartz_job_update_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47dd-82c4-3287-12406c215dae', '任务管理_删除', 'Quartz', 'Job', 'Delete', 3, 'quartz_job_delete_delete', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47df-50a8-bc8e-46f93d4fcb98', '任务管理_暂停', 'Quartz', 'Job', 'Pause', 2, 'quartz_job_pause_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e1-d820-c8d6-c2462aa30c63', '任务管理_回复', 'Quartz', 'Job', 'Resume', 2, 'quartz_job_resume_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e3-61fb-6723-1d24ac75cbae', '任务管理_停止', 'Quartz', 'Job', 'Stop', 2, 'quartz_job_stop_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e5-2904-1ed1-d57e768a4fc8', '任务管理_日志', 'Quartz', 'Job', 'Log', 0, 'quartz_job_log_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e7-5793-8f57-625471952356', '任务管理_添加HTTP任务', 'Quartz', 'Job', 'AddHttpJob', 2, 'quartz_job_addhttpjob_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e8-ea71-f076-537f95ebf4c4', '任务管理_编辑HTTP任务', 'Quartz', 'Job', 'EditHttpJob', 0, 'quartz_job_edithttpjob_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47e9-f8cc-a70d-902a31dcc422', '任务管理_修改HTTP任务', 'Quartz', 'Job', 'UpdateHttpJob', 2, 'quartz_job_updatehttpjob_post', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `permission` VALUES ('39f3b10b-47eb-7e42-4874-9dfdbda1a507', '任务管理_HTTP任务详情', 'Quartz', 'Job', 'JobHttpDetails', 0, 'quartz_job_jobhttpdetails_get', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:29:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

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
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (82, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '00000000-0000-0000-0000-000000000000');
INSERT INTO `role_menu` VALUES (83, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b0e5-016c-8f9a-ae97-29be68f820fc');
INSERT INTO `role_menu` VALUES (84, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-8aa9-9f2a-ffaa-0206c0648769');
INSERT INTO `role_menu` VALUES (85, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-95aa-89d8-c6b9-f4c19dc5cd13');
INSERT INTO `role_menu` VALUES (86, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-a330-bfdd-8c53-646cbc0d565b');
INSERT INTO `role_menu` VALUES (87, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-ad57-b8c0-6827-cfbcbf113e22');
INSERT INTO `role_menu` VALUES (88, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b0e4-597e-61d4-e7b5-b84e87e22a97');
INSERT INTO `role_menu` VALUES (89, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-db3f-18a8-007a-8f804d3fb9f5');
INSERT INTO `role_menu` VALUES (90, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df');
INSERT INTO `role_menu` VALUES (91, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b0e4-b443-9c6a-ae2f-b25c6073db34');
INSERT INTO `role_menu` VALUES (92, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996');
INSERT INTO `role_menu` VALUES (93, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-97ad-10f1-9dc7-fed515831de1');
INSERT INTO `role_menu` VALUES (94, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b0e4-2f5a-6f80-ebc9-f4d5d1f3d2c5');
INSERT INTO `role_menu` VALUES (95, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b0e5-80ee-94f2-8093-395ca06cfb33');
INSERT INTO `role_menu` VALUES (96, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-b1ea-43d2-690b-7c1e8d9bfda5');
INSERT INTO `role_menu` VALUES (97, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-bc70-a639-b39a-8d76645daa96');
INSERT INTO `role_menu` VALUES (98, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-10c1-e93c-b543-98a735abdc39');
INSERT INTO `role_menu` VALUES (99, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-2024-15e5-0329-87de10e42dac');
INSERT INTO `role_menu` VALUES (100, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-364c-8904-162f-f00fe58063b5');
INSERT INTO `role_menu` VALUES (101, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b516-e26c-c093-dacf-45cbce17add3');
INSERT INTO `role_menu` VALUES (102, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b517-f089-62ab-559a-8bc6ee07f096');
INSERT INTO `role_menu` VALUES (103, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b517-fd13-5f3f-d5e8-562bdd453392');
INSERT INTO `role_menu` VALUES (104, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-0ef0-e6b1-9b40-ac9280c58538');
INSERT INTO `role_menu` VALUES (105, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-20e3-281a-86d3-9a8a2bb4bb7f');
INSERT INTO `role_menu` VALUES (106, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-2e52-0020-9656-c4893c7d35d8');
INSERT INTO `role_menu` VALUES (107, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-38fc-b844-a8a0-117f6cde3852');
INSERT INTO `role_menu` VALUES (108, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b517-0c88-fb75-3f11-fa8f466f4e4b');
INSERT INTO `role_menu` VALUES (109, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-7d73-d6c6-4485-82405d7c298e');
INSERT INTO `role_menu` VALUES (110, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b518-8c79-d39b-6a4b-771875cf495a');
INSERT INTO `role_menu` VALUES (111, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2d97a-b39e-74b8-84f8-f1d7d8bf7f4e');
INSERT INTO `role_menu` VALUES (112, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b517-80ee-c169-4b67-997987f02091');
INSERT INTO `role_menu` VALUES (113, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f2b517-ae80-caf7-28e7-66c3234dd747');

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
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu_button
-- ----------------------------
INSERT INTO `role_menu_button` VALUES (1, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B517-F089-62AB-559A-8BC6EE07F096', '39F2B517-F0E9-3890-43A2-32022C7A3811');
INSERT INTO `role_menu_button` VALUES (2, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B517-F089-62AB-559A-8BC6EE07F096', '39F2B517-F123-3549-9D5E-AB747B316B2F');
INSERT INTO `role_menu_button` VALUES (3, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B517-FD13-5F3F-D5E8-562BDD453392', '39F2B517-FD6B-7552-5CD9-06689FEC023B');
INSERT INTO `role_menu_button` VALUES (4, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-0EF0-E6B1-9B40-AC9280C58538', '39F2B518-0F47-CE0C-0A00-DAA35430FEBE');
INSERT INTO `role_menu_button` VALUES (5, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-0EF0-E6B1-9B40-AC9280C58538', '39F2B518-0F7A-B9E7-C87F-3C8A01F08BA8');
INSERT INTO `role_menu_button` VALUES (6, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-0EF0-E6B1-9B40-AC9280C58538', '39F2B518-0FB5-09DA-C060-805DB7BD658D');
INSERT INTO `role_menu_button` VALUES (7, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-0EF0-E6B1-9B40-AC9280C58538', '39F2B518-0FE3-5A09-57A1-E9F25DF6B42B');
INSERT INTO `role_menu_button` VALUES (8, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', '39F2B518-2133-D51D-5845-C3E4C3A7480E');
INSERT INTO `role_menu_button` VALUES (9, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', '39F2B518-216D-832B-6C93-39CB89C375A3');
INSERT INTO `role_menu_button` VALUES (10, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', '39F2B518-21AE-E07A-520F-D0B48F5241DB');
INSERT INTO `role_menu_button` VALUES (11, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', '39F2B518-21DF-11D8-42AC-1FAE1A48A460');
INSERT INTO `role_menu_button` VALUES (12, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-20E3-281A-86D3-9A8A2BB4BB7F', '39F2B518-2241-9A63-B21E-5CE347EF2CDF');
INSERT INTO `role_menu_button` VALUES (13, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-2E52-0020-9656-C4893C7D35D8', '39F2B518-2EA2-AFA2-2C77-F99F3FB494A0');
INSERT INTO `role_menu_button` VALUES (14, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-2E52-0020-9656-C4893C7D35D8', '39F2B518-2EE7-82B5-FBC3-9552A075FE42');
INSERT INTO `role_menu_button` VALUES (15, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-2E52-0020-9656-C4893C7D35D8', '39F2B518-2F3B-2161-8E34-280448E2A3E8');
INSERT INTO `role_menu_button` VALUES (16, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-2E52-0020-9656-C4893C7D35D8', '39F2B518-2F7B-D946-E94F-6621DA5DE0F6');
INSERT INTO `role_menu_button` VALUES (17, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-38FC-B844-A8A0-117F6CDE3852', '39F2B518-393E-FA28-EBBC-7B16240C5E52');
INSERT INTO `role_menu_button` VALUES (18, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-38FC-B844-A8A0-117F6CDE3852', '39F2B518-3974-4D35-CA88-563DD7024301');
INSERT INTO `role_menu_button` VALUES (19, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-7D73-D6C6-4485-82405D7C298E', '39F2B518-7DC5-7BA6-273A-97FB78FFFE55');
INSERT INTO `role_menu_button` VALUES (20, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-7D73-D6C6-4485-82405D7C298E', '39F2B518-7E08-3AD2-EAA7-94F654276EF6');
INSERT INTO `role_menu_button` VALUES (21, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2B518-7D73-D6C6-4485-82405D7C298E', '39F2B518-7E56-9233-7BDB-A16DB7CC56BE');
INSERT INTO `role_menu_button` VALUES (22, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F2D97A-B39E-74B8-84F8-F1D7D8BF7F4E', '39F2D97A-B3F9-B459-757B-F868DD9666ED');
INSERT INTO `role_menu_button` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-8aa9-9f2a-ffaa-0206c0648769', '39f3b110-8ab4-dca0-058a-ee394a9b86b0');
INSERT INTO `role_menu_button` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-8aa9-9f2a-ffaa-0206c0648769', '39f3b110-8ac3-4eef-dea7-3625149c8ad6');
INSERT INTO `role_menu_button` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-8aa9-9f2a-ffaa-0206c0648769', '39f3b110-8acc-95e8-7597-20030ac88b4c');
INSERT INTO `role_menu_button` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-95aa-89d8-c6b9-f4c19dc5cd13', '39f3b110-95b8-2379-ce8e-61eeda731cac');
INSERT INTO `role_menu_button` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-95aa-89d8-c6b9-f4c19dc5cd13', '39f3b110-95c4-7f14-ded1-48a70641986a');
INSERT INTO `role_menu_button` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-95aa-89d8-c6b9-f4c19dc5cd13', '39f3b110-95d0-d0c7-ed33-b18458f2c44e');
INSERT INTO `role_menu_button` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-95aa-89d8-c6b9-f4c19dc5cd13', '39f3b110-95db-91aa-9799-9a860fa2e9f1');
INSERT INTO `role_menu_button` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-a330-bfdd-8c53-646cbc0d565b', '39f3b110-a343-2d88-8d2d-0446bb74fbab');
INSERT INTO `role_menu_button` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-a330-bfdd-8c53-646cbc0d565b', '39f3b110-a34b-fde6-5685-e436dc985743');
INSERT INTO `role_menu_button` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-a330-bfdd-8c53-646cbc0d565b', '39f3b110-a354-028b-91f3-36b9e0f6fcca');
INSERT INTO `role_menu_button` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-ad57-b8c0-6827-cfbcbf113e22', '39f3b110-ad6a-33d3-c3b8-10d5a004a872');
INSERT INTO `role_menu_button` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-ad57-b8c0-6827-cfbcbf113e22', '39f3b110-ad73-dc09-0666-ff3065dbaaa7');
INSERT INTO `role_menu_button` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b110-ad57-b8c0-6827-cfbcbf113e22', '39f3b110-ad7c-e714-5360-5f3be7125dca');
INSERT INTO `role_menu_button` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-db3f-18a8-007a-8f804d3fb9f5', '39f3b10d-db4e-608a-b409-fe264b74ab59');
INSERT INTO `role_menu_button` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-db3f-18a8-007a-8f804d3fb9f5', '39f3b10d-db5b-8619-10b6-5bc37c18ca48');
INSERT INTO `role_menu_button` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e5f9-6cf0-4f0d-64191cc61d39');
INSERT INTO `role_menu_button` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e606-c122-032b-d3a4b8c4c87d');
INSERT INTO `role_menu_button` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e613-a667-96f7-389dc33d3574');
INSERT INTO `role_menu_button` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e61e-1bb4-0f90-5d375dd82bac');
INSERT INTO `role_menu_button` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e627-0283-902d-e59b23ca93b3');
INSERT INTO `role_menu_button` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e632-23d6-c4da-20af8a307247');
INSERT INTO `role_menu_button` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-e5eb-73fd-1899-6af4bc7bd6df', '39f3b10d-e638-a331-69ce-89ba958dc81c');
INSERT INTO `role_menu_button` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996', '39f3b10d-8e69-c43a-9eac-fd1224b57e5a');
INSERT INTO `role_menu_button` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996', '39f3b10d-8e75-ac8e-8d17-3a7014413a7b');
INSERT INTO `role_menu_button` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996', '39f3b10d-8e82-71fb-3d5d-231249715350');
INSERT INTO `role_menu_button` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996', '39f3b10d-8e8c-f049-f47f-be2cf28acd1a');
INSERT INTO `role_menu_button` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-8e5e-cc3f-386b-a1c05bb57996', '39f3b10d-8e9b-183a-936f-ba88d61f2e72');
INSERT INTO `role_menu_button` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-97ad-10f1-9dc7-fed515831de1', '39f3b10d-97be-1d2e-cebf-a32f4eb6a1a5');
INSERT INTO `role_menu_button` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-97ad-10f1-9dc7-fed515831de1', '39f3b10d-97cb-79c2-8d29-ad478445d72b');
INSERT INTO `role_menu_button` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-97ad-10f1-9dc7-fed515831de1', '39f3b10d-97d3-7bbb-6674-f5c119d5dd56');
INSERT INTO `role_menu_button` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-97ad-10f1-9dc7-fed515831de1', '39f3b10d-97de-72fd-c593-36f657762d75');
INSERT INTO `role_menu_button` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-b1ea-43d2-690b-7c1e8d9bfda5', '39f3b10b-b220-e8d7-413a-76757474c9b1');
INSERT INTO `role_menu_button` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-b1ea-43d2-690b-7c1e8d9bfda5', '39f3b10b-b233-7126-c5b3-86c9787a6784');
INSERT INTO `role_menu_button` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-b1ea-43d2-690b-7c1e8d9bfda5', '39f3b10b-b23e-2399-c022-b834003893cf');
INSERT INTO `role_menu_button` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-bc70-a639-b39a-8d76645daa96', '39f3b10b-bc85-6e18-14c1-90095e77a324');
INSERT INTO `role_menu_button` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-bc70-a639-b39a-8d76645daa96', '39f3b10b-bc8f-337b-582f-1a7e07ce7066');
INSERT INTO `role_menu_button` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-bc70-a639-b39a-8d76645daa96', '39f3b10b-bc99-8a91-216b-ecbf68a29b68');
INSERT INTO `role_menu_button` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10b-bc70-a639-b39a-8d76645daa96', '39f3b10b-bca5-15c3-aa6c-477ed81f659a');
INSERT INTO `role_menu_button` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-10c1-e93c-b543-98a735abdc39', '39f3b10d-10cd-24f4-0404-544e7d9270d6');
INSERT INTO `role_menu_button` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-10c1-e93c-b543-98a735abdc39', '39f3b10d-10d6-fe63-3495-b574836ddc95');
INSERT INTO `role_menu_button` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-2024-15e5-0329-87de10e42dac', '39f3b10d-2030-3150-fdab-be1c5830983e');
INSERT INTO `role_menu_button` VALUES (64, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-2024-15e5-0329-87de10e42dac', '39f3b10d-203b-5b94-776e-e8e4584a1997');
INSERT INTO `role_menu_button` VALUES (65, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-2024-15e5-0329-87de10e42dac', '39f3b10d-2045-f85f-588a-64c5b9c56fe3');
INSERT INTO `role_menu_button` VALUES (66, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-364c-8904-162f-f00fe58063b5', '39f3b10d-365f-0aa1-be95-90409254a9ba');
INSERT INTO `role_menu_button` VALUES (67, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-364c-8904-162f-f00fe58063b5', '39f3b10d-366b-2652-8cb2-233f27ebe574');
INSERT INTO `role_menu_button` VALUES (68, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3b10d-364c-8904-162f-f00fe58063b5', '39f3b10d-3676-e6c4-9645-869f2f76e7aa');

-- ----------------------------
-- Table structure for role_platform_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_platform_permission`;
CREATE TABLE `role_platform_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(3) NOT NULL DEFAULT 0,
  `PermissionCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
