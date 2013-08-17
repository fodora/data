/*
MySQL Data Transfer
Source Host: localhost
Source Database: data
Target Host: localhost
Target Database: data
Date: 2012/6/18 10:33:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cms_meeting_periodical
-- ----------------------------
CREATE TABLE `cms_meeting_periodical` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL COMMENT '会议名称',
  `homepage` varchar(100) NOT NULL COMMENT '主页',
  `contribute` date NOT NULL,
  `employ` date NOT NULL COMMENT '录用通知',
  `s_time` date NOT NULL COMMENT '开始起止时间',
  `e_time` date NOT NULL COMMENT '开会结束时间',
  `address` varchar(100) NOT NULL COMMENT '开会地点',
  `language` binary(2) default NULL COMMENT '语言',
  `impact_factor` float default NULL,
  `catPath` varchar(255) default NULL,
  `source` varchar(255) default NULL,
  `isbn` varchar(255) default NULL,
  `periodical_name` varchar(255) default NULL,
  `types` varchar(255) default NULL,
  `publication` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_meeting_periodical_cat
-- ----------------------------
CREATE TABLE `cms_meeting_periodical_cat` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cms_meeting_periodical` VALUES ('1', 'SIGMOD 2012', 'http://www.sigmod.org/2012/', '2011-10-25', '2012-02-14', '2012-05-20', '2012-05-25', ' Scottsdale, Arizona, USA ', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('2', 'KDD 2012', 'http://kdd.org/kdd2012/', '2012-02-10', '2012-05-04', '2012-08-12', '2012-08-16', 'Beijing, China', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('9', 'VLDB 2012', 'http://www.vldb2012.org/', '2012-03-01', '2012-04-19', '2012-08-27', '2012-08-31', 'Istanbul, Turkey ', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('10', 'ICDE 2013', 'http://www.icde2013.org', '2012-07-23', '2012-10-14', '2013-04-08', '2013-04-11', 'Brisbane, Australia', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('11', 'SIGIR 2012', 'http://www.sigir.org/', '2012-02-06', '2012-04-30', '2012-08-12', '2012-08-16', 'Portland, Oregon, USA', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('12', 'ICML 212', 'http://icml.cc/2012/call-for-papers/', '2012-02-24', '2012-04-30', '2012-06-27', '2012-06-29', 'Edinburgh, Scotland, United Kingdom', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('13', 'WSDM 2013', 'http://wsdm2013.org/', '2012-08-07', '2012-10-26', '2013-02-06', '2013-02-08', 'Rome, Italy ', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('14', 'ICDM  2012', 'http://icdm2012.ua.ac.be/', '2012-06-18', '2012-09-18', '2012-12-10', '2012-12-13', 'Brussels, Belgium', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('15', 'CIKM 2012', 'http://www.cikm2012.org/', '2012-05-18', '2012-07-16', '2012-10-29', '2012-11-02', 'Maui, Hawaii, USA ', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('17', 'EDBT 2012', 'http://edbticdt2012.dima.tu-berlin.de/s', '2011-09-29', '2012-12-08', '2012-03-27', '2012-03-30', 'Berlin, Germany', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('18', 'DASFAA 2012', 'http://db.pknu.ac.kr/dasfaa2012/', '2011-09-30', '2011-11-30', '2012-04-15', '2012-04-18', 'Busan, South Korea', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('19', 'ECML/PKDD 2012', 'http://www.ecmlpkdd2012.net/', '2012-04-19', '2012-06-15', '2012-09-24', '2012-09-28', 'Bristol, UK', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('20', 'PAKDD 2012 ', 'http://pakdd2012.pakdd.org/', '2011-10-02', '2011-12-30', '2012-05-29', '2012-06-01', 'Kuala Lumpur, Malaysia \r\n', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('21', 'APWeb 2012', 'http://www.apweb2012.org/', '2011-10-23', '2011-12-20', '2012-04-11', '2012-04-13', 'Kunming, China', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('22', 'WAIM 2012', 'http://db.hit.edu.cn/waim2012/', '2012-03-20', '2012-05-20', '2012-08-18', '2012-08-20', 'Harbin, China', '0', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('23', 'NDBC 2012', 'http://kdelab.ustc.edu.cn/ndbc2012/', '2012-05-01', '2012-06-25', '2012-10-12', '2012-10-14', '安徽，合肥，中国科学技术大学\r\n\r\n', '1', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('24', 'SEWM 2012', 'http://sewm2012.pku.edu.cn/', '2012-03-01', '2012-03-15', '2012-05-25', '2012-05-27', '北京，北京大学', '1', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('25', 'WISA 2012', 'http://conf.neu.edu.cn/wisa/wisa2012_en/', '2012-04-30', '2012-05-20', '2012-11-01', '2012-11-01', '中国，海南', '1', null, '0,1,2', null, null, null, '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('26', 'CCIR 2011', 'http://ir.sdu.edu.cn/ccir2011/register.htm', '2011-08-05', '2011-09-16', '2011-10-21', '2011-11-23', '山东大学', '1', null, '0,1,2', null, null, null, '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('27', 'SDM 2012', 'http://www.siam.org/meetings/sdm12/', '2011-10-16', '2011-12-21', '2012-04-26', '2012-04-28', 'Anaheim, California, USA', '0', null, '0,1,2', null, null, null, '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('28', 'CCDM 2011', 'http://www.ai.sysu.edu.cn/ccdm2011/', '2010-11-20', '2010-12-31', '2011-05-06', '2011-05-08', 'GuangZhou, China', '1', null, '0,1,2', null, null, null, '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('29', 'WWW 2012', 'http://www2012.wwwconference.org/', '2011-11-07', '2012-12-23', '2012-04-16', '2012-04-20', 'Lyon, France', '0', null, '0,1,2', null, null, null, '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('33', '6', '6', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '6', '0', '0', '0,1,2', '', '', '', '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('34', '44', '4', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '4', '0', '0', '0,1,2', '', '', '', '2', null);
INSERT INTO `cms_meeting_periodical` VALUES ('35', '3333333333333333', '345', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '3456', '0', '0', '0,1,2', '', '', '', '2', null);
INSERT INTO `cms_meeting_periodical` VALUES ('36', 'eyt', 'ertye', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', 'ertye', '1', '5', '0,1,3', 'SCI', '4', '', '3', null);
INSERT INTO `cms_meeting_periodical` VALUES ('41', '11111111111111111111111111111111', '222222222222222222222', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '33333333333333333333333', '0', '0', '0,1,2', '', '', '', '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('42', '567', '45674', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '45674567', '1', '0', '0,1,2', '', '', '', '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('43', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaa', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', 'aaaaaaaaaaaaaaaaaaaa', '1', '0', '0,1,2', '', '', '', '2', null);
INSERT INTO `cms_meeting_periodical` VALUES ('44', 'bbbbbbbbbbbbbbbbbbbbbb', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0', '1', '0,1,3', 'EI', 'bbbbbbbbbbbbbbbbb', '', '3', null);
INSERT INTO `cms_meeting_periodical` VALUES ('45', '456', '34563546', '2012-06-04', '2012-06-04', '2012-06-04', '2012-06-04', '34563456', '1', '0', '0,1,2', '', '', '', '3', null);
INSERT INTO `cms_meeting_periodical` VALUES ('46', '2345', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0', '2.34652e+007', '0,1,3', 'SCI', '23452', '', '0', null);
INSERT INTO `cms_meeting_periodical` VALUES ('47', '23452', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0', '5', '0,1,3', 'EI', '6545632456', '', '1', null);
INSERT INTO `cms_meeting_periodical` VALUES ('48', '3456345', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0', '65656', '0,1,3', 'EI', '6345634', '', '2', null);
INSERT INTO `cms_meeting_periodical` VALUES ('51', '88', 'http://www.baidu.com', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0', '0', '0,1,3', 'SCI', '88', '', '0', '88');
INSERT INTO `cms_meeting_periodical_cat` VALUES ('1', '0', '会议-期刊', '根目录', '否');
INSERT INTO `cms_meeting_periodical_cat` VALUES ('2', '0,1', '会议信息', '会议信息', '是');
INSERT INTO `cms_meeting_periodical_cat` VALUES ('3', '0,1', '期刊', '期刊信息', '是');
