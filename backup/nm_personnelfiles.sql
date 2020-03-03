/*
 Navicat Premium Data Transfer

 Source Server         : nm-demo
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : wsl:27210
 Source Schema         : nm_personnelfiles

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 03/03/2020 13:53:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `Id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ParentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Level` int(11) NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `FullPath` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('39f3b112-a9fe-24a9-2195-2ad7bb4fd1ec', '00000000-0000-0000-0000-000000000000', '研发部', '', 0, 0, '/研发部', '2020-03-03 13:37:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b112-d567-ef49-906b-9ed8b6293686', '00000000-0000-0000-0000-000000000000', '行政部', '', 0, 1, '/行政部', '2020-03-03 13:37:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b112-e83f-7059-483a-a952ad7a08aa', '00000000-0000-0000-0000-000000000000', '商务部', '', 0, 2, '/商务部', '2020-03-03 13:37:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b112-fbcb-d77a-1b22-d6efbe849cb2', '00000000-0000-0000-0000-000000000000', '财务部', '', 0, 3, '/财务部', '2020-03-03 13:37:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b113-26f9-a435-a661-46662330bde5', '00000000-0000-0000-0000-000000000000', '董事局', '', 0, 4, '/董事局', '2020-03-03 13:37:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b113-5e7b-7a80-997a-064ca1c55f25', '00000000-0000-0000-0000-000000000000', '销售部', '', 0, 5, '/销售部', '2020-03-03 13:37:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:37:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b113-8d73-f538-1a76-b5037cbaa223', '39f3b112-a9fe-24a9-2195-2ad7bb4fd1ec', '.Net项目组', '', 0, 0, '/研发部/.Net项目组', '2020-03-03 13:38:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:38:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b113-b7ca-fd8c-2517-e7a0b19acdbb', '39f3b112-a9fe-24a9-2195-2ad7bb4fd1ec', 'Java项目组', '', 0, 1, '/研发部/Java项目组', '2020-03-03 13:38:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:38:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b113-df2b-12e2-ec9b-0cea9f4a3444', '39f3b112-a9fe-24a9-2195-2ad7bb4fd1ec', '前端项目组', '', 0, 2, '/研发部/前端项目组', '2020-03-03 13:38:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:38:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3b114-23d7-2451-d1d0-49304f7e1f21', '39f3b112-a9fe-24a9-2195-2ad7bb4fd1ec', '安卓项目组', '', 0, 3, '/研发部/安卓项目组', '2020-03-03 13:38:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:38:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nature` smallint(3) NOT NULL DEFAULT 0,
  `Sex` smallint(3) NOT NULL DEFAULT 0,
  `Picture` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PostId` int(11) NULL DEFAULT NULL,
  `Status` smallint(3) NOT NULL DEFAULT 0,
  `JoinDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `Sort` int(11) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '39f3b115-3a3c-f796-136d-f88f592da044', '39f3b113-8d73-f538-1a76-b5037cbaa223', 'OLDLI', 0, 0, NULL, 1, 0, '2020-03-03 00:00:00', 0, '2020-03-03 13:39:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:39:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', b'0', '2020-03-03 13:39:55', '00000000-0000-0000-0000-000000000000');

-- ----------------------------
-- Table structure for employee_contact
-- ----------------------------
DROP TABLE IF EXISTS `employee_contact`;
CREATE TABLE `employee_contact`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OfficePhone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `OtherPhone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `QQ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `WeChat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DingDing` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Alipay` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ProvinceCode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ProvinceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CityCode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CityName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AreaCode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AreaName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TownCode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TownName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_education
-- ----------------------------
DROP TABLE IF EXISTS `employee_education`;
CREATE TABLE `employee_education`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `SchoolName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Profession` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `StartDate` datetime(0) NULL DEFAULT NULL,
  `EndDate` datetime(0) NULL DEFAULT NULL,
  `Remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_family
-- ----------------------------
DROP TABLE IF EXISTS `employee_family`;
CREATE TABLE `employee_family`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Relation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Unit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Post` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_latest_select
-- ----------------------------
DROP TABLE IF EXISTS `employee_latest_select`;
CREATE TABLE `employee_latest_select`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `RelationId` int(11) NOT NULL DEFAULT 0,
  `Timestamp` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_leave_info
-- ----------------------------
DROP TABLE IF EXISTS `employee_leave_info`;
CREATE TABLE `employee_leave_info`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApplyDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `LeaveDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_personal
-- ----------------------------
DROP TABLE IF EXISTS `employee_personal`;
CREATE TABLE `employee_personal`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `Birthday` datetime(0) NULL DEFAULT NULL,
  `Nation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Native` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `RegisterPlace` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IdCard` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MaritalStatus` smallint(3) NOT NULL DEFAULT 0,
  `PoliticsStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EducationLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EducationLevelName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Degree` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HealthStatus` smallint(3) NOT NULL DEFAULT 0,
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for employee_work
-- ----------------------------
DROP TABLE IF EXISTS `employee_work`;
CREATE TABLE `employee_work`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeId` int(11) NOT NULL DEFAULT 0,
  `CompanyName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `StartDate` datetime(0) NULL DEFAULT NULL,
  `EndDate` datetime(0) NULL DEFAULT NULL,
  `Post` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ContactPhone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LeaveReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ShortName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '研发工程师', '', '', '2020-03-03 13:39:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:39:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PositionId` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ShortName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Responsibility` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Remarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, 1, '.Net研发工程师', '', '', '', '2020-03-03 13:39:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:39:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `post` VALUES (2, 1, 'Java研发工程师', '', '', '', '2020-03-03 13:39:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-03 13:39:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

SET FOREIGN_KEY_CHECKS = 1;
