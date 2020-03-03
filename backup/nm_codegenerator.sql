/*
 Navicat Premium Data Transfer

 Source Server         : nm-demo
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : wsl:27210
 Source Schema         : nm_codegenerator

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 03/03/2020 13:53:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TableName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BaseEntityType` smallint(3) NOT NULL DEFAULT 0,
  `Remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MenuIcon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('39f3b11c-4f52-e96b-fe6b-83df09918e62', '39f3b11b-cbfa-677d-fff7-7dc66844c266', 'Article', 'Article', 7, '文章信息', 'detail', '2020-03-03 13:47:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `class` VALUES ('39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', '39f3b11b-cbfa-677d-fff7-7dc66844c266', 'Category', 'Category', 7, '分类', 'entity', '2020-03-03 13:49:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:50:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for class_method
-- ----------------------------
DROP TABLE IF EXISTS `class_method`;
CREATE TABLE `class_method`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ClassId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Query` bit(1) NOT NULL DEFAULT b'0',
  `Add` bit(1) NOT NULL DEFAULT b'0',
  `Delete` bit(1) NOT NULL DEFAULT b'0',
  `Edit` bit(1) NOT NULL DEFAULT b'0',
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_method
-- ----------------------------
INSERT INTO `class_method` VALUES ('39f3b11c-4f67-d289-fdd3-734038521b58', '39f3b11c-4f52-e96b-fe6b-83df09918e62', b'1', b'1', b'1', b'1', '2020-03-03 13:47:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `class_method` VALUES ('39f3b11e-4ed8-bff9-6534-d6ff6e60c9ee', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', b'1', b'1', b'1', b'1', '2020-03-03 13:49:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:50:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for enum
-- ----------------------------
DROP TABLE IF EXISTS `enum`;
CREATE TABLE `enum`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enum_item
-- ----------------------------
DROP TABLE IF EXISTS `enum_item`;
CREATE TABLE `enum_item`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `EnumId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Value` int(11) NOT NULL DEFAULT 0,
  `Remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for model_property
-- ----------------------------
DROP TABLE IF EXISTS `model_property`;
CREATE TABLE `model_property`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ClassId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModelType` smallint(3) NOT NULL DEFAULT 0,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `Nullable` bit(1) NOT NULL DEFAULT b'0',
  `EnumId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_property
-- ----------------------------
INSERT INTO `model_property` VALUES ('39f3b11f-9eac-f41f-5a72-611e0ed462e1', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 1, 'CategoryId', 8, b'0', '00000000-0000-0000-0000-000000000000', '分类编号', 0, '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-9ead-546d-9bfa-566b30d3b262', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 1, 'IsPublished', 7, b'0', '00000000-0000-0000-0000-000000000000', '是否发布', 3, '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-9ead-54fa-1466-e53aefd24a0f', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 1, 'Title', 0, b'0', '00000000-0000-0000-0000-000000000000', '标题', 1, '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-e9f4-5376-9754-745879f14ceb', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 2, 'CategoryId', 8, b'0', '00000000-0000-0000-0000-000000000000', '分类编号', 0, '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-e9f5-4887-ac25-7589e4809b91', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 2, 'Title', 0, b'0', '00000000-0000-0000-0000-000000000000', '标题', 1, '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-e9f5-a16a-6ca0-0c1ff3dc97fd', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 2, 'IsPublished', 7, b'0', '00000000-0000-0000-0000-000000000000', '是否发布', 3, '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b11f-e9f5-f7ab-10e2-ff26a0565c38', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 2, 'Body', 0, b'0', '00000000-0000-0000-0000-000000000000', '内容', 2, '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-19a1-6ba3-d7f9-b0f902165bc8', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 3, 'CategoryId', 8, b'0', '00000000-0000-0000-0000-000000000000', '分类编号', 0, '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-19a1-fd63-c9ba-e7e407e459d6', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 3, 'Title', 0, b'0', '00000000-0000-0000-0000-000000000000', '标题', 1, '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-19a2-4290-f56c-c7770df0f319', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 3, 'IsPublished', 7, b'0', '00000000-0000-0000-0000-000000000000', '是否发布', 3, '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-19a2-b8cc-9de1-bc63fcfef9eb', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 3, 'Body', 0, b'0', '00000000-0000-0000-0000-000000000000', '内容', 2, '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-380e-42b6-69a0-cc1caf008234', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 1, 'Name', 0, b'0', '00000000-0000-0000-0000-000000000000', '名称', 0, '2020-03-03 13:51:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:51:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-60c7-57b8-596a-2f6ea59b990b', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 2, 'Name', 0, b'0', '00000000-0000-0000-0000-000000000000', '名称', 0, '2020-03-03 13:52:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:52:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `model_property` VALUES ('39f3b120-7a76-a218-3f23-f478326fa29f', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 3, 'Name', 0, b'0', '00000000-0000-0000-0000-000000000000', '名称', 0, '2020-03-03 13:52:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:52:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `No` int(11) NOT NULL DEFAULT 0,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Copyright` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
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
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('39f3b11b-cbfa-677d-fff7-7dc66844c266', '个人博客', 5, 'Blog', 'detail', '版权所有：尼古拉斯·老李 | 用代码改变世界 Powered by .Net Core 3.1.0 on Linux', '2020-03-03 13:47:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', b'0', '2020-03-03 13:47:05', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for property
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModuleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ClassId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IsPrimaryKey` bit(1) NOT NULL DEFAULT b'0',
  `IsInherit` bit(1) NOT NULL DEFAULT b'0',
  `Type` smallint(3) NOT NULL DEFAULT 0,
  `Length` int(11) NOT NULL DEFAULT 0,
  `Precision` int(11) NOT NULL DEFAULT 0,
  `Scale` int(11) NOT NULL DEFAULT 0,
  `EnumId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nullable` bit(1) NOT NULL DEFAULT b'0',
  `Remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `ShowInList` bit(1) NOT NULL DEFAULT b'0',
  `HasDefaultValue` bit(1) NOT NULL DEFAULT b'0',
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property
-- ----------------------------
INSERT INTO `property` VALUES ('39f3b11c-4f5d-7d4d-0900-ffc10d315166', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'Id', b'1', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '主键', 0, b'1', b'0', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-4f62-0f78-ae31-9dade3dfd9e8', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'ModifiedBy', b'0', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '修改人', 1002, b'0', b'0', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-4f62-1c9e-ec4c-88ad1e8a99d6', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'CreatedTime', b'0', b'1', 9, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '创建时间', 1001, b'0', b'0', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-4f62-8ff0-9259-ed8bc8b14889', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'ModifiedTime', b'0', b'1', 9, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '修改时间', 1003, b'0', b'0', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-4f62-fc92-8b9c-3a612d24f56f', '00000000-0000-0000-0000-000000000000', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'CreatedBy', b'0', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '创建人', 1000, b'0', b'0', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:47:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-8fe7-3571-f3e0-aea2b5519602', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'Title', b'0', b'0', 0, 300, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '标题', 1, b'1', b'0', '2020-03-03 13:47:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11c-be8d-b842-30a4-367879e0cf9d', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'Summary', b'0', b'0', 0, 500, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '简介', 2, b'1', b'0', '2020-03-03 13:48:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11d-0ba4-ebc8-1ccb-cc430d4850ea', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'Body', b'0', b'0', 0, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '内容', 3, b'1', b'0', '2020-03-03 13:48:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11d-5789-d49d-9fda-8b4008996d6c', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'ReadCount', b'0', b'0', 3, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '阅读数', 4, b'1', b'0', '2020-03-03 13:48:46', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11d-96a0-03de-95a6-5b393e31c695', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'IsPublished', b'0', b'0', 7, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '是否发布', 5, b'1', b'0', '2020-03-03 13:49:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11d-e2e6-5002-f42a-b79acafb9df9', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11c-4f52-e96b-fe6b-83df09918e62', 'CategoryId', b'0', b'0', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '分类编号', 0, b'1', b'0', '2020-03-03 13:49:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-4ed6-3654-e70e-8abdee78a98d', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'ModifiedTime', b'0', b'1', 9, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '修改时间', 1003, b'0', b'0', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-4ed6-861b-06c3-c38ed5514124', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'Id', b'1', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '主键', 0, b'1', b'0', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-4ed6-a648-a9a4-e4c9517b5ac7', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'CreatedTime', b'0', b'1', 9, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '创建时间', 1001, b'0', b'0', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-4ed6-af07-e313-9e2c245b73f2', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'CreatedBy', b'0', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '创建人', 1000, b'0', b'0', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-4ed6-d077-741c-eddc20f8f718', '00000000-0000-0000-0000-000000000000', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'ModifiedBy', b'0', b'1', 8, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '修改人', 1002, b'0', b'0', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:49:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11e-e5e7-1b95-223a-b230fd97c668', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'Name', b'0', b'0', 0, 100, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '名称', 0, b'1', b'0', '2020-03-03 13:50:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:50:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `property` VALUES ('39f3b11f-3bf8-984b-0878-bb2bc0368b4a', '39f3b11b-cbfa-677d-fff7-7dc66844c266', '39f3b11e-4ed4-9df0-5c6f-fa0bdbbc8c76', 'Count', b'0', b'0', 3, 0, 0, 0, '00000000-0000-0000-0000-000000000000', b'0', '文章数量', 0, b'1', b'0', '2020-03-03 13:50:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:50:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

SET FOREIGN_KEY_CHECKS = 1;
