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

 Date: 05/05/2020 19:54:17
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
  `CreatedTime` datetime(0) NULL DEFAULT NULL,
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
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `button` VALUES ('39F3C49C-9F53-DF6B-BDE6-046073EEC059', 'admin_cache', '清除', 'delete', 'admin_cache_clear', '2020-03-07 08:40:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:24', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49C-ED82-7E34-4FAC-550444D13E14', 'admin_menu', '添加', 'add', 'admin_menu_add', '2020-03-07 08:40:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49C-EDE5-837D-4A08-746A4794D160', 'admin_menu', '编辑', 'edit', 'admin_menu_edit', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49C-EE67-9EAC-BD42-2AF470D70385', 'admin_menu', '删除', 'delete', 'admin_menu_del', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49C-EEA9-FAA1-BCC6-23F892D195B7', 'admin_menu', '排序', 'sort', 'admin_menu_sort', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:55', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0035-662E-8E92-CF0B0EF43855', 'admin_role', '添加', 'add', 'admin_role_add', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0084-78DE-1B55-23BB917DBDCD', 'admin_role', '编辑', 'edit', 'admin_role_edit', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-00F7-C590-62C8-3569297D9146', 'admin_role', '删除', 'delete', 'admin_role_del', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0146-3473-B0C2-9F9F321137EF', 'admin_role', '绑定菜单', 'bind', 'admin_role_bind_menu', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-01C6-750C-7855-0D009B351D1B', 'admin_role', '平台权限', 'android', 'admin_role_bind_permission', '2020-03-07 08:41:00', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:00', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0F00-050E-F52F-2E1AA73D0F6B', 'admin_account', '添加', 'add', 'admin_account_add', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0F50-B447-D344-D9C587E19736', 'admin_account', '编辑', 'edit', 'admin_account_edit', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-0FD9-68D3-6291-EB1E11BF1F91', 'admin_account', '删除', 'delete', 'admin_account_del', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-1029-C143-C624-4975CE886AEA', 'admin_account', '重置密码', 'refresh', 'admin_account_reset_password', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-2428-1E8D-909B-7EAF125DF982', 'admin_auditinfo', '详情', 'detail', 'admin_auditinfo_details', '2020-03-07 08:41:08', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F3C49D-248B-44E8-6182-02E1EAA4D8F5', 'admin_auditinfo', '导出', 'export', 'admin_auditinfo_export', '2020-03-07 08:41:09', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F498BA-12D2-AF34-41C6-2F9987560E79', 'admin_module', '同步', 'refresh', 'admin_module_sync', '2020-04-17 13:12:14', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-17 13:12:14', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4C738-2DC8-0B41-37EB-A2C3672F66E4', 'admin_log_login', '导出', 'export', 'admin_log_login_export', '2020-04-26 13:52:31', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:52:31', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D6B4-CC12-185A-5691-732BFFBAC2B4', 'admin_mime', '添加', 'add', 'admin_mime_add', '2020-04-29 14:02:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:41', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D6B4-CC4E-4F33-E7B5-02991EFEB6B0', 'admin_mime', '编辑', 'edit', 'admin_mime_edit', '2020-04-29 14:02:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:41', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D6B4-CC93-4168-8FDE-E45BEF66760A', 'admin_mime', '删除', 'delete', 'admin_mime_del', '2020-04-29 14:02:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:41', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D6D2-355D-7A8D-DAFE-F04CD45A15ED', 'admin_file', '删除', 'delete', 'admin_file_del', '2020-04-29 14:35:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:20:21', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D6E6-D574-8A20-4AAD-03EEB369DD70', 'admin_file', '物理删除', 'delete', 'admin_file_harddel', '2020-04-29 14:57:35', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:20:21', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39F4D80E-53B6-0241-D709-DE4D8B5B2685', 'admin_file', '导出', 'export', 'admin_file_export', '2020-04-29 20:20:21', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:20:21', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `button` VALUES ('39f4f6c6-f5d4-895a-8d63-73a930dea879', 'common_dictgroup', '添加', 'add', 'common_dictgroup_add', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-f5f0-802f-6c97-27025dff55ea', 'common_dictgroup', '编辑', 'edit', 'common_dictgroup_edit', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-f600-9e98-05c5-ff89652ea570', 'common_dictgroup', '删除', 'delete', 'common_dictgroup_del', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-ffa2-a3cd-b6cc-d6fa84062264', 'common_dict', '添加', 'add', 'common_dict_add', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-ffba-0b55-7121-1639c9a91d96', 'common_dict', '编辑', 'edit', 'common_dict_edit', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-ffc0-0172-073f-95707d26990a', 'common_dict', '删除', 'delete', 'common_dict_del', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c6-ffd5-ceb6-0445-76c81acfd14f', 'common_dict', '管理数据项', 'edit', 'common_dict_item', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-2426-4290-5e41-91f2ee3d1874', 'common_area', '添加', 'add', 'common_area_add', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-242a-a944-b1ee-8f3993bcdc4b', 'common_area', '编辑', 'edit', 'common_area_edit', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-2435-ef31-0b3d-716fe110762b', 'common_area', '删除', 'delete', 'common_area_del', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-448e-f2fc-92f9-c45c7439c62c', 'quartz_group', '添加', 'add', 'quartz_group_add', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-449a-fc82-7c54-e3f64804a265', 'quartz_group', '删除', 'delete', 'quartz_group_del', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e10-ab33-b0ad-076f46b39e56', 'quartz_job', '添加', 'add', 'quartz_job_add', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e1d-eced-b5d7-e1656df03d37', 'quartz_job', '编辑', 'edit', 'quartz_job_edit', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e21-1c08-98de-57f96e9dc236', 'quartz_job', '暂停', 'pause', 'quartz_job_pause', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e2d-eb59-9f40-e405e3672f20', 'quartz_job', '启动', 'run', 'quartz_job_resume', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e3d-11b2-101a-0b1e36d73342', 'quartz_job', '停止', 'stop', 'quartz_job_stop', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e42-0e60-c47f-317aa08ca324', 'quartz_job', '日志', 'log', 'quartz_job_log', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-4e58-0412-476a-d9f8a10e78e7', 'quartz_job', '删除', 'delete', 'quartz_job_del', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-6d7d-7c07-3dac-ee46b6e011b0', 'codegenerator_module', '添加', 'add', 'codegenerator_module_add', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-6d8c-6762-f10d-27eff68f9ffc', 'codegenerator_module', '编辑', 'edit', 'codegenerator_module_edit', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-6d9a-7d41-f5ec-a6bf7f873ed1', 'codegenerator_module', '删除', 'delete', 'codegenerator_module_del', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-6d9e-88ec-8591-d1132907bd82', 'codegenerator_module', '生成代码', 'download', 'codegenerator_module_build_code', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-6dae-596d-b2fc-30695353d59e', 'codegenerator_module', '实体管理', 'database', 'codegenerator_module_class_manage', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-76e6-452e-5ff1-49611007b334', 'codegenerator_enum', '添加', 'add', 'codegenerator_enum_add', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-76f6-f79c-00a3-36152b839a10', 'codegenerator_enum', '编辑', 'edit', 'codegenerator_enum_edit', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-76ff-9806-a2a7-22c4e7ac6f12', 'codegenerator_enum', '删除', 'delete', 'codegenerator_enum_del', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-770d-0fde-56b3-97eb77af67cb', 'codegenerator_enum', '配置项', 'tag', 'codegenerator_enum_item', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-956c-937d-e320-a30c8159d366', 'personnelfiles_department', '添加', 'add', 'personnelfiles_department_add', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-957d-0e79-3c49-fb88a3480ce1', 'personnelfiles_department', '编辑', 'edit', 'personnelfiles_department_edit', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-958d-847a-5ae9-a865d661ca79', 'personnelfiles_department', '删除', 'delete', 'personnelfiles_department_del', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-a0f5-bd82-4ecb-531f2bd47ab4', 'personnelfiles_employee', '添加', 'add', 'personnelfiles_employee_add', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-a100-7ad9-fe1d-6ba7e56be54a', 'personnelfiles_employee', '编辑', 'edit', 'personnelfiles_employee_edit', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-a10e-e918-2a8c-bc0a0efa2e26', 'personnelfiles_employee', '删除', 'delete', 'personnelfiles_employee_del', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-a11b-d68c-b755-9db84fe4ead1', 'personnelfiles_employee', '离职', 'edit', 'personnelfiles_employee_leave', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-a12c-7885-7a9d-2149447a10cf', 'personnelfiles_employee', '预览', 'preview', 'personnelfiles_employee_preview', '2020-05-05 19:31:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-ab9a-645c-df42-70ae52edb281', 'personnelfiles_position', '添加', 'add', 'personnelfiles_position_add', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-abaa-2a22-66f5-420bd8f8a207', 'personnelfiles_position', '编辑', 'edit', 'personnelfiles_position_edit', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-abb9-4959-c81c-e1dbad65c017', 'personnelfiles_position', '删除', 'delete', 'personnelfiles_position_del', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-b728-b96f-b832-744a57281f0e', 'personnelfiles_post', '添加', 'add', 'personnelfiles_post_add', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-b72e-2406-85fb-65aadedd7d3d', 'personnelfiles_post', '编辑', 'edit', 'personnelfiles_post_edit', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `button` VALUES ('39f4f6c7-b73e-fec6-d952-4ed5b3f702db', 'personnelfiles_post', '删除', 'delete', 'personnelfiles_post_del', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for button_permission
-- ----------------------------
DROP TABLE IF EXISTS `button_permission`;
CREATE TABLE `button_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ButtonCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of button_permission
-- ----------------------------
INSERT INTO `button_permission` VALUES (1, 'admin_menu_add', 'admin_menu_add_post');
INSERT INTO `button_permission` VALUES (2, 'admin_menu_edit', 'admin_menu_edit_get');
INSERT INTO `button_permission` VALUES (3, 'admin_menu_edit', 'admin_menu_update_post');
INSERT INTO `button_permission` VALUES (4, 'admin_menu_del', 'admin_menu_delete_delete');
INSERT INTO `button_permission` VALUES (5, 'admin_menu_sort', 'admin_menu_sort_get');
INSERT INTO `button_permission` VALUES (6, 'admin_menu_sort', 'admin_menu_sort_post');
INSERT INTO `button_permission` VALUES (7, 'admin_role_add', 'admin_role_add_post');
INSERT INTO `button_permission` VALUES (8, 'admin_role_edit', 'admin_role_edit_get');
INSERT INTO `button_permission` VALUES (9, 'admin_role_edit', 'admin_role_update_post');
INSERT INTO `button_permission` VALUES (10, 'admin_role_del', 'admin_role_delete_delete');
INSERT INTO `button_permission` VALUES (11, 'admin_role_bind_menu', 'admin_role_menulist_get');
INSERT INTO `button_permission` VALUES (12, 'admin_role_bind_menu', 'admin_role_bindmenu_post');
INSERT INTO `button_permission` VALUES (13, 'admin_role_bind_menu', 'admin_role_menubuttonlist_get');
INSERT INTO `button_permission` VALUES (14, 'admin_role_bind_menu', 'admin_role_bindmenubutton_post');
INSERT INTO `button_permission` VALUES (15, 'admin_role_bind_permission', 'admin_permission_tree_get');
INSERT INTO `button_permission` VALUES (16, 'admin_role_bind_permission', 'admin_role_platformpermissionlist_get');
INSERT INTO `button_permission` VALUES (17, 'admin_role_bind_permission', 'admin_role_platformpermissionbind_post');
INSERT INTO `button_permission` VALUES (18, 'admin_account_add', 'admin_account_add_post');
INSERT INTO `button_permission` VALUES (19, 'admin_account_edit', 'admin_account_edit_get');
INSERT INTO `button_permission` VALUES (20, 'admin_account_edit', 'admin_account_update_post');
INSERT INTO `button_permission` VALUES (21, 'admin_account_del', 'admin_account_delete_delete');
INSERT INTO `button_permission` VALUES (22, 'admin_account_reset_password', 'admin_account_resetpassword_post');
INSERT INTO `button_permission` VALUES (23, 'admin_module_sync', 'admin_module_sync_post');
INSERT INTO `button_permission` VALUES (24, 'admin_auditinfo_details', 'admin_auditinfo_details_get');
INSERT INTO `button_permission` VALUES (25, 'admin_auditinfo_export', 'admin_auditinfo_export_post');
INSERT INTO `button_permission` VALUES (26, 'admin_log_login_export', 'admin_log_loginexport_post');
INSERT INTO `button_permission` VALUES (27, 'admin_file_export', 'admin_file_export_get');
INSERT INTO `button_permission` VALUES (28, 'admin_file_del', 'admin_file_delete_delete');
INSERT INTO `button_permission` VALUES (29, 'admin_file_harddel', 'admin_file_harddelete_delete');
INSERT INTO `button_permission` VALUES (30, 'admin_cache_clear', 'admin_cache_clear_delete');
INSERT INTO `button_permission` VALUES (31, 'admin_mime_add', 'admin_mime_add_post');
INSERT INTO `button_permission` VALUES (32, 'admin_mime_edit', 'admin_mime_edit_get');
INSERT INTO `button_permission` VALUES (33, 'admin_mime_edit', 'admin_mime_update_post');
INSERT INTO `button_permission` VALUES (34, 'admin_mime_del', 'admin_mime_delete_delete');
INSERT INTO `button_permission` VALUES (35, 'common_dictgroup_add', 'common_dictgroup_add_post');
INSERT INTO `button_permission` VALUES (36, 'common_dictgroup_edit', 'common_dictgroup_edit_get');
INSERT INTO `button_permission` VALUES (37, 'common_dictgroup_edit', 'common_dictgroup_update_post');
INSERT INTO `button_permission` VALUES (38, 'common_dictgroup_del', 'common_dictgroup_delete_delete');
INSERT INTO `button_permission` VALUES (39, 'common_dict_add', 'common_dict_add_post');
INSERT INTO `button_permission` VALUES (40, 'common_dict_edit', 'common_dict_edit_get');
INSERT INTO `button_permission` VALUES (41, 'common_dict_edit', 'common_dict_update_post');
INSERT INTO `button_permission` VALUES (42, 'common_dict_del', 'common_dict_delete_delete');
INSERT INTO `button_permission` VALUES (43, 'common_dict_item', 'common_dictitem_query_get');
INSERT INTO `button_permission` VALUES (44, 'common_dict_item', 'common_dictitem_add_post');
INSERT INTO `button_permission` VALUES (45, 'common_dict_item', 'common_dictitem_edit_get');
INSERT INTO `button_permission` VALUES (46, 'common_dict_item', 'common_dictitem_update_post');
INSERT INTO `button_permission` VALUES (47, 'common_dict_item', 'common_dictitem_delete_delete');
INSERT INTO `button_permission` VALUES (48, 'common_area_add', 'common_area_add_post');
INSERT INTO `button_permission` VALUES (49, 'common_area_edit', 'common_area_edit_get');
INSERT INTO `button_permission` VALUES (50, 'common_area_edit', 'common_area_update_post');
INSERT INTO `button_permission` VALUES (51, 'common_area_del', 'common_area_delete_delete');
INSERT INTO `button_permission` VALUES (52, 'quartz_group_add', 'quartz_group_add_post');
INSERT INTO `button_permission` VALUES (53, 'quartz_group_del', 'quartz_group_delete_delete');
INSERT INTO `button_permission` VALUES (54, 'quartz_job_add', 'quartz_job_add_post');
INSERT INTO `button_permission` VALUES (55, 'quartz_job_add', 'quartz_job_addhttpjob_post');
INSERT INTO `button_permission` VALUES (56, 'quartz_job_edit', 'quartz_job_edit_get');
INSERT INTO `button_permission` VALUES (57, 'quartz_job_edit', 'quartz_job_update_post');
INSERT INTO `button_permission` VALUES (58, 'quartz_job_edit', 'quartz_job_edithttpjob_get');
INSERT INTO `button_permission` VALUES (59, 'quartz_job_edit', 'quartz_job_updatehttpjob_post');
INSERT INTO `button_permission` VALUES (60, 'quartz_job_pause', 'quartz_job_pause_post');
INSERT INTO `button_permission` VALUES (61, 'quartz_job_resume', 'quartz_job_resume_post');
INSERT INTO `button_permission` VALUES (62, 'quartz_job_stop', 'quartz_job_stop_post');
INSERT INTO `button_permission` VALUES (63, 'quartz_job_log', 'quartz_job_log_get');
INSERT INTO `button_permission` VALUES (64, 'quartz_job_del', 'quartz_job_delete_delete');
INSERT INTO `button_permission` VALUES (65, 'codegenerator_module_add', 'codegenerator_module_add_post');
INSERT INTO `button_permission` VALUES (66, 'codegenerator_module_edit', 'codegenerator_module_edit_get');
INSERT INTO `button_permission` VALUES (67, 'codegenerator_module_edit', 'codegenerator_module_update_post');
INSERT INTO `button_permission` VALUES (68, 'codegenerator_module_del', 'codegenerator_module_delete_delete');
INSERT INTO `button_permission` VALUES (69, 'codegenerator_module_build_code', 'codegenerator_module_buildcode_post');
INSERT INTO `button_permission` VALUES (70, 'codegenerator_enum_add', 'codegenerator_enum_add_post');
INSERT INTO `button_permission` VALUES (71, 'codegenerator_enum_edit', 'codegenerator_enum_edit_get');
INSERT INTO `button_permission` VALUES (72, 'codegenerator_enum_edit', 'codegenerator_enum_update_post');
INSERT INTO `button_permission` VALUES (73, 'codegenerator_enum_del', 'codegenerator_enum_delete_delete');
INSERT INTO `button_permission` VALUES (74, 'personnelfiles_department_add', 'personnelfiles_department_add_post');
INSERT INTO `button_permission` VALUES (75, 'personnelfiles_department_edit', 'personnelfiles_department_edit_get');
INSERT INTO `button_permission` VALUES (76, 'personnelfiles_department_edit', 'personnelfiles_department_update_post');
INSERT INTO `button_permission` VALUES (77, 'personnelfiles_department_del', 'personnelfiles_department_delete_delete');
INSERT INTO `button_permission` VALUES (78, 'personnelfiles_employee_add', 'personnelfiles_employee_add_post');
INSERT INTO `button_permission` VALUES (79, 'personnelfiles_employee_edit', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (80, 'personnelfiles_employee_edit', 'personnelfiles_employee_update_post');
INSERT INTO `button_permission` VALUES (81, 'personnelfiles_employee_edit', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (82, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatecontact_post');
INSERT INTO `button_permission` VALUES (83, 'personnelfiles_employee_edit', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (84, 'personnelfiles_employee_edit', 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `button_permission` VALUES (85, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (86, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyadd_post');
INSERT INTO `button_permission` VALUES (87, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyedit_get');
INSERT INTO `button_permission` VALUES (88, 'personnelfiles_employee_edit', 'personnelfiles_employee_familyupdate_post');
INSERT INTO `button_permission` VALUES (89, 'personnelfiles_employee_edit', 'personnelfiles_employee_familydelete_delete');
INSERT INTO `button_permission` VALUES (90, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (91, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationadd_post');
INSERT INTO `button_permission` VALUES (92, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationedit_get');
INSERT INTO `button_permission` VALUES (93, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationupdate_post');
INSERT INTO `button_permission` VALUES (94, 'personnelfiles_employee_edit', 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `button_permission` VALUES (95, 'personnelfiles_employee_edit', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (96, 'personnelfiles_employee_edit', 'personnelfiles_employee_workadd_post');
INSERT INTO `button_permission` VALUES (97, 'personnelfiles_employee_edit', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (98, 'personnelfiles_employee_edit', 'personnelfiles_employee_workupdate_post');
INSERT INTO `button_permission` VALUES (99, 'personnelfiles_employee_edit', 'personnelfiles_employee_workdelete_delete');
INSERT INTO `button_permission` VALUES (100, 'personnelfiles_employee_edit', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (101, 'personnelfiles_employee_edit', 'personnelfiles_employee_updateaccount_post');
INSERT INTO `button_permission` VALUES (102, 'personnelfiles_employee_del', 'personnelfiles_employee_delete_delete');
INSERT INTO `button_permission` VALUES (103, 'personnelfiles_employee_leave', 'personnelfiles_employee_leave_post');
INSERT INTO `button_permission` VALUES (104, 'personnelfiles_employee_leave', 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `button_permission` VALUES (105, 'personnelfiles_employee_preview', 'personnelfiles_employee_edit_get');
INSERT INTO `button_permission` VALUES (106, 'personnelfiles_employee_preview', 'personnelfiles_employee_editcontact_get');
INSERT INTO `button_permission` VALUES (107, 'personnelfiles_employee_preview', 'personnelfiles_employee_editpersonal_get');
INSERT INTO `button_permission` VALUES (108, 'personnelfiles_employee_preview', 'personnelfiles_employee_familyquery_get');
INSERT INTO `button_permission` VALUES (109, 'personnelfiles_employee_preview', 'personnelfiles_employee_educationquery_get');
INSERT INTO `button_permission` VALUES (110, 'personnelfiles_employee_preview', 'personnelfiles_employee_workquery_get');
INSERT INTO `button_permission` VALUES (111, 'personnelfiles_employee_preview', 'personnelfiles_employee_workedit_get');
INSERT INTO `button_permission` VALUES (112, 'personnelfiles_employee_preview', 'personnelfiles_employee_editaccount_get');
INSERT INTO `button_permission` VALUES (113, 'personnelfiles_position_add', 'personnelfiles_position_add_post');
INSERT INTO `button_permission` VALUES (114, 'personnelfiles_position_edit', 'personnelfiles_position_edit_get');
INSERT INTO `button_permission` VALUES (115, 'personnelfiles_position_edit', 'personnelfiles_position_update_post');
INSERT INTO `button_permission` VALUES (116, 'personnelfiles_position_del', 'personnelfiles_position_delete_delete');
INSERT INTO `button_permission` VALUES (117, 'personnelfiles_post_add', 'personnelfiles_post_add_post');
INSERT INTO `button_permission` VALUES (118, 'personnelfiles_post_add', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (119, 'personnelfiles_post_add', 'personnelfiles_position_get_get');
INSERT INTO `button_permission` VALUES (120, 'personnelfiles_post_edit', 'personnelfiles_post_edit_get');
INSERT INTO `button_permission` VALUES (121, 'personnelfiles_post_edit', 'personnelfiles_post_update_post');
INSERT INTO `button_permission` VALUES (122, 'personnelfiles_post_del', 'personnelfiles_post_delete_delete');
INSERT INTO `button_permission` VALUES (123, 'personnelfiles_post_del', 'personnelfiles_position_query_get');
INSERT INTO `button_permission` VALUES (124, 'personnelfiles_post_del', 'personnelfiles_position_get_get');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` smallint(6) NOT NULL DEFAULT 0,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 0, 'System', '{\"title\":\"NetModular通用权限管理系统\",\"logo\":\"\",\"copyright\":\"版权所有：尼古拉斯·老李 | 用代码改变世界 Powered by .Net Core 3.1.0 on Linux\"}');
INSERT INTO `config` VALUES (2, 1, 'Admin', '{\"auditing\":true,\"loginLog\":true,\"defaultPassword\":\"123456\"}');
INSERT INTO `config` VALUES (3, 0, 'Auth', '{\"verifyCode\":false,\"validate\":true,\"button\":true,\"singleAccount\":false,\"jwt\":{\"key\":\"twAJ$j5##pVc5*y&\",\"issuer\":\"http://127.0.0.1:6220\",\"audience\":\"http://127.0.0.1:6220\",\"expires\":120,\"refreshTokenExpires\":7},\"loginMode\":{\"userName\":true,\"email\":false,\"userNameOrEmail\":false,\"phone\":false,\"weChatScanCode\":false,\"qq\":false,\"gitHub\":false}}');
INSERT INTO `config` VALUES (4, 0, 'Component', '{\"login\":{\"defaultAccountType\":0,\"pageType\":\"neon\",\"verifyCode\":false},\"menu\":{\"uniqueOpened\":true},\"dialog\":{\"closeOnClickModal\":false,\"draggable\":false},\"list\":{\"serialNumberName\":null},\"tabnav\":{\"enabled\":true,\"showHome\":true,\"homeUrl\":null,\"showIcon\":true,\"maxOpenCount\":20},\"toolbar\":{\"fullscreen\":true,\"skin\":true,\"logout\":true,\"userInfo\":true},\"customCss\":null}');
INSERT INTO `config` VALUES (5, 0, 'Quartz', '{\"enabled\":true,\"logger\":false,\"instanceName\":\"QuartzServer\",\"tablePrefix\":\"QRTZ_\",\"serializerType\":0,\"provider\":1,\"connectionString\":\"server=localhost;port=13306;database=nm_demo_quartz;user id=root;password=oldli!@#123;allowuservariables=True;characterset=utf8;sslmode=None;allowpublickeyretrieval=True;minpoolsize=0;maxpoolsize=10\",\"dataSource\":\"default\"}');
INSERT INTO `config` VALUES (6, 1, 'PersonnelFiles', '{\"companyName\":\"武林联盟数字有限公司\",\"companyAddress\":null,\"companyContact\":null,\"companyPhone\":null,\"companyFax\":null}');

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
INSERT INTO `menu` VALUES ('39F3C49B-5FC3-33BE-0FCD-652929D9EA73', '', 2, '00000000-0000-0000-0000-000000000000', '官方文档', '', '', '', 'http://docs.17mkh.com/', 'archives', '', 0, b'1', 7, 0, '', '', b'1', '', '2020-03-07 08:39:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49B-D757-EA18-E9C4-D9C768F77512', '', 2, '00000000-0000-0000-0000-000000000000', 'GitHub', '', '', '', 'https://github.com/iamoldli/NetModular', 'github', '', 0, b'1', 8, 0, '', '', b'1', '', '2020-03-07 08:39:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-1756-9047-34B5-6DCFADEFE28D', '', 0, '00000000-0000-0000-0000-000000000000', '系统运维', '', '', '', '', 'system', '', 0, b'1', 5, -1, '', '', b'1', '', '2020-03-07 08:40:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-400A-B33D-0C8F-E878AAABA954', '', 0, '00000000-0000-0000-0000-000000000000', '权限管理', '', '', '', '', 'verifycode', '', 0, b'1', 4, -1, '', '', b'1', '', '2020-03-07 08:40:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F3C49C-8CCC-2A54-DAC7-B5DD6503D91A', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '配置中心', 'admin_config', '', '', '', 'tools', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:30', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:57:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-9EF2-C04B-FC63-5CDC9811C506', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '缓存清理', 'admin_cache', '', '', '', 'redis', '', 1, b'1', 3, 0, '', '', b'1', '', '2020-03-07 08:40:34', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:24', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-ADF2-D90F-9626-99ACECC76C37', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '图标预览', 'admin_icon', '', '', '', 'icon', '', 1, b'1', 2, 0, '', '', b'1', '', '2020-03-07 08:40:38', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:59:57', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-D5DC-90A5-6CC3-B3A0B9040643', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '模块中心', 'admin_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:48', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-17 13:12:14', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-ED14-45E0-718C-7D650D850143', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '菜单管理', 'admin_menu', '', '', '', 'menu', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '角色管理', 'admin_role', '', '', '', 'role', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:40:59', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F3C49D-0EB2-662F-2A0D-706F41140D12', 'Admin', 1, '39F3C49C-400A-B33D-0C8F-E878AAABA954', '账户管理', 'admin_account', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-03-07 08:41:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '', 0, '00000000-0000-0000-0000-000000000000', '系统日志', '', '', '', '', 'log', '', 0, b'1', 6, -1, '', '', b'1', '', '2020-04-26 13:42:33', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39F4C72F-5F6B-1879-7D4C-7915512406E9', 'Admin', 1, '39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '审计日志', 'admin_auditinfo', '', '', '', 'log', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:42:54', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4C72F-6E11-71DE-E74B-67B7E152B442', 'Admin', 1, '39F4C72F-10A9-FC03-FCBD-B6A8A29A3709', '登录日志', 'admin_log_login', '', '', '', 'log', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-04-26 13:42:57', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-26 13:52:31', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4D6B4-CB9E-0BA7-E46E-442013F4D8BA', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', 'MIME', 'admin_mime', '', '', '', 'media', '', 1, b'1', 4, 0, '', '', b'1', '', '2020-04-29 14:02:56', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 21:00:41', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39F4D6D2-3508-0CFC-205E-7BD7B887F3F4', 'Admin', 1, '39F3C49C-1756-9047-34B5-6DCFADEFE28D', '文件管理', 'admin_file', '', '', '', 'attachment', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-04-29 14:35:03', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA', '2020-04-29 20:20:20', '39F08CFD-8E0D-771B-A2F3-2639A62CA2FA');
INSERT INTO `menu` VALUES ('39f4f6c5-a83d-fae7-aaeb-0dafea50c1b0', '', 0, '00000000-0000-0000-0000-000000000000', '基础数据', '', '', '', '', 'entity', '', 0, b'1', 3, -1, '', '', b'1', '', '2020-05-05 19:29:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c5-cb77-41f2-d1ea-1ff64ccf61f7', '', 0, '00000000-0000-0000-0000-000000000000', '任务调度', '', '', '', '', 'timer', '', 0, b'1', 2, -1, '', '', b'1', '', '2020-05-05 19:29:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c5-fccf-2077-3986-e1ba9d04bd2d', '', 0, '00000000-0000-0000-0000-000000000000', '模块创建', '', '', '', '', 'app', '', 0, b'1', 1, -1, '', '', b'1', '', '2020-05-05 19:29:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c6-27fe-b795-c455-9b186899d7dc', '', 0, '00000000-0000-0000-0000-000000000000', '人事档案', '', '', '', '', 'user', '', 0, b'1', 0, -1, '', '', b'1', '', '2020-05-05 19:29:45', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c6-c4e6-cc38-4560-b64de62b946a', '', 0, '39f4f6c5-a83d-fae7-aaeb-0dafea50c1b0', '数据字典', '', '', '', '', 'tag', '', 1, b'1', 0, -1, '', '', b'1', '', '2020-05-05 19:30:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c6-f59f-dff1-08ec-859e5bcd3be7', 'Common', 1, '39f4f6c6-c4e6-cc38-4560-b64de62b946a', '字典分组', 'common_dictgroup', '', '', '', 'entity', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd', 'Common', 1, '39f4f6c6-c4e6-cc38-4560-b64de62b946a', '字典列表', 'common_dict', '', '', '', 'tag', '', 2, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-2405-0bb4-3476-74bd905db462', 'Common', 1, '39f4f6c5-a83d-fae7-aaeb-0dafea50c1b0', '区划代码', 'common_area', '', '', '', 'area', '', 1, b'1', 1, 0, '', '', b'1', '', '2020-05-05 19:30:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-4475-1eac-f74d-e09aedab86a2', 'Quartz', 1, '39f4f6c5-cb77-41f2-d1ea-1ff64ccf61f7', '任务分组', 'quartz_group', '', '', '', 'group', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:30:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-4df7-d618-5591-180cf1803117', 'Quartz', 1, '39f4f6c5-cb77-41f2-d1ea-1ff64ccf61f7', '任务列表', 'quartz_job', '', '', '', 'list', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-6d5c-3bcd-16c3-197770baf45c', 'CodeGenerator', 1, '39f4f6c5-fccf-2077-3986-e1ba9d04bd2d', '模块列表', 'codegenerator_module', '', '', '', 'product', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-76cf-2c05-45c0-8d0c6a790800', 'CodeGenerator', 1, '39f4f6c5-fccf-2077-3986-e1ba9d04bd2d', '枚举列表', 'codegenerator_enum', '', '', '', 'tag', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-9558-4348-bc5d-04d381baeb8d', 'PersonnelFiles', 1, '39f4f6c6-27fe-b795-c455-9b186899d7dc', '组织机构', 'personnelfiles_department', '', '', '', 'department', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-a0df-992a-7599-009a880e1bad', 'PersonnelFiles', 1, '39f4f6c6-27fe-b795-c455-9b186899d7dc', '员工档案', 'personnelfiles_employee', '', '', '', 'user', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-ab84-2716-d29e-0329550fc054', 'PersonnelFiles', 1, '39f4f6c6-27fe-b795-c455-9b186899d7dc', '职位管理', 'personnelfiles_position', '', '', '', 'position', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-b70c-560a-cc19-dff032ceae31', 'PersonnelFiles', 1, '39f4f6c6-27fe-b795-c455-9b186899d7dc', '岗位管理', 'personnelfiles_post', '', '', '', 'post', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `menu` VALUES ('39f4f6c7-c3f3-c677-c8cc-a9a2ff48c86c', 'PersonnelFiles', 1, '39f4f6c6-27fe-b795-c455-9b186899d7dc', '组件演示', 'personnelfiles_employee_demo', '', '', '', 'develop', '', 1, b'1', 0, 0, '', '', b'1', '', '2020-05-05 19:31:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-05-05 19:31:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `menu_permission`;
CREATE TABLE `menu_permission`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PermissionCode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_permission
-- ----------------------------
INSERT INTO `menu_permission` VALUES (1, 'admin_menu', 'admin_menu_query_get');
INSERT INTO `menu_permission` VALUES (2, 'admin_menu', 'admin_menu_tree_get');
INSERT INTO `menu_permission` VALUES (3, 'admin_role', 'admin_role_query_get');
INSERT INTO `menu_permission` VALUES (4, 'admin_account', 'admin_account_query_get');
INSERT INTO `menu_permission` VALUES (5, 'admin_module', 'admin_module_query_get');
INSERT INTO `menu_permission` VALUES (6, 'admin_module', 'admin_permission_query_get');
INSERT INTO `menu_permission` VALUES (7, 'admin_module', 'admin_permission_querybycodes_get');
INSERT INTO `menu_permission` VALUES (8, 'admin_auditinfo', 'admin_auditinfo_query_get');
INSERT INTO `menu_permission` VALUES (9, 'admin_log', 'admin_log_login_get');
INSERT INTO `menu_permission` VALUES (10, 'admin_log_login', 'admin_log_login_get');
INSERT INTO `menu_permission` VALUES (11, 'admin_file', 'admin_file_query_get');
INSERT INTO `menu_permission` VALUES (12, 'admin_config', 'admin_config_edit_get');
INSERT INTO `menu_permission` VALUES (13, 'admin_config', 'admin_config_update_post');
INSERT INTO `menu_permission` VALUES (14, 'admin_config', 'admin_config_uploadlogo_post');
INSERT INTO `menu_permission` VALUES (15, 'admin_config', 'admin_config_logourl_get');
INSERT INTO `menu_permission` VALUES (16, 'admin_config', 'admin_config_descriptors_get');
INSERT INTO `menu_permission` VALUES (17, 'admin_cache', 'admin_cache_query_get');
INSERT INTO `menu_permission` VALUES (18, 'admin_mime', 'admin_mime_query_get');
INSERT INTO `menu_permission` VALUES (19, 'common_dictgroup', 'common_dictgroup_query_get');
INSERT INTO `menu_permission` VALUES (20, 'common_dict', 'common_dict_query_get');
INSERT INTO `menu_permission` VALUES (21, 'common_dict', 'common_dict_querychildren_get');
INSERT INTO `menu_permission` VALUES (22, 'common_area', 'common_area_query_get');
INSERT INTO `menu_permission` VALUES (23, 'common_area', 'common_area_querychildren_get');
INSERT INTO `menu_permission` VALUES (24, 'quartz_group', 'quartz_group_query_get');
INSERT INTO `menu_permission` VALUES (25, 'quartz_job', 'quartz_job_query_get');
INSERT INTO `menu_permission` VALUES (26, 'quartz_job', 'quartz_job_jobhttpdetails_get');
INSERT INTO `menu_permission` VALUES (27, 'codegenerator_module', 'codegenerator_module_query_get');
INSERT INTO `menu_permission` VALUES (28, 'codegenerator_enum', 'codegenerator_enum_query_get');
INSERT INTO `menu_permission` VALUES (29, 'personnelfiles_department', 'personnelfiles_department_query_get');
INSERT INTO `menu_permission` VALUES (30, 'personnelfiles_department', 'personnelfiles_department_tree_get');
INSERT INTO `menu_permission` VALUES (31, 'personnelfiles_employee', 'personnelfiles_employee_query_get');
INSERT INTO `menu_permission` VALUES (32, 'personnelfiles_position', 'personnelfiles_position_query_get');
INSERT INTO `menu_permission` VALUES (33, 'personnelfiles_post', 'personnelfiles_post_query_get');

-- ----------------------------
-- Table structure for mime
-- ----------------------------
DROP TABLE IF EXISTS `mime`;
CREATE TABLE `mime`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 613 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('39F498A8-AE7B-049F-C78A-E16941E70FC5', 0, '权限管理', 'Admin', 'permission', '1.9.21', '权限管理模块用于身份认证以及授权等功能', 147835);
INSERT INTO `module` VALUES ('39f4f6c5-77f2-7e31-27bd-e40cdbf7253f', 1, '通用模块', 'Common', 'database', '1.7.0', 'NetModular Module Common(通用模块) - WebHost', 48349);
INSERT INTO `module` VALUES ('39f4f6c5-780b-4f7a-8f52-7c1dec388c0a', 2, '代码生成', 'CodeGenerator', 'develop', '1.7.8', 'NetModular Module CodeGenerator(代码生成) - WebHost', 37174);
INSERT INTO `module` VALUES ('39f4f6c5-781a-2da3-2037-ad0c2983316d', 3, '任务调度', 'Quartz', 'timer', '1.6.4', 'NetModular Module Quartz(任务调度) - WebHost', 26113);
INSERT INTO `module` VALUES ('39f4f6c5-7822-51ab-2661-b29a1c1c90bb', 4, '人事档案', 'PersonnelFiles', 'personnel-files', '1.6.2', 'NetModular Module PersonnelFiles(人事档案) - WebHost', 55766);

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
INSERT INTO `permission` VALUES ('39f4f6dc-0776-4168-1aa6-e64f3784dfe2', '账户管理_添加', 'Admin', 'Account', 'Add', 2, 'admin_account_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0776-ff69-a821-da95c2607e0a', '账户管理_查询', 'Admin', 'Account', 'Query', 0, 'admin_account_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0777-dd82-225b-6eb0256dfdfc', '账户管理_编辑', 'Admin', 'Account', 'Edit', 0, 'admin_account_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0777-fb24-e78a-8d842bce5b78', '账户管理_更新', 'Admin', 'Account', 'Update', 2, 'admin_account_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0778-2061-50b1-e2fb2378c1bc', '账户管理_绑定角色', 'Admin', 'Account', 'BindRole', 2, 'admin_account_bindrole_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0778-5a06-6bd3-54d1e24df876', '账户管理_删除', 'Admin', 'Account', 'Delete', 3, 'admin_account_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0778-c85e-a699-b13404520a53', '账户管理_重置密码', 'Admin', 'Account', 'ResetPassword', 2, 'admin_account_resetpassword_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0779-2e18-78f4-1994bab76a7a', '审计信息_查询', 'Admin', 'AuditInfo', 'Query', 0, 'admin_auditinfo_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0779-65ea-0edf-4036fcd45ef5', '账户管理_激活账户', 'Admin', 'Account', 'Active', 2, 'admin_account_active_post');
INSERT INTO `permission` VALUES ('39f4f6dc-077a-555c-8f4c-9d0421df8995', '审计信息_导出', 'Admin', 'AuditInfo', 'Export', 2, 'admin_auditinfo_export_post');
INSERT INTO `permission` VALUES ('39f4f6dc-077a-7f4c-e6c0-667870f88d04', '审计信息_详情', 'Admin', 'AuditInfo', 'Details', 0, 'admin_auditinfo_details_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077a-cb29-e1cc-f17475b68741', '按钮管理_查询', 'Admin', 'Button', 'Query', 0, 'admin_button_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077b-2142-d19f-438c0e9e8385', '配置管理_编辑', 'Admin', 'Config', 'Edit', 0, 'admin_config_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077b-43de-ad83-1765369d448c', '缓存管理_查询指定模块缓存键列表', 'Admin', 'Cache', 'Query', 0, 'admin_cache_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077b-aa2d-ceec-cd690537f294', '缓存管理_清除指定前缀的缓存', 'Admin', 'Cache', 'Clear', 3, 'admin_cache_clear_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-077c-2152-c6d7-da26eccdc62d', '文件管理_查询', 'Admin', 'File', 'Query', 0, 'admin_file_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077c-5963-9984-c3ace66ca29c', '配置管理_配置描述符列表', 'Admin', 'Config', 'Descriptors', 0, 'admin_config_descriptors_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077c-8499-a4d6-d5e29e8cfd1e', '配置管理_保存', 'Admin', 'Config', 'Update', 2, 'admin_config_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-077d-5f45-7ef5-6bac86c76f07', '文件管理_删除(逻辑删除)', 'Admin', 'File', 'Delete', 3, 'admin_file_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-077d-6c9e-3a62-7ece021ea1c8', '文件管理_删除(物理删除)', 'Admin', 'File', 'HardDelete', 3, 'admin_file_harddelete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-077d-b768-b01e-107ee6d46f5e', '文件管理_根据ID获取', 'Admin', 'File', 'Get', 0, 'admin_file_get_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077e-5664-e964-32e5fdd18ae8', '日志管理_导出登录日志', 'Admin', 'Log', 'LoginExport', 2, 'admin_log_loginexport_post');
INSERT INTO `permission` VALUES ('39f4f6dc-077e-72f9-eab9-ecc309370984', '菜单管理_菜单树', 'Admin', 'Menu', 'Tree', 0, 'admin_menu_tree_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077e-e536-a019-fb8934a8eb48', '日志管理_查询登录日志', 'Admin', 'Log', 'Login', 0, 'admin_log_login_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077f-1f64-a64c-bd0348f2d41e', '菜单管理_查询菜单列表', 'Admin', 'Menu', 'Query', 0, 'admin_menu_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-077f-4f98-3750-8ca809f70c7e', '菜单管理_删除', 'Admin', 'Menu', 'Delete', 3, 'admin_menu_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-077f-51e5-c65a-31db6a674b54', '菜单管理_添加', 'Admin', 'Menu', 'Add', 2, 'admin_menu_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0780-55c5-e391-7255ed200272', '菜单管理_获取排序信息', 'Admin', 'Menu', 'Sort', 0, 'admin_menu_sort_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0780-8d27-3c75-630d9c929a64', '菜单管理_编辑', 'Admin', 'Menu', 'Edit', 0, 'admin_menu_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0780-caae-af16-dfd094845533', '菜单管理_更新', 'Admin', 'Menu', 'Update', 2, 'admin_menu_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0781-442e-b827-1c8262f232ee', 'MIME管理_查询', 'Admin', 'Mime', 'Query', 0, 'admin_mime_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0781-8f30-8d48-ae42fde67ce4', '菜单管理_更新排序信息', 'Admin', 'Menu', 'Sort', 2, 'admin_menu_sort_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0781-ebfe-1575-cb90637c5b55', 'MIME管理_添加', 'Admin', 'Mime', 'Add', 2, 'admin_mime_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0782-59c8-34f0-ed37e835c33c', 'MIME管理_删除', 'Admin', 'Mime', 'Delete', 3, 'admin_mime_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0782-90a0-74f4-f34f3b9e1f38', 'MIME管理_修改', 'Admin', 'Mime', 'Update', 2, 'admin_mime_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0782-a404-fb2c-0e13550930f3', 'MIME管理_编辑', 'Admin', 'Mime', 'Edit', 0, 'admin_mime_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0783-2fc7-d704-3795adf1ab87', '模块信息_同步', 'Admin', 'Module', 'Sync', 2, 'admin_module_sync_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0783-999b-9553-d25e9546cce6', '模块信息_查询', 'Admin', 'Module', 'Query', 0, 'admin_module_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0783-f423-c5b2-9083e6d36fff', '权限接口_查询', 'Admin', 'Permission', 'Query', 0, 'admin_permission_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0784-0092-aa87-aceabb624e89', '权限接口_权限树', 'Admin', 'Permission', 'Tree', 0, 'admin_permission_tree_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0784-1a0c-c837-27e623a9fb66', '权限接口_根据编码查询', 'Admin', 'Permission', 'QueryByCodes', 0, 'admin_permission_querybycodes_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0784-6d81-7b33-0c2800adc18b', '角色管理_查询', 'Admin', 'Role', 'Query', 0, 'admin_role_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0785-409d-9810-5015831acfbb', '角色管理_删除', 'Admin', 'Role', 'Delete', 3, 'admin_role_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0785-6f89-52b6-00355a168189', '角色管理_修改', 'Admin', 'Role', 'Update', 2, 'admin_role_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0785-9141-786c-652292ed3ef7', '角色管理_编辑', 'Admin', 'Role', 'Edit', 0, 'admin_role_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0785-fee7-4697-1e2e68744fde', '角色管理_添加', 'Admin', 'Role', 'Add', 2, 'admin_role_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0786-4305-7eb0-c140fba432f4', '角色管理_获取角色关联的菜单按钮列表', 'Admin', 'Role', 'MenuButtonList', 0, 'admin_role_menubuttonlist_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0786-80c3-1704-9f0586073896', '角色管理_获取角色的关联菜单列表', 'Admin', 'Role', 'MenuList', 0, 'admin_role_menulist_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0786-eba1-f4f6-e080dc54374a', '角色管理_绑定菜单', 'Admin', 'Role', 'BindMenu', 2, 'admin_role_bindmenu_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0787-2e12-28fe-d16017a045d2', '角色管理_绑定菜单按钮', 'Admin', 'Role', 'BindMenuButton', 2, 'admin_role_bindmenubutton_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0787-87ac-eca4-b8381757fac3', '角色管理_绑定平台权限列表', 'Admin', 'Role', 'PlatformPermissionBind', 2, 'admin_role_platformpermissionbind_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0787-ef38-9ca6-ffcd5644640d', '角色管理_查询平台权限列表', 'Admin', 'Role', 'PlatformPermissionList', 0, 'admin_role_platformpermissionlist_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0788-0141-644e-bec3dba64bfc', '通用工具_平台下拉列表', 'Admin', 'Tool', 'PlatformSelect', 0, 'admin_tool_platformselect_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0788-1be3-771b-4354f4a238d8', '实体管理_查询', 'CodeGenerator', 'Class', 'Query', 0, 'codegenerator_class_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0788-40b5-7ba4-90266f06636f', '通用工具_通用枚举下拉列表', 'Admin', 'Tool', 'EnumSelect', 0, 'admin_tool_enumselect_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0788-4ab2-85b8-7c4e7f94d06e', '实体管理_添加', 'CodeGenerator', 'Class', 'Add', 2, 'codegenerator_class_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0789-0e59-5d5b-de8f3b0b6527', '实体管理_修改', 'CodeGenerator', 'Class', 'Update', 2, 'codegenerator_class_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0789-6930-cdfe-36c7762ef2fa', '实体管理_删除', 'CodeGenerator', 'Class', 'Delete', 3, 'codegenerator_class_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0789-a29a-2b34-2a7d61147a42', '实体管理_编辑', 'CodeGenerator', 'Class', 'Edit', 0, 'codegenerator_class_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078a-387b-e164-98a072cd1efe', '枚举管理_查询', 'CodeGenerator', 'Enum', 'Query', 0, 'codegenerator_enum_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078a-4256-c329-3dc463ae85ad', '枚举管理_添加', 'CodeGenerator', 'Enum', 'Add', 2, 'codegenerator_enum_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078a-7b9b-0820-5e618239f1e0', '实体管理_生成代码', 'CodeGenerator', 'Class', 'BuildCode', 0, 'codegenerator_class_buildcode_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078b-646c-e113-1a5f538b8d9a', '枚举管理_删除', 'CodeGenerator', 'Enum', 'Delete', 3, 'codegenerator_enum_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-078b-b80e-ac6a-93631fe4bae8', '枚举管理_编辑', 'CodeGenerator', 'Enum', 'Edit', 0, 'codegenerator_enum_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078b-d45c-daf8-a9f81651cab9', '枚举管理_修改', 'CodeGenerator', 'Enum', 'Update', 2, 'codegenerator_enum_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078b-fe5d-d172-df77288bc40f', '枚举项管理_查询', 'CodeGenerator', 'EnumItem', 'Query', 0, 'codegenerator_enumitem_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078c-4f7c-0812-af32aef3b8c5', '枚举项管理_删除', 'CodeGenerator', 'EnumItem', 'Delete', 3, 'codegenerator_enumitem_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-078c-c246-7659-bb7cff5fdfed', '枚举项管理_添加', 'CodeGenerator', 'EnumItem', 'Add', 2, 'codegenerator_enumitem_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078c-f804-c8dd-1f5963b3249c', '枚举项管理_编辑', 'CodeGenerator', 'EnumItem', 'Edit', 0, 'codegenerator_enumitem_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078d-1d50-f203-2c0ac2266f5c', '枚举项管理_修改', 'CodeGenerator', 'EnumItem', 'Update', 2, 'codegenerator_enumitem_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078d-2c12-ce75-0ca004f66f4b', '枚举项管理_获取排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 0, 'codegenerator_enumitem_sort_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078d-9bfa-45f3-7fcfe2261422', '枚举项管理_更新排序信息', 'CodeGenerator', 'EnumItem', 'Sort', 2, 'codegenerator_enumitem_sort_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078e-51d8-9354-c10a10eb4971', '模型属性管理_添加', 'CodeGenerator', 'ModelProperty', 'Add', 2, 'codegenerator_modelproperty_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078e-81ff-552f-a728932e8e42', '模型属性管理_删除', 'CodeGenerator', 'ModelProperty', 'Delete', 3, 'codegenerator_modelproperty_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-078e-b6d9-592a-8d2be2207c7e', '模型属性管理_查询', 'CodeGenerator', 'ModelProperty', 'Query', 0, 'codegenerator_modelproperty_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078f-0fbe-fe53-c1992373b005', '模型属性管理_获取排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 0, 'codegenerator_modelproperty_sort_get');
INSERT INTO `permission` VALUES ('39f4f6dc-078f-47e0-1e25-b042cb0721ff', '模型属性管理_修改', 'CodeGenerator', 'ModelProperty', 'Update', 2, 'codegenerator_modelproperty_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-078f-6238-249b-7574be02a459', '模型属性管理_编辑', 'CodeGenerator', 'ModelProperty', 'Edit', 0, 'codegenerator_modelproperty_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0790-65c8-6a41-7d39a42779df', '模型属性管理_更新排序信息', 'CodeGenerator', 'ModelProperty', 'Sort', 2, 'codegenerator_modelproperty_sort_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0790-6e48-34f8-554e23f7a781', '模型属性管理_获取下拉列表', 'CodeGenerator', 'ModelProperty', 'Select', 0, 'codegenerator_modelproperty_select_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0790-a6d0-10a6-a595e4f38142', '模型属性管理_修改可空状态', 'CodeGenerator', 'ModelProperty', 'UpdateNullable', 2, 'codegenerator_modelproperty_updatenullable_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0791-0922-81e3-2b5596fe8900', '模块管理_添加', 'CodeGenerator', 'Module', 'Add', 2, 'codegenerator_module_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0791-9873-7a0e-b5b3282cd490', '模型属性管理_从实体中导入属性', 'CodeGenerator', 'ModelProperty', 'ImportFromEntity', 2, 'codegenerator_modelproperty_importfromentity_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0791-c0fb-6319-a71397eb401f', '模块管理_查询', 'CodeGenerator', 'Module', 'Query', 0, 'codegenerator_module_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0792-41d4-5f38-65975a492bed', '模块管理_编辑', 'CodeGenerator', 'Module', 'Edit', 0, 'codegenerator_module_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0792-56c2-948e-95a56310ddab', '模块管理_删除', 'CodeGenerator', 'Module', 'Delete', 3, 'codegenerator_module_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0792-7bdd-11cf-df0cb5715cb9', '模块管理_修改', 'CodeGenerator', 'Module', 'Update', 2, 'codegenerator_module_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0793-08b5-d6e4-b9f85703a9a6', '在线模块管理_添加', 'CodeGenerator', 'OnlineModule', 'Add', 2, 'codegenerator_onlinemodule_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0793-1839-a463-ea6eb51c815d', '在线模块管理_查询', 'CodeGenerator', 'OnlineModule', 'Query', 0, 'codegenerator_onlinemodule_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0793-4553-c91b-f7240c2cf66d', '模块管理_生成代码', 'CodeGenerator', 'Module', 'BuildCode', 2, 'codegenerator_module_buildcode_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0794-5d9a-f865-9a0425a62c91', '在线模块管理_删除', 'CodeGenerator', 'OnlineModule', 'Delete', 3, 'codegenerator_onlinemodule_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0794-920c-7e42-1fb68f48a857', '在线模块管理_编辑', 'CodeGenerator', 'OnlineModule', 'Edit', 0, 'codegenerator_onlinemodule_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0794-a906-8be3-fbaad5a6e0dc', '在线模块管理_修改', 'CodeGenerator', 'OnlineModule', 'Update', 2, 'codegenerator_onlinemodule_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0795-22b8-67c9-b387701fd3e5', '实体属性管理_添加', 'CodeGenerator', 'Property', 'Add', 2, 'codegenerator_property_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0795-4c1e-a6dd-be8d4faa1a0b', '实体属性管理_查询', 'CodeGenerator', 'Property', 'Query', 0, 'codegenerator_property_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0796-5155-d0e0-1a030095ec14', '实体属性管理_编辑', 'CodeGenerator', 'Property', 'Edit', 0, 'codegenerator_property_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0796-c2dc-24ef-e18122d403d2', '实体属性管理_删除', 'CodeGenerator', 'Property', 'Delete', 3, 'codegenerator_property_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-0796-eb4e-40c4-9c48036e2fd0', '实体属性管理_修改', 'CodeGenerator', 'Property', 'Update', 2, 'codegenerator_property_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0797-3930-8dee-e50bfa9c4649', '实体属性管理_更新排序信息', 'CodeGenerator', 'Property', 'Sort', 2, 'codegenerator_property_sort_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0797-7c94-6c98-dcb6d74d595f', '实体属性管理_获取排序信息', 'CodeGenerator', 'Property', 'Sort', 0, 'codegenerator_property_sort_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0797-8415-9031-3ff565bb27c2', '实体属性管理_获取属性类型下拉列表', 'CodeGenerator', 'Property', 'PropertyTypeSelect', 0, 'codegenerator_property_propertytypeselect_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0798-8e93-c170-527c11a5cfe1', '实体属性管理_修改可空状态', 'CodeGenerator', 'Property', 'UpdateNullable', 2, 'codegenerator_property_updatenullable_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0798-cc71-7574-eafdd2aedcb8', '实体属性管理_修改列表显示状态', 'CodeGenerator', 'Property', 'UpdateShowInList', 2, 'codegenerator_property_updateshowinlist_post');
INSERT INTO `permission` VALUES ('39f4f6dc-0799-6254-9573-a3cda8d16395', '实体属性管理_获取下拉列表', 'CodeGenerator', 'Property', 'Select', 0, 'codegenerator_property_select_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0799-a293-983a-c99aa51fd528', '区划代码管理_查询', 'Common', 'Area', 'Query', 0, 'common_area_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-0799-e944-ee02-c727f48236e7', '区划代码管理_添加', 'Common', 'Area', 'Add', 2, 'common_area_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079a-4a67-5f61-946222fbbdca', '区划代码管理_编辑', 'Common', 'Area', 'Edit', 0, 'common_area_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079a-4eab-b770-c507d368c5ed', '区划代码管理_修改', 'Common', 'Area', 'Update', 2, 'common_area_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079a-6009-7a87-1060a22dddfd', '区划代码管理_删除', 'Common', 'Area', 'Delete', 3, 'common_area_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-079b-54a4-2a8c-823fcd7ced91', '字典管理_添加', 'Common', 'Dict', 'Add', 2, 'common_dict_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079b-9f9f-6a6c-52ba64f709dc', '附件表管理_查询', 'Common', 'Attachment', 'Query', 0, 'common_attachment_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079b-b730-7779-e8fa5fd25af7', '字典管理_查询', 'Common', 'Dict', 'Query', 0, 'common_dict_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079c-52b4-52c8-1e080864f03b', '字典管理_删除', 'Common', 'Dict', 'Delete', 3, 'common_dict_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-079c-bb68-f9d9-bb781328c1a9', '字典管理_编辑', 'Common', 'Dict', 'Edit', 0, 'common_dict_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079c-de57-3162-cab497191b53', '字典管理_修改', 'Common', 'Dict', 'Update', 2, 'common_dict_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079d-5a22-711d-53b883dcd4f8', '字典分组管理_添加', 'Common', 'DictGroup', 'Add', 2, 'common_dictgroup_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079d-8ecf-ec32-f39489db40af', '字典分组管理_查询', 'Common', 'DictGroup', 'Query', 0, 'common_dictgroup_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079e-79bc-cc37-0a4e0b70a8c6', '字典分组管理_编辑', 'Common', 'DictGroup', 'Edit', 0, 'common_dictgroup_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-079e-9181-bc6a-9c99c077e369', '字典分组管理_删除', 'Common', 'DictGroup', 'Delete', 3, 'common_dictgroup_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-079e-de8c-c315-85e719811ac4', '字典分组管理_修改', 'Common', 'DictGroup', 'Update', 2, 'common_dictgroup_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079f-114e-a7bf-a37dfaf1518d', '字典数据项管理_添加', 'Common', 'DictItem', 'Add', 2, 'common_dictitem_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-079f-637e-eb1c-2a8a516e2ed3', '字典数据项管理_删除', 'Common', 'DictItem', 'Delete', 3, 'common_dictitem_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-079f-ef6e-0c7e-97bb3f572892', '字典数据项管理_查询', 'Common', 'DictItem', 'Query', 0, 'common_dictitem_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a0-c5b2-5d09-0351dfa8ff22', '字典数据项管理_修改', 'Common', 'DictItem', 'Update', 2, 'common_dictitem_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a0-e1a2-3db7-0716239f8f0e', '多媒体管理_查询', 'Common', 'MediaType', 'Query', 0, 'common_mediatype_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a0-fdee-6a03-fe0bcc669e9e', '字典数据项管理_编辑', 'Common', 'DictItem', 'Edit', 0, 'common_dictitem_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a1-2537-66b6-822b01f7fef2', '多媒体管理_编辑', 'Common', 'MediaType', 'Edit', 0, 'common_mediatype_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a1-5bce-4dd8-9b6fcb68dc8f', '多媒体管理_删除', 'Common', 'MediaType', 'Delete', 3, 'common_mediatype_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07a1-77a6-588f-2a1fc583fa2c', '多媒体管理_添加', 'Common', 'MediaType', 'Add', 2, 'common_mediatype_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a2-18e6-1c27-c576c57d4fda', '部门管理_部门树', 'PersonnelFiles', 'Department', 'Tree', 0, 'personnelfiles_department_tree_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a2-7ba4-8f79-bf0bcbd2f763', '多媒体管理_修改', 'Common', 'MediaType', 'Update', 2, 'common_mediatype_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a2-9150-24c7-f392d8e914ec', '部门管理_查询', 'PersonnelFiles', 'Department', 'Query', 0, 'personnelfiles_department_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a3-27aa-9162-366617208301', '部门管理_编辑', 'PersonnelFiles', 'Department', 'Edit', 0, 'personnelfiles_department_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a3-b30d-d084-51f26b66802a', '部门管理_删除', 'PersonnelFiles', 'Department', 'Delete', 3, 'personnelfiles_department_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07a3-e726-7415-3c92c632cb3e', '部门管理_添加', 'PersonnelFiles', 'Department', 'Add', 2, 'personnelfiles_department_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a4-9188-a0bb-180afca93bc1', '员工管理_查询', 'PersonnelFiles', 'Employee', 'Query', 0, 'personnelfiles_employee_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a4-b59f-0639-834e990cf589', '员工管理_添加', 'PersonnelFiles', 'Employee', 'Add', 2, 'personnelfiles_employee_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a4-c2a9-7766-2144a8318836', '部门管理_修改', 'PersonnelFiles', 'Department', 'Update', 2, 'personnelfiles_department_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a5-761b-7f2f-c20399987658', '员工管理_编辑', 'PersonnelFiles', 'Employee', 'Edit', 0, 'personnelfiles_employee_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a5-8386-6b9a-877291b8989e', '员工管理_修改', 'PersonnelFiles', 'Employee', 'Update', 2, 'personnelfiles_employee_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a5-a39f-5672-a2e437c84cc2', '员工管理_删除', 'PersonnelFiles', 'Employee', 'Delete', 3, 'personnelfiles_employee_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07a6-82e5-31c6-3e45ef37063f', '员工管理_离职', 'PersonnelFiles', 'Employee', 'Leave', 2, 'personnelfiles_employee_leave_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a6-97b1-595f-1fdc37740a55', '员工管理_编辑个人信息', 'PersonnelFiles', 'Employee', 'EditPersonal', 0, 'personnelfiles_employee_editpersonal_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a6-b4b4-9894-09148fa6d01c', '员工管理_获取离职信息', 'PersonnelFiles', 'Employee', 'LeaveInfo', 0, 'personnelfiles_employee_leaveinfo_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a7-71a9-d3e7-12d6d8738413', '员工管理_添加家庭情况', 'PersonnelFiles', 'Employee', 'FamilyAdd', 2, 'personnelfiles_employee_familyadd_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a7-b292-07f1-b2618f981b3f', '员工管理_修改个人信息', 'PersonnelFiles', 'Employee', 'UpdatePersonal', 2, 'personnelfiles_employee_updatepersonal_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a7-e43a-dc26-fc7466eac032', '员工管理_查询家庭情况信息列表', 'PersonnelFiles', 'Employee', 'FamilyQuery', 0, 'personnelfiles_employee_familyquery_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a8-1a65-7754-fbfb47d21980', '员工管理_修改家庭情况', 'PersonnelFiles', 'Employee', 'FamilyUpdate', 2, 'personnelfiles_employee_familyupdate_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07a8-aa9a-8bbc-9d23e52f08ca', '员工管理_编辑家庭情况', 'PersonnelFiles', 'Employee', 'FamilyEdit', 0, 'personnelfiles_employee_familyedit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a8-e357-c270-d9308f979184', '员工管理_删除家庭情况', 'PersonnelFiles', 'Employee', 'FamilyDelete', 3, 'personnelfiles_employee_familydelete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07a9-c865-d965-eccbb43666f9', '员工管理_联系信息详情', 'PersonnelFiles', 'Employee', 'ContactDetails', 0, 'personnelfiles_employee_contactdetails_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a9-cd99-79e0-0e58e7d18624', '员工管理_编辑通讯信息', 'PersonnelFiles', 'Employee', 'EditContact', 0, 'personnelfiles_employee_editcontact_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07a9-d50a-73d6-5520ffa138e9', '员工管理_修改联系信息', 'PersonnelFiles', 'Employee', 'UpdateContact', 2, 'personnelfiles_employee_updatecontact_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07aa-10fb-2a88-066d7d65e9ee', '员工管理_查询教育背景信息列表', 'PersonnelFiles', 'Employee', 'EducationQuery', 0, 'personnelfiles_employee_educationquery_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07aa-1bb7-63d0-ce9ef1d3b369', '员工管理_添加教育背景', 'PersonnelFiles', 'Employee', 'EducationAdd', 2, 'personnelfiles_employee_educationadd_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07aa-9289-d93c-876aa1896ae5', '员工管理_删除教育背景', 'PersonnelFiles', 'Employee', 'EducationDelete', 3, 'personnelfiles_employee_educationdelete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07ab-1909-0a52-7693baa8c2d7', '员工管理_编辑教育背景', 'PersonnelFiles', 'Employee', 'EducationEdit', 0, 'personnelfiles_employee_educationedit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07ab-2a1e-75e0-5218dd00d9dd', '员工管理_修改教育背景', 'PersonnelFiles', 'Employee', 'EducationUpdate', 2, 'personnelfiles_employee_educationupdate_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07ab-9cb0-db9d-26c5cfcd6153', '员工管理_查询工作经历信息列表', 'PersonnelFiles', 'Employee', 'WorkQuery', 0, 'personnelfiles_employee_workquery_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07ac-0837-eba3-792873e3544f', '员工管理_删除工作经历', 'PersonnelFiles', 'Employee', 'WorkDelete', 3, 'personnelfiles_employee_workdelete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07ac-65ce-f83b-fe745d9ebe70', '员工管理_添加工作经历', 'PersonnelFiles', 'Employee', 'WorkAdd', 2, 'personnelfiles_employee_workadd_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07ac-a407-7b0d-3b1c270b1aa8', '员工管理_编辑工作经历', 'PersonnelFiles', 'Employee', 'WorkEdit', 0, 'personnelfiles_employee_workedit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07ad-0332-e954-5898c94f9668', '员工管理_账户编辑', 'PersonnelFiles', 'Employee', 'EditAccount', 0, 'personnelfiles_employee_editaccount_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07ad-1286-c90c-c2a1e40f161b', '员工管理_修改工作经历', 'PersonnelFiles', 'Employee', 'WorkUpdate', 2, 'personnelfiles_employee_workupdate_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07ad-4e55-5956-adb82a202349', '员工管理_账户更新', 'PersonnelFiles', 'Employee', 'UpdateAccount', 2, 'personnelfiles_employee_updateaccount_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07ae-556d-01ca-ff1b305f8508', '职位管理_查询', 'PersonnelFiles', 'Position', 'Query', 0, 'personnelfiles_position_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07ae-5d0d-b4d9-1539e10fde9d', '职位管理_删除', 'PersonnelFiles', 'Position', 'Delete', 3, 'personnelfiles_position_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07ae-719d-f521-c232876ca7d8', '职位管理_添加', 'PersonnelFiles', 'Position', 'Add', 2, 'personnelfiles_position_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07af-09ec-ca9c-8a37812c0789', '职位管理_编辑', 'PersonnelFiles', 'Position', 'Edit', 0, 'personnelfiles_position_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07af-1f2e-7250-29534763b2c8', '职位管理_修改', 'PersonnelFiles', 'Position', 'Get', 0, 'personnelfiles_position_get_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07af-c38c-427d-4f651041b516', '职位管理_修改', 'PersonnelFiles', 'Position', 'Update', 2, 'personnelfiles_position_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b0-41f3-a806-74793686d74e', '岗位管理_添加', 'PersonnelFiles', 'Post', 'Add', 2, 'personnelfiles_post_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b0-4933-7e6e-525313f0e445', '岗位管理_查询', 'PersonnelFiles', 'Post', 'Query', 0, 'personnelfiles_post_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b0-51ee-42e2-2bf2a1094a72', '岗位管理_删除', 'PersonnelFiles', 'Post', 'Delete', 3, 'personnelfiles_post_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07b1-19e3-a854-677e6126770c', '岗位管理_修改', 'PersonnelFiles', 'Post', 'Update', 2, 'personnelfiles_post_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b1-6a69-f2a7-87b3b6fa86de', '岗位管理_编辑', 'PersonnelFiles', 'Post', 'Edit', 0, 'personnelfiles_post_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b1-fd8b-3977-243d041802e2', '任务组管理_查询', 'Quartz', 'Group', 'Query', 0, 'quartz_group_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b2-4533-8588-628d2c6a0bf2', '任务管理_查询', 'Quartz', 'Job', 'Query', 0, 'quartz_job_query_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b2-8d48-e31a-624932de9e79', '任务组管理_删除', 'Quartz', 'Group', 'Delete', 3, 'quartz_group_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07b2-b2c3-6a23-e0f4a38d9699', '任务组管理_添加', 'Quartz', 'Group', 'Add', 2, 'quartz_group_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b3-03c3-62ea-e5b4cbf7a301', '任务管理_修改', 'Quartz', 'Job', 'Update', 2, 'quartz_job_update_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b3-a5bc-63bc-0020753fc235', '任务管理_添加', 'Quartz', 'Job', 'Add', 2, 'quartz_job_add_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b3-e6ac-e9d5-fa15d4082d1f', '任务管理_编辑', 'Quartz', 'Job', 'Edit', 0, 'quartz_job_edit_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b4-6960-28ed-68847e22c686', '任务管理_删除', 'Quartz', 'Job', 'Delete', 3, 'quartz_job_delete_delete');
INSERT INTO `permission` VALUES ('39f4f6dc-07b4-7808-4ae8-28f66a4994b1', '任务管理_暂停', 'Quartz', 'Job', 'Pause', 2, 'quartz_job_pause_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b4-dbbe-718c-8def74d3c5ef', '任务管理_回复', 'Quartz', 'Job', 'Resume', 2, 'quartz_job_resume_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b5-c799-a6fa-8bb3bd8e0c05', '任务管理_日志', 'Quartz', 'Job', 'Log', 0, 'quartz_job_log_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b5-e590-235f-f1ce7439c130', '任务管理_添加HTTP任务', 'Quartz', 'Job', 'AddHttpJob', 2, 'quartz_job_addhttpjob_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b5-f30e-7af3-80f1cd30be84', '任务管理_停止', 'Quartz', 'Job', 'Stop', 2, 'quartz_job_stop_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b6-2770-33cf-144dcdaf4eb5', '任务管理_编辑HTTP任务', 'Quartz', 'Job', 'EditHttpJob', 0, 'quartz_job_edithttpjob_get');
INSERT INTO `permission` VALUES ('39f4f6dc-07b6-8c62-b101-c04c78c251ce', '任务管理_修改HTTP任务', 'Quartz', 'Job', 'UpdateHttpJob', 2, 'quartz_job_updatehttpjob_post');
INSERT INTO `permission` VALUES ('39f4f6dc-07b7-5c7e-124a-2ae63e05bc1a', '任务管理_HTTP任务详情', 'Quartz', 'Job', 'JobHttpDetails', 0, 'quartz_job_jobhttpdetails_get');

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
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (18, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '00000000-0000-0000-0000-000000000000');
INSERT INTO `role_menu` VALUES (19, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-27fe-b795-c455-9b186899d7dc');
INSERT INTO `role_menu` VALUES (20, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-9558-4348-bc5d-04d381baeb8d');
INSERT INTO `role_menu` VALUES (21, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad');
INSERT INTO `role_menu` VALUES (22, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-ab84-2716-d29e-0329550fc054');
INSERT INTO `role_menu` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-b70c-560a-cc19-dff032ceae31');
INSERT INTO `role_menu` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-c3f3-c677-c8cc-a9a2ff48c86c');
INSERT INTO `role_menu` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c5-fccf-2077-3986-e1ba9d04bd2d');
INSERT INTO `role_menu` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c');
INSERT INTO `role_menu` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-76cf-2c05-45c0-8d0c6a790800');
INSERT INTO `role_menu` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c5-cb77-41f2-d1ea-1ff64ccf61f7');
INSERT INTO `role_menu` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4475-1eac-f74d-e09aedab86a2');
INSERT INTO `role_menu` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117');
INSERT INTO `role_menu` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c5-a83d-fae7-aaeb-0dafea50c1b0');
INSERT INTO `role_menu` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-c4e6-cc38-4560-b64de62b946a');
INSERT INTO `role_menu` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-f59f-dff1-08ec-859e5bcd3be7');
INSERT INTO `role_menu` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd');
INSERT INTO `role_menu` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-2405-0bb4-3476-74bd905db462');
INSERT INTO `role_menu` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-400a-b33d-0c8f-e878aaaba954');
INSERT INTO `role_menu` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-d5dc-90a5-6cc3-b3a0b9040643');
INSERT INTO `role_menu` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-ed14-45e0-718c-7d650d850143');
INSERT INTO `role_menu` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-ffc8-9de6-77eb-0fe0a8364f8c');
INSERT INTO `role_menu` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49d-0eb2-662f-2a0d-706f41140d12');
INSERT INTO `role_menu` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-1756-9047-34b5-6dcfadefe28d');
INSERT INTO `role_menu` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-8ccc-2a54-dac7-b5dd6503d91a');
INSERT INTO `role_menu` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4d6d2-3508-0cfc-205e-7bd7b887f3f4');
INSERT INTO `role_menu` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-adf2-d90f-9626-99acecc76c37');
INSERT INTO `role_menu` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49c-9ef2-c04b-fc63-5cdc9811c506');
INSERT INTO `role_menu` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4d6b4-cb9e-0ba7-e46e-442013f4d8ba');
INSERT INTO `role_menu` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-10a9-fc03-fcbd-b6a8a29a3709');
INSERT INTO `role_menu` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-5f6b-1879-7d4c-7915512406e9');
INSERT INTO `role_menu` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-6e11-71de-e74b-67b7e152b442');
INSERT INTO `role_menu` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49b-5fc3-33be-0fcd-652929d9ea73');
INSERT INTO `role_menu` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f3c49b-d757-ea18-e9c4-d9c768f77512');

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
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu_button
-- ----------------------------
INSERT INTO `role_menu_button` VALUES (1, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-ED14-45E0-718C-7D650D850143', '39F3C49C-ED82-7E34-4FAC-550444D13E14');
INSERT INTO `role_menu_button` VALUES (2, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-ED14-45E0-718C-7D650D850143', '39F3C49C-EDE5-837D-4A08-746A4794D160');
INSERT INTO `role_menu_button` VALUES (3, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-ED14-45E0-718C-7D650D850143', '39F3C49C-EE67-9EAC-BD42-2AF470D70385');
INSERT INTO `role_menu_button` VALUES (4, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-ED14-45E0-718C-7D650D850143', '39F3C49C-EEA9-FAA1-BCC6-23F892D195B7');
INSERT INTO `role_menu_button` VALUES (5, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', '39F3C49D-0035-662E-8E92-CF0B0EF43855');
INSERT INTO `role_menu_button` VALUES (6, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', '39F3C49D-0084-78DE-1B55-23BB917DBDCD');
INSERT INTO `role_menu_button` VALUES (7, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', '39F3C49D-00F7-C590-62C8-3569297D9146');
INSERT INTO `role_menu_button` VALUES (8, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', '39F3C49D-0146-3473-B0C2-9F9F321137EF');
INSERT INTO `role_menu_button` VALUES (9, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-FFC8-9DE6-77EB-0FE0A8364F8C', '39F3C49D-01C6-750C-7855-0D009B351D1B');
INSERT INTO `role_menu_button` VALUES (10, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49D-0EB2-662F-2A0D-706F41140D12', '39F3C49D-0F00-050E-F52F-2E1AA73D0F6B');
INSERT INTO `role_menu_button` VALUES (11, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49D-0EB2-662F-2A0D-706F41140D12', '39F3C49D-0F50-B447-D344-D9C587E19736');
INSERT INTO `role_menu_button` VALUES (12, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49D-0EB2-662F-2A0D-706F41140D12', '39F3C49D-0FD9-68D3-6291-EB1E11BF1F91');
INSERT INTO `role_menu_button` VALUES (13, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49D-0EB2-662F-2A0D-706F41140D12', '39F3C49D-1029-C143-C624-4975CE886AEA');
INSERT INTO `role_menu_button` VALUES (14, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-9EF2-C04B-FC63-5CDC9811C506', '39F3C49C-9F53-DF6B-BDE6-046073EEC059');
INSERT INTO `role_menu_button` VALUES (15, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F3C49C-D5DC-90A5-6CC3-B3A0B9040643', '39F498BA-12D2-AF34-41C6-2F9987560E79');
INSERT INTO `role_menu_button` VALUES (16, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4C72F-6E11-71DE-E74B-67B7E152B442', '39F4C738-2DC8-0B41-37EB-A2C3672F66E4');
INSERT INTO `role_menu_button` VALUES (17, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6B4-CB9E-0BA7-E46E-442013F4D8BA', '39F4D6B4-CC12-185A-5691-732BFFBAC2B4');
INSERT INTO `role_menu_button` VALUES (18, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6B4-CB9E-0BA7-E46E-442013F4D8BA', '39F4D6B4-CC4E-4F33-E7B5-02991EFEB6B0');
INSERT INTO `role_menu_button` VALUES (19, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6B4-CB9E-0BA7-E46E-442013F4D8BA', '39F4D6B4-CC93-4168-8FDE-E45BEF66760A');
INSERT INTO `role_menu_button` VALUES (20, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6D2-3508-0CFC-205E-7BD7B887F3F4', '39F4D6D2-355D-7A8D-DAFE-F04CD45A15ED');
INSERT INTO `role_menu_button` VALUES (21, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6D2-3508-0CFC-205E-7BD7B887F3F4', '39F4D6E6-D574-8A20-4AAD-03EEB369DD70');
INSERT INTO `role_menu_button` VALUES (22, '39F08CFD-8DD0-BB54-4544-C2DC43C6CA38', '39F4D6D2-3508-0CFC-205E-7BD7B887F3F4', '39F4D80E-53B6-0241-D709-DE4D8B5B2685');
INSERT INTO `role_menu_button` VALUES (23, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-9558-4348-bc5d-04d381baeb8d', '39f4f6c7-956c-937d-e320-a30c8159d366');
INSERT INTO `role_menu_button` VALUES (24, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-9558-4348-bc5d-04d381baeb8d', '39f4f6c7-957d-0e79-3c49-fb88a3480ce1');
INSERT INTO `role_menu_button` VALUES (25, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-9558-4348-bc5d-04d381baeb8d', '39f4f6c7-958d-847a-5ae9-a865d661ca79');
INSERT INTO `role_menu_button` VALUES (26, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad', '39f4f6c7-a0f5-bd82-4ecb-531f2bd47ab4');
INSERT INTO `role_menu_button` VALUES (27, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad', '39f4f6c7-a100-7ad9-fe1d-6ba7e56be54a');
INSERT INTO `role_menu_button` VALUES (28, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad', '39f4f6c7-a10e-e918-2a8c-bc0a0efa2e26');
INSERT INTO `role_menu_button` VALUES (29, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad', '39f4f6c7-a11b-d68c-b755-9db84fe4ead1');
INSERT INTO `role_menu_button` VALUES (30, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-a0df-992a-7599-009a880e1bad', '39f4f6c7-a12c-7885-7a9d-2149447a10cf');
INSERT INTO `role_menu_button` VALUES (31, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-ab84-2716-d29e-0329550fc054', '39f4f6c7-ab9a-645c-df42-70ae52edb281');
INSERT INTO `role_menu_button` VALUES (32, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-ab84-2716-d29e-0329550fc054', '39f4f6c7-abaa-2a22-66f5-420bd8f8a207');
INSERT INTO `role_menu_button` VALUES (33, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-ab84-2716-d29e-0329550fc054', '39f4f6c7-abb9-4959-c81c-e1dbad65c017');
INSERT INTO `role_menu_button` VALUES (34, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-b70c-560a-cc19-dff032ceae31', '39f4f6c7-b728-b96f-b832-744a57281f0e');
INSERT INTO `role_menu_button` VALUES (35, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-b70c-560a-cc19-dff032ceae31', '39f4f6c7-b72e-2406-85fb-65aadedd7d3d');
INSERT INTO `role_menu_button` VALUES (36, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-b70c-560a-cc19-dff032ceae31', '39f4f6c7-b73e-fec6-d952-4ed5b3f702db');
INSERT INTO `role_menu_button` VALUES (37, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c', '39f4f6c7-6d7d-7c07-3dac-ee46b6e011b0');
INSERT INTO `role_menu_button` VALUES (38, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c', '39f4f6c7-6d8c-6762-f10d-27eff68f9ffc');
INSERT INTO `role_menu_button` VALUES (39, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c', '39f4f6c7-6d9a-7d41-f5ec-a6bf7f873ed1');
INSERT INTO `role_menu_button` VALUES (40, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c', '39f4f6c7-6d9e-88ec-8591-d1132907bd82');
INSERT INTO `role_menu_button` VALUES (41, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-6d5c-3bcd-16c3-197770baf45c', '39f4f6c7-6dae-596d-b2fc-30695353d59e');
INSERT INTO `role_menu_button` VALUES (42, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-76cf-2c05-45c0-8d0c6a790800', '39f4f6c7-76e6-452e-5ff1-49611007b334');
INSERT INTO `role_menu_button` VALUES (43, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-76cf-2c05-45c0-8d0c6a790800', '39f4f6c7-76f6-f79c-00a3-36152b839a10');
INSERT INTO `role_menu_button` VALUES (44, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-76cf-2c05-45c0-8d0c6a790800', '39f4f6c7-76ff-9806-a2a7-22c4e7ac6f12');
INSERT INTO `role_menu_button` VALUES (45, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-76cf-2c05-45c0-8d0c6a790800', '39f4f6c7-770d-0fde-56b3-97eb77af67cb');
INSERT INTO `role_menu_button` VALUES (46, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4475-1eac-f74d-e09aedab86a2', '39f4f6c7-448e-f2fc-92f9-c45c7439c62c');
INSERT INTO `role_menu_button` VALUES (47, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4475-1eac-f74d-e09aedab86a2', '39f4f6c7-449a-fc82-7c54-e3f64804a265');
INSERT INTO `role_menu_button` VALUES (48, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e10-ab33-b0ad-076f46b39e56');
INSERT INTO `role_menu_button` VALUES (49, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e1d-eced-b5d7-e1656df03d37');
INSERT INTO `role_menu_button` VALUES (50, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e21-1c08-98de-57f96e9dc236');
INSERT INTO `role_menu_button` VALUES (51, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e2d-eb59-9f40-e405e3672f20');
INSERT INTO `role_menu_button` VALUES (52, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e3d-11b2-101a-0b1e36d73342');
INSERT INTO `role_menu_button` VALUES (53, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e42-0e60-c47f-317aa08ca324');
INSERT INTO `role_menu_button` VALUES (54, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-4df7-d618-5591-180cf1803117', '39f4f6c7-4e58-0412-476a-d9f8a10e78e7');
INSERT INTO `role_menu_button` VALUES (55, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-f59f-dff1-08ec-859e5bcd3be7', '39f4f6c6-f5d4-895a-8d63-73a930dea879');
INSERT INTO `role_menu_button` VALUES (56, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-f59f-dff1-08ec-859e5bcd3be7', '39f4f6c6-f5f0-802f-6c97-27025dff55ea');
INSERT INTO `role_menu_button` VALUES (57, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-f59f-dff1-08ec-859e5bcd3be7', '39f4f6c6-f600-9e98-05c5-ff89652ea570');
INSERT INTO `role_menu_button` VALUES (58, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd', '39f4f6c6-ffa2-a3cd-b6cc-d6fa84062264');
INSERT INTO `role_menu_button` VALUES (59, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd', '39f4f6c6-ffba-0b55-7121-1639c9a91d96');
INSERT INTO `role_menu_button` VALUES (60, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd', '39f4f6c6-ffc0-0172-073f-95707d26990a');
INSERT INTO `role_menu_button` VALUES (61, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c6-ff92-0a2e-7669-7a09ae1f57dd', '39f4f6c6-ffd5-ceb6-0445-76c81acfd14f');
INSERT INTO `role_menu_button` VALUES (62, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-2405-0bb4-3476-74bd905db462', '39f4f6c7-2426-4290-5e41-91f2ee3d1874');
INSERT INTO `role_menu_button` VALUES (63, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-2405-0bb4-3476-74bd905db462', '39f4f6c7-242a-a944-b1ee-8f3993bcdc4b');
INSERT INTO `role_menu_button` VALUES (64, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4f6c7-2405-0bb4-3476-74bd905db462', '39f4f6c7-2435-ef31-0b3d-716fe110762b');
INSERT INTO `role_menu_button` VALUES (65, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-5f6b-1879-7d4c-7915512406e9', '39f3c49d-2428-1e8d-909b-7eaf125df982');
INSERT INTO `role_menu_button` VALUES (66, '39f08cfd-8dd0-bb54-4544-c2dc43c6ca38', '39f4c72f-5f6b-1879-7d4c-7915512406e9', '39f3c49d-248b-44e8-6182-02e1eaa4d8f5');

SET FOREIGN_KEY_CHECKS = 1;
