/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cangkuguanli

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-12-24 17:10:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` char(255) CHARACTER SET gbk NOT NULL,
  `goods_number` char(255) DEFAULT NULL,
  `goods_price` char(255) DEFAULT NULL,
  `goods_brand` char(255) DEFAULT NULL,
  `goods_description` char(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('001', '10', '2000', '耐克', '鞋子');
INSERT INTO `goods` VALUES ('002', '20', '300', 'Af', '衣服');
INSERT INTO `goods` VALUES ('003', '600', '1000', 'Lennon', '爱仕达');
INSERT INTO `goods` VALUES ('004', '20', '90000', '联兴', '电视机');
INSERT INTO `goods` VALUES ('005', '900', '30', '恩格贝日白', '电池');
INSERT INTO `goods` VALUES ('006', '900', '50', '赫菲斯定', '包');
INSERT INTO `goods` VALUES ('007', '9850', '3', '天然司法局', '手巾');

-- ----------------------------
-- Table structure for `storage`
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `storage_id` char(255) NOT NULL,
  `storage_type` char(255) DEFAULT NULL,
  `storage_count` char(255) DEFAULT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES ('001', '服饰', '300');
INSERT INTO `storage` VALUES ('002', '首饰', '20');
INSERT INTO `storage` VALUES ('123', '123', '123');

-- ----------------------------
-- Table structure for `superuser`
-- ----------------------------
DROP TABLE IF EXISTS `superuser`;
CREATE TABLE `superuser` (
  `superuser_id` char(255) NOT NULL,
  `superuser_password` char(255) DEFAULT NULL,
  PRIMARY KEY (`superuser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of superuser
-- ----------------------------
INSERT INTO `superuser` VALUES ('123', '123');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `user_password` char(255) DEFAULT NULL,
  `user_name` char(255) DEFAULT NULL,
  `user_nickname` char(255) DEFAULT NULL,
  `user_email` char(255) DEFAULT NULL,
  `user_sex` char(255) DEFAULT NULL,
  `user_birth` char(255) DEFAULT NULL,
  `user_idcard` char(255) DEFAULT NULL,
  `user_telephone` char(255) DEFAULT NULL,
  `user_postcode` char(255) DEFAULT NULL,
  `user_address` char(255) DEFAULT NULL,
  `user_favourite` char(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', 'lzy', 'null', '997088290@qq.com', '男', '2015', '12', '178565498788', '200600', '鲁东大学', '...');
INSERT INTO `user` VALUES ('123', '123', '123', '132', '123', '321', '321', '32', null, null, null, null);
INSERT INTO `user` VALUES ('1010', '10', '1010', '1010', '10', '10', '10', '10', '10', '10', '10', '10');
