/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : bancanho

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 08/12/2022 16:34:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` decimal(10, 0) NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('kh37822731', 'tuanngoc', 'tranbuituanngoc@gmail.com', 123456789, '+r5UcHdLrwPujwjUGGHFApFVkzo=');
INSERT INTO `user` VALUES ('kh70988583', 'abcd', 'example@gmail.com', 123456789, 'RtgmxSMg+l5HxcWEdz1n/JIXbvM=');
INSERT INTO `user` VALUES ('kh71459408', 'abcd3', 'example@gmail.com', 123456789, 'RtgmxSMg+l5HxcWEdz1n/JIXbvM=');

SET FOREIGN_KEY_CHECKS = 1;
