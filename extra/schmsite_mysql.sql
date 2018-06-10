/*
Navicat MySQL Data Transfer

Source Server         : schmsite_mysql
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : schmsite_mysql

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-06-10 19:10:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `recontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `stype` varchar(255) DEFAULT NULL,
  `savetime` datetime DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ntypes
-- ----------------------------
DROP TABLE IF EXISTS `ntypes`;
CREATE TABLE `ntypes` (
  `id` int(11) NOT NULL,
  `typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pinlun
-- ----------------------------
DROP TABLE IF EXISTS `pinlun`;
CREATE TABLE `pinlun` (
  `id` int(11) NOT NULL,
  `saver` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `infotitle` varchar(255) DEFAULT NULL,
  `savetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pros
-- ----------------------------
DROP TABLE IF EXISTS `pros`;
CREATE TABLE `pros` (
  `id` int(11) NOT NULL,
  `proshop` varchar(255) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `bei` varchar(255) DEFAULT NULL,
  `btype` varchar(255) DEFAULT NULL,
  `stype` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` datetime DEFAULT NULL,
  `cjnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for proscar
-- ----------------------------
DROP TABLE IF EXISTS `proscar`;
CREATE TABLE `proscar` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for splb
-- ----------------------------
DROP TABLE IF EXISTS `splb`;
CREATE TABLE `splb` (
  `id` int(11) NOT NULL,
  `tglparentid` int(11) DEFAULT NULL,
  `datashowname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `savetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yqlj
-- ----------------------------
DROP TABLE IF EXISTS `yqlj`;
CREATE TABLE `yqlj` (
  `id` int(11) NOT NULL,
  `ljname` varchar(255) DEFAULT NULL,
  `ljurl` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
