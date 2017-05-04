/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : dataplatform

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2017-03-06 10:52:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for equips
-- ----------------------------
DROP TABLE IF EXISTS `equips`;
CREATE TABLE `equips` (
  `id` int(4) NOT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `factoryId` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equips
-- ----------------------------
INSERT INTO `equips` VALUES ('1', '注塑机1', '1', '11', '1');
INSERT INTO `equips` VALUES ('2', '注塑机2', '2', '12', '1');
INSERT INTO `equips` VALUES ('3', '注塑机3', '3', '21', '1');
INSERT INTO `equips` VALUES ('4', '注塑机4', '4', '13', '1');
INSERT INTO `equips` VALUES ('5', '注塑机5', '5', '14', '1');
INSERT INTO `equips` VALUES ('6', '注塑机6', '6', '22', '1');
INSERT INTO `equips` VALUES ('7', '注塑机7', '7', '15', '1');
INSERT INTO `equips` VALUES ('8', '注塑机8', '8', '16', '1');
INSERT INTO `equips` VALUES ('9', '注塑机9', '9', '17', '1');

-- ----------------------------
-- Table structure for factorys
-- ----------------------------
DROP TABLE IF EXISTS `factorys`;
CREATE TABLE `factorys` (
  `id` int(4) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factorys
-- ----------------------------
INSERT INTO `factorys` VALUES ('1', '青岛海尔互联工厂', '120.4260390000', '36.1352100000', '山东省青岛市崂山区', '053288888888', '海尔的海尔互联工厂，是为了满足用户个性化需求而诞生。通过互联工厂的前端收集用户碎片化的需求，整合成比较集中的型号，借助智能制造实现柔性生产，解决大规模生产和个性化定制之间存在的天然矛盾。', 'factory1');
INSERT INTO `factorys` VALUES ('2', '沈阳海尔互联工厂', '123.1912360000', '41.2702260000', '辽宁省沈阳市和平区', '02455665566', '海尔对整个企业的产品设计和制造体系的模块化改造始于2008年，改造从虚拟设计、实体制造等方面同步进行。从模块化到自动化再到黑灯工厂，到现在智能制造互联工厂，互联工厂初见成效。', 'factory2');
INSERT INTO `factorys` VALUES ('3', '广州海尔互联工厂', '113.358172000', '23.2544160000', '广东省广州市越秀区', '02022221111', '没有用户的参与，不是互联网工业 。互联工厂是一个生态系统，而海尔互联工厂连接用户的方式，是可视化定制，让用户把可见通过互联工厂变为可得。', 'factory3');
INSERT INTO `factorys` VALUES ('4', '郑州海尔互联工厂', '113.6339310000', '34.8910030000', '河南省郑州市惠济区', '037199996666', '未来这种“前连用户，后连制造”的模式有望进一步输出给其他企业，从而推动整个行业从中国制造向中国智造转型升级。', 'factory4');

-- ----------------------------
-- Table structure for params
-- ----------------------------
DROP TABLE IF EXISTS `params`;
CREATE TABLE `params` (
  `id` int(4) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pvalue` varchar(50) DEFAULT NULL,
  `equipId` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of params
-- ----------------------------
