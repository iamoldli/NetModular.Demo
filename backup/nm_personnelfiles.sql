/*
 Navicat Premium Data Transfer

 Source Server         : 129.211.40.240
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 129.211.40.240:13306
 Source Schema         : nm_demo_personnelfiles

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 05/05/2020 19:54:57
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
INSERT INTO `department` VALUES ('39f3cb36-b083-589d-feca-334a37974b6e', '00000000-0000-0000-0000-000000000000', '丐帮', '333', 0, 119, '丐帮', '2020-03-08 15:26:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-16 15:40:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f3cb36-c511-fa3a-6564-279f7ae47c46', '00000000-0000-0000-0000-000000000000', '魔教', '', 0, 5, '/魔教', '2020-03-08 15:26:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-03-08 15:26:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be3-fb8b-4b23-331a-09cd83833469', '00000000-0000-0000-0000-000000000000', '崆峒派', '2', 0, 0, '崆峒派', '2020-04-02 15:07:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-26 16:51:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-1b8d-9a7b-ecb3-6bd49b38e61b', '00000000-0000-0000-0000-000000000000', '华山派', '', 0, 6, '/华山派', '2020-04-02 15:07:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:07:24', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-352d-cb9a-d613-a32081fece90', '00000000-0000-0000-0000-000000000000', '峨眉派', '', 0, 7, '/峨眉派', '2020-04-02 15:07:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:07:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-5b65-85b0-30a0-c720b007b487', '00000000-0000-0000-0000-000000000000', '昆仑派', '', 0, 8, '/昆仑派', '2020-04-02 15:07:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:07:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-96b0-07be-e8b7-247e3f3b73b0', '00000000-0000-0000-0000-000000000000', '少林派', '', 0, 9, '/少林派', '2020-04-02 15:07:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:07:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-b170-ac2e-b2e0-6d23cc7a9391', '00000000-0000-0000-0000-000000000000', '天山派', '', 0, 10, '/天山派', '2020-04-02 15:08:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-d859-37dc-38ad-02b85bbc2f2a', '00000000-0000-0000-0000-000000000000', '恒山派', '', 0, 11, '/恒山派', '2020-04-02 15:08:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be4-f482-9145-4d75-43876e30475c', '00000000-0000-0000-0000-000000000000', '嵩山派', '', 0, 12, '/嵩山派', '2020-04-02 15:08:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:19', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be5-0cd2-ced0-574a-d17db654800a', '00000000-0000-0000-0000-000000000000', '衡山派', '', 0, 13, '/衡山派', '2020-04-02 15:08:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be5-2ede-7ceb-8009-2666f3626193', '00000000-0000-0000-0000-000000000000', '日月神教', '', 0, 14, '/日月神教', '2020-04-02 15:08:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be5-42cc-6c2f-a2fb-87d89454b1bf', '00000000-0000-0000-0000-000000000000', '明教', '', 0, 15, '/明教', '2020-04-02 15:08:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be5-8e39-709d-1cc1-16c5dff0a076', '00000000-0000-0000-0000-000000000000', '明教波斯总教', '', 0, 16, '/明教波斯总教', '2020-04-02 15:08:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:08:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be6-60d7-609d-726d-51209ae063a6', '00000000-0000-0000-0000-000000000000', '泰山派', '', 0, 17, '/泰山派', '2020-04-02 15:09:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:09:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be6-81ee-a54b-69f6-d480e6b368ba', '00000000-0000-0000-0000-000000000000', '天地会', '', 0, 18, '/天地会', '2020-04-02 15:10:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:10:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be6-9817-aa5f-7812-0b126e147e57', '00000000-0000-0000-0000-000000000000', '红花会', '', 0, 19, '/红花会', '2020-04-02 15:10:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:10:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-5c7e-53e1-7374-d264d8c317c3', '00000000-0000-0000-0000-000000000000', '星宿派', '', 0, 20, '/星宿派', '2020-04-02 15:10:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:10:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-72b6-976a-9366-f87d474806e0', '00000000-0000-0000-0000-000000000000', '逍遥派', '', 0, 21, '/逍遥派', '2020-04-02 15:11:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-9876-80a8-5a7f-244350c43caf', '00000000-0000-0000-0000-000000000000', '铁掌帮', '', 0, 22, '/铁掌帮', '2020-04-02 15:11:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:13', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-b5b8-9dd9-bf56-2654450e4ef1', '00000000-0000-0000-0000-000000000000', '长乐帮', '', 0, 23, '/长乐帮', '2020-04-02 15:11:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-d08c-9b25-6555-c37672f29f88', '00000000-0000-0000-0000-000000000000', '巨鲸帮', '', 0, 24, '/巨鲸帮', '2020-04-02 15:11:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:27', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be7-f0e2-10ed-1a6a-8626ec33b54b', '00000000-0000-0000-0000-000000000000', '屠龙帮', '', 0, 25, '/屠龙帮', '2020-04-02 15:11:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:35', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-09e3-f51f-17ad-0d684234446f', '00000000-0000-0000-0000-000000000000', '神农帮', '', 0, 26, '/神农帮', '2020-04-02 15:11:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-3107-eff9-49ba-6a9dd79b1fdb', '00000000-0000-0000-0000-000000000000', '海沙帮', '', 0, 27, '/海沙帮', '2020-04-02 15:11:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-4a30-feaf-ff28-957426547e14', '00000000-0000-0000-0000-000000000000', '黄河帮', '', 0, 28, '/黄河帮', '2020-04-02 15:11:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:11:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-6692-79dc-9ab1-bf354114ecda', '00000000-0000-0000-0000-000000000000', '天鹰教', '', 0, 29, '/天鹰教', '2020-04-02 15:12:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-8c64-984f-5fea-aed7dfba98be', '00000000-0000-0000-0000-000000000000', '全真教', '', 0, 30, '/全真教', '2020-04-02 15:12:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:15', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-a579-dccb-4361-d5f8e3e8e8dd', '00000000-0000-0000-0000-000000000000', '五毒教', '', 0, 31, '/五毒教', '2020-04-02 15:12:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-bf22-03fc-d24f-6d352cf3d8ac', '00000000-0000-0000-0000-000000000000', '神龙教', '', 0, 32, '/神龙教', '2020-04-02 15:12:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be8-e65a-8086-70e9-77349873222e', '00000000-0000-0000-0000-000000000000', '龙门镖局', '', 0, 33, '/龙门镖局', '2020-04-02 15:12:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-0158-11af-c30f-ea3d8ab9495c', '00000000-0000-0000-0000-000000000000', '福威镖局', '', 0, 34, '/福威镖局', '2020-04-02 15:12:45', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:45', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-1a8c-b94a-dfd5-b1f79df4fa6b', '00000000-0000-0000-0000-000000000000', '镇远镖局', '', 0, 35, '/镇远镖局', '2020-04-02 15:12:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:51', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-318c-184a-e0f0-8cb234ad1b7a', '00000000-0000-0000-0000-000000000000', '虎踞镖局', '', 0, 36, '/虎踞镖局', '2020-04-02 15:12:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:12:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-47e7-d56c-d126-0ac9497b8fdc', '00000000-0000-0000-0000-000000000000', '飞马镖局', '', 0, 37, '/飞马镖局', '2020-04-02 15:13:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:03', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-601f-4294-a42d-b0c50375b711', '00000000-0000-0000-0000-000000000000', '平通镖局', '', 0, 38, '/平通镖局', '2020-04-02 15:13:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-7afc-2ea6-8691-02c1e1c9835f', '00000000-0000-0000-0000-000000000000', '晋威镖局', '', 0, 39, '/晋威镖局', '2020-04-02 15:13:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-8e91-57ee-49b7-cafd5bec82cf', '00000000-0000-0000-0000-000000000000', '威信镖局', '', 0, 40, '/威信镖局', '2020-04-02 15:13:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-aa42-73c4-a993-1f1ad6c867b3', '00000000-0000-0000-0000-000000000000', '曾阳镖局', '', 0, 41, '/曾阳镖局', '2020-04-02 15:13:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-bf65-2112-28e2-a5b7840957c7', '00000000-0000-0000-0000-000000000000', '云燕镖局', '', 0, 42, '/云燕镖局', '2020-04-02 15:13:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-d916-0f1f-2941-58124cb05763', '00000000-0000-0000-0000-000000000000', '五郎镖局', '', 0, 43, '/五郎镖局', '2020-04-02 15:13:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:40', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44be9-f677-ce28-a660-698130866f59', '00000000-0000-0000-0000-000000000000', '白驼山庄', '', 0, 44, '/白驼山庄', '2020-04-02 15:13:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-0c07-25b2-89ca-cd4225a3de8f', '00000000-0000-0000-0000-000000000000', '曼陀山庄', '', 0, 45, '/曼陀山庄', '2020-04-02 15:13:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:53', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-21ee-691c-a736-a3b3c024285b', '00000000-0000-0000-0000-000000000000', '聚贤庄', '', 0, 46, '/聚贤庄', '2020-04-02 15:13:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:13:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-385c-58ff-5284-bf744da21c39', '00000000-0000-0000-0000-000000000000', '梅庄', '', 0, 47, '/梅庄', '2020-04-02 15:14:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-4cfd-e2d2-8fda-f3cbe8e60f59', '00000000-0000-0000-0000-000000000000', '铁胆庄', '', 0, 48, '/铁胆庄', '2020-04-02 15:14:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-7827-9157-3f0a-e55da19eb0fc', '00000000-0000-0000-0000-000000000000', '陆家庄', '', 0, 50, '/陆家庄', '2020-04-02 15:14:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-948f-0a55-2e1f-24c5471531b5', '00000000-0000-0000-0000-000000000000', '选索庄', '', 0, 51, '/选索庄', '2020-04-02 15:14:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-b6c3-430f-25ea-b557c28a5d9e', '00000000-0000-0000-0000-000000000000', '归云庄', '', 0, 52, '/归云庄', '2020-04-02 15:14:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-d94c-f59b-866f-6104566f859e', '00000000-0000-0000-0000-000000000000', '桃花岛', '', 0, 53, '/桃花岛', '2020-04-02 15:14:46', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:46', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bea-f1ca-2ebc-d314-6b624d57d5d6', '00000000-0000-0000-0000-000000000000', '侠客岛', '', 0, 54, '/侠客岛', '2020-04-02 15:14:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:14:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-499b-4561-282a-af8af0426fc3', '00000000-0000-0000-0000-000000000000', '灵鹫宫', '', 0, 55, '/灵鹫宫', '2020-04-02 15:15:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-5ffd-3484-2c6b-3c841200cd95', '00000000-0000-0000-0000-000000000000', '绝情谷', '', 0, 56, '/绝情谷', '2020-04-02 15:15:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:20', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-76b8-f40d-e219-6b4b81aaf318', '00000000-0000-0000-0000-000000000000', '西夏一品堂', '', 0, 57, '/西夏一品堂', '2020-04-02 15:15:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-8f68-228f-4f77-78b0a5c7f0ac', '00000000-0000-0000-0000-000000000000', '锄奸盟', '', 0, 58, '/锄奸盟', '2020-04-02 15:15:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:32', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-a4d1-949e-9651-cbcbd3c9af9e', '00000000-0000-0000-0000-000000000000', '秦家寨', '', 0, 59, '/秦家寨', '2020-04-02 15:15:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-b9a2-bc2d-1e8f-9400394ca1d1', '00000000-0000-0000-0000-000000000000', '金刀寨', '', 0, 60, '/金刀寨', '2020-04-02 15:15:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-d10a-1b0b-c028-7c23d89fcd3d', '00000000-0000-0000-0000-000000000000', '饮马川寨', '', 0, 61, '/饮马川寨', '2020-04-02 15:15:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:49', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44beb-e78c-51c8-32d2-f264d733483d', '00000000-0000-0000-0000-000000000000', '恶虎沟寨', '', 0, 62, '/恶虎沟寨', '2020-04-02 15:15:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:15:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bec-04a3-b331-a194-760b480902d3', '00000000-0000-0000-0000-000000000000', '商家堡', '', 0, 63, '/商家堡', '2020-04-02 15:16:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:16:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bec-1b39-64b7-1cca-1531a7ddf61b', '00000000-0000-0000-0000-000000000000', '金蛇营', '', 0, 64, '/金蛇营', '2020-04-02 15:16:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:16:08', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bec-30c9-9e1f-2203-105b6e266afc', '00000000-0000-0000-0000-000000000000', '金刚宗', '', 0, 65, '/金刚宗', '2020-04-02 15:16:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:16:14', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bec-6db1-9610-e23b-e99b826676be', '00000000-0000-0000-0000-000000000000', '古墓派', '', 0, 66, '/古墓派', '2020-04-02 15:16:29', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:16:29', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bec-e20a-a573-21e8-5b69be532a6f', '00000000-0000-0000-0000-000000000000', '青城派', '', 0, 67, '/青城派', '2020-04-02 15:16:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:16:59', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-09ee-2072-3b2f-714bbad13e35', '00000000-0000-0000-0000-000000000000', '点苍派', '', 0, 68, '/点苍派', '2020-04-02 15:17:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-2505-ce00-a5e4-50eb74e26f22', '00000000-0000-0000-0000-000000000000', '仙霞派', '', 0, 69, '/仙霞派', '2020-04-02 15:17:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-3957-ad6c-4e52-b7a6c6a8dba6', '00000000-0000-0000-0000-000000000000', '雪山派', '', 0, 70, '/雪山派', '2020-04-02 15:17:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-52ea-b3ab-584f-e5b921f5b249', '00000000-0000-0000-0000-000000000000', '金乌派', '', 0, 71, '/金乌派', '2020-04-02 15:17:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-6a70-056f-6b32-7cee2f1d502e', '00000000-0000-0000-0000-000000000000', '仙都派', '', 0, 72, '/仙都派', '2020-04-02 15:17:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-86ee-9a8c-4fab-6e64e5087e82', '00000000-0000-0000-0000-000000000000', '西域少林派', '', 0, 73, '/西域少林派', '2020-04-02 15:17:41', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:41', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-9cbb-8c14-bf50-c127fdebc0b9', '00000000-0000-0000-0000-000000000000', '福建少林派', '', 0, 74, '/福建少林派', '2020-04-02 15:17:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-b25a-1a5a-4487-02d11b26558f', '00000000-0000-0000-0000-000000000000', '伏牛派', '', 0, 75, '/伏牛派', '2020-04-02 15:17:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-c816-250c-8579-342311cc0469', '00000000-0000-0000-0000-000000000000', '蓬莱派', '', 0, 76, '/蓬莱派', '2020-04-02 15:17:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:17:58', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-e012-24f4-f412-4aa76f51af7d', '00000000-0000-0000-0000-000000000000', '无量剑派', '', 0, 77, '/无量剑派', '2020-04-02 15:18:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bed-f5d9-57dc-492d-e1783e340adc', '00000000-0000-0000-0000-000000000000', '上清观派', '', 0, 78, '/上清观派', '2020-04-02 15:18:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:10', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-0e31-9c4c-291f-d3ba9eadf339', '00000000-0000-0000-0000-000000000000', '五台派', '', 0, 79, '/五台派', '2020-04-02 15:18:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:16', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-22b4-594a-9272-a863a470ebcf', '00000000-0000-0000-0000-000000000000', '海沙派', '', 0, 80, '/海沙派', '2020-04-02 15:18:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:21', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-35b9-bbc9-b62b-7a98c048bcde', '00000000-0000-0000-0000-000000000000', '渤海派', '', 0, 81, '/渤海派', '2020-04-02 15:18:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:26', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-4aa0-f85f-7c07-f097f3d73792', '00000000-0000-0000-0000-000000000000', '八仙剑派', '', 0, 82, '/八仙剑派', '2020-04-02 15:18:31', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:31', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-5f37-3bc0-d1a7-62624bc9bab4', '00000000-0000-0000-0000-000000000000', '棋仙派', '', 0, 83, '/棋仙派', '2020-04-02 15:18:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:37', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-7650-0351-4219-86eb285499f6', '00000000-0000-0000-0000-000000000000', '太乙派', '', 0, 84, '/太乙派', '2020-04-02 15:18:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:43', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-8c60-af5b-3991-101b87e73b61', '00000000-0000-0000-0000-000000000000', '太行山派', '', 0, 85, '/太行山派', '2020-04-02 15:18:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:48', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-a522-99c5-7243-35d7c325a016', '00000000-0000-0000-0000-000000000000', '九龙派', '', 0, 86, '/九龙派', '2020-04-02 15:18:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:18:54', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-bfdd-9b57-b5cd-658512c8746a', '00000000-0000-0000-0000-000000000000', '青海派', '', 0, 87, '/青海派', '2020-04-02 15:19:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:19:01', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-dd6e-2788-d971-c3f8d6e28899', '00000000-0000-0000-0000-000000000000', '青藏派', '', 0, 88, '/青藏派', '2020-04-02 15:19:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:19:09', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bee-fb74-8140-7f50-ef7cc84ea326', '00000000-0000-0000-0000-000000000000', '王屋派', '', 0, 89, '/王屋派', '2020-04-02 15:19:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:19:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bef-a34a-8727-a480-4afd45643e17', '00000000-0000-0000-0000-000000000000', '铁剑门', '', 0, 90, '/铁剑门', '2020-04-02 15:20:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:00', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bef-ba41-7e56-e503-e0e408209f33', '00000000-0000-0000-0000-000000000000', '太极门', '', 0, 91, '/太极门', '2020-04-02 15:20:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:05', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bef-cfd1-4b54-e315-03abc568e18c', '00000000-0000-0000-0000-000000000000', '八卦门', '', 0, 92, '/八卦门', '2020-04-02 15:20:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:11', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bef-e628-d827-9bd8-0e34f83dc245', '00000000-0000-0000-0000-000000000000', '一字慧剑门', '', 0, 93, '/一字慧剑门', '2020-04-02 15:20:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:17', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bef-faf2-544c-7f29-1574dbe8c3f5', '00000000-0000-0000-0000-000000000000', '天龙门', '', 0, 94, '/天龙门', '2020-04-02 15:20:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:22', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-1309-3149-3cdf-4b425b77e615', '00000000-0000-0000-0000-000000000000', '八极门', '', 0, 95, '/八极门', '2020-04-02 15:20:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-2bb2-b6ca-7b54-5e42bac32a18', '00000000-0000-0000-0000-000000000000', '五虎门', '', 0, 96, '/五虎门', '2020-04-02 15:20:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-4a05-4cc9-246e-89e88a53d1c4', '00000000-0000-0000-0000-000000000000', '五凤刀门', '', 0, 97, '/五凤刀门', '2020-04-02 15:20:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:42', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-5e3c-9c67-378c-56443ec07656', '00000000-0000-0000-0000-000000000000', '神拳门', '', 0, 98, '/神拳门', '2020-04-02 15:20:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:47', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-70f2-92c8-1dcf-b293a252015e', '00000000-0000-0000-0000-000000000000', '鹰爪雁行门', '', 0, 99, '/鹰爪雁行门', '2020-04-02 15:20:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:52', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-8552-4839-cad0-7df1b5dbddce', '00000000-0000-0000-0000-000000000000', '无极拳门', '', 0, 100, '/无极拳门', '2020-04-02 15:20:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:20:57', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-9840-5ad5-5997-04de133b4e1b', '00000000-0000-0000-0000-000000000000', '华拳门', '', 0, 101, '/华拳门', '2020-04-02 15:21:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:02', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-abd9-d6a2-4da8-5c694259f8ab', '00000000-0000-0000-0000-000000000000', '韦陀门', '', 0, 102, '/韦陀门', '2020-04-02 15:21:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:07', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-bf31-0251-9de9-bda573b19bdd', '00000000-0000-0000-0000-000000000000', '鸭形门', '', 0, 103, '/鸭形门', '2020-04-02 15:21:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-d4b3-3bcd-0854-0f4e7432e28f', '00000000-0000-0000-0000-000000000000', '雷电门', '', 0, 104, '/雷电门', '2020-04-02 15:21:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-e8b7-d0a7-4316-c6f11e92a9fe', '00000000-0000-0000-0000-000000000000', '药王门', '', 0, 105, '/药王门', '2020-04-02 15:21:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:23', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf0-fdc2-8fb0-f0d1-d362df378fc2', '00000000-0000-0000-0000-000000000000', '西域金刚门', '', 0, 106, '/西域金刚门', '2020-04-02 15:21:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:28', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-12b5-fee7-5bc2-c7c14c521221', '00000000-0000-0000-0000-000000000000', '二郎拳门', '', 0, 107, '/二郎拳门', '2020-04-02 15:21:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:34', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-28e2-09c3-cdf2-eeefc42822b6', '00000000-0000-0000-0000-000000000000', '血刀门', '', 0, 108, '/血刀门', '2020-04-02 15:21:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:39', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-3cdc-7867-359c-18edf7d31376', '00000000-0000-0000-0000-000000000000', '谭腿门', '', 0, 109, '/谭腿门', '2020-04-02 15:21:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:44', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-527f-f2ba-707a-a01a0f6b7f35', '00000000-0000-0000-0000-000000000000', '玄指门', '', 0, 110, '/玄指门', '2020-04-02 15:21:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:50', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-651c-4824-6b36-768170d65ed2', '00000000-0000-0000-0000-000000000000', '五湖门', '', 0, 111, '/五湖门', '2020-04-02 15:21:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:21:55', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-8aa0-6cab-74f7-4fc5f547f44f', '00000000-0000-0000-0000-000000000000', '双子门', '', 0, 112, '/双子门', '2020-04-02 15:22:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:22:04', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-a6d4-a6d4-a6c7-8424de0fa2e4', '00000000-0000-0000-0000-000000000000', '中抓门', '', 0, 113, '/中抓门', '2020-04-02 15:22:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:22:12', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-c1d6-716b-b896-30e806b2b4eb', '00000000-0000-0000-0000-000000000000', '七青门', '', 0, 114, '/七青门', '2020-04-02 15:22:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:22:18', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-d992-4710-843c-7e0fb358b0c7', '00000000-0000-0000-0000-000000000000', '大圣猴拳门', '', 0, 115, '/大圣猴拳门', '2020-04-02 15:22:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:22:25', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf1-ed78-ece8-400d-1d5e575f4f76', '00000000-0000-0000-0000-000000000000', '黑龙门', '', 0, 116, '/黑龙门', '2020-04-02 15:22:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:22:30', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');
INSERT INTO `department` VALUES ('39f44bf2-fa49-d48e-2ca0-91f8bb42491f', '00000000-0000-0000-0000-000000000000', '大理段氏', '', 0, 117, '/大理段氏', '2020-04-02 15:23:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa', '2020-04-02 15:23:38', '39f08cfd-8e0d-771b-a2f3-2639a62ca2fa');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DepartmentId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nature` smallint(6) NOT NULL DEFAULT 0,
  `Sex` smallint(6) NOT NULL DEFAULT 0,
  `Picture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PostId` int(11) NULL DEFAULT NULL,
  `Status` smallint(6) NOT NULL DEFAULT 0,
  `JoinDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `Sort` int(11) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NULL DEFAULT NULL,
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Deleted` bit(1) NOT NULL DEFAULT b'0',
  `DeletedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `DeletedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------

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
-- Records of employee_contact
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_education
-- ----------------------------

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
-- Records of employee_family
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_latest_select
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_leave_info
-- ----------------------------

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
  `MaritalStatus` smallint(6) NOT NULL DEFAULT 0,
  `PoliticsStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EducationLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `EducationLevelName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Degree` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HealthStatus` smallint(6) NOT NULL DEFAULT 0,
  `Height` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `CreatedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `CreatedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ModifiedTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ModifiedBy` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_personal
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_work
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
