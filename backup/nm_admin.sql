/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : nm_admin

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 19/04/2020 20:51:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(0) NOT NULL DEFAULT 0,
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Status` smallint(0) NOT NULL DEFAULT 0,
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

-- ----------------------------
-- Table structure for account_config
-- ----------------------------
DROP TABLE IF EXISTS `account_config`;
CREATE TABLE `account_config`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Skin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FontSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_config
-- ----------------------------
INSERT INTO `account_config` VALUES (1, '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', 'pretty', 'default', 'small');

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_role
-- ----------------------------
INSERT INTO `account_role` VALUES (1, '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38');

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
INSERT INTO `button` VALUES ('39f3c07f-f7f9-0c7b-7b15-819975d7de10', 'admin_cache', '清除', 'delete', 'admin_cache_clear', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52cf-ef81-a69f-62c12c7efcbc', 'admin_menu', '添加', 'add', 'admin_menu_add', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52da-a0b7-d62e-04ca3d63c084', 'admin_menu', '编辑', 'edit', 'admin_menu_edit', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52e3-63ae-4169-115e459b85c1', 'admin_menu', '删除', 'delete', 'admin_menu_del', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-52ed-6e3a-dbee-4840776855a3', 'admin_menu', '排序', 'sort', 'admin_menu_sort', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6323-540a-50e6-cacd0011d073', 'admin_role', '添加', 'add', 'admin_role_add', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-632c-e947-8989-5d8a92db6532', 'admin_role', '编辑', 'edit', 'admin_role_edit', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6333-0aa3-a47b-36e781f8e26e', 'admin_role', '删除', 'delete', 'admin_role_del', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-633f-e381-19e3-b58c1441bdb0', 'admin_role', '绑定菜单', 'bind', 'admin_role_bind_menu', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-6358-1794-d5f2-be1c9c7ba726', 'admin_role', '平台权限', 'android', 'admin_role_bind_permission', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70d7-0758-e8b4-cb06fc5a283a', 'admin_account', '添加', 'add', 'admin_account_add', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70dd-2729-46eb-4c51500dd28f', 'admin_account', '编辑', 'edit', 'admin_account_edit', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70e6-ffe2-83ef-3a8224fcafd2', 'admin_account', '删除', 'delete', 'admin_account_del', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-70ec-c8dd-ac1e-0f5d0070f706', 'admin_account', '重置密码', 'refresh', 'admin_account_reset_password', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-837d-6244-f0a9-4876babb3223', 'admin_auditinfo', '详情', 'detail', 'admin_auditinfo_details', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f3c080-8385-47b4-d7d1-4cdeba0516b0', 'admin_auditinfo', '导出', 'export', 'admin_auditinfo_export', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f49fc8-7386-54ac-2cd3-afe97d91c27c', 'admin_module', '同步', 'refresh', 'admin_module_sync', '2020-04-18 22:05:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-2e01-7bcc-e59e-8112d7b38126', 'common_area', '添加', 'add', 'common_area_add', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-2e0e-c81c-e1c2-7c4986020cdc', 'common_area', '编辑', 'edit', 'common_area_edit', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-2e17-1dd1-1b7d-35e156da137a', 'common_area', '删除', 'delete', 'common_area_del', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-393b-f178-69b1-e79fed820438', 'common_attachment', '删除', 'delete', 'common_attachment_del', '2020-04-19 20:46:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-394d-1793-68fc-2ab853ee91e4', 'common_attachment', '导出', 'export', 'common_attachment_export', '2020-04-19 20:46:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-4215-8ece-df7c-30527db015ae', 'common_mediatype', '添加', 'add', 'common_mediatype_add', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-4223-e3f0-10f4-530afdef75b5', 'common_mediatype', '编辑', 'edit', 'common_mediatype_edit', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-4229-d1c8-bc46-4454e3f2a0c9', 'common_mediatype', '删除', 'delete', 'common_mediatype_del', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-69ee-81e1-61d5-502ab662de79', 'common_dictgroup', '添加', 'add', 'common_dictgroup_add', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-69f3-60e4-a275-f4184dbd0a6c', 'common_dictgroup', '编辑', 'edit', 'common_dictgroup_edit', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-6a08-0193-df74-0cfeded48ae1', 'common_dictgroup', '删除', 'delete', 'common_dictgroup_del', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-73ec-b669-33ae-8e6e2658a3f9', 'common_dict', '添加', 'add', 'common_dict_add', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-7403-d7d4-9686-25d92ad0b9f5', 'common_dict', '编辑', 'edit', 'common_dict_edit', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-740c-4ca9-cba3-6eed82113aee', 'common_dict', '删除', 'delete', 'common_dict_del', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-7415-a600-a499-947a502282f8', 'common_dict', '管理数据项', 'edit', 'common_dict_item', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-c278-c4d3-bfd9-4f243232c948', 'quartz_group', '添加', 'add', 'quartz_group_add', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-c286-460b-f497-361b0c80e264', 'quartz_group', '删除', 'delete', 'quartz_group_del', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cb90-598c-9674-7fccd31dec02', 'quartz_job', '添加', 'add', 'quartz_job_add', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cb97-0741-b496-a21ede07d589', 'quartz_job', '编辑', 'edit', 'quartz_job_edit', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cba3-2ef8-5c05-56b39dbe873b', 'quartz_job', '暂停', 'pause', 'quartz_job_pause', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cbab-26d2-2785-423f47e4909e', 'quartz_job', '启动', 'run', 'quartz_job_resume', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cbc0-198f-8c23-f108ec113178', 'quartz_job', '停止', 'stop', 'quartz_job_stop', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cbc3-4f97-533b-3faeb776bf4b', 'quartz_job', '日志', 'log', 'quartz_job_log', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-cbd7-6e2d-dafb-25e85463d235', 'quartz_job', '删除', 'delete', 'quartz_job_del', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-ee18-1778-2761-8009b7368c33', 'codegenerator_module', '添加', 'add', 'codegenerator_module_add', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-ee1e-21da-8b41-5c03640c3329', 'codegenerator_module', '编辑', 'edit', 'codegenerator_module_edit', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-ee3b-d8b6-84fb-cf5b2e954f0a', 'codegenerator_module', '删除', 'delete', 'codegenerator_module_del', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-ee4e-7d6d-81c7-2f65e2b548f4', 'codegenerator_module', '生成代码', 'download', 'codegenerator_module_build_code', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-ee5c-5b94-7af0-96068f1ec587', 'codegenerator_module', '实体管理', 'database', 'codegenerator_module_class_manage', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-f954-11f7-9bab-da3870dbcf33', 'codegenerator_enum', '添加', 'add', 'codegenerator_enum_add', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-f95e-953f-2d3e-d9e75b7daece', 'codegenerator_enum', '编辑', 'edit', 'codegenerator_enum_edit', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-f96a-f307-97f5-d9ea10769722', 'codegenerator_enum', '删除', 'delete', 'codegenerator_enum_del', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a6-f96d-492a-9091-eff39772d9e6', 'codegenerator_enum', '配置项', 'tag', 'codegenerator_enum_item', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-2b36-eda3-f012-597ce98c2100', 'personnelfiles_department', '添加', 'add', 'personnelfiles_department_add', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-2b41-7f26-5451-1ddc2cec037d', 'personnelfiles_department', '编辑', 'edit', 'personnelfiles_department_edit', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-2b4f-c2fd-cf30-6a1bbd33496c', 'personnelfiles_department', '删除', 'delete', 'personnelfiles_department_del', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-396e-a793-12d4-59a0b21be21c', 'personnelfiles_employee', '添加', 'add', 'personnelfiles_employee_add', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-397a-9bc6-d01e-aa5905c00253', 'personnelfiles_employee', '编辑', 'edit', 'personnelfiles_employee_edit', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-397e-15cd-52f2-926482d440b5', 'personnelfiles_employee', '删除', 'delete', 'personnelfiles_employee_del', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-3981-37c4-4109-edc1ba44d3ec', 'personnelfiles_employee', '离职', 'edit', 'personnelfiles_employee_leave', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-39a0-4d1a-f8c0-5a5a10d02073', 'personnelfiles_employee', '预览', 'preview', 'personnelfiles_employee_preview', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-4392-8c64-3b85-d2180bbf78dd', 'personnelfiles_position', '添加', 'add', 'personnelfiles_position_add', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-4397-24d4-5483-2500ebdee052', 'personnelfiles_position', '编辑', 'edit', 'personnelfiles_position_edit', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-43a7-5326-12ba-75eb8b488cab', 'personnelfiles_position', '删除', 'delete', 'personnelfiles_position_del', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-4c90-2c58-cbe2-e2bded7945df', 'personnelfiles_post', '添加', 'add', 'personnelfiles_post_add', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-4c9e-8d48-708b-08b45227e77c', 'personnelfiles_post', '编辑', 'edit', 'personnelfiles_post_edit', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4a4a7-4ca7-c051-c109-d00bfb33dd81', 'personnelfiles_post', '删除', 'delete', 'personnelfiles_post_del', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for button_permission
-- ----------------------------
DROP TABLE IF EXISTS `button_permission`;
CREATE TABLE `button_permission`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `ButtonCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button_permission
-- ----------------------------
INSERT INTO `button_permission` VALUES (1, 'admin_menu_add', 'admin_menu_add_post');
INSERT INTO `button_permission` VALUES (2, 'admin_menu_edit', 'admin_menu_edit_get');
INSERT INTO `button_permission` VALUES (3, 'admin_menu_edit', 'admin_menu_update_post');
INSERT INTO `button_permission` VALUES (4, 'admin_menu_del', 'admin_menu_delete_delete');
INSERT INTO `button_permission` VALUES (5, 'admin_menu_sort', 'admin_menu_sort_get');
INSERT INTO `button_permission` VALUES (6, 'admin_menu_sort', 'admin_menu_sort_post');
INSERT INTO `button_permission` VALUES (7, 'admin_auditinfo_details', 'admin_auditinfo_details_get');
INSERT INTO `button_permission` VALUES (8, 'admin_auditinfo_export', 'admin_auditinfo_export_post');
INSERT INTO `button_permission` VALUES (9, 'admin_module_sync', 'admin_module_sync_post');
INSERT INTO `button_permission` VALUES (10, 'admin_account_add', 'admin_account_add_post');
INSERT INTO `button_permission` VALUES (11, 'admin_account_edit', 'admin_account_edit_get');
INSERT INTO `button_permission` VALUES (12, 'admin_account_edit', 'admin_account_update_post');
INSERT INTO `button_permission` VALUES (13, 'admin_account_del', 'admin_account_delete_delete');
INSERT INTO `button_permission` VALUES (14, 'admin_account_reset_password', 'admin_account_resetpassword_post');
INSERT INTO `button_permission` VALUES (15, 'admin_role_add', 'admin_role_add_post');
INSERT INTO `button_permission` VALUES (16, 'admin_role_edit', 'admin_role_edit_get');
INSERT INTO `button_permission` VALUES (17, 'admin_role_edit', 'admin_role_update_post');
INSERT INTO `button_permission` VALUES (18, 'admin_role_del', 'admin_role_delete_delete');
INSERT INTO `button_permission` VALUES (19, 'admin_role_bind_menu', 'admin_role_menulist_get');
INSERT INTO `button_permission` VALUES (20, 'admin_role_bind_menu', 'admin_role_bindmenu_post');
INSERT INTO `button_permission` VALUES (21, 'admin_role_bind_menu', 'admin_role_menubuttonlist_get');
INSERT INTO `button_permission` VALUES (22, 'admin_role_bind_menu', 'admin_role_bindmenubutton_post');
INSERT INTO `button_permission` VALUES (23, 'admin_role_bind_permission', 'admin_permission_tree_get');
INSERT INTO `button_permission` VALUES (24, 'admin_role_bind_permission', 'admin_role_platformpermissionlist_get');
INSERT INTO `button_permission` VALUES (25, 'admin_role_bind_permission', 'admin_role_platformpermissionbind_post');
INSERT INTO `button_permission` VALUES (26, 'admin_cache_clear', 'admin_cache_clear_delete');
INSERT INTO `button_permission` VALUES (27, 'common_area_add', 'common_area_add_post');
INSERT INTO `button_permission` VALUES (28, 'common_area_edit', 'common_area_edit_get');
INSERT INTO `button_permission` VALUES (29, 'common_area_edit', 'common_area_update_post');
INSERT INTO `button_permission` VALUES (30, 'common_area_del', 'common_area_delete_delete');
INSERT INTO `button_permission` VALUES (31, 'common_attachment_del', 'common_attachment_delete_delete');
INSERT INTO `button_permission` VALUES (32, 'common_attachment_export', 'common_attachment_export_get');
INSERT INTO `button_permission` VALUES (33, 'common_mediatype_add', 'common_mediatype_add_post');
INSERT INTO `button_permission` VALUES (34, 'common_mediatype_edit', 'common_mediatype_edit_get');
INSERT INTO `button_permission` VALUES (35, 'common_mediatype_edit', 'common_mediatype_update_post');
INSERT INTO `button_permission` VALUES (36, 'common_mediatype_del', 'common_mediatype_delete_delete');
INSERT INTO `button_permission` VALUES (37, 'common_dictgroup_add', 'common_dictgroup_add_post');
INSERT INTO `button_permission` VALUES (38, 'common_dictgroup_edit', 'common_dictgroup_edit_get');
INSERT INTO `button_permission` VALUES (39, 'common_dictgroup_edit', 'common_dictgroup_update_post');
INSERT INTO `button_permission` VALUES (40, 'common_dictgroup_del', 'common_dictgroup_delete_delete');
INSERT INTO `button_permission` VALUES (41, 'common_dict_add', 'common_dict_add_post');
INSERT INTO `button_permission` VALUES (42, 'common_dict_edit', 'common_dict_edit_get');
INSERT INTO `button_permission` VALUES (43, 'common_dict_edit', 'common_dict_update_post');
INSERT INTO `button_permission` VALUES (44, 'common_dict_del', 'common_dict_delete_delete');
INSERT INTO `button_permission` VALUES (45, 'common_dict_item', 'common_dictitem_query_get');
INSERT INTO `button_permission` VALUES (46, 'common_dict_item', 'common_dictitem_add_post');
INSERT INTO `button_permission` VALUES (47, 'common_dict_item', 'common_dictitem_edit_get');
INSERT INTO `button_permission` VALUES (48, 'common_dict_item', 'common_dictitem_update_post');
INSERT INTO `button_permission` VALUES (49, 'common_dict_item', 'common_dictitem_delete_delete');
INSERT INTO `button_permission` VALUES (50, 'quartz_group_add', 'quartz_group_add_post');
INSERT INTO `button_permission` VALUES (51, 'quartz_group_del', 'quartz_group_delete_delete');
INSERT INTO `button_permission` VALUES (52, 'quartz_job_add', 'quartz_job_add_post');
INSERT INTO `button_permission` VALUES (53, 'quartz_job_add', 'quartz_job_addhttpjob_post');
INSERT INTO `button_permission` VALUES (54, 'quartz_job_edit', 'quartz_job_edit_get');
INSERT INTO `button_permission` VALUES (55, 'quartz_job_edit', 'quartz_job_update_post');
INSERT INTO `button_permission` VALUES (56, 'quartz_job_edit', 'quartz_job_edithttpjob_get');
INSERT INTO `button_permission` VALUES (57, 'quartz_job_edit', 'quartz_job_updatehttpjob_post');
INSERT INTO `button_permission` VALUES (58, 'quartz_job_pause', 'quartz_job_pause_post');
INSERT INTO `button_permission` VALUES (59, 'quartz_job_resume', 'quartz_job_resume_post');
INSERT INTO `button_permission` VALUES (60, 'quartz_job_stop', 'quartz_job_stop_post');
INSERT INTO `button_permission` VALUES (61, 'quartz_job_log', 'quartz_job_log_get');
INSERT INTO `button_permission` VALUES (62, 'quartz_job_del', 'quartz_job_delete_delete');
INSERT INTO `button_permission` VALUES (63, 'codegenerator_module_add', 'codegenerator_module_add_post');
INSERT INTO `button_permission` VALUES (64, 'codegenerator_module_edit', 'codegenerator_module_edit_get');
INSERT INTO `button_permission` VALUES (65, 'codegenerator_module_edit', 'codegenerator_module_update_post');
INSERT INTO `button_permission` VALUES (66, 'codegenerator_module_del', 'codegenerator_module_delete_delete');
INSERT INTO `button_permission` VALUES (67, 'codegenerator_module_build_code', 'codegenerator_module_buildcode_post');
INSERT INTO `button_permission` VALUES (68, 'codegenerator_enum_add', 'codegenerator_enum_add_post');
INSERT INTO `button_permission` VALUES (69, 'codegenerator_enum_edit', 'codegenerator_enum_edit_get');
INSERT INTO `button_permission` VALUES (70, 'codegenerator_enum_edit', 'codegenerator_enum_update_post');
INSERT INTO `button_permission` VALUES (71, 'codegenerator_enum_del', 'codegenerator_enum_delete_delete');
INSERT INTO `button_permission` VALUES (72, 'personnelfiles_department_add', 'personnelfiles_department_add_post');
INSERT INTO `button_permission` VALUES (73, 'personnelfiles_department_edit', 'personnelfiles_department_edit_get');
INSERT INTO `button_permission` VALUES (74, 'personnelfiles_department_edit', 'personnelfiles_department_update_post');
INSERT INTO `button_permission` VALUES (75, 'personnelfiles_department_del', 'personnelfiles_department_delete_delete');
INSERT INTO `button_permission` VALUES (76, 'personnelfiles_employee_add', 'personnelfiles_employee_add_post');
INSERT INTO `button_permission` VALUES (77, 'personnelfiles_employee_edit', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (78, 'personnelfiles_employee_edit', 'personnelfiles_employee_update_post');
INSERT INTO `button_permission` VALUES (79, 'personnelfiles_employee_edit', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (80, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatecontact_post');
INSERT INTO `button_permission` VALUES (81, 'personnelfiles_employee_edit', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (82, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `button_permission` VALUES (83, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (84, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyadd_post');
INSERT INTO `button_permission` VALUES (85, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyedit_get');
INSERT INTO `button_permission` VALUES (86, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyupdate_post');
INSERT INTO `button_permission` VALUES (87, 'personnelfiles_employee_edit', 'personnelfiles_employee_familydelete_delete');
INSERT INTO `button_permission` VALUES (88, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (89, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationadd_post');
INSERT INTO `button_permission` VALUES (90, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationedit_get');
INSERT INTO `button_permission` VALUES (91, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationupdate_post');
INSERT INTO `button_permission` VALUES (92, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `button_permission` VALUES (93, 'personnelfiles_employee_edit', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (94, 'personnelfiles_employee_edit', 'personnelfiles_employee_workadd_post');
INSERT INTO `button_permission` VALUES (95, 'personnelfiles_employee_edit', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (96, 'personnelfiles_employee_edit', 'personnelfiles_employee_workupdate_post');
INSERT INTO `button_permission` VALUES (97, 'personnelfiles_employee_edit', 'personnelfiles_employee_workdelete_delete');
INSERT INTO `button_permission` VALUES (98, 'personnelfiles_employee_edit', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (99, 'personnelfiles_employee_edit', 'personnelfiles_employee_updateaccount_post');
INSERT INTO `button_permission` VALUES (100, 'personnelfiles_employee_del', 'personnelfiles_employee_delete_delete');
INSERT INTO `button_permission` VALUES (101, 'personnelfiles_employee_leave', 'personnelfiles_employee_leave_post');
INSERT INTO `button_permission` VALUES (102, 'personnelfiles_employee_leave', 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `button_permission` VALUES (103, 'personnelfiles_employee_preview', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (104, 'personnelfiles_employee_preview', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (105, 'personnelfiles_employee_preview', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (106, 'personnelfiles_employee_preview', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (107, 'personnelfiles_employee_preview', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (108, 'personnelfiles_employee_preview', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (109, 'personnelfiles_employee_preview', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (110, 'personnelfiles_employee_preview', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (111, 'personnelfiles_position_add', 'personnelfiles_position_add_post');
INSERT INTO `button_permission` VALUES (112, 'personnelfiles_position_edit', 'personnelfiles_position_edit_get');
INSERT INTO `button_permission` VALUES (113, 'personnelfiles_position_edit', 'personnelfiles_position_update_post');
INSERT INTO `button_permission` VALUES (114, 'personnelfiles_position_del', 'personnelfiles_position_delete_delete');
INSERT INTO `button_permission` VALUES (115, 'personnelfiles_post_add', 'personnelfiles_post_add_post');
INSERT INTO `button_permission` VALUES (116, 'personnelfiles_post_add', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (117, 'personnelfiles_post_add', 'personnelfiles_position_get_get');
INSERT INTO `button_permission` VALUES (118, 'personnelfiles_post_edit', 'personnelfiles_post_edit_get');
INSERT INTO `button_permission` VALUES (119, 'personnelfiles_post_edit', 'personnelfiles_post_update_post');
INSERT INTO `button_permission` VALUES (120, 'personnelfiles_post_del', 'personnelfiles_post_delete_delete');
INSERT INTO `button_permission` VALUES (121, 'personnelfiles_post_del', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (122, 'personnelfiles_post_del', 'personnelfiles_position_get_get');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `Type` smallint(0) NOT NULL DEFAULT 0,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 1, 'Admin', '{\"auditing\":true,\"defaultPassword\":\"123456\"}');
INSERT INTO `config` VALUES (2, 0, 'System', '{\"title\":\"NetModular通用权限管理系统\",\"logo\":null,\"copyright\":\"版权所有：尼古拉斯·老李 | 用代码改变世界 Powered by .Net Core 3.1.0 on Linux\"}');
INSERT INTO `config` VALUES (3, 0, 'Component', '{\"login\":{\"pageType\":\"neon\",\"verifyCode\":false},\"menu\":{\"uniqueOpened\":true},\"dialog\":{\"closeOnClickModal\":false,\"draggable\":false},\"list\":{\"serialNumberName\":null},\"tabnav\":{\"enabled\":true,\"showHome\":true,\"homeUrl\":null,\"showIcon\":true,\"maxOpenCount\":20},\"toolbar\":{\"fullscreen\":true,\"skin\":true,\"logout\":true,\"userInfo\":true},\"customCss\":null}');
INSERT INTO `config` VALUES (4, 0, 'Auth', '{\"validate\":true,\"button\":true,\"singleAccount\":false,\"jwt\":{\"key\":\"twAJ$j5##pVc5*y&\",\"issuer\":\"http://127.0.0.1:6220\",\"audience\":\"http://127.0.0.1:6220\",\"expires\":120,\"refreshTokenExpires\":7}}');
INSERT INTO `config` VALUES (5, 0, 'Quartz', '{\"Enabled\":false,\"Logger\":false,\"InstanceName\":\"QuartzServer\",\"TablePrefix\":\"QRTZ_\",\"SerializerType\":0,\"Provider\":1,\"ConnectionString\":\"server=localhost;port=3306;database=nm_quartz;user id=root;password=root;allowuservariables=True;characterset=utf8;sslmode=None;allowpublickeyretrieval=True;minpoolsize=0;maxpoolsize=10\",\"DataSource\":\"default\"}');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(0) NOT NULL DEFAULT 0,
  `ParentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteParams` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RouteQuery` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IconColor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Level` int(0) NOT NULL DEFAULT 0,
  `Show` bit(1) NOT NULL DEFAULT b'0',
  `Sort` int(0) NOT NULL DEFAULT 0,
  `Target` smallint(0) NOT NULL DEFAULT 0,
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
INSERT INTO `menu` VALUES ('39f3c07d-0ddc-5bfc-f09e-208a33065684', '', 0, '00000000-0000-0000-0000-000000000000', '系统配置', '', '', '', '', 'system', '', 0, b'1', 5, -1, '', '', b'1', '', '2020-03-06 13:27:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07d-6c6a-526d-2141-8b59afb1a68f', '', 0, '00000000-0000-0000-0000-000000000000', '权限管理', '', '', '', '', 'permission', '', 0, b'1', 4, -1, '', '', b'1', '', '2020-03-06 13:28:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07d-e4c8-3e5b-a38a-b23d07e31fac', '', 2, '00000000-0000-0000-0000-000000000000', '官方文档', '', '', '', 'https://docs.17mkh.com', 'archives', '', 0, b'1', 6, 0, '', '', b'1', '', '2020-03-06 13:28:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07e-4307-e67b-eb2d-055485b30dba', '', 2, '00000000-0000-0000-0000-000000000000', 'GitHub', '', '', '', 'https://github.com/iamoldli/NetModular', 'github', '', 0, b'1', 7, 0, '', '', b'1', '', '2020-03-06 13:28:56', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07f-e6f1-4dc6-4c59-a8d3880e9cd6', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '配置管理', 'admin_config', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:43:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c07f-f7de-8751-b142-bbe846fb80b1', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '缓存管理', 'admin_cache', '', '', '', 'redis', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-0184-43ad-6bff-0bd8db042dde', 'Admin', 1, '39f3c07d-0ddc-5bfc-f09e-208a33065684', '图标管理', 'admin_icon', '', '', '', 'icon', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:30:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-06 13:30:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-296a-2511-6f7d-dace45a22f7a', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '模块中心', 'admin_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-06 13:31:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-52b8-edc7-66bf-598cd6e0af29', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '菜单管理', 'admin_menu', '', '', '', 'menu', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-03-06 13:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-6316-6ea3-17aa-025926a5ed46', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '角色管理', 'admin_role', '', '', '', 'role', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-03-06 13:31:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-70cc-12eb-a145-a11d88d3749b', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '账户管理', 'admin_account', '', '', '', 'user', '', 1, b'1', 3, 0, '', '', b'1', '', '2020-03-06 13:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f3c080-8367-67d2-6439-06ef2b2038c4', 'Admin', 1, '39f3c07d-6c6a-526d-2141-8b59afb1a68f', '审计日志', 'admin_auditinfo', '', '', '', 'log', '', 1, b'1', 4, 0, '', '', b'1', '', '2020-03-06 13:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-18 22:05:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a4-922b-9030-d476-23e01cdaad2e', '', 0, '00000000-0000-0000-0000-000000000000', '基础模块', '', '', '', '', 'entity', '', 0, b'1', 3, -1, '', '', b'1', '', '2020-04-19 20:44:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a4-cad7-458e-6e8c-629c6fb86d6f', '', 0, '00000000-0000-0000-0000-000000000000', '任务调度', '', '', '', '', 'timer', '', 0, b'1', 2, -1, '', '', b'1', '', '2020-04-19 20:44:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a5-16a9-4d25-a085-8ff7f1076221', '', 0, '00000000-0000-0000-0000-000000000000', '模块创建', '', '', '', '', 'app', '', 0, b'1', 1, -1, '', '', b'1', '', '2020-04-19 20:44:46', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '', 0, '00000000-0000-0000-0000-000000000000', '人事档案', '', '', '', '', 'user', '', 0, b'1', 0, -1, '', '', b'1', '', '2020-04-19 20:45:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-0b2f-f483-9e59-0803127befbd', '', 0, '39f4a4a4-922b-9030-d476-23e01cdaad2e', '数据字典', '', '', '', '', 'tag', '', 1, b'1', 0, -1, '', '', b'1', '', '2020-04-19 20:45:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-2df4-25dd-af67-702a507e2004', 'Common', 1, '39f4a4a4-922b-9030-d476-23e01cdaad2e', '区划代码', 'common_area', '', '', '', 'area', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:45:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-392a-3ef1-f561-828b04f55d53', 'Common', 1, '39f4a4a4-922b-9030-d476-23e01cdaad2e', '附件管理', 'common_attachment', '', '', '', 'attachment', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-41f7-4200-eadf-9d0708979a98', 'Common', 1, '39f4a4a4-922b-9030-d476-23e01cdaad2e', '多媒体', 'common_mediatype', '', '', '', 'media', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-69d9-c4a9-1701-40dc9909844d', 'Common', 1, '39f4a4a6-0b2f-f483-9e59-0803127befbd', '字典分组', 'common_dictgroup', '', '', '', 'entity', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-73dc-58e0-17d8-55f56f57d431', 'Common', 1, '39f4a4a6-0b2f-f483-9e59-0803127befbd', '字典列表', 'common_dict', '', '', '', 'tag', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-c265-7115-78a9-014d9109656a', 'Quartz', 1, '39f4a4a4-cad7-458e-6e8c-629c6fb86d6f', '任务分组', 'quartz_group', '', '', '', 'group', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:36', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-cb76-1cc1-5451-9eb16722dad5', 'Quartz', 1, '39f4a4a4-cad7-458e-6e8c-629c6fb86d6f', '任务列表', 'quartz_job', '', '', '', 'list', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', 'CodeGenerator', 1, '39f4a4a5-16a9-4d25-a085-8ff7f1076221', '模块列表', 'codegenerator_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a6-f943-2765-2d9b-8686eb94b176', 'CodeGenerator', 1, '39f4a4a5-16a9-4d25-a085-8ff7f1076221', '枚举列表', 'codegenerator_enum', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:46:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a7-2b29-df7d-e93f-dd2a5a312284', 'PersonnelFiles', 1, '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '组织机构', 'personnelfiles_department', '', '', '', 'department', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a7-395c-6c6a-757e-49f5f73365c4', 'PersonnelFiles', 1, '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '员工档案', 'personnelfiles_employee', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:06', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a7-437c-e483-1114-3e1ee9ffd604', 'PersonnelFiles', 1, '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '职位管理', 'personnelfiles_position', '', '', '', 'position', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a7-4c80-0520-b504-3b59d69a968a', 'PersonnelFiles', 1, '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '岗位管理', 'personnelfiles_post', '', '', '', 'post', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4a4a7-5a2b-d0a8-a379-4d1c2c8a13d2', 'PersonnelFiles', 1, '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35', '组件演示', 'personnelfiles_employee_demo', '', '', '', 'develop', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-19 20:47:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-19 20:47:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `menu_permission`;
CREATE TABLE `menu_permission`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `MenuCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_permission
-- ----------------------------
INSERT INTO `menu_permission` VALUES (1, 'admin_menu', 'admin_menu_query_get');
INSERT INTO `menu_permission` VALUES (2, 'admin_menu', 'admin_menu_tree_get');
INSERT INTO `menu_permission` VALUES (3, 'admin_auditinfo', 'admin_auditinfo_query_get');
INSERT INTO `menu_permission` VALUES (4, 'admin_module', 'admin_module_query_get');
INSERT INTO `menu_permission` VALUES (5, 'admin_module', 'admin_permission_query_get');
INSERT INTO `menu_permission` VALUES (6, 'admin_module', 'admin_permission_querybycodes_get');
INSERT INTO `menu_permission` VALUES (7, 'admin_account', 'admin_account_query_get');
INSERT INTO `menu_permission` VALUES (8, 'admin_role', 'admin_role_query_get');
INSERT INTO `menu_permission` VALUES (14, 'admin_cache', 'admin_cache_query_get');
INSERT INTO `menu_permission` VALUES (15, 'admin_config', 'admin_config_edit_get');
INSERT INTO `menu_permission` VALUES (16, 'admin_config', 'admin_config_update_post');
INSERT INTO `menu_permission` VALUES (17, 'admin_config', 'admin_config_uploadlogo_post');
INSERT INTO `menu_permission` VALUES (18, 'admin_config', 'admin_config_logourl_get');
INSERT INTO `menu_permission` VALUES (19, 'admin_config', 'admin_config_descriptors_get');
INSERT INTO `menu_permission` VALUES (20, 'common_area', 'common_area_query_get');
INSERT INTO `menu_permission` VALUES (21, 'common_area', 'common_area_querychildren_get');
INSERT INTO `menu_permission` VALUES (22, 'common_attachment', 'common_attachment_query_get');
INSERT INTO `menu_permission` VALUES (23, 'common_mediatype', 'common_mediatype_query_get');
INSERT INTO `menu_permission` VALUES (24, 'common_dictgroup', 'common_dictgroup_query_get');
INSERT INTO `menu_permission` VALUES (25, 'common_dict', 'common_dict_query_get');
INSERT INTO `menu_permission` VALUES (26, 'common_dict', 'common_dict_querychildren_get');
INSERT INTO `menu_permission` VALUES (27, 'quartz_group', 'quartz_group_query_get');
INSERT INTO `menu_permission` VALUES (28, 'quartz_job', 'quartz_job_query_get');
INSERT INTO `menu_permission` VALUES (29, 'quartz_job', 'quartz_job_jobhttpdetails_get');
INSERT INTO `menu_permission` VALUES (30, 'codegenerator_module', 'codegenerator_module_query_get');
INSERT INTO `menu_permission` VALUES (31, 'codegenerator_enum', 'codegenerator_enum_query_get');
INSERT INTO `menu_permission` VALUES (32, 'personnelfiles_department', 'personnelfiles_department_query_get');
INSERT INTO `menu_permission` VALUES (33, 'personnelfiles_department', 'personnelfiles_department_tree_get');
INSERT INTO `menu_permission` VALUES (34, 'personnelfiles_employee', 'personnelfiles_employee_query_get');
INSERT INTO `menu_permission` VALUES (35, 'personnelfiles_position', 'personnelfiles_position_query_get');
INSERT INTO `menu_permission` VALUES (36, 'personnelfiles_post', 'personnelfiles_post_query_get');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Number` int(0) NOT NULL DEFAULT 0,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApiRequestCount` bigint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('39f49fc7-d109-b063-a2d0-bda06ea1de6d', 0, '权限管理', 'Admin', 'permission', '1.9.9', '权限管理模块用于身份认证以及授权等功能', 0);
INSERT INTO `module` VALUES ('39f4a4a3-9f81-ce72-0f31-3ef3153a8622', 1, '通用模块', 'Common', 'database', '1.6.8', 'NetModular Module 01(通用模块) - WebHost', 0);
INSERT INTO `module` VALUES ('39f4a4a3-9f9d-0c61-f757-3baa42f066d6', 2, '代码生成', 'CodeGenerator', 'develop', '1.7.5', 'NetModular Module CodeGenerator(代码生成) - WebHost', 0);
INSERT INTO `module` VALUES ('39f4a4a3-9fa9-b39c-cb77-4a756254dc03', 3, '任务调度', 'Quartz', 'timer', '1.6.3', 'NetModular Module Quartz(任务调度) - WebHost', 0);
INSERT INTO `module` VALUES ('39f4a4a3-9faf-32dc-7d77-db513a4b490a', 4, '人事档案', 'PersonnelFiles', 'personnel-files', '1.6.1', 'NetModular Module PersonnelFiles(人事档案) - WebHost', 0);

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
  `HttpMethod` smallint(0) NOT NULL DEFAULT 0,
  `Code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('39f4a4a3-9fc0-c5fb-1a4f-6a303ee1be7c', '账户管理_查询', 'Admin', 'Account', 'Query', 0, 'admin_account_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fc7-c3f5-9ab0-77f4ff8f8e04', '账户管理_添加', 'Admin', 'Account', 'Add', 2, 'admin_account_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fcd-2a37-6bd1-4ad75ed97cc1', '账户管理_编辑', 'Admin', 'Account', 'Edit', 0, 'admin_account_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fd1-2fd1-4e01-f1bfff4d3e32', '账户管理_更新', 'Admin', 'Account', 'Update', 2, 'admin_account_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fd3-c49e-5793-b9cdeff2ec9c', '账户管理_删除', 'Admin', 'Account', 'Delete', 3, 'admin_account_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-9fd4-13fa-cb4a-9cc166c893f7', '账户管理_绑定角色', 'Admin', 'Account', 'BindRole', 2, 'admin_account_bindrole_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fd6-eb8a-95d5-827ec16f6f68', '账户管理_重置密码', 'Admin', 'Account', 'ResetPassword', 2, 'admin_account_resetpassword_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fdf-c591-b05a-521893195492', '审计信息_查询', 'Admin', 'AuditInfo', 'Query', 0, 'admin_auditinfo_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fe1-0df0-5444-6f62d175dff7', '审计信息_详情', 'Admin', 'AuditInfo', 'Details', 0, 'admin_auditinfo_details_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fe2-b036-c33b-e2bfea219e5a', '审计信息_导出', 'Admin', 'AuditInfo', 'Export', 2, 'admin_auditinfo_export_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fe3-ba97-a511-3cd5a4a09f90', '按钮管理_查询', 'Admin', 'Button', 'Query', 0, 'admin_button_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fe5-6404-29c0-cf34543de3fd', '缓存管理_查询指定模块缓存键列表', 'Admin', 'Cache', 'Query', 0, 'admin_cache_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9fe9-8534-e6aa-6c5124b8af90', '缓存管理_清除指定前缀的缓存', 'Admin', 'Cache', 'Clear', 3, 'admin_cache_clear_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff0-87b8-391a-a77b454104fc', '配置管理_编辑', 'Admin', 'Config', 'Edit', 0, 'admin_config_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff2-aee7-cb13-35beea579b3b', '配置管理_保存', 'Admin', 'Config', 'Update', 2, 'admin_config_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff3-1898-e9ce-b777bb22a061', '配置管理_上传Logo', 'Admin', 'Config', 'UploadLogo', 2, 'admin_config_uploadlogo_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff4-490c-21ac-496299f9f404', '配置管理_Logo完整地址', 'Admin', 'Config', 'LogoUrl', 0, 'admin_config_logourl_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff5-ad0e-d679-58d74292bbd6', '配置管理_配置描述符列表', 'Admin', 'Config', 'Descriptors', 0, 'admin_config_descriptors_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9ff6-da7d-5a16-ddc7d5b88037', '菜单管理_菜单树', 'Admin', 'Menu', 'Tree', 0, 'admin_menu_tree_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9ffd-379c-ce4f-a47586625776', '菜单管理_查询菜单列表', 'Admin', 'Menu', 'Query', 0, 'admin_menu_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-9ffe-f1f1-3f7c-70dadb83a627', '菜单管理_添加', 'Admin', 'Menu', 'Add', 2, 'admin_menu_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-9fff-c320-5e2c-916c762160e4', '菜单管理_删除', 'Admin', 'Menu', 'Delete', 3, 'admin_menu_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a000-3e6a-953c-bf21bf58944b', '菜单管理_编辑', 'Admin', 'Menu', 'Edit', 0, 'admin_menu_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a000-df44-cb7f-79fc5f307467', '菜单管理_更新', 'Admin', 'Menu', 'Update', 2, 'admin_menu_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a001-db83-c0dc-1a096eff98af', '菜单管理_获取排序信息', 'Admin', 'Menu', 'Sort', 0, 'admin_menu_sort_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a002-6670-dccb-ebca44102bd2', '菜单管理_更新排序信息', 'Admin', 'Menu', 'Sort', 2, 'admin_menu_sort_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a003-d3d2-b34d-69ad54fd7a9e', '模块信息_查询', 'Admin', 'Module', 'Query', 0, 'admin_module_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a004-c23f-3041-2e3c315c8e47', '模块信息_同步', 'Admin', 'Module', 'Sync', 2, 'admin_module_sync_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a00c-04d6-bc00-dc72624cffa7', '权限接口_查询', 'Admin', 'Permission', 'Query', 0, 'admin_permission_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a00e-b119-6725-36a17875a372', '权限接口_权限树', 'Admin', 'Permission', 'Tree', 0, 'admin_permission_tree_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a00f-7d2e-aa60-e2993e09ca0d', '权限接口_根据编码查询', 'Admin', 'Permission', 'QueryByCodes', 0, 'admin_permission_querybycodes_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a010-a064-455d-8f1279dba165', '角色管理_查询', 'Admin', 'Role', 'Query', 0, 'admin_role_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a011-b3b2-ae4c-982efc33bfdc', '角色管理_添加', 'Admin', 'Role', 'Add', 2, 'admin_role_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a012-c1b9-d316-107166e5c76d', '角色管理_删除', 'Admin', 'Role', 'Delete', 3, 'admin_role_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a013-ef46-1f9a-f64f3fb75374', '角色管理_编辑', 'Admin', 'Role', 'Edit', 0, 'admin_role_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a018-0516-e0aa-38170a8ecc5f', '角色管理_修改', 'Admin', 'Role', 'Update', 2, 'admin_role_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a01a-555e-a978-e3cc7839a7a3', '角色管理_获取角色的关联菜单列表', 'Admin', 'Role', 'MenuList', 0, 'admin_role_menulist_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a01b-e600-7a2f-c4081da1b951', '角色管理_绑定菜单', 'Admin', 'Role', 'BindMenu', 2, 'admin_role_bindmenu_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a01d-c212-94e2-874caf22ed63', '角色管理_获取角色关联的菜单按钮列表', 'Admin', 'Role', 'MenuButtonList', 0, 'admin_role_menubuttonlist_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a01e-81a4-7c12-1d9981fb41da', '角色管理_绑定菜单按钮', 'Admin', 'Role', 'BindMenuButton', 2, 'admin_role_bindmenubutton_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a01f-cf2b-3712-4afca8eb0bb9', '角色管理_查询平台权限列表', 'Admin', 'Role', 'PlatformPermissionList', 0, 'admin_role_platformpermissionlist_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a020-715c-fafa-b808a6aa83c4', '角色管理_绑定平台权限列表', 'Admin', 'Role', 'PlatformPermissionBind', 2, 'admin_role_platformpermissionbind_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a025-c709-f647-580d6d1e0c71', '通用工具_枚举下拉列表接口', 'Admin', 'Tool', 'EnumSelect', 0, 'admin_tool_enumselect_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a026-13fe-ae85-60c4e601293a', '实体管理_查询', 'CodeGenerator', 'Class', 'Query', 0, 'codegenerator_class_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a028-d86b-0280-6a5a4870a97a', '实体管理_添加', 'CodeGenerator', 'Class', 'Add', 2, 'codegenerator_class_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a02a-2911-5ba3-8f0ec2333693', '实体管理_删除', 'CodeGenerator', 'Class', 'Delete', 3, 'codegenerator_class_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a02c-30a4-ec48-be8680f0b3a8', '实体管理_编辑', 'CodeGenerator', 'Class', 'Edit', 0, 'codegenerator_class_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a030-c4c7-6661-7145b8005500', '实体管理_修改', 'CodeGenerator', 'Class', 'Update', 2, 'codegenerator_class_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a031-593c-c684-7371345749cf', '实体管理_生成代码', 'CodeGenerator', 'Class', 'BuildCode', 0, 'codegenerator_class_buildcode_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a032-d5be-3181-b8e9db96443a', '枚举管理_查询', 'CodeGenerator', 'Enum', 'Query', 0, 'codegenerator_enum_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a033-cb19-048c-98d84ed4283d', '枚举管理_添加', 'CodeGenerator', 'Enum', 'Add', 2, 'codegenerator_enum_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a034-d9a2-9749-c3ee0452d3e9', '枚举管理_删除', 'CodeGenerator', 'Enum', 'Delete', 3, 'codegenerator_enum_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a035-ff90-bcda-e3c9a0aa4ed3', '枚举管理_编辑', 'CodeGenerator', 'Enum', 'Edit', 0, 'codegenerator_enum_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a036-1269-075f-fa5cff7123df', '枚举管理_修改', 'CodeGenerator', 'Enum', 'Update', 2, 'codegenerator_enum_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a037-e249-fe63-1818041b7b03', '枚举项管理_查询', 'CodeGenerator', 'EnumItem', 'Query', 0, 'codegenerator_enumitem_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a03f-74ed-8927-a29ad7f6cb4d', '枚举项管理_添加', 'CodeGenerator', 'EnumItem', 'Add', 2, 'codegenerator_enumitem_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a041-d3a6-27c3-39ba98f0118f', '枚举项管理_删除', 'CodeGenerator', 'EnumItem', 'Delete', 3, 'codegenerator_enumitem_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a042-1862-39b7-926a9b9aed1d', '枚举项管理_编辑', 'CodeGenerator', 'EnumItem', 'Edit', 0, 'codegenerator_enumitem_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a044-884a-e3d5-f25af2acb118', '枚举项管理_修改', 'CodeGenerator', 'EnumItem', 'Update', 2, 'codegenerator_enumitem_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a045-121a-118d-2bd3617c6b9a', '枚举项管理_获取排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 0, 'codegenerator_enumitem_sort_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a046-96fb-f207-dbf821aa2336', '枚举项管理_更新排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 2, 'codegenerator_enumitem_sort_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a04c-78bf-30c6-e3a08fd74dc9', '模型属性管理_查询', 'CodeGenerator', 'ModelProperty', 'Query', 0, 'codegenerator_modelproperty_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a04e-8493-6c04-d34a1d68d60e', '模型属性管理_添加', 'CodeGenerator', 'ModelProperty', 'Add', 2, 'codegenerator_modelproperty_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a04f-d571-0d10-37dced8ff7ee', '模型属性管理_删除', 'CodeGenerator', 'ModelProperty', 'Delete', 3, 'codegenerator_modelproperty_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a051-f081-6ddd-c66389033dc2', '模型属性管理_编辑', 'CodeGenerator', 'ModelProperty', 'Edit', 0, 'codegenerator_modelproperty_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a052-8c78-c064-445f1a870a0e', '模型属性管理_修改', 'CodeGenerator', 'ModelProperty', 'Update', 2, 'codegenerator_modelproperty_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a057-e1b3-73b0-2968a6f073c0', '模型属性管理_获取排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 0, 'codegenerator_modelproperty_sort_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a058-cb38-0420-cdcc765adad9', '模型属性管理_更新排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 2, 'codegenerator_modelproperty_sort_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a059-5c79-b78b-931841119799', '模型属性管理_修改可空状态', 'CodeGenerator', 'ModelProperty', 'UpdateNullable', 2, 'codegenerator_modelproperty_updatenullable_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a05a-5495-0c0b-f93c0f17058e', '模型属性管理_获取下拉列表', 'CodeGenerator', 'ModelProperty', 'Select', 0, 'codegenerator_modelproperty_select_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a05c-c90c-bf6f-6cbc6410d567', '模型属性管理_从实体中导入属性', 'CodeGenerator', 'ModelProperty', 'ImportFromEntity', 2, 'codegenerator_modelproperty_importfromentity_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a05e-f5f1-9829-053e16b6c80b', '模块管理_查询', 'CodeGenerator', 'Module', 'Query', 0, 'codegenerator_module_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a062-d178-d3c0-7f793152e079', '模块管理_添加', 'CodeGenerator', 'Module', 'Add', 2, 'codegenerator_module_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a063-fe56-0fd7-c44f68c74d29', '模块管理_删除', 'CodeGenerator', 'Module', 'Delete', 3, 'codegenerator_module_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a064-a805-ae57-40c4be0c4b64', '模块管理_编辑', 'CodeGenerator', 'Module', 'Edit', 0, 'codegenerator_module_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a066-4893-a8d7-94b1fba976c7', '模块管理_修改', 'CodeGenerator', 'Module', 'Update', 2, 'codegenerator_module_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a067-ac4b-10a0-279a7d6ecf3d', '模块管理_生成代码', 'CodeGenerator', 'Module', 'BuildCode', 2, 'codegenerator_module_buildcode_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a068-efbe-bcfa-f37998fd4386', '在线模块管理_查询', 'CodeGenerator', 'OnlineModule', 'Query', 0, 'codegenerator_onlinemodule_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a06a-1e32-c76f-cb81af46f2f0', '在线模块管理_添加', 'CodeGenerator', 'OnlineModule', 'Add', 2, 'codegenerator_onlinemodule_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a071-c811-52b1-ad00f6ed12cc', '在线模块管理_删除', 'CodeGenerator', 'OnlineModule', 'Delete', 3, 'codegenerator_onlinemodule_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a073-c8b1-f9ab-5fe745ea9a65', '在线模块管理_编辑', 'CodeGenerator', 'OnlineModule', 'Edit', 0, 'codegenerator_onlinemodule_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a074-92df-6088-20e819e122b5', '在线模块管理_修改', 'CodeGenerator', 'OnlineModule', 'Update', 2, 'codegenerator_onlinemodule_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a075-dcbb-4539-c863c54e61da', '实体属性管理_查询', 'CodeGenerator', 'Property', 'Query', 0, 'codegenerator_property_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a076-8347-9463-89fd2c18446a', '实体属性管理_添加', 'CodeGenerator', 'Property', 'Add', 2, 'codegenerator_property_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a077-4f3f-0c99-700d3c18e486', '实体属性管理_删除', 'CodeGenerator', 'Property', 'Delete', 3, 'codegenerator_property_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a079-61cb-00d6-4447ce3fffc3', '实体属性管理_编辑', 'CodeGenerator', 'Property', 'Edit', 0, 'codegenerator_property_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a07f-c951-c54f-5da3d7e1ee80', '实体属性管理_修改', 'CodeGenerator', 'Property', 'Update', 2, 'codegenerator_property_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a080-7902-4f2e-ccd4fbf8bbab', '实体属性管理_获取属性类型下拉列表', 'CodeGenerator', 'Property', 'PropertyTypeSelect', 0, 'codegenerator_property_propertytypeselect_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a081-2600-a6f3-26b832c3359b', '实体属性管理_获取排序信息', 'CodeGenerator', 'Property', 'Sort', 0, 'codegenerator_property_sort_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a082-37e4-3345-a353a2c0806c', '实体属性管理_更新排序信息', 'CodeGenerator', 'Property', 'Sort', 2, 'codegenerator_property_sort_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a083-2397-98a3-b1bafd937fa8', '实体属性管理_修改可空状态', 'CodeGenerator', 'Property', 'UpdateNullable', 2, 'codegenerator_property_updatenullable_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a084-7234-8f7d-2734c2cdb441', '实体属性管理_修改列表显示状态', 'CodeGenerator', 'Property', 'UpdateShowInList', 2, 'codegenerator_property_updateshowinlist_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a085-5ac6-854a-7c8b25c77cb0', '实体属性管理_获取下拉列表', 'CodeGenerator', 'Property', 'Select', 0, 'codegenerator_property_select_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a08b-25fa-5522-d6ff8967fa7a', '区划代码管理_查询', 'Common', 'Area', 'Query', 0, 'common_area_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a08e-55d9-3a73-db28dd183641', '区划代码管理_添加', 'Common', 'Area', 'Add', 2, 'common_area_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a090-4162-c446-fef00d7ebfbf', '区划代码管理_删除', 'Common', 'Area', 'Delete', 3, 'common_area_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a091-8f96-cee1-2e4124d3a9de', '区划代码管理_编辑', 'Common', 'Area', 'Edit', 0, 'common_area_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a092-7b70-c4aa-aec40a08e156', '区划代码管理_修改', 'Common', 'Area', 'Update', 2, 'common_area_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a093-b067-b1da-1db067038de8', '附件表管理_查询', 'Common', 'Attachment', 'Query', 0, 'common_attachment_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a098-3808-8d82-c259b287abea', '字典管理_查询', 'Common', 'Dict', 'Query', 0, 'common_dict_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a099-d812-edd0-e8750c8c3091', '字典管理_添加', 'Common', 'Dict', 'Add', 2, 'common_dict_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a09a-7b29-ab7c-3b067b3c7b49', '字典管理_删除', 'Common', 'Dict', 'Delete', 3, 'common_dict_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a09b-9d54-ac36-763ed4b14859', '字典管理_编辑', 'Common', 'Dict', 'Edit', 0, 'common_dict_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a09e-efe2-28cf-1084f36755ca', '字典管理_修改', 'Common', 'Dict', 'Update', 2, 'common_dict_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a1-aa3c-0ac1-7e355c317cf5', '字典分组管理_查询', 'Common', 'DictGroup', 'Query', 0, 'common_dictgroup_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a6-af08-2851-845370168d35', '字典分组管理_添加', 'Common', 'DictGroup', 'Add', 2, 'common_dictgroup_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a7-39e5-2b1b-c3c3d20d9a86', '字典分组管理_删除', 'Common', 'DictGroup', 'Delete', 3, 'common_dictgroup_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a8-3cb3-5a7d-ad7f0e5d0002', '字典分组管理_编辑', 'Common', 'DictGroup', 'Edit', 0, 'common_dictgroup_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a8-955c-1535-963de4cde6e5', '字典分组管理_修改', 'Common', 'DictGroup', 'Update', 2, 'common_dictgroup_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0a9-9b57-5a97-4a4202301c43', '字典数据项管理_查询', 'Common', 'DictItem', 'Query', 0, 'common_dictitem_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0aa-26a1-035c-f122763718a1', '字典数据项管理_添加', 'Common', 'DictItem', 'Add', 2, 'common_dictitem_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ab-19b6-c7f0-53c628824770', '字典数据项管理_删除', 'Common', 'DictItem', 'Delete', 3, 'common_dictitem_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ac-ce86-3f83-5e236a4596c0', '字典数据项管理_编辑', 'Common', 'DictItem', 'Edit', 0, 'common_dictitem_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ad-30c6-ad47-ff7f75020de7', '字典数据项管理_修改', 'Common', 'DictItem', 'Update', 2, 'common_dictitem_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0af-c0fe-8303-7806ded31254', '多媒体管理_查询', 'Common', 'MediaType', 'Query', 0, 'common_mediatype_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0b5-4ed8-68af-b23206376049', '多媒体管理_添加', 'Common', 'MediaType', 'Add', 2, 'common_mediatype_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0b6-8645-8bea-2770ef5b4f96', '多媒体管理_删除', 'Common', 'MediaType', 'Delete', 3, 'common_mediatype_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0b7-b067-3646-6d4ced40f5c5', '多媒体管理_编辑', 'Common', 'MediaType', 'Edit', 0, 'common_mediatype_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0b8-bf89-d792-f078a7a6b604', '多媒体管理_修改', 'Common', 'MediaType', 'Update', 2, 'common_mediatype_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0b9-7f70-0379-a8e912438da4', '部门管理_部门树', 'PersonnelFiles', 'Department', 'Tree', 0, 'personnelfiles_department_tree_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0bb-08f1-b384-4e62b0567c8d', '部门管理_查询', 'PersonnelFiles', 'Department', 'Query', 0, 'personnelfiles_department_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0bc-5821-2deb-aad3c5b08ee7', '部门管理_添加', 'PersonnelFiles', 'Department', 'Add', 2, 'personnelfiles_department_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0bd-fbfe-d826-d0ab01f47696', '部门管理_删除', 'PersonnelFiles', 'Department', 'Delete', 3, 'personnelfiles_department_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0c5-35e5-4438-dceafab72dcb', '部门管理_编辑', 'PersonnelFiles', 'Department', 'Edit', 0, 'personnelfiles_department_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0c7-3794-30ba-1c441c820c50', '部门管理_修改', 'PersonnelFiles', 'Department', 'Update', 2, 'personnelfiles_department_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0c8-880f-f9ea-598ca9ceadba', '员工管理_查询', 'PersonnelFiles', 'Employee', 'Query', 0, 'personnelfiles_employee_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0c9-2c3b-5338-de3229ed6d7f', '员工管理_添加', 'PersonnelFiles', 'Employee', 'Add', 2, 'personnelfiles_employee_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ca-e211-986a-c63ee2ccba2c', '员工管理_删除', 'PersonnelFiles', 'Employee', 'Delete', 3, 'personnelfiles_employee_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0cb-887f-63e4-294ac2ac5c56', '员工管理_编辑', 'PersonnelFiles', 'Employee', 'Edit', 0, 'personnelfiles_employee_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0cc-a2c1-8b6c-cb06caf49728', '员工管理_修改', 'PersonnelFiles', 'Employee', 'Update', 2, 'personnelfiles_employee_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0d3-e35a-54d3-215a96480df3', '员工管理_离职', 'PersonnelFiles', 'Employee', 'Leave', 2, 'personnelfiles_employee_leave_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0d4-7b71-2459-8c224b7f2687', '员工管理_获取离职信息', 'PersonnelFiles', 'Employee', 'LeaveInfo', 0, 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0d5-24d9-286a-d6b3cc6ac3b2', '员工管理_编辑个人信息', 'PersonnelFiles', 'Employee', 'EditPersonal', 0, 'personnelfiles_employee_editpersonal_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0d6-6491-1e66-a8af68b2ca6b', '员工管理_修改个人信息', 'PersonnelFiles', 'Employee', 'UpdatePersonal', 2, 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0d7-25b1-1c38-7847f7eb6247', '员工管理_查询家庭情况信息列表', 'PersonnelFiles', 'Employee', 'FamilyQuery', 0, 'personnelfiles_employee_familyquery_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0da-b504-cf36-05db6711a96c', '员工管理_添加家庭情况', 'PersonnelFiles', 'Employee', 'FamilyAdd', 2, 'personnelfiles_employee_familyadd_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0df-c1f0-9af5-06ff08fb8d16', '员工管理_删除家庭情况', 'PersonnelFiles', 'Employee', 'FamilyDelete', 3, 'personnelfiles_employee_familydelete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0e3-6556-b591-627f8a42623b', '员工管理_编辑家庭情况', 'PersonnelFiles', 'Employee', 'FamilyEdit', 0, 'personnelfiles_employee_familyedit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0e5-ddce-8bf1-1d5ef55792c2', '员工管理_修改家庭情况', 'PersonnelFiles', 'Employee', 'FamilyUpdate', 2, 'personnelfiles_employee_familyupdate_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0e6-8d99-7ea7-f9ae9f1f5d44', '员工管理_编辑通讯信息', 'PersonnelFiles', 'Employee', 'EditContact', 0, 'personnelfiles_employee_editcontact_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ea-60a5-e713-9461c596c35f', '员工管理_修改联系信息', 'PersonnelFiles', 'Employee', 'UpdateContact', 2, 'personnelfiles_employee_updatecontact_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0eb-cfef-4511-d4abe836d010', '员工管理_联系信息详情', 'PersonnelFiles', 'Employee', 'ContactDetails', 0, 'personnelfiles_employee_contactdetails_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ec-5c6a-0687-e300c8190768', '员工管理_查询教育背景信息列表', 'PersonnelFiles', 'Employee', 'EducationQuery', 0, 'personnelfiles_employee_educationquery_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ee-1b34-b316-b63d9a67b13b', '员工管理_添加教育背景', 'PersonnelFiles', 'Employee', 'EducationAdd', 2, 'personnelfiles_employee_educationadd_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ef-3e1f-0dc8-df472037a6a8', '员工管理_删除教育背景', 'PersonnelFiles', 'Employee', 'EducationDelete', 3, 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a0f0-5596-4ded-72db30a79fb9', '员工管理_编辑教育背景', 'PersonnelFiles', 'Employee', 'EducationEdit', 0, 'personnelfiles_employee_educationedit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0f3-3483-4c5b-3e061e7d50a2', '员工管理_修改教育背景', 'PersonnelFiles', 'Employee', 'EducationUpdate', 2, 'personnelfiles_employee_educationupdate_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0fc-e420-39b7-8b1131b3422a', '员工管理_查询工作经历信息列表', 'PersonnelFiles', 'Employee', 'WorkQuery', 0, 'personnelfiles_employee_workquery_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a0fe-fc43-3bfa-6e2659a31098', '员工管理_添加工作经历', 'PersonnelFiles', 'Employee', 'WorkAdd', 2, 'personnelfiles_employee_workadd_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a0ff-a523-4a5b-a53b279f0f14', '员工管理_删除工作经历', 'PersonnelFiles', 'Employee', 'WorkDelete', 3, 'personnelfiles_employee_workdelete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a103-dbce-b2d3-592c00f16132', '员工管理_编辑工作经历', 'PersonnelFiles', 'Employee', 'WorkEdit', 0, 'personnelfiles_employee_workedit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a108-c294-dadc-5523414e4402', '员工管理_修改工作经历', 'PersonnelFiles', 'Employee', 'WorkUpdate', 2, 'personnelfiles_employee_workupdate_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a109-a905-c7a0-c763f907db28', '员工管理_账户编辑', 'PersonnelFiles', 'Employee', 'EditAccount', 0, 'personnelfiles_employee_editaccount_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a10b-dc22-9e1e-b8b8ba609045', '员工管理_账户更新', 'PersonnelFiles', 'Employee', 'UpdateAccount', 2, 'personnelfiles_employee_updateaccount_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a10d-e2ea-7005-cec6f730ca67', '职位管理_查询', 'PersonnelFiles', 'Position', 'Query', 0, 'personnelfiles_position_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a10e-2b7f-8434-25af0ed2d16d', '职位管理_添加', 'PersonnelFiles', 'Position', 'Add', 2, 'personnelfiles_position_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a110-bf67-fdb7-7658f746ba45', '职位管理_删除', 'PersonnelFiles', 'Position', 'Delete', 3, 'personnelfiles_position_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a11a-0f95-00fb-9489ba87bd2e', '职位管理_编辑', 'PersonnelFiles', 'Position', 'Edit', 0, 'personnelfiles_position_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a11c-e576-81c9-f5f51bbc0dbb', '职位管理_修改', 'PersonnelFiles', 'Position', 'Update', 2, 'personnelfiles_position_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a11e-7552-16fa-036f5e4acf3e', '职位管理_修改', 'PersonnelFiles', 'Position', 'Get', 0, 'personnelfiles_position_get_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a11f-87a7-0a5c-71d7adaa97ad', '岗位管理_查询', 'PersonnelFiles', 'Post', 'Query', 0, 'personnelfiles_post_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a127-a7a2-ea0f-0d3b2c5c6e34', '岗位管理_添加', 'PersonnelFiles', 'Post', 'Add', 2, 'personnelfiles_post_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a129-ab49-6f64-4e148093fab2', '岗位管理_删除', 'PersonnelFiles', 'Post', 'Delete', 3, 'personnelfiles_post_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a12b-2cd5-476c-a8095d8caaa9', '岗位管理_编辑', 'PersonnelFiles', 'Post', 'Edit', 0, 'personnelfiles_post_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a12c-b012-7dd0-ffed904c6551', '岗位管理_修改', 'PersonnelFiles', 'Post', 'Update', 2, 'personnelfiles_post_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a12e-abc7-2ca2-f1ca35e88865', '任务组管理_查询', 'Quartz', 'Group', 'Query', 0, 'quartz_group_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a134-577d-2fda-37071c25220c', '任务组管理_添加', 'Quartz', 'Group', 'Add', 2, 'quartz_group_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a137-bc73-b93b-e3b2273b5e69', '任务组管理_删除', 'Quartz', 'Group', 'Delete', 3, 'quartz_group_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a139-1346-4e04-965529d953c2', '任务管理_查询', 'Quartz', 'Job', 'Query', 0, 'quartz_job_query_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a13e-a3da-af72-20606dcea07d', '任务管理_添加', 'Quartz', 'Job', 'Add', 2, 'quartz_job_add_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a13f-5f48-0f13-cec894c94f7d', '任务管理_编辑', 'Quartz', 'Job', 'Edit', 0, 'quartz_job_edit_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a140-2d0b-63d8-98a5ed28a8ec', '任务管理_修改', 'Quartz', 'Job', 'Update', 2, 'quartz_job_update_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a142-2343-2795-7bb9be9f986a', '任务管理_删除', 'Quartz', 'Job', 'Delete', 3, 'quartz_job_delete_delete');
INSERT INTO `permission` VALUES ('39f4a4a3-a143-90b0-5a06-bf69ed773134', '任务管理_暂停', 'Quartz', 'Job', 'Pause', 2, 'quartz_job_pause_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a148-c5da-0803-f28ca79511c9', '任务管理_回复', 'Quartz', 'Job', 'Resume', 2, 'quartz_job_resume_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a14e-2a5e-7710-593bdffa928a', '任务管理_停止', 'Quartz', 'Job', 'Stop', 2, 'quartz_job_stop_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a150-d6cf-2d0e-eb4c30d4ced2', '任务管理_日志', 'Quartz', 'Job', 'Log', 0, 'quartz_job_log_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a151-82b2-5e75-e64d4e2b15c5', '任务管理_添加HTTP任务', 'Quartz', 'Job', 'AddHttpJob', 2, 'quartz_job_addhttpjob_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a152-3cec-b2d9-1aac2154ae29', '任务管理_编辑HTTP任务', 'Quartz', 'Job', 'EditHttpJob', 0, 'quartz_job_edithttpjob_get');
INSERT INTO `permission` VALUES ('39f4a4a3-a154-0c30-50fa-442e2adf69f3', '任务管理_修改HTTP任务', 'Quartz', 'Job', 'UpdateHttpJob', 2, 'quartz_job_updatehttpjob_post');
INSERT INTO `permission` VALUES ('39f4a4a3-a15b-8304-3855-411f52b1c800', '任务管理_HTTP任务详情', 'Quartz', 'Job', 'JobHttpDetails', 0, 'quartz_job_jobhttpdetails_get');

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
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (80, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '00000000-0000-0000-0000-000000000000');
INSERT INTO `role_menu` VALUES (81, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a5-728f-1079-dfc6-5bac3ed3ce35');
INSERT INTO `role_menu` VALUES (82, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-2b29-df7d-e93f-dd2a5a312284');
INSERT INTO `role_menu` VALUES (83, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4');
INSERT INTO `role_menu` VALUES (84, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-437c-e483-1114-3e1ee9ffd604');
INSERT INTO `role_menu` VALUES (85, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-4c80-0520-b504-3b59d69a968a');
INSERT INTO `role_menu` VALUES (86, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-5a2b-d0a8-a379-4d1c2c8a13d2');
INSERT INTO `role_menu` VALUES (87, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a5-16a9-4d25-a085-8ff7f1076221');
INSERT INTO `role_menu` VALUES (88, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5');
INSERT INTO `role_menu` VALUES (89, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-f943-2765-2d9b-8686eb94b176');
INSERT INTO `role_menu` VALUES (90, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a4-cad7-458e-6e8c-629c6fb86d6f');
INSERT INTO `role_menu` VALUES (91, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-c265-7115-78a9-014d9109656a');
INSERT INTO `role_menu` VALUES (92, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5');
INSERT INTO `role_menu` VALUES (93, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a4-922b-9030-d476-23e01cdaad2e');
INSERT INTO `role_menu` VALUES (94, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-0b2f-f483-9e59-0803127befbd');
INSERT INTO `role_menu` VALUES (95, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-69d9-c4a9-1701-40dc9909844d');
INSERT INTO `role_menu` VALUES (96, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-73dc-58e0-17d8-55f56f57d431');
INSERT INTO `role_menu` VALUES (97, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-2df4-25dd-af67-702a507e2004');
INSERT INTO `role_menu` VALUES (98, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-392a-3ef1-f561-828b04f55d53');
INSERT INTO `role_menu` VALUES (99, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-41f7-4200-eadf-9d0708979a98');
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
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ButtonId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `role_menu_button` VALUES (17, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c080-296a-2511-6f7d-dace45a22f7a', '39f49fc8-7386-54ac-2cd3-afe97d91c27c');
INSERT INTO `role_menu_button` VALUES (18, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-2b29-df7d-e93f-dd2a5a312284', '39f4a4a7-2b36-eda3-f012-597ce98c2100');
INSERT INTO `role_menu_button` VALUES (19, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-2b29-df7d-e93f-dd2a5a312284', '39f4a4a7-2b41-7f26-5451-1ddc2cec037d');
INSERT INTO `role_menu_button` VALUES (20, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-2b29-df7d-e93f-dd2a5a312284', '39f4a4a7-2b4f-c2fd-cf30-6a1bbd33496c');
INSERT INTO `role_menu_button` VALUES (21, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4', '39f4a4a7-396e-a793-12d4-59a0b21be21c');
INSERT INTO `role_menu_button` VALUES (22, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4', '39f4a4a7-397a-9bc6-d01e-aa5905c00253');
INSERT INTO `role_menu_button` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4', '39f4a4a7-397e-15cd-52f2-926482d440b5');
INSERT INTO `role_menu_button` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4', '39f4a4a7-3981-37c4-4109-edc1ba44d3ec');
INSERT INTO `role_menu_button` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-395c-6c6a-757e-49f5f73365c4', '39f4a4a7-39a0-4d1a-f8c0-5a5a10d02073');
INSERT INTO `role_menu_button` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-437c-e483-1114-3e1ee9ffd604', '39f4a4a7-4392-8c64-3b85-d2180bbf78dd');
INSERT INTO `role_menu_button` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-437c-e483-1114-3e1ee9ffd604', '39f4a4a7-4397-24d4-5483-2500ebdee052');
INSERT INTO `role_menu_button` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-437c-e483-1114-3e1ee9ffd604', '39f4a4a7-43a7-5326-12ba-75eb8b488cab');
INSERT INTO `role_menu_button` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-4c80-0520-b504-3b59d69a968a', '39f4a4a7-4c90-2c58-cbe2-e2bded7945df');
INSERT INTO `role_menu_button` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-4c80-0520-b504-3b59d69a968a', '39f4a4a7-4c9e-8d48-708b-08b45227e77c');
INSERT INTO `role_menu_button` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a7-4c80-0520-b504-3b59d69a968a', '39f4a4a7-4ca7-c051-c109-d00bfb33dd81');
INSERT INTO `role_menu_button` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', '39f4a4a6-ee18-1778-2761-8009b7368c33');
INSERT INTO `role_menu_button` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', '39f4a4a6-ee1e-21da-8b41-5c03640c3329');
INSERT INTO `role_menu_button` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', '39f4a4a6-ee3b-d8b6-84fb-cf5b2e954f0a');
INSERT INTO `role_menu_button` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', '39f4a4a6-ee4e-7d6d-81c7-2f65e2b548f4');
INSERT INTO `role_menu_button` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-edf7-20bb-af72-fb06c5ff87e5', '39f4a4a6-ee5c-5b94-7af0-96068f1ec587');
INSERT INTO `role_menu_button` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-f943-2765-2d9b-8686eb94b176', '39f4a4a6-f954-11f7-9bab-da3870dbcf33');
INSERT INTO `role_menu_button` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-f943-2765-2d9b-8686eb94b176', '39f4a4a6-f95e-953f-2d3e-d9e75b7daece');
INSERT INTO `role_menu_button` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-f943-2765-2d9b-8686eb94b176', '39f4a4a6-f96a-f307-97f5-d9ea10769722');
INSERT INTO `role_menu_button` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-f943-2765-2d9b-8686eb94b176', '39f4a4a6-f96d-492a-9091-eff39772d9e6');
INSERT INTO `role_menu_button` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-c265-7115-78a9-014d9109656a', '39f4a4a6-c278-c4d3-bfd9-4f243232c948');
INSERT INTO `role_menu_button` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-c265-7115-78a9-014d9109656a', '39f4a4a6-c286-460b-f497-361b0c80e264');
INSERT INTO `role_menu_button` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cb90-598c-9674-7fccd31dec02');
INSERT INTO `role_menu_button` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cb97-0741-b496-a21ede07d589');
INSERT INTO `role_menu_button` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cba3-2ef8-5c05-56b39dbe873b');
INSERT INTO `role_menu_button` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cbab-26d2-2785-423f47e4909e');
INSERT INTO `role_menu_button` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cbc0-198f-8c23-f108ec113178');
INSERT INTO `role_menu_button` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cbc3-4f97-533b-3faeb776bf4b');
INSERT INTO `role_menu_button` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-cb76-1cc1-5451-9eb16722dad5', '39f4a4a6-cbd7-6e2d-dafb-25e85463d235');
INSERT INTO `role_menu_button` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-69d9-c4a9-1701-40dc9909844d', '39f4a4a6-69ee-81e1-61d5-502ab662de79');
INSERT INTO `role_menu_button` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-69d9-c4a9-1701-40dc9909844d', '39f4a4a6-69f3-60e4-a275-f4184dbd0a6c');
INSERT INTO `role_menu_button` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-69d9-c4a9-1701-40dc9909844d', '39f4a4a6-6a08-0193-df74-0cfeded48ae1');
INSERT INTO `role_menu_button` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-73dc-58e0-17d8-55f56f57d431', '39f4a4a6-73ec-b669-33ae-8e6e2658a3f9');
INSERT INTO `role_menu_button` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-73dc-58e0-17d8-55f56f57d431', '39f4a4a6-7403-d7d4-9686-25d92ad0b9f5');
INSERT INTO `role_menu_button` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-73dc-58e0-17d8-55f56f57d431', '39f4a4a6-740c-4ca9-cba3-6eed82113aee');
INSERT INTO `role_menu_button` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-73dc-58e0-17d8-55f56f57d431', '39f4a4a6-7415-a600-a499-947a502282f8');
INSERT INTO `role_menu_button` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-2df4-25dd-af67-702a507e2004', '39f4a4a6-2e01-7bcc-e59e-8112d7b38126');
INSERT INTO `role_menu_button` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-2df4-25dd-af67-702a507e2004', '39f4a4a6-2e0e-c81c-e1c2-7c4986020cdc');
INSERT INTO `role_menu_button` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-2df4-25dd-af67-702a507e2004', '39f4a4a6-2e17-1dd1-1b7d-35e156da137a');
INSERT INTO `role_menu_button` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-392a-3ef1-f561-828b04f55d53', '39f4a4a6-393b-f178-69b1-e79fed820438');
INSERT INTO `role_menu_button` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-392a-3ef1-f561-828b04f55d53', '39f4a4a6-394d-1793-68fc-2ab853ee91e4');
INSERT INTO `role_menu_button` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-41f7-4200-eadf-9d0708979a98', '39f4a4a6-4215-8ece-df7c-30527db015ae');
INSERT INTO `role_menu_button` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-41f7-4200-eadf-9d0708979a98', '39f4a4a6-4223-e3f0-10f4-530afdef75b5');
INSERT INTO `role_menu_button` VALUES (64, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4a4a6-41f7-4200-eadf-9d0708979a98', '39f4a4a6-4229-d1c8-bc46-4454e3f2a0c9');

-- ----------------------------
-- Table structure for role_platform_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_platform_permission`;
CREATE TABLE `role_platform_permission`  (
  `Id` int(0) NOT NULL AUTO_INCREMENT,
  `RoleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Platform` smallint(0) NOT NULL DEFAULT 0,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_platform_permission
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
