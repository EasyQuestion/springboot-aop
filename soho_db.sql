/*
 Navicat Premium Data Transfer

 Source Server         : lnpdit_test
 Source Server Type    : MySQL
 Source Server Version : 50638
 Source Host           : 192.168.1.96:3306
 Source Schema         : soho_db

 Target Server Type    : MySQL
 Target Server Version : 50638
 File Encoding         : 65001

 Date: 25/07/2019 10:17:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `doid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备ID',
  `device_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备名称',
  `model_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '场景中模型的ID',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备类型',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备类型名称',
  `class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备分类',
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备品牌',
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `replacement_cycle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更换周期',
  `factory_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生产厂家',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modify` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`doid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('0272T8THWBN4K3A3', 'NB温湿度计K3A3', NULL, 'th', '温湿度计', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('0277AZ5PNEFLJ307', 'NB温湿度计J307', NULL, 'th', '温湿度计', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027D1P8YVH2CBEF5', 'NB温湿度计BEF5', NULL, 'th', '温湿度计', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027ED5HXL7F4TZQB', '望京NB温湿度计TZQB', NULL, 'th', '温湿度计', '空调', '格力', 'ZJR201', '3年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027GKR9FY6KLM782', '望京NB温湿度计M782', NULL, 'th', '温湿度计', '空调', '格力', 'ZJR201', '3年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027H4V3XAWYLV5X1', 'NB温湿度计V5X1', NULL, 'th', '温湿度计', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027QPE5AKXBSJGE4', '望京NB温湿度计JGE4', NULL, 'th', '温湿度计', '空调', '格力', 'ZJR201', '3年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027V3R339QMLHQ8E', '望京NB温湿度计HQ8E', NULL, 'th', '温湿度计', '空调', '格力', 'ZJR201', '3年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027WSNEB16PYQ0M0', 'NB温湿度计Q0M0', NULL, 'th', '温湿度计', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('027XV6V0QAZ0XW12', '望京NB温湿度计XW12', NULL, 'th', '温湿度计', '空调', '格力', 'ZJR201', '3年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('0330C61Y0Y8T4QEB', 'PM2.5检测仪4QEB', NULL, 'pm', 'pm2.5检测仪', 'PM2.5 检测仪', '米家', '3016IAQ', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('033GW97U8CYETY25', 'PM2.5检测仪TY25', NULL, 'pm', 'pm2.5检测仪', 'PM2.5 检测仪', '米家', '3016IAQ', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('033RDT5TS5VLAXC8', 'PM2.5检测仪AXC8', NULL, 'pm', 'pm2.5检测仪', 'PM2.5 检测仪', '米家', '3016IAQ', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('0382G7J76NX4W950', '可燃气报警器W950', NULL, 'ga', '可燃气报警器', '乙酸分析仪', '天地首和', 'MIC-500-C2H4O2', '10年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('038KZURQG9L1UU40', '可燃气报警器UU40', NULL, 'ga', '可燃气报警器', '乙酸分析仪', '天地首和', 'MIC-500-C2H4O2', '10年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('038M7MF5P90EKBFE', '可燃气报警器KBFE', NULL, 'ga', '可燃气报警器', '乙酸分析仪', '天地首和', 'MIC-500-C2H4O2', '10年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('038MV4MG4Y27A3RB', '可燃气报警器A3RB', NULL, 'ga', '可燃气报警器', '乙酸分析仪', '天地首和', 'MIC-500-C2H4O2', '10年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('038XMC8XRU6Q795B', '可燃气报警器795B', NULL, 'ga', '可燃气报警器', '乙酸分析仪', '天地首和', 'MIC-500-C2H4O2', '10年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030126877', '烟雾报警器6877', NULL, 'sm', '烟雾报警器', '点型气体探测器', '欧泰威尔', 'TCB2系列', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-12 16:50:58');
INSERT INTO `device` VALUES ('869975030131703', '烟雾报警器1703', NULL, 'sm', '烟雾报警器', '点型气体探测器', '欧泰威尔', 'TCB2系列', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-12 16:50:58');
INSERT INTO `device` VALUES ('869975030173762', '烟雾报警器3762', NULL, 'sm', '烟雾报警器', '点型气体探测器', '欧泰威尔', 'TCB2系列', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-12 16:50:58');
INSERT INTO `device` VALUES ('869975030460722', '望京烟雾报警器0722', NULL, 'sm', '烟雾报警器', '点型气体探测器', '欧泰威尔', 'TCB2系列', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030550555', '望京烟雾报警器0555', NULL, 'sm', '烟雾报警器', '点型气体探测器', '欧泰威尔', 'TCB2系列', '5年', '中移物联', '2019-07-10 14:45:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030565793', '烟雾报警器5793', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030594819', '望京烟雾报警器4819', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-12 16:40:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030626579', '烟雾报警器6579', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030656683', '望京烟雾报警器6683', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-12 16:40:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030656774', '烟雾报警器6774', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030662467', '望京烟雾报警器2467', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-12 16:40:57', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030665528', '烟雾报警器5528', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');
INSERT INTO `device` VALUES ('869975030665775', '烟雾报警器5775', NULL, 'sm', '烟雾报警器', NULL, NULL, NULL, NULL, '中移物联', '2019-07-16 11:20:52', '2019-07-25 10:00:40');

-- ----------------------------
-- Table structure for device_alarm
-- ----------------------------
DROP TABLE IF EXISTS `device_alarm`;
CREATE TABLE `device_alarm`  (
  `doid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备ID',
  `device_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `alarm_msg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '告警原因',
  `alarm_time` timestamp(0) NULL DEFAULT NULL COMMENT '告警时间',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modify` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of device_alarm
-- ----------------------------
INSERT INTO `device_alarm` VALUES ('869975030126877', '烟雾报警器6877', '告警原因：烟雾超过告警值', '2019-07-02 10:00:02', '2019-07-02 10:00:02', '2019-07-02 10:00:02', 9);
INSERT INTO `device_alarm` VALUES ('869975030131703', '烟雾报警器1703', '告警原因：烟雾超过告警值', '2019-07-01 10:00:02', '2019-07-01 10:00:02', '2019-07-01 10:00:02', 10);
INSERT INTO `device_alarm` VALUES ('027GKR9FY6KLM782', 'NB温湿度计M782', '告警原因：温度过高', '2019-07-02 10:00:02', '2019-07-02 10:00:02', '2019-07-02 10:00:02', 11);
INSERT INTO `device_alarm` VALUES ('0382G7J76NX4W950', '可燃气报警器W950', '燃气报警', '2019-07-02 03:11:45', '2019-07-02 03:11:45', '2019-07-02 03:11:45', 12);

-- ----------------------------
-- Table structure for device_history_status
-- ----------------------------
DROP TABLE IF EXISTS `device_history_status`;
CREATE TABLE `device_history_status`  (
  `doid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备id',
  `time` datetime(0) NOT NULL COMMENT '数据的时间',
  `min_v0` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV0最小值',
  `max_v0` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV0最大值',
  `avg_v0` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV0平均值',
  `min_v1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV1最小值',
  `max_v1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV1最大值',
  `avg_v1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV1平均值',
  `gmt_create` datetime(0) NULL DEFAULT NULL,
  `gmt_modified` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`doid`, `time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of device_history_status
-- ----------------------------
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-16 00:00:00', '22.5', '26.7', '23.93', '65.8', '67.2', '66.9', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-17 00:00:00', '22.4', '26.7', '25.578', '68.0', '69.4', '68.619', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-18 00:00:00', '24.8', '25.9', '25.178', '69.5', '69.9', '69.646', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-19 00:00:00', '22.3', '27.2', '26.086', '70.4', '71.5', '71.032', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-20 00:00:00', '26.3', '27.1', '26.708', '72.4', '73.3', '72.841', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-21 00:00:00', '27.4', '28.4', '27.676', '74.3', '75.3', '74.735', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-22 00:00:00', '22.8', '29.3', '27.797', '74.4', '75.4', '75.046', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-23 00:00:00', '22.4', '26.6', '25.151', '73.7', '75.2', '74.6', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('0272T8THWBN4K3A3', '2019-07-24 00:00:00', '21.9', '23.0', '22.435', '73.6', '74.6', '74.078', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-16 00:00:00', '22.2', '26.8', '23.6', '62.2', '70.2', '68.77', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-17 00:00:00', '22.3', '26.7', '25.551', '70.7', '72.5', '71.47', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-18 00:00:00', '24.9', '26.2', '25.222', '71.8', '72.3', '71.978', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-19 00:00:00', '22.1', '27.2', '25.951', '72.6', '74.0', '73.373', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-20 00:00:00', '26.4', '27.1', '26.757', '74.7', '75.5', '75.13', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-21 00:00:00', '27.5', '28.5', '27.724', '76.5', '77.4', '76.903', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-22 00:00:00', '22.6', '29.3', '27.727', '75.8', '77.2', '76.768', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-23 00:00:00', '22.2', '26.8', '25.159', '75.0', '76.9', '76.122', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('0277AZ5PNEFLJ307', '2019-07-24 00:00:00', '22.0', '23.1', '22.435', '75.2', '76.2', '75.689', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-16 00:00:00', '22.5', '26.5', '23.87', '69.1', '69.4', '69.26', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-17 00:00:00', '22.2', '26.7', '25.535', '69.1', '70.2', '69.697', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-18 00:00:00', '24.9', '26.0', '25.246', '70.2', '70.4', '70.241', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-19 00:00:00', '22.1', '27.2', '25.951', '70.7', '71.7', '71.362', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-20 00:00:00', '26.3', '27.1', '26.695', '72.5', '73.3', '72.881', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-21 00:00:00', '27.4', '28.3', '27.646', '74.2', '75.1', '74.632', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-22 00:00:00', '22.6', '29.2', '27.63', '75.1', '75.4', '75.305', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-23 00:00:00', '22.3', '26.7', '25.205', '74.3', '75.2', '74.857', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027D1P8YVH2CBEF5', '2019-07-24 00:00:00', '21.9', '23.1', '22.476', '74.0', '74.5', '74.284', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-19 00:00:00', '26.9', '32.8', '29.905', '38.7', '49.9', '43.164', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-20 00:00:00', '26.9', '33.9', '30.699', '38.0', '52.4', '45.036', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-21 00:00:00', '24.4', '33.3', '29.965', '36.6', '52.4', '44.664', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-22 00:00:00', '23.8', '28.3', '25.435', '40.2', '52.1', '45.01', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-23 00:00:00', '28.4', '28.4', '28.4', '42.2', '42.2', '42.2', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-27 00:00:00', '27.7', '33.6', '30.858', '36.4', '48.7', '41.747', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-28 00:00:00', '28.2', '33.5', '30.858', '35.7', '48.3', '41.636', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-29 00:00:00', '25.4', '28.5', '26.296', '41.0', '51.7', '45.397', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-06-30 00:00:00', '24.6', '28.4', '26.01', '38.1', '43.0', '39.957', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-01 00:00:00', '23.4', '30.7', '26.839', '29.3', '44.4', '37.36', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-02 00:00:00', '24.3', '32.9', '28.058', '34.7', '44.5', '40.182', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-03 00:00:00', '27.2', '33.7', '30.449', '32.5', '50.0', '40.358', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-04 00:00:00', '27.5', '33.0', '30.601', '33.4', '40.3', '36.769', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-05 00:00:00', '25.9', '31.7', '28.9', '40.0', '47.9', '43.96', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-06 00:00:00', '26.0', '31.2', '27.665', '41.8', '53.2', '45.818', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-07 00:00:00', '25.6', '28.5', '26.963', '47.3', '52.5', '51.08', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-08 00:00:00', '26.1', '30.8', '28.991', '39.9', '52.7', '43.414', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-09 00:00:00', '24.9', '32.1', '28.097', '42.4', '53.7', '47.211', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-10 00:00:00', '27.2', '33.2', '29.986', '38.5', '53.5', '46.249', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-11 00:00:00', '27.3', '33.4', '30.292', '35.9', '50.2', '43.365', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-12 00:00:00', '27.5', '33.8', '30.707', '36.1', '48.5', '41.651', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-13 00:00:00', '27.0', '33.3', '28.933', '38.9', '52.8', '46.658', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-14 00:00:00', '24.4', '29.1', '26.542', '49.5', '60.5', '52.725', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-16 00:00:00', '23.6', '30.9', '27.971', '41.7', '60.3', '48.836', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-17 00:00:00', '26.0', '31.2', '28.489', '45.6', '58.7', '50.931', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-18 00:00:00', '25.9', '32.5', '29.092', '39.6', '58.1', '49.16', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-19 00:00:00', '26.5', '32.7', '29.444', '39.3', '57.4', '47.982', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-20 00:00:00', '23.3', '29.4', '25.635', '43.7', '60.1', '54.786', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-21 00:00:00', '21.9', '25.0', '23.561', '58.8', '68.6', '63.885', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-22 00:00:00', '23.9', '29.9', '26.869', '50.7', '63.6', '56.789', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-23 00:00:00', '24.5', '30.8', '27.996', '47.0', '66.9', '55.528', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027ED5HXL7F4TZQB', '2019-07-24 00:00:00', '23.9', '32.0', '28.063', '45.0', '61.6', '55.008', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-18 00:00:00', '31.6', '34.1', '32.656', '39.9', '45.1', '42.979', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-19 00:00:00', '30.6', '34.4', '32.489', '39.8', '49.4', '44.733', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-20 00:00:00', '30.6', '34.4', '32.754', '42.8', '49.8', '45.539', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-21 00:00:00', '30.4', '34.1', '32.243', '37.2', '51.6', '45.172', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-22 00:00:00', '31.8', '34.6', '32.856', '34.7', '41.6', '38.068', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-23 00:00:00', '30.9', '33.8', '32.192', '34.9', '43.2', '39.767', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-24 00:00:00', '31.2', '34.2', '32.854', '31.9', '42.4', '38.236', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-25 00:00:00', '31.1', '34.2', '32.511', '37.2', '44.1', '39.969', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-26 00:00:00', '30.9', '34.4', '32.318', '38.3', '48.7', '43.685', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-27 00:00:00', '30.8', '32.3', '31.639', '41.4', '49.1', '44.406', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-28 00:00:00', '30.8', '32.3', '31.475', '42.6', '48.8', '45.665', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-29 00:00:00', '30.3', '31.6', '30.754', '35.8', '49.4', '41.853', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-06-30 00:00:00', '30.4', '31.6', '30.751', '33.6', '38.2', '35.915', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-01 00:00:00', '30.5', '32.0', '31.229', '30.5', '35.7', '33.59', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-02 00:00:00', '30.4', '32.1', '31.176', '33.6', '48.6', '40.656', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-03 00:00:00', '30.1', '32.3', '31.228', '34.2', '48.9', '42.064', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-04 00:00:00', '31.0', '32.5', '32.04', '34.9', '43.6', '38.542', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-05 00:00:00', '29.9', '32.6', '31.379', '39.8', '55.2', '47.904', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-06 00:00:00', '30.2', '32.0', '31.46', '40.6', '50.2', '44.272', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-07 00:00:00', '29.8', '31.0', '30.183', '48.3', '50.9', '50.05', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-08 00:00:00', '30.1', '31.5', '30.718', '44.3', '50.1', '45.975', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-09 00:00:00', '30.0', '31.6', '31.064', '44.8', '52.8', '48.101', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-10 00:00:00', '30.1', '31.5', '30.721', '44.2', '55.6', '49.372', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-11 00:00:00', '29.8', '31.5', '30.457', '43.0', '53.1', '48.011', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-12 00:00:00', '30.5', '31.8', '31.233', '42.0', '48.7', '45.793', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-13 00:00:00', '30.9', '32.3', '31.724', '45.5', '52.6', '48.639', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-14 00:00:00', '30.9', '32.3', '31.7', '46.0', '51.3', '47.874', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-16 00:00:00', '30.6', '32.4', '31.751', '48.0', '54.4', '50.632', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-17 00:00:00', '31.4', '32.6', '32.224', '50.1', '55.7', '53.938', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-18 00:00:00', '30.9', '32.3', '31.74', '53.8', '59.6', '56.058', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-19 00:00:00', '31.1', '32.4', '31.682', '55.0', '60.0', '57.174', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-20 00:00:00', '30.7', '32.4', '31.472', '54.4', '62.1', '58.807', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-21 00:00:00', '31.3', '33.0', '32.118', '53.1', '61.7', '57.453', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-22 00:00:00', '31.2', '32.2', '31.832', '56.5', '62.9', '59.287', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-23 00:00:00', '31.0', '33.0', '32.143', '49.5', '63.9', '57.472', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027GKR9FY6KLM782', '2019-07-24 00:00:00', '32.1', '33.0', '32.614', '48.2', '59.8', '54.315', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-16 00:00:00', '22.4', '26.6', '23.66', '61.6', '67.8', '67.01', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-17 00:00:00', '22.2', '26.7', '25.549', '68.2', '69.6', '68.892', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-18 00:00:00', '25.0', '26.1', '25.268', '69.3', '69.7', '69.514', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-19 00:00:00', '22.1', '27.1', '25.903', '70.2', '71.4', '70.878', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-20 00:00:00', '26.4', '27.1', '26.708', '72.1', '73.0', '72.551', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-21 00:00:00', '27.4', '28.4', '27.641', '74.0', '75.0', '74.465', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-22 00:00:00', '22.6', '29.2', '27.632', '74.6', '75.1', '74.884', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-23 00:00:00', '22.1', '26.8', '25.23', '73.6', '74.7', '74.23', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027H4V3XAWYLV5X1', '2019-07-24 00:00:00', '22.0', '23.2', '22.497', '73.4', '74.1', '73.743', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-19 00:00:00', '26.5', '37.6', '30.525', '35.4', '47.0', '43.841', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-20 00:00:00', '28.5', '38.2', '32.446', '32.4', '47.4', '41.463', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-21 00:00:00', '28.8', '38.5', '32.563', '32.6', '41.6', '37.04', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-22 00:00:00', '22.4', '31.6', '25.85', '34.2', '46.1', '40.6', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-23 00:00:00', '23.4', '32.7', '26.883', '35.6', '49.1', '42.799', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-24 00:00:00', '20.4', '29.8', '25.501', '35.9', '51.2', '43.924', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-25 00:00:00', '22.2', '37.3', '27.378', '32.4', '46.5', '42.188', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-26 00:00:00', '27.9', '37.9', '32.354', '31.9', '43.7', '38.524', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-27 00:00:00', '28.5', '37.9', '32.449', '33.4', '41.9', '38.225', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-28 00:00:00', '25.1', '36.3', '29.097', '34.1', '47.5', '41.364', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-29 00:00:00', '25.7', '37.2', '30.022', '33.4', '43.8', '40.168', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-06-30 00:00:00', '21.8', '31.9', '26.124', '34.9', '43.0', '39.45', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-01 00:00:00', '19.3', '29.1', '24.536', '30.5', '48.5', '39.004', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-02 00:00:00', '21.7', '35.3', '26.64', '35.1', '44.7', '40.213', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-03 00:00:00', '27.1', '36.7', '31.253', '28.4', '42.3', '36.707', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-04 00:00:00', '28.3', '37.9', '32.644', '28.1', '40.0', '35.375', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-05 00:00:00', '28.9', '38.2', '32.931', '31.8', '39.6', '35.999', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-06 00:00:00', '25.0', '37.7', '29.514', '33.8', '47.6', '38.907', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-07 00:00:00', '22.8', '31.3', '27.039', '41.3', '48.3', '45.535', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-08 00:00:00', '23.6', '28.9', '27.125', '37.1', '49.7', '43.107', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-09 00:00:00', '20.5', '35.5', '26.035', '37.0', '50.0', '42.333', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-10 00:00:00', '26.8', '37.4', '30.983', '33.4', '46.1', '39.924', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-11 00:00:00', '27.7', '37.4', '31.647', '31.6', '42.9', '38.289', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-12 00:00:00', '28.4', '37.7', '32.483', '31.5', '42.1', '38.311', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-13 00:00:00', '26.1', '38.0', '30.714', '34.4', '49.4', '41.693', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-14 00:00:00', '22.0', '26.3', '23.16', '43.4', '51.5', '47.754', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-16 00:00:00', '20.9', '29.4', '26.167', '37.8', '51.7', '43.833', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-17 00:00:00', '23.2', '29.5', '26.7', '37.7', '51.5', '44.133', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-18 00:00:00', '22.0', '30.2', '26.615', '38.9', '53.8', '46.494', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-19 00:00:00', '23.6', '30.0', '27.269', '40.1', '51.1', '46.696', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-20 00:00:00', '22.3', '27.2', '23.939', '40.0', '50.6', '45.606', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-21 00:00:00', '19.9', '24.7', '22.511', '43.4', '70.9', '58.942', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-22 00:00:00', '19.6', '29.7', '25.282', '43.3', '62.1', '55.362', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-23 00:00:00', '22.2', '30.7', '27.042', '41.5', '55.2', '50.403', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027QPE5AKXBSJGE4', '2019-07-24 00:00:00', '23.3', '31.2', '27.849', '41.2', '62.9', '50.063', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-19 00:00:00', '22.9', '32.6', '26.077', '41.1', '50.5', '43.836', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-20 00:00:00', '25.2', '33.4', '28.725', '39.3', '48.4', '44.14', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-21 00:00:00', '26.0', '33.7', '28.807', '38.1', '43.8', '41.092', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-22 00:00:00', '25.1', '30.2', '26.438', '37.3', '45.4', '40.586', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-23 00:00:00', '24.4', '31.3', '26.793', '37.5', '47.4', '42.901', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-24 00:00:00', '22.9', '28.3', '25.694', '37.6', '49.7', '43.269', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-25 00:00:00', '24.0', '33.2', '26.842', '37.5', '48.5', '41.61', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-26 00:00:00', '25.6', '33.5', '28.608', '37.7', '50.3', '45.333', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-27 00:00:00', '21.9', '32.7', '25.849', '36.2', '52.8', '44.178', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-28 00:00:00', '26.8', '33.5', '29.742', '35.9', '45.5', '38.746', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-29 00:00:00', '26.0', '34.0', '28.933', '35.6', '41.5', '38.088', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-06-30 00:00:00', '24.8', '31.6', '27.34', '33.3', '38.0', '36.276', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-01 00:00:00', '22.8', '27.8', '25.574', '31.9', '42.9', '36.599', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-02 00:00:00', '23.6', '33.5', '26.667', '34.1', '43.7', '38.629', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-03 00:00:00', '26.8', '34.0', '29.918', '31.4', '42.6', '37.435', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-04 00:00:00', '27.7', '35.1', '31.058', '31.2', '39.3', '35.329', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-05 00:00:00', '28.2', '35.3', '31.104', '31.8', '41.6', '36.429', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-06 00:00:00', '26.0', '34.9', '28.867', '33.9', '46.0', '38.868', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-07 00:00:00', '25.3', '31.7', '28.141', '38.3', '46.3', '43.224', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-08 00:00:00', '24.1', '27.5', '26.545', '37.8', '49.2', '40.73', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-09 00:00:00', '25.9', '33.2', '27.962', '37.0', '50.3', '42.671', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-10 00:00:00', '27.0', '34.2', '29.91', '34.3', '47.2', '39.832', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-11 00:00:00', '27.5', '34.3', '30.244', '34.0', '43.0', '37.517', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-12 00:00:00', '27.7', '34.7', '30.718', '35.3', '41.1', '36.894', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-13 00:00:00', '26.5', '35.0', '29.519', '35.1', '48.0', '40.115', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-14 00:00:00', '24.9', '32.1', '27.756', '39.8', '47.4', '44.117', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-16 00:00:00', '22.7', '27.8', '25.458', '40.2', '59.8', '49.099', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-17 00:00:00', '23.7', '28.2', '26.047', '39.4', '53.9', '46.293', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-18 00:00:00', '23.6', '28.4', '26.174', '40.4', '53.4', '45.347', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-19 00:00:00', '23.9', '28.2', '26.263', '39.3', '53.1', '44.551', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-20 00:00:00', '23.1', '26.3', '24.011', '41.9', '55.7', '49.829', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-21 00:00:00', '22.9', '24.6', '23.322', '53.3', '69.0', '58.912', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-22 00:00:00', '24.1', '26.3', '25.521', '50.4', '68.2', '57.931', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-23 00:00:00', '23.4', '34.3', '27.075', '41.9', '63.7', '50.881', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027V3R339QMLHQ8E', '2019-07-24 00:00:00', '28.1', '34.3', '30.683', '38.7', '49.6', '43.338', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-16 00:00:00', '22.2', '26.5', '23.53', '60.8', '67.5', '66.49', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-17 00:00:00', '22.5', '26.5', '25.435', '68.1', '69.4', '68.786', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-18 00:00:00', '24.7', '26.0', '25.068', '69.4', '69.8', '69.57', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-19 00:00:00', '22.5', '27.1', '25.957', '70.2', '71.3', '70.832', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-20 00:00:00', '26.3', '27.0', '26.627', '72.0', '72.9', '72.443', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-21 00:00:00', '27.4', '28.3', '27.592', '73.8', '74.8', '74.281', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-22 00:00:00', '22.8', '29.2', '27.681', '74.2', '74.8', '74.616', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-23 00:00:00', '22.3', '26.6', '25.089', '73.4', '74.6', '74.089', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027WSNEB16PYQ0M0', '2019-07-24 00:00:00', '21.9', '23.0', '22.327', '73.1', '73.9', '73.508', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-19 00:00:00', '33.6', '34.7', '34.061', '39.3', '44.7', '40.548', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-20 00:00:00', '32.7', '35.5', '34.418', '37.1', '45.9', '40.967', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-21 00:00:00', '32.6', '34.8', '33.657', '33.0', '46.0', '40.21', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-22 00:00:00', '33.1', '35.2', '34.043', '28.6', '37.3', '33.974', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-23 00:00:00', '32.4', '34.0', '33.485', '33.6', '38.3', '36.219', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-24 00:00:00', '32.9', '35.7', '34.644', '25.9', '39.4', '33.75', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-25 00:00:00', '33.5', '35.8', '34.594', '32.4', '37.9', '34.969', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-26 00:00:00', '33.1', '35.8', '34.114', '34.4', '41.5', '38.943', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-27 00:00:00', '32.1', '34.6', '33.599', '35.1', '45.6', '39.672', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-28 00:00:00', '32.1', '34.1', '33.253', '37.8', '48.0', '41.899', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-29 00:00:00', '32.1', '33.9', '33.349', '30.7', '44.6', '36.432', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-06-30 00:00:00', '32.4', '33.7', '33.171', '28.0', '32.1', '30.494', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-01 00:00:00', '31.5', '34.2', '33.075', '25.5', '33.5', '29.276', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-02 00:00:00', '32.5', '33.9', '33.239', '30.3', '42.5', '36.026', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-03 00:00:00', '31.9', '34.6', '33.647', '30.0', '43.8', '36.31', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-04 00:00:00', '32.7', '35.2', '34.144', '30.1', '38.6', '34.154', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-05 00:00:00', '31.5', '34.4', '33.322', '36.2', '50.3', '42.987', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-06 00:00:00', '31.1', '33.1', '31.882', '35.9', '49.9', '40.389', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-07 00:00:00', '32.0', '33.1', '32.787', '41.6', '46.0', '42.748', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-08 00:00:00', '31.6', '33.4', '32.773', '38.4', '46.0', '40.85', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-09 00:00:00', '31.8', '32.9', '32.297', '41.4', '48.6', '45.047', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-10 00:00:00', '31.0', '33.2', '32.118', '38.4', '51.7', '45.396', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-11 00:00:00', '31.6', '33.3', '32.778', '38.0', '47.6', '42.111', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-12 00:00:00', '31.2', '34.1', '32.883', '36.5', '47.0', '41.633', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-13 00:00:00', '32.5', '34.3', '33.432', '41.7', '48.4', '44.742', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-14 00:00:00', '31.4', '34.3', '32.865', '40.0', '48.7', '44.096', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-16 00:00:00', '33.0', '34.1', '33.475', '43.4', '49.8', '46.629', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-17 00:00:00', '32.1', '33.8', '33.013', '47.8', '55.2', '51.771', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-18 00:00:00', '32.1', '34.1', '33.1', '49.1', '55.0', '52.253', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-19 00:00:00', '32.2', '34.3', '33.231', '50.0', '56.7', '52.414', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-20 00:00:00', '32.3', '33.5', '32.881', '50.8', '57.8', '54.576', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-21 00:00:00', '32.5', '35.3', '33.704', '45.6', '60.4', '53.726', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-22 00:00:00', '32.8', '34.3', '33.737', '49.8', '57.9', '51.893', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-23 00:00:00', '32.4', '35.0', '33.867', '44.0', '60.5', '51.467', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('027XV6V0QAZ0XW12', '2019-07-24 00:00:00', '33.8', '35.2', '34.572', '43.0', '56.8', '49.871', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-19 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-20 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-21 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-22 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-23 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-24 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-25 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-26 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-27 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-28 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-29 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-06-30 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-01 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-02 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-03 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-04 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-05 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-06 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-07 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-08 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-09 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-10 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-11 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-12 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-13 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-14 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-16 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-17 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-18 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-19 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-20 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-21 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-22 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-23 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('038KZURQG9L1UU40', '2019-07-24 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-25 01:50:47', '2019-07-25 01:50:47');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-19 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-20 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-21 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-22 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-23 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-24 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-25 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-26 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-27 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-28 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-29 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-06-30 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-01 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-02 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-03 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-04 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-05 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-06 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-07 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-08 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-08 16:27:20', '2019-07-09 11:02:03');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-09 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-09 10:45:35', '2019-07-10 01:51:01');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-10 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-11 01:50:58', '2019-07-11 01:50:58');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-11 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-12 01:50:57', '2019-07-12 01:50:57');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-12 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-13 01:50:57', '2019-07-13 01:50:57');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-13 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-14 01:50:55', '2019-07-14 01:50:55');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-14 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-15 01:50:54', '2019-07-15 01:50:54');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-16 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-17 01:50:55', '2019-07-17 01:50:55');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-17 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-18 01:50:53', '2019-07-18 01:50:53');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-18 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-19 01:50:50', '2019-07-19 01:50:50');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-19 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-20 01:50:49', '2019-07-20 01:50:49');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-20 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-21 01:50:50', '2019-07-21 01:50:50');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-21 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-22 06:33:31', '2019-07-22 06:33:31');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-22 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-23 01:50:48', '2019-07-23 01:50:48');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-23 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-24 01:50:47', '2019-07-24 01:50:47');
INSERT INTO `device_history_status` VALUES ('038M7MF5P90EKBFE', '2019-07-24 00:00:00', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '2019-07-25 01:50:47', '2019-07-25 01:50:47');

-- ----------------------------
-- Table structure for device_status
-- ----------------------------
DROP TABLE IF EXISTS `device_status`;
CREATE TABLE `device_status`  (
  `doid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备id',
  `device_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备名称',
  `last_v0` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV0',
  `last_v1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实时监测值lastV1',
  `power_state` tinyint(4) NULL DEFAULT NULL COMMENT '设备充电状态，0-未充电，1-正在充电',
  `online` tinyint(4) NULL DEFAULT NULL COMMENT '设备是否在线，1 - 在线，0 - 离线',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次上传数据的时间，时间戳，毫秒',
  `gmt_create` datetime(0) NULL DEFAULT NULL,
  `gmt_modified` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '设备状态（0 正常、1 异常、2 离线、3 告警）',
  `power` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电量（单位%）',
  PRIMARY KEY (`doid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of device_status
-- ----------------------------
INSERT INTO `device_status` VALUES ('0272T8THWBN4K3A3', 'NB温湿度计K3A3', '23.0', '74.6', NULL, 1, '2019-07-24 12:00:00', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('0277AZ5PNEFLJ307', 'NB温湿度计J307', '23.1', '76.2', NULL, 1, '2019-07-24 12:00:00', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027D1P8YVH2CBEF5', 'NB温湿度计BEF5', '23.1', '74.5', NULL, 1, '2019-07-24 12:00:00', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027ED5HXL7F4TZQB', '望京NB温湿度计TZQB', '25.9', '57.9', NULL, 1, '2019-07-25 09:00:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027GKR9FY6KLM782', '望京NB温湿度计M782', '33.1', '51.7', NULL, 1, '2019-07-25 09:00:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 3, '75');
INSERT INTO `device_status` VALUES ('027H4V3XAWYLV5X1', 'NB温湿度计V5X1', '23.2', '74.1', NULL, 1, '2019-07-24 12:00:00', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027QPE5AKXBSJGE4', '望京NB温湿度计JGE4', '26.6', '48.2', NULL, 1, '2019-07-25 09:00:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027V3R339QMLHQ8E', '望京NB温湿度计HQ8E', '26.5', '46.6', NULL, 1, '2019-07-25 09:00:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027WSNEB16PYQ0M0', 'NB温湿度计Q0M0', '23.0', '73.9', NULL, 1, '2019-07-24 12:00:00', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('027XV6V0QAZ0XW12', '望京NB温湿度计XW12', '34.7', '46.1', NULL, 1, '2019-07-25 09:00:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '50');
INSERT INTO `device_status` VALUES ('0330C61Y0Y8T4QEB', 'PM2.5检测仪4QEB', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, NULL);
INSERT INTO `device_status` VALUES ('033GW97U8CYETY25', 'PM2.5检测仪TY25', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, NULL);
INSERT INTO `device_status` VALUES ('033RDT5TS5VLAXC8', 'PM2.5检测仪AXC8', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, NULL);
INSERT INTO `device_status` VALUES ('0382G7J76NX4W950', '可燃气报警器W950', NULL, NULL, NULL, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 3, NULL);
INSERT INTO `device_status` VALUES ('038KZURQG9L1UU40', '可燃气报警器UU40', '0.0', '0.0', NULL, 1, '2019-07-25 08:48:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('038M7MF5P90EKBFE', '可燃气报警器KBFE', '0.0', '0.0', NULL, 1, '2019-07-25 08:54:00', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('038MV4MG4Y27A3RB', '可燃气报警器A3RB', NULL, NULL, NULL, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, NULL);
INSERT INTO `device_status` VALUES ('038XMC8XRU6Q795B', '可燃气报警器795B', NULL, NULL, NULL, 0, NULL, '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, NULL);
INSERT INTO `device_status` VALUES ('869975030126877', '烟雾报警器6877', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-12 16:50:57', 3, NULL);
INSERT INTO `device_status` VALUES ('869975030131703', '烟雾报警器1703', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-12 16:50:57', 3, NULL);
INSERT INTO `device_status` VALUES ('869975030173762', '烟雾报警器3762', NULL, NULL, 0, 0, NULL, '2019-07-10 14:28:07', '2019-07-12 16:50:57', 0, NULL);
INSERT INTO `device_status` VALUES ('869975030460722', '望京烟雾报警器0722', NULL, NULL, NULL, 1, '2019-07-25 04:37:35', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030550555', '望京烟雾报警器0555', NULL, NULL, NULL, 1, '2019-07-25 07:06:57', '2019-07-10 14:28:07', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030565793', '烟雾报警器5793', NULL, NULL, NULL, 1, '2019-07-25 01:09:37', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030594819', '望京烟雾报警器4819', NULL, NULL, NULL, 1, '2019-07-24 21:28:15', '2019-07-12 16:40:57', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030626579', '烟雾报警器6579', NULL, NULL, NULL, 1, '2019-07-24 22:31:10', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030656683', '望京烟雾报警器6683', NULL, NULL, NULL, 1, '2019-07-24 23:12:20', '2019-07-12 16:40:57', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030656774', '烟雾报警器6774', NULL, NULL, NULL, 1, '2019-07-25 03:46:13', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030662467', '望京烟雾报警器2467', NULL, NULL, NULL, 1, '2019-07-24 23:22:03', '2019-07-12 16:40:57', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030665528', '烟雾报警器5528', NULL, NULL, NULL, 1, '2019-07-24 23:55:59', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');
INSERT INTO `device_status` VALUES ('869975030665775', '烟雾报警器5775', NULL, NULL, NULL, 1, '2019-07-25 00:27:33', '2019-07-16 11:20:54', '2019-07-25 10:00:41', 0, '100');

SET FOREIGN_KEY_CHECKS = 1;
