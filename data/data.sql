/*
MySQL Data Transfer
Source Host: localhost
Source Database: data
Target Host: localhost
Target Database: data
Date: 2012-6-3 9:21:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cms_achievement
-- ----------------------------
CREATE TABLE `cms_achievement` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(2000) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_achievementpicture
-- ----------------------------
CREATE TABLE `cms_achievementpicture` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `picTitle` varchar(30) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `picName` varchar(50) NOT NULL default '',
  `catPath` varchar(200) NOT NULL default '',
  `hasThumb` int(1) NOT NULL default '0',
  `hasMark` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_album
-- ----------------------------
CREATE TABLE `cms_album` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '文章编号',
  `title` varchar(200) NOT NULL COMMENT '文章标题',
  `summary` varchar(200) NOT NULL default '',
  `postTime` date NOT NULL default '0000-00-00',
  `author` varchar(30) NOT NULL default '',
  `comeFrom` varchar(50) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `keyword` varchar(20) NOT NULL default '',
  `catPath` varchar(200) NOT NULL default '',
  `isImg` binary(1) NOT NULL default '0',
  `imgName` varchar(50) NOT NULL default '',
  `linkPath` varchar(100) NOT NULL default '',
  `audit` binary(1) NOT NULL default '0',
  `recommend` binary(1) NOT NULL default '0',
  `time` time NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`),
  KEY `keyword` (`keyword`),
  KEY `isImg` (`isImg`),
  KEY `recommend` (`recommend`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_cat
-- ----------------------------
CREATE TABLE `cms_cat` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` binary(2) NOT NULL default '\0\0',
  `catvalue` binary(2) NOT NULL default '\0\0',
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_conference
-- ----------------------------
CREATE TABLE `cms_conference` (
  `id` int(11) NOT NULL auto_increment,
  `first_author` varchar(20) NOT NULL default '第一作者',
  `other_author` varchar(100) default '其他作者',
  `conf_title` varchar(50) NOT NULL default '题目',
  `conf_name` varchar(100) NOT NULL default '会议名称',
  `other_message` varchar(100) default '其他信息',
  `data` date default NULL,
  `add_message` varchar(100) default '附加信息',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_data
-- ----------------------------
CREATE TABLE `cms_data` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL,
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_database
-- ----------------------------
CREATE TABLE `cms_database` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `dataTitle` varchar(30) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catPath` varchar(200) NOT NULL default '',
  `homepage` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_img
-- ----------------------------
CREATE TABLE `cms_img` (
  `id` int(4) NOT NULL auto_increment,
  `picTitle` varchar(100) NOT NULL COMMENT '图片名',
  `picName` varchar(100) NOT NULL COMMENT '径路片',
  `hasThumb` int(1) default NULL,
  `hasMark` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_journal
-- ----------------------------
CREATE TABLE `cms_journal` (
  `id` int(11) NOT NULL auto_increment,
  `first_author` varchar(20) NOT NULL default '第一作者',
  `other_author` varchar(50) NOT NULL default '其他作者',
  `jour_title` varchar(50) NOT NULL default '期刊名',
  `transactions` varchar(100) NOT NULL default 'Transactions 名',
  `other_message` varchar(100) default '其他信息',
  `data` date default NULL,
  `add_message` varchar(100) default '附加信息',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_lecture
-- ----------------------------
CREATE TABLE `cms_lecture` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `filename` varchar(200) NOT NULL COMMENT '�ļ�����',
  `filepath` varchar(200) default NULL,
  `upauthor` varchar(200) NOT NULL,
  `uptime` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
CREATE TABLE `cms_link` (
  `id` int(4) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_meeting
-- ----------------------------
CREATE TABLE `cms_meeting` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL COMMENT '会议名称',
  `homepage` varchar(100) NOT NULL COMMENT '主页',
  `contribute` date NOT NULL,
  `employ` date NOT NULL COMMENT '录用通知',
  `s_time` date NOT NULL COMMENT '开始起止时间',
  `e_time` date NOT NULL COMMENT '开会结束时间',
  `address` varchar(100) NOT NULL COMMENT '开会地点',
  `language` binary(2) default NULL COMMENT '语言',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_news
-- ----------------------------
CREATE TABLE `cms_news` (
  `id` int(10) NOT NULL auto_increment,
  `news_title` varchar(200) NOT NULL,
  `news_content` varchar(400) default NULL,
  `flag` binary(1) NOT NULL,
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_paper
-- ----------------------------
CREATE TABLE `cms_paper` (
  `id` int(4) NOT NULL auto_increment,
  `first_author` varchar(20) NOT NULL default '第一作者',
  `other_author` varchar(200) NOT NULL default '其他作者',
  `paper_title` varchar(200) NOT NULL default '名称',
  `transaction` varchar(200) default NULL,
  `conf_name` varchar(200) default NULL,
  `isbn` varchar(200) default NULL,
  `publisher` varchar(200) default NULL,
  `abbr` varchar(100) default NULL COMMENT '缩写',
  `volume` varchar(100) default NULL COMMENT '卷',
  `issue` varchar(100) default '' COMMENT '期',
  `start_number` varchar(100) default NULL COMMENT '起始页码',
  `end_number` varchar(100) default NULL COMMENT '终止页码',
  `tag` varchar(200) default NULL COMMENT '标识符',
  `page` binary(1) default NULL COMMENT '页码类型',
  `address` varchar(200) default NULL,
  `date` varchar(100) NOT NULL,
  `catPath` varchar(200) NOT NULL,
  `add_message` mediumtext,
  `content` varchar(2000) default NULL,
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_paper_cat
-- ----------------------------
CREATE TABLE `cms_paper_cat` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL,
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_paper_message
-- ----------------------------
CREATE TABLE `cms_paper_message` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `softTitle` varchar(200) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catPath` varchar(200) NOT NULL default '',
  `homepage` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_picture
-- ----------------------------
CREATE TABLE `cms_picture` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `picTitle` varchar(50) NOT NULL default '姓名',
  `picName` varchar(100) default '照片名',
  `catPath` varchar(200) NOT NULL default '',
  `hasThumb` int(1) NOT NULL default '0',
  `hasMark` int(1) NOT NULL default '0',
  `homepage` varchar(100) NOT NULL,
  `professional` varchar(100) NOT NULL default '职称',
  `teacher_flag` binary(2) default NULL,
  `type` varchar(100) NOT NULL default '类型',
  `grade` varchar(100) NOT NULL,
  `workPlace` varchar(200) NOT NULL default '工作单位',
  `admissionDate` date default NULL,
  `graduationDate` date default NULL,
  `student_flag` binary(2) default NULL,
  `showpic_flag` binary(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_publications
-- ----------------------------
CREATE TABLE `cms_publications` (
  `id` int(11) NOT NULL auto_increment,
  `first_author` varchar(11) NOT NULL default '第一作者',
  `other_author` varchar(50) default '其他作者',
  `book_title` varchar(50) NOT NULL default '书名',
  `isbn` varchar(50) default 'ISBN号',
  `publisher` varchar(50) NOT NULL default '出版社',
  `data` date default NULL,
  `add_message` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_result
-- ----------------------------
CREATE TABLE `cms_result` (
  `id` int(11) NOT NULL auto_increment,
  `picTitle` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `picName` varchar(50) NOT NULL,
  `hasThumb` int(1) NOT NULL,
  `hasMark` int(1) NOT NULL,
  `homepage` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_softtool
-- ----------------------------
CREATE TABLE `cms_softtool` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `filename` varchar(200) NOT NULL COMMENT '文件名称',
  `filepath` varchar(200) default NULL,
  `upauthor` varchar(200) NOT NULL,
  `uptime` date NOT NULL,
  `catPath` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_tool
-- ----------------------------
CREATE TABLE `cms_tool` (
  `catID` int(11) unsigned NOT NULL auto_increment,
  `catPath` varchar(100) NOT NULL default '',
  `catTitle` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `catvalue` varchar(100) NOT NULL,
  PRIMARY KEY  (`catID`),
  KEY `catPath` (`catPath`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_upload
-- ----------------------------
CREATE TABLE `cms_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `filename` varchar(200) NOT NULL COMMENT '文件名称',
  `filepath` varchar(200) default NULL,
  `upauthor` varchar(200) NOT NULL,
  `uptime` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
CREATE TABLE `cms_user` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `pwd` varchar(32) NOT NULL default '',
  `sex` binary(2) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cms_achievement` VALUES ('1', '0', '成果演示管理', '根目录', '否');
INSERT INTO `cms_achievement` VALUES ('21', '0,1', 'SocailEmail', '社会化邮件系统软件 V1.0是一个新型的邮件系统，它的主要特色在于：(1)根据用户的电子邮件交互图数据建立用户的社交关系网络；（２）多邮箱管理。主要功能有基本的邮箱管理功能，同时加入了对个人多个邮箱的管理功能；（３）联系人自动分组及分组管理功能。系统根据用户历史邮件交互信息对用户的邮件联系人进行自动分组，同时提供了用户手动的分组管理功能；（４）群发邮件时相关联系人的推荐。为了便捷用户群邮件的发送，', '是');
INSERT INTO `cms_achievement` VALUES ('22', '0,1', 'TripGuilder V1.0', 'TripGuider V1.0系统为游客提供陕西省内所有景点相关信息介绍、旅游景点推荐、旅游行程规划、以及旅游相关服务信息查询。该系统采用数据挖掘技术，通过对历史旅游信息挖掘为游客提供准确、合理的旅游景点推荐服务，并通过对历史旅游信息挖掘为游客提供更加合理的行程安排和旅游线路规划。', '是');
INSERT INTO `cms_achievementpicture` VALUES ('90', '6666', '1111111111111111111111111111111', '20120416030502.JPG', '0,1,2', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('91', '奋斗', '222222222222222222222222222', '20120416030445.JPG', '0,1,2', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('92', 'f', '3333333333333333333333', '20120416030433.JPG', '0,1,2', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('94', '', '是豆腐干地方法国蝴蝶飞过海的法国蝴蝶飞过海豆腐干地方更好的飞过海', '20120423044458.gif', '0,1,2', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('95', '', '            TripGuilder V1.0 系统首页', '20120505092214.jpg', '0,1,22', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('96', '', 'TripGuilder V1.0 景点列表', '20120505092333.png', '0,1,22', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('97', '', 'TripGuilder V1.0 秦始皇陵兵马俑简介', '20120505092614.png', '0,1,22', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('98', '', '发送邮件界面', '20120510030704.jpg', '0,1,21', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('99', '', '两邮箱收件箱', '20120510030812.jpg', '0,1,21', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('100', '', '添加联系人结果', '20120510030923.jpg', '0,1,21', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('101', '', '推荐好友', '20120510031016.jpg', '0,1,21', '1', '1');
INSERT INTO `cms_achievementpicture` VALUES ('102', '', '主界面', '20120510031112.jpg', '0,1,21', '1', '1');
INSERT INTO `cms_album` VALUES ('1', '0', '实验室成员管理', '根目录', '否');
INSERT INTO `cms_album` VALUES ('2', '0,1', '教师', '辅导教师', '是');
INSERT INTO `cms_album` VALUES ('3', '0,1', '学生', '研究生，本科生，博士生，实习生，毕业生', '是');
INSERT INTO `cms_article` VALUES ('139', '联系方式', '   ', '2012-03-08', 'admin', '', '<div id=\"n3\" class=\"nr\">\r\n<h4>通信地址(Address)：<br />\r\n西安市太白南路２号西安电子科技大学61信箱<br />\r\nP.O. Box 61, No.2 South Taibai Road<br />\r\nXi\'an, Shaanxi Province, China<br />\r\n邮编(Zip)：710071<br />\r\n电子邮箱(Email)：<br />\r\njbhuang&nbsp;@ xidian.edu.cn<br />\r\njbhuang.xdu&nbsp;@ gmail.com<br />\r\n办公地点(Office)：<br />\r\n东大楼320 数据挖掘实验室<br />\r\nData Mining Lab, 320, Eastern Building</h4>\r\n</div>\r\n<h3><span style=\"font-size: small\"><span style=\"font-family: Times New Roman\"><small><!--ckendn3--></small></span></span></h3>', '', '0,1,30', '0', '', '/data/article/30/2012-03/20120308-170500.htm', '0', '0', '17:04:43');
INSERT INTO `cms_article` VALUES ('140', '数据挖掘与商务智能 第三部分：聚类算法', ' ', '2012-03-08', 'admin', '', '<p><span style=\"font-family: Tahoma;\">本周将由康剑梅同学讲述&ldquo;聚类算法&rdquo;</span></p>', '', '0,1,4', '0', '', '', '0', '1', '20:40:53');
INSERT INTO `cms_article` VALUES ('150', '联系方式', '无', '2012-03-12', 'admin', '', '<p><strong>通信地址：</strong><span style=\"font-family: comic sans ms, cursive\">西安市太白南路２号西安电子科技大学国家示范性软件学院</span></p>\r\n<p><strong>邮编(Zip)：</strong><span style=\"font-family: comic sans ms, cursive\">710071</span></p>\r\n<p style=\"padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\"><strong>办公地点(Office)</strong>：东大楼320 &ldquo;数据工程与信息系统实验室&rdquo;</p>\r\n<p style=\"padding: 0px; margin: 0px;\">&nbsp;</p>\r\n<p style=\"padding: 0px; margin: 0px;\"><strong>电子邮件：</strong> <!--[if gte mso 9]><xml><w:WordDocument><w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel><w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery><w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery><w:DocumentKind>DocumentNotSpecified</w:DocumentKind><w:DrawingGridVerticalSpacing>7.8</w:DrawingGridVerticalSpacing><w:View>Normal</w:View><w:Compatibility></w:Compatibility><w:Zoom>0</w:Zoom></w:WordDocument></xml><![endif]--><span style=\"mso-spacerun:\'yes\'; font-style:normal; font-size:10.5000pt; font-family:\'Times New Roman\'; \">xdideal@126.com</span></p>\r\n<p style=\"padding: 0px; margin: 0px;\">&nbsp;</p>', '', '0,1,10', '0', '', '', '0', '0', '09:46:57');
INSERT INTO `cms_article` VALUES ('151', 'english', '无', '2012-03-12', 'admin', '', '<p>暂时无法访问!</p>', '', '0,1,11', '0', '', '', '0', '0', '17:02:39');
INSERT INTO `cms_article` VALUES ('147', '2012年春季《数据挖掘与商务智能课程》开课', '', '2012-03-08', 'admin', '', '<p>《数据挖掘与商务智能》课程讲述数据挖掘领域所采用的一些关键和核心的算法和技术。课程主要内容如下：</p>\r\n<p>一、频繁模式挖掘</p>\r\n<p>介绍频繁项集与关联规则挖掘的常用算法，包括：Aprior、FP-Growth、GSP、MaxMiner、CLOSET、CLOSET+等。</p>\r\n<p>二、分类</p>\r\n<p>介绍经典的分类方法，包括：朴素贝叶斯、决策树、感知机、神经网络与后向传播算法、SVM、多分类器组合等。</p>\r\n<p>三、聚类</p>\r\n<p>介绍常用的聚类算法，包括：K-Means、CLARANS、DBSCAN、OPTICS、层次聚类、STING、MST、Chameneon、EM等。</p>\r\n<p>四、序列模式挖掘</p>\r\n<p>介绍序列模式挖掘的常用算法，包括：PrefixSpan、CloseSpan等。</p>\r\n<p>五、链接分析与图挖掘</p>\r\n<p>介绍搜索引擎的链接分析与排序算法：PageRan、HITS。介绍频繁子图挖掘算法：gSpan等。</p>\r\n<p>六、异常检测</p>\r\n<p>介绍异常检测的原理、模型和常用方法。</p>', '', '0,1,4', '0', '', '/data/article/4/2012-03/20120321-110209.htm', '0', '1', '10:52:14');
INSERT INTO `cms_article` VALUES ('149', '实验室简介', '实验室简介', '2012-03-12', 'admin', '', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数据工程与信息系统实验室（Data Engineering and Information Systems Lab, 简称iDEAL）成立于2011年，是西安电子科技大学软件学院下属的一个科学研究组织。实验室位于西安市太白南路2号，西安电子科技大学北校区东大楼320。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &ldquo;需求是发明之母&rdquo;，处于这样一个信息爆炸和网络互联的时代，很多行业、机构、企业和应用都积累了不同类型的海量的数据和信息，例如：数据库数据、文本、Web网页、多媒体、空时信息、生物数据、传感流数据、轨迹数据、不确定数据等。但是，&ldquo;虽然我们拥有大量的数据，却缺乏有效的知识&rdquo;，数据和信息已经严重过载，使得我们难以顾及和应对。因此，本实验室致力于与海量数据的分析、处理、挖掘、管理、检索等相关的科学问题研究以及相关智能信息系统的研发。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 海量数据带来了无穷的问题，同时也给我们带来迷人的机遇和挑战。作为一个新兴的、令人振奋的交叉学科领域，知识发现与数据挖掘（Knowledge Discovery and Data Mining, KDD）研究如何提取海量的数据中隐含的有用的模式和知识，以辅助决策和为用户提供增值服务。它用到来自数据库系统、统计、机器学习、算法、高性能计算、信息论等多学科领域的知识。本实验室目前的研究方向主要集中在以下几个方面：</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) 关联模式、序列模式、图模式、分类、聚类、异常检测等相关的数据挖掘基础理论与算法；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2) 图挖掘与复杂信息网络分析；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3) 轨迹数据挖掘与用户移动性分析；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4) 软件源代码挖掘与软件缺陷监测；</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5) Web数据挖掘、Web实体搜索、Web信息系统和Web工程；</p>\r\n<p>　　6) 个性化信息检索与推荐。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欢迎学术、产业、政府等各界朋友前来参观指导！欢迎报考本实验室的研究生！</p>', '', '0,1,2', '0', '', '', '0', '0', '17:33:46');
INSERT INTO `cms_article` VALUES ('160', '数据挖掘与商务智能　第一部分：关联规则挖掘', '', '2012-03-23', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '20:42:05');
INSERT INTO `cms_article` VALUES ('161', '数据挖掘与商务智能　第二部分：分类', '', '2012-03-23', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '20:42:55');
INSERT INTO `cms_article` VALUES ('162', '数据挖掘与商务智能　第四部分：序列模式挖掘', '', '2012-03-23', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '20:43:47');
INSERT INTO `cms_article` VALUES ('163', '数据挖掘与商务智能　第五部分：链接分析与图挖掘', '', '2012-03-23', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '20:44:18');
INSERT INTO `cms_article` VALUES ('164', '数据挖掘与商务智能　第六部分：异常检测', '', '2012-03-23', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '20:44:58');
INSERT INTO `cms_article` VALUES ('165', '在线多分辨率时间演化图聚类及簇演变模式挖掘  国家自然科学基金面上项目(F020512/61173093)', '', '2011-09-01', 'admin', '', '<p><span style=\"FONT-FAMILY: tahoma, geneva, sans-serif\">国家自然科学基金(F020512/61173093) 2012.1.1 - 2015.12.31</span></p>', '', '0,1,7', '', '', '', '', '', '15:07:20');
INSERT INTO `cms_article` VALUES ('166', '基于OpenStreetMap导航软件包的研究与开发   “鲲鹏”研究生创新基金', '', '2012-03-24', 'admin', '', '<p><span style=\"font-family:tahoma,geneva,sans-serif;\">西电&ldquo;鲲鹏&rdquo;研究生创新实践基金 2012.1.1 - 201２.12.31</span></p>', '', '0,1,7', '', '', '', '', '', '15:05:01');
INSERT INTO `cms_article` VALUES ('167', '时间演化网络社团结构的在线分析与挖掘算法研究　中央高校基本业务费(K50510230001)', '', '2010-10-01', 'admin', '', '', '', '0,1,7', '', '', '', '', '', '15:06:22');
INSERT INTO `cms_article` VALUES ('168', '生物网络数据分析与挖掘中相关理论与关键技术　国家自然科学基金重点项目(60933009/F0205)', '', '2010-12-01', 'admin', '', '', '', '0,1,7', '', '', '', '', '', '15:07:47');
INSERT INTO `cms_article` VALUES ('169', '计算机科学与应用研究　陕西省自然科学基金(SJ08-ZT14)', '', '2008-08-01', 'admin', '', '', '', '0,1,7', '', '', '', '', '', '15:08:24');
INSERT INTO `cms_article` VALUES ('170', 'Web智能问答系统中的关键技术研究　西安电子科技大学博士生创新基金项目(A05013)', '', '2005-10-15', 'admin', '', '', '', '0,1,7', '', '', '', '', '', '15:09:09');
INSERT INTO `cms_article` VALUES ('171', '数据挖掘与商务智能　７聚类－高级篇　2012.4.1 J508', '', '2012-03-31', 'admin', '', '', '', '0,1,4', '', '', '', '', '', '11:53:55');
INSERT INTO `cms_article` VALUES ('172', '金融业企业代收费系统（企业横向）', '', '2012-05-17', 'admin', '', '', '', '0,1,7', '', '', '', '', '', '11:51:09');
INSERT INTO `cms_cat` VALUES ('1', '0', '首页', '��', '��');
INSERT INTO `cms_cat` VALUES ('2', '0,1', '实验室简介', '��', '��');
INSERT INTO `cms_cat` VALUES ('3', '0,1', '实验室成员', '��', '��');
INSERT INTO `cms_cat` VALUES ('4', '0,1', '学术活动', '��', '��');
INSERT INTO `cms_cat` VALUES ('5', '0,1', '会议信息', '��', '��');
INSERT INTO `cms_cat` VALUES ('6', '0,1', '学术论文', '��', '��');
INSERT INTO `cms_cat` VALUES ('7', '0,1', '科研项目', '��', '��');
INSERT INTO `cms_cat` VALUES ('8', '0,1', '成果演示', '��', '��');
INSERT INTO `cms_cat` VALUES ('9', '0,1', '资源下载', '��', '��');
INSERT INTO `cms_cat` VALUES ('10', '0,1', '联系方式', '��', '��');
INSERT INTO `cms_cat` VALUES ('11', '0,1', 'English', '��', '��');
INSERT INTO `cms_data` VALUES ('1', '0', '数据集', '分类根目录', '否');
INSERT INTO `cms_data` VALUES ('2', '0,1', '聚类', '聚类', '是');
INSERT INTO `cms_data` VALUES ('5', '0,1', '分类', '分类', '是');
INSERT INTO `cms_data` VALUES ('7', '0,1', '其他', '其他', '是');
INSERT INTO `cms_database` VALUES ('70', '聚类', ' 聚类', '0,1,5', ' http://www.cs.nyu.edu/~roweis/data.html');
INSERT INTO `cms_database` VALUES ('79', '其他', '其他', '0,1,2', 'http://www.cs.nyu.edu/~roweis/data.html');
INSERT INTO `cms_database` VALUES ('81', '分类', ' 分类', '0,1,2', 'http://www-2.cs.cmu.edu/afs/cs/project/theo-11/www/naive-bayes.html');
INSERT INTO `cms_database` VALUES ('76', '聚类', ' 聚类 聚类 聚类 聚类 聚类 聚类', '0,1,5', ' http://www.cs.nyu.edu/~roweis/data.html');
INSERT INTO `cms_database` VALUES ('94', '其他方法', '简单~', '0,1,7', 'http://123.com');
INSERT INTO `cms_img` VALUES ('9', 'data3', '20120325045645.jpg', '1', '1');
INSERT INTO `cms_img` VALUES ('10', 'data2', '20120325045327.jpg', '1', '1');
INSERT INTO `cms_img` VALUES ('11', 'data1', '20120325045342.jpg', '1', '1');
INSERT INTO `cms_img` VALUES ('13', 'data4', '20120325045352.jpg', '1', '1');
INSERT INTO `cms_img` VALUES ('14', 'data5', '20120325045408.jpg', '1', '1');
INSERT INTO `cms_img` VALUES ('15', 'data6', '20120325045420.jpg', '1', '1');
INSERT INTO `cms_lecture` VALUES ('45', '３关联规则挖掘－高级篇', '../upfile/lecture/20120331093604.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('44', '２关联规则挖掘－基础篇', '../upfile/lecture/20120331093529.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('43', '１数据挖掘概论', '../upfile/lecture/20120331093428.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('46', '４分类－基础篇', '../upfile/lecture/20120331093638.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('47', '５分类－高级篇', '../upfile/lecture/20120331093725.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('48', '６聚类－基础篇', '../upfile/lecture/20120331093753.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('49', '７聚类－高级篇', '../upfile/lecture/20120331093859.pdf', 'admin', '2012-03-31');
INSERT INTO `cms_lecture` VALUES ('50', '【AFP1-MaxMiner】[SIGMOD 1998] Efficiently mining long patterns from databases', '../upfile/lecture/20120407093129.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('51', '【AFP2-CHARM】[SDM 2002] CHARM An Efficient Algorithm for Closed Itemset Mining', '../upfile/lecture/20120407093204.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('52', '【AFP3-CLOSET】[DMKD 2000] CLOSET An Efficient Algorithm for Mining Frequent Closed Itemsets', '../upfile/lecture/20120407093223.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('53', '【AFP4-CLOSET+】[SIGKDD 2003] CLOSET+ Searching_for_the_Best_Strategies_for_Mining_Frequent_Closed_Itemsets', '../upfile/lecture/20120407093030.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('54', '【CL1-Clarans】Efficient and Effective Clustering Method for Spatial Data Mining', '../upfile/lecture/20120407093315.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('55', '【CL2-DBSCAN】[KDD 1996] A Density-Based Algorithm for Discovering Clusters in Large Spatial Databases with Noise', '../upfile/lecture/20120407093335.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('56', '【CL3-BIRCH】[SIGMOD 1996] BIRCH A Efficient Data Clustering Method for Very Large Databases', '../upfile/lecture/20120407093411.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('57', '【CL4-CURE】[SIGMOD 1998] CURE An Efficient Clustering Algorithm for Large Databases', '../upfile/lecture/20120407093443.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('58', '【CL5-OPTICS】[SIGMOD 1998] OPTICS Ordering Points To Identify the Clustering Structure', '../upfile/lecture/20120407093508.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('59', '【CL6-STING】[VLDB 1997] STING A Statistical Information Grid Approach to Spatial Data Mining', '../upfile/lecture/20120407093533.PDF', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('60', '【CL7-CobWeb】[Machine Learning, 1987] Knowledge Acquisition Via Incremental Concept Learning', '../upfile/lecture/20120407093642.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('61', '【FP1】[SIGMOD 1993] Mining Association Rules between Sets of Items in Large Databases', '../upfile/lecture/20120407093708.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('62', '【FP2-Aprior】[VLDB 1994] Fast Algorithms For Mining Association Rules', '../upfile/lecture/20120407093802.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('63', '【FP3-FPgrowth】[SIGMOD 2000] Mining Frequent Patterns without Candidate Generation', '../upfile/lecture/20120407093826.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('64', '【GP1-gSpan】[ICDM 2002] gSpan Graph-Based Substructure Pattern Mining', '../upfile/lecture/20120407093849.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('65', '【GP2-CloseGraph】[KDD 2003] CloseGraph Mining Closed Frequent Graph Patterns', '../upfile/lecture/20120407093915.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('66', '【LM1-PageRank】The PageRank Citation Ranking Bringing Order to the Web', '../upfile/lecture/20120407093957.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('67', '【LM2-Google】The Anatomy of a Large-Scale Hypertextual Search Engine', '../upfile/lecture/20120407094014.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('68', '【LM3-HITS】Authoritative Sources in a Hyperlinked Environment', '../upfile/lecture/20120407094036.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('69', '【SP1】[ICDE 1995] Mining Sequential Pattern', '../upfile/lecture/20120407094056.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('70', '【SP2-GSP】[EDBT 1996]GSP Mining Sequential Patterns Generalizations and Performance Improvements', '../upfile/lecture/20120407094116.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('71', '【SP3-SPADE】[ML 2001] SPADE An Efficient Algorithm for Mining Frequent Sequences', '../upfile/lecture/20120407094138.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('72', '【SP4-PrefixSpan】[ICDE 2001] PrefixSpan Mining Sequential Patterns Efficiently by Prefix-Projected Pattern Growth', '../upfile/lecture/20120407094157.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('73', '【SP5-CloSpan】[SDM 2003] CloSpan Mning Closed Sequential Patterns in Large Datasets', '../upfile/lecture/20120407094221.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('74', '【SP6-IncSpan】[KDD 2004] IncSpan Incremental Mining of Sequential Patterns in Large Datasets', '../upfile/lecture/20120407094234.pdf', 'admin', '2012-04-07');
INSERT INTO `cms_lecture` VALUES ('77', '数据挖掘与商务智能课程读书报告模版', '../upfile/lecture/20120411074242.doc', 'admin', '2011-04-01');
INSERT INTO `cms_lecture` VALUES ('78', '【GP3-TreeMinier】[KDD 2002] Efficiently Mining Frequent Trees in a Forest', '../upfile/lecture/20120417112128.pdf', 'admin', '2012-04-17');
INSERT INTO `cms_lecture` VALUES ('79', '[DMKD 2007]Frequent pattern mining current status and future directions', '../upfile/lecture/20120417112256.pdf', 'admin', '2012-04-17');
INSERT INTO `cms_lecture` VALUES ('80', '序列模式挖掘', '../upfile/lecture/20120426043242.pdf', 'admin', '2012-04-26');
INSERT INTO `cms_lecture` VALUES ('81', '链接分析与权威资源发现', '../upfile/lecture/20120426043302.pdf', 'admin', '2012-04-26');
INSERT INTO `cms_link` VALUES ('7', '海量中文社区', 'http://kdd.xidian.edu.cn/MY/');
INSERT INTO `cms_link` VALUES ('8', '西安电子科技大学', 'http://www.xidian.edu.cn/');
INSERT INTO `cms_link` VALUES ('9', '中国计算机协会', 'http://www.chinaccia.org.cn/');
INSERT INTO `cms_link` VALUES ('10', 'ChinaKDD', 'http://www.chinakdd.com/portal.php');
INSERT INTO `cms_link` VALUES ('11', 'KDnuggets', 'http://www.kdnuggets.com/index.html');
INSERT INTO `cms_link` VALUES ('14', '西电导航网', 'http://www.xidian.cc');
INSERT INTO `cms_link` VALUES ('15', '西电教师个人主页', 'http://web.xidian.edu.cn');
INSERT INTO `cms_meeting` VALUES ('1', 'SIGMOD 2012', 'http://www.sigmod.org/2012/', '2011-10-25', '2012-02-14', '2012-05-20', '2012-05-25', ' Scottsdale, Arizona, USA ', '0');
INSERT INTO `cms_meeting` VALUES ('2', 'KDD 2012', 'http://kdd.org/kdd2012/', '2012-02-10', '2012-05-04', '2012-08-12', '2012-08-16', 'Beijing, China', '0');
INSERT INTO `cms_meeting` VALUES ('9', 'VLDB 2012', 'http://www.vldb2012.org/', '2012-03-01', '2012-04-19', '2012-08-27', '2012-08-31', 'Istanbul, Turkey ', '0');
INSERT INTO `cms_meeting` VALUES ('10', 'ICDE 2013', 'http://www.icde2013.org', '2012-07-23', '2012-10-14', '2013-04-08', '2013-04-11', 'Brisbane, Australia', '0');
INSERT INTO `cms_meeting` VALUES ('11', 'SIGIR 2012', 'http://www.sigir.org/', '2012-02-06', '2012-04-30', '2012-08-12', '2012-08-16', 'Portland, Oregon, USA', '0');
INSERT INTO `cms_meeting` VALUES ('12', 'ICML 212', 'http://icml.cc/2012/call-for-papers/', '2012-02-24', '2012-04-30', '2012-06-27', '2012-06-29', 'Edinburgh, Scotland, United Kingdom', '0');
INSERT INTO `cms_meeting` VALUES ('13', 'WSDM 2013', 'http://wsdm2013.org/', '2012-08-07', '2012-10-26', '2013-02-06', '2013-02-08', 'Rome, Italy ', '0');
INSERT INTO `cms_meeting` VALUES ('14', 'ICDM  2012', 'http://icdm2012.ua.ac.be/', '2012-06-18', '2012-09-18', '2012-12-10', '2012-12-13', 'Brussels, Belgium', '0');
INSERT INTO `cms_meeting` VALUES ('15', 'CIKM 2012', 'http://www.cikm2012.org/', '2012-05-18', '2012-07-16', '2012-10-29', '2012-11-02', 'Maui, Hawaii, USA ', '0');
INSERT INTO `cms_meeting` VALUES ('17', 'EDBT 2012', 'http://edbticdt2012.dima.tu-berlin.de/s', '2011-09-29', '2012-12-08', '2012-03-27', '2012-03-30', 'Berlin, Germany', '0');
INSERT INTO `cms_meeting` VALUES ('18', 'DASFAA 2012', 'http://db.pknu.ac.kr/dasfaa2012/', '2011-09-30', '2011-11-30', '2012-04-15', '2012-04-18', 'Busan, South Korea', '0');
INSERT INTO `cms_meeting` VALUES ('19', 'ECML/PKDD 2012', 'http://www.ecmlpkdd2012.net/', '2012-04-19', '2012-06-15', '2012-09-24', '2012-09-28', 'Bristol, UK', '0');
INSERT INTO `cms_meeting` VALUES ('20', 'PAKDD 2012 ', 'http://pakdd2012.pakdd.org/', '2011-10-02', '2011-12-30', '2012-05-29', '2012-06-01', 'Kuala Lumpur, Malaysia \r\n', '0');
INSERT INTO `cms_meeting` VALUES ('21', 'APWeb 2012', 'http://www.apweb2012.org/', '2011-10-23', '2011-12-20', '2012-04-11', '2012-04-13', 'Kunming, China', '0');
INSERT INTO `cms_meeting` VALUES ('22', 'WAIM 2012', 'http://db.hit.edu.cn/waim2012/', '2012-03-20', '2012-05-20', '2012-08-18', '2012-08-20', 'Harbin, China', '0');
INSERT INTO `cms_meeting` VALUES ('23', 'NDBC 2012', 'http://kdelab.ustc.edu.cn/ndbc2012/', '2012-05-01', '2012-06-25', '2012-10-12', '2012-10-14', '安徽，合肥，中国科学技术大学\r\n\r\n', '1');
INSERT INTO `cms_meeting` VALUES ('24', 'SEWM 2012', 'http://sewm2012.pku.edu.cn/', '2012-03-01', '2012-03-15', '2012-05-25', '2012-05-27', '北京，北京大学', '1');
INSERT INTO `cms_meeting` VALUES ('25', 'WISA 2012', 'http://conf.neu.edu.cn/wisa/wisa2012_en/', '2012-04-30', '2012-05-20', '2012-11-01', '2012-11-01', '中国，海南', '1');
INSERT INTO `cms_meeting` VALUES ('26', 'CCIR 2011', 'http://ir.sdu.edu.cn/ccir2011/register.htm', '2011-08-05', '2011-09-16', '2011-10-21', '2011-11-23', '山东大学', '1');
INSERT INTO `cms_meeting` VALUES ('27', 'SDM 2012', 'http://www.siam.org/meetings/sdm12/', '2011-10-16', '2011-12-21', '2012-04-26', '2012-04-28', 'Anaheim, California, USA', '0');
INSERT INTO `cms_meeting` VALUES ('28', 'CCDM 2011', 'http://www.ai.sysu.edu.cn/ccdm2011/', '2010-11-20', '2010-12-31', '2011-05-06', '2011-05-08', 'GuangZhou, China', '1');
INSERT INTO `cms_meeting` VALUES ('29', 'WWW 2012', 'http://www2012.wwwconference.org/', '2011-11-07', '2012-12-23', '2012-04-16', '2012-04-20', 'Lyon, France', '0');
INSERT INTO `cms_news` VALUES ('1', '年度奖励', '2012.1.15日实验室召开年度工作总结大会，康剑梅、佘新伟等六名做出突出贡献的同学受到表彰。', '', '2012-02-01');
INSERT INTO `cms_news` VALUES ('3', '论文被录用', '论文“Towards online multiresolution community detection in large-scale networks”被美国SCI期刊PLoS ONE出版.', '', '2011-07-21');
INSERT INTO `cms_news` VALUES ('5', '开课', '《数据挖掘与商务智能》课程开课！时间为每周日晚19:00-21:00，地点：J604', '', '2012-03-01');
INSERT INTO `cms_news` VALUES ('6', '算法被录用', '本实验室提出的基于密度的网络聚类算法gSkeletonClu被IlliMine收录', '', '2012-03-19');
INSERT INTO `cms_news` VALUES ('10', '项目立项', '实验室研究生佘新伟申请的鲲鹏研究生创新基金项目“基于OpenStreetMap导航软件包的研究与开发”荣获企业资助。', '', '2011-12-28');
INSERT INTO `cms_news` VALUES ('11', '网站开通', '本实验室正式更名为“数据工程与信息系统实验室”，实验室网站正式开通！', '1', '2012-03-23');
INSERT INTO `cms_news` VALUES ('12', 'KDD会议', 'KDD 2012会议将于8月12日到16日在中国北京召开，这是KDD首次由亚太地区承办！', '1', '2012-03-23');
INSERT INTO `cms_news` VALUES ('13', '研究生录取', '经过认真考查，皇甫学军、张盼盼、白杨、王明帅、赵林五位同学被录取为本实验室保送研究生！', '', '2011-10-01');
INSERT INTO `cms_news` VALUES ('14', '硕士论文获奖', '本实验室软件工程硕士生庄永耀的硕士论文“基于企业级移动平台的数据同步的研究与实现”获校级二等奖!', '1', '2012-03-27');
INSERT INTO `cms_news` VALUES ('15', '论文录用', '钟翔同学论文“模块度约束标记传播的网络社团发现算法”被SEWM12录用，将推荐到《北京大学学报》发表！', '1', '2012-04-01');
INSERT INTO `cms_paper` VALUES ('39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2004-05', '0,1,4', '', '黄健斌，严体华.　《网络计算》　西安电子科技大学出版社, 2004');
INSERT INTO `cms_paper` VALUES ('40', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2006-05', '0,1,4', '', '黄健斌.《离散数学　精讲精解精练》　西安电子科技大学出版社, 2006');
INSERT INTO `cms_paper` VALUES ('41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2007-05', '0,1,4', '', '武波, 黄健斌等.　《离散数学》　西安电子科技大学出版社, 2007');
INSERT INTO `cms_paper` VALUES ('42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-05', '0,1,4', '', '武波, 黄健斌等.　《离散数学(第二版)》　西安电子科技大学教材供应中心, 2011');
INSERT INTO `cms_paper` VALUES ('43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2010-05', '0,1,2', '', 'Jianbin Huang, Heli Sun, Jiawei Han, Hongbo Deng, Yizhou Sun. SHRINK: A Structural Clustering Algorithm for Detecting Hierarchical Communities in Networks. In Proc. of the 19th ACM International Conference on Information and Knowledge Management (CIKM\'10, Authoritative Conference on IR&KM). Full Paper, Rate of acceptance 127/945=13.4%');
INSERT INTO `cms_paper` VALUES ('44', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2010-05', '0,1,2', '', 'Heli Sun, Jianbin Huang, Jiawei Han, Hongbo Deng, Peixiang Zhao, Boqin Feng. gSkeletonClu: Density-based Network Clustering via Structure-Connected Tree Division or Agglomeration. In Proc. of the 10th IEEE International Conference on Data Mining (ICDM\'10, Top Conference on Data Mining) . Rate of acceptance 72/789=9.04');
INSERT INTO `cms_paper` VALUES ('47', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2009-05', '0,1,2', '', 'Heli Sun，Jianbin Huang，Boqin Feng，Tao Li，Yingliang Zhao, Jun Liu. OrdRank: Learning to Rank with Ordered Multiple Hyperplanes. Proceedings of 2009 IEEE/WIC/ACM International Joint Conference on Web Intelligence and Intelligent Agent Technology (WI-IAT’09, Rank 2 Conference on AI), pp560-563. Milan, Italy, 15-18 Sep. 2009');
INSERT INTO `cms_paper` VALUES ('48', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2005-05', '0,1,3', '', '黄健斌,姬红兵, 孙鹤立. 基于模糊概率格的Web查询结果聚类算法,西安电子科技大学学报. 32(6). pp.53-55,2005.');
INSERT INTO `cms_paper` VALUES ('49', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2006-05', '0,1,3', '', 'Jianbin Huang,Hongbing Ji, Heli Sun. Integrating Multi-source Web Records into Relational Database,Wuhan University Journal of Natural Sciences. 31(5). \r\npp.327-332,2006.');
INSERT INTO `cms_paper` VALUES ('50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2007-05', '0,1,3', '', '黄健斌,姬红兵, 孙鹤立. Web网页中动态数据区域的识别与抽取,计算机工程. 33(11). pp.53-55,2007.');
INSERT INTO `cms_paper` VALUES ('51', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2007-05', '0,1,3', '', '黄健斌,姬红兵, 孙鹤立. 重复记录检测的自适应距离度量检测,西安电子科技大学学报. 33(2). pp.331-336,2007.');
INSERT INTO `cms_paper` VALUES ('52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2007-05', '0,1,3', '', 'Jianbin Huang,Hongbing Ji, Heli Sun. Probabilistic graphical model for efficient focused web crawling,Journal of Computational Information Systems. 3\r\n(4). pp.1657-1664,2007.');
INSERT INTO `cms_paper` VALUES ('53', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2008-05', '0,1,3', '', '黄健斌,姬红兵, 孙鹤立. 基于混合跳链条件随机场的异构Web记录集成方法,软件学报. 19(8). pp.2149-2158,2008.');
INSERT INTO `cms_paper` VALUES ('54', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2010-05', '0,1,3', '', '孙鹤立,冯博琴, 黄健斌, 赵英良, 刘均. 序关系优化的多超平面排序学习模型,模式识别与人工智能. 23(3). pp.327-334,2010.');
INSERT INTO `cms_paper` VALUES ('55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2010-05', '0,1,3', '', '黄健斌,孙鹤立, 冯博琴. 基于链接路径预测的聚焦Web实体搜索,计算机研究与发展,2010.');
INSERT INTO `cms_paper` VALUES ('56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-05', '0,1,3', '', '黄健斌, 孙鹤立, Dustin Bortner, 刘亚光. 从链接密度遍历序列中挖掘网络社团的层次结构. 软件学报, 2011,22(5):951-961.');
INSERT INTO `cms_paper` VALUES ('57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-05', '0,1,3', '', 'Jianbin Huang, Heli Sun, Jiawei Han, Boqin Feng. Density-based shrinkage for revealing hierarchical and overlapping community structure in networks. Physica A: Statistical Mechanics and its Applications. Elsevier. 390(11):2160-2171, June 2011. (SCI:000289759900031, IF=1.562) (EI: 20111413895236)');
INSERT INTO `cms_paper` VALUES ('58', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-05', '0,1,3', '', 'Jianbin Huang, Heli Sun, Yaguang Liu, Qinbao Song, Tim Weninger. Towards online multiresolution community detection in large-scale networks. PLoS ONE, Aug. 2011,  6(8):e23829. (SCI:000295832000063, IF=4.411)');
INSERT INTO `cms_paper` VALUES ('59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-12', '0,1,3', '', '孙鹤立,黄健斌, 冯博琴. 查询依赖的有序多超平面排序学习模型. 软件学报. 2011.12');
INSERT INTO `cms_paper` VALUES ('60', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2011-05', '0,1,3', '', 'Heli Sun, Jianbin Huang, Boqin Feng. QoRank: A Query-Dependent Ranking Model Using LSE-Based Weighted Multiple Hyperplanes Aggregation for Information Retrieval. International Journal of Intelligent Systems. 26(1): 73-97, Jan. 2011. (SCI:000285262800005, IF=1.194 ) (EI: 20104913456890)');
INSERT INTO `cms_paper` VALUES ('61', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2012-05', '0,1,3', '', '黄健斌, 钟翔, 孙鹤立, 茆婉婷. 基于相似性模块度最大约束标记传播的网络社团发现算法, 北京大学学报（自然科学版）. 48(3): xxx-xxx, 2012.');
INSERT INTO `cms_paper` VALUES ('62', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2002-05', '0,1,3', '', '黄健斌,武波. 实时协作中一种基于版本序号的并发控制算法,计算机工程与应用. 38(12). pp.73-78,2002. ');
INSERT INTO `cms_paper` VALUES ('63', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2012-5', '0,1,3', '', 'Jianbin Huang, Heli Sun, Qinbao Song, Hongbo Deng, Jiawei Han, \"Revealing Density-Based Clustering Structure from the Core-Connected Tree of a Network,\" IEEE Transactions on Knowledge and Data Engineering, 09 May 2012. IEEE Computer Society, DOI: http://doi.ieeecomputersociety.org/10.1109/TKDE.2012.100');
INSERT INTO `cms_paper` VALUES ('64', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2012-3', '0,1,3', '', '黄健斌, 张鑫, 孙鹤立, 刘晓明. 大规模网络中局部社团的一种高效检测方法, 北京大学学报（自然科学版）. 48(3): xxx-xxx, 2012.\r\n');
INSERT INTO `cms_paper_cat` VALUES ('1', '0', '学术论文', '根目录', '否');
INSERT INTO `cms_paper_cat` VALUES ('2', '0,1', '会议论文', '会议论文', '是');
INSERT INTO `cms_paper_cat` VALUES ('3', '0,1', '期刊论文', '期刊论文', '是');
INSERT INTO `cms_paper_cat` VALUES ('4', '0,1', '图书', '图书', '是');
INSERT INTO `cms_paper_message` VALUES ('12', 'Density-based shrinkage for revealing hierarchical and overlapping community structure in networks', 'Jianbin Huang, Heli Sun, Jiawei Han, Boqin Feng. Density-based shrinkage for revealing hierarchical and overlapping community structure in networks. Physica A: Statistical Mechanics and its Applicatio', '0,1,21', '0000-00-00');
INSERT INTO `cms_picture` VALUES ('37', '孙鹤立', '20120516060747.jpg', '0,1,2', '1', '1', 'http://gr.xjtu.edu.cn:8080/web/guest/home', '讲师', '1', '兼职教授', '', '西安交通大学计算机科学与技术系', '0000-00-00', '0000-00-00', '', '1');
INSERT INTO `cms_picture` VALUES ('2', '覃桂敏', '20120326093927.jpg', '0,1,2', '1', '1', 'http://web.xidian.edu.cn/gmgu/', '副教授', '1', '硕士生导师', '', '西安电子科技大学软件学院', '0000-00-00', '0000-00-00', '0', '1');
INSERT INTO `cms_picture` VALUES ('3', '刘亚光', 'no_image.gif', '0,1,3', '1', '1', 'www.123.com', '', null, '硕士生', '2009', '华为公司西安研究所', '2009-08-23', '2012-04-01', '1', '0');
INSERT INTO `cms_picture` VALUES ('4', '张鑫', '20120419102403.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2010', '西安电子科技大学计算机学院', '2010-08-22', '2013-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('5', '佘新伟', '20120423115428.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2010', '西安电子科技大学计算机学院', '2010-08-22', '2013-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('6', '聂立龙', '20120424094458.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2010', '西安电子科技大学计算机学院', '2010-08-31', '2013-03-18', '0', '1');
INSERT INTO `cms_picture` VALUES ('7', '康剑梅', '20120423092147.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('8', '李伟', '20120502075806.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-23', '0', '1');
INSERT INTO `cms_picture` VALUES ('9', '赵贝贝', '20120419101618.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('10', '钟翔', '20120503091538.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-25', '0', '1');
INSERT INTO `cms_picture` VALUES ('12', '潘梅', '20120423092552.PNG', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2012-03-18', '0', '1');
INSERT INTO `cms_picture` VALUES ('13', '田勇强', '20120423091759.png', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('14', '耿霄', '20120419102808.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('15', '陈强', '20120419101246.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2011', '西安电子科技大学计算机学院', '2011-08-22', '2014-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('16', '皇甫学军', '20120423091625.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2012', '西安电子科技大学计算机学院', '2013-08-22', '2015-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('17', '王明帅', '20120423110213.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-22', '2015-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('18', '白杨', '20120420023413.png', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-22', '2015-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('19', '张盼盼', '20120419061410.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-22', '2015-03-22', '0', '1');
INSERT INTO `cms_picture` VALUES ('20', '赵林', '20120423035221.jpg', '0,1,3', '1', '1', 'http://www.123.com', '', null, '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-22', '2015-03-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('1', '黄健斌', '20120326093909.jpg', '0,1,2', '1', '1', 'http://web.xidian.edu.cn/jbhuang/index.html', '副教授', '0', '硕士生导师', '', '', '0000-00-00', '0000-00-00', '0', '1');
INSERT INTO `cms_picture` VALUES ('42', '王鹏', 'no_image.gif', '0,1,3', '1', '1', 'http://www.123.com', '', '', '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-30', '2012-05-31', '0', '1');
INSERT INTO `cms_picture` VALUES ('41', '吴博', 'no_image.gif', '0,1,3', '1', '1', '', '', '', '硕士生', '2012', '西安电子科技大学计算机学院', '2012-08-30', '2012-05-31', '0', '1');
INSERT INTO `cms_result` VALUES ('2', 'SocailEmail', '社会化邮件系统软件 V1.0是一个新型的邮件系统，它的主要特色在于：(1)根据用户的电子邮件交互图数据建立用户的社交关系网络；（２）多邮箱管理。主要功能有基本的邮箱管理功能，同时加入了对个人多个邮箱的管理功能；（３）联系人自动分组及分组管理功能。系统根据用户历史邮件交互信息对用户的邮件联系人进行自动分组，同时提供了用户手动的分组管理功能；（４）群发邮件时相关联系人的推荐。为了便捷用户群邮件的发送，', '20120331113243.JPG', '1', '1', 'http://sdf');
INSERT INTO `cms_result` VALUES ('3', 'TripGuilder V1.0', 'TripGuider V1.0系统为游客提供陕西省内所有景点相关信息介绍、旅游景点推荐、旅游行程规划、以及旅游相关服务信息查询。该系统采用数据挖掘技术，通过对历史旅游信息挖掘为游客提供准确、合理的旅游景点推荐服务，并通过对历史旅游信息挖掘为游客提供更加合理的行程安排和旅游线路规划。', '20120331091515.png', '1', '1', 'http://1212');
INSERT INTO `cms_softtool` VALUES ('38', '６聚类－基础篇 ', '../upfile/book/20120505081924.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('37', '５分类－高级篇 ', '../upfile/book/20120505081906.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('36', '４分类－基础篇 ', '../upfile/book/20120505081838.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('35', '３关联规则挖掘－高级篇', '../upfile/book/20120505081818.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('33', '１数据挖掘概论', '../upfile/book/20120505081707.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('34', '２关联规则挖掘－基础篇 ', '../upfile/book/20120505081756.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('42', '[DMKD 2007]Frequent pattern mining current status and future directions ', '../upfile/book/20120505082049.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('41', '序列模式挖掘', '../upfile/book/20120505082018.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('40', '链接分析与权威资源发现', '../upfile/book/20120505081959.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('39', '７聚类－高级篇 ', '../upfile/book/20120505081942.pdf', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('43', '【AFP1-MaxMiner】[SIGMOD 1998] Efficiently mining long patterns from databases ', '../upfile/book/20120505082103.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('44', '【AFP2-CHARM】[SDM 2002] CHARM An Efficient Algorithm for Closed Itemset Mining', '../upfile/book/20120505082116.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('45', '【AFP3-CLOSET】[DMKD 2000] CLOSET An Efficient Algorithm for Mining Frequent Closed Itemsets ', '../upfile/book/20120505082136.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('46', '【AFP4-CLOSET+】[SIGKDD 2003] CLOSET+ Searching_for_the_Best_Strategies_for_Mining_Frequent_Closed_Itemsets ', '../upfile/book/20120505082213.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('47', '【CL1-Clarans】Efficient and Effective Clustering Method for Spatial Data Mining ', '../upfile/book/20120505082227.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('48', '【CL2-DBSCAN】[KDD 1996] A Density-Based Algorithm for Discovering Clusters in Large Spatial Databases with Noise ', '../upfile/book/20120505082241.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('49', '【CL3-BIRCH】[SIGMOD 1996] BIRCH A Efficient Data Clustering Method for Very Large Databases ', '../upfile/book/20120505082258.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('50', '【CL4-CURE】[SIGMOD 1998] CURE An Efficient Clustering Algorithm for Large Databases ', '../upfile/book/20120505082313.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('51', '【CL5-OPTICS】[SIGMOD 1998] OPTICS Ordering Points To Identify the Clustering Structure ', '../upfile/book/20120505082326.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('52', '【CL6-STING】[VLDB 1997] STING A Statistical Information Grid Approach to Spatial Data Mining ', '../upfile/book/20120505082342.PDF', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('53', '【CL7-CobWeb】[Machine Learning, 1987] Knowledge Acquisition Via Incremental Concept Learning ', '../upfile/book/20120505082357.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('54', '【FP1】[SIGMOD 1993] Mining Association Rules between Sets of Items in Large Databases ', '../upfile/book/20120505082415.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('55', '【FP2-Aprior】[VLDB 1994] Fast Algorithms For Mining Association Rules ', '../upfile/book/20120505082432.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('56', '【FP3-FPgrowth】[SIGMOD 2000] Mining Frequent Patterns without Candidate Generation ', '../upfile/book/20120505082447.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('57', '【GP1-gSpan】[ICDM 2002] gSpan Graph-Based Substructure Pattern Mining ', '../upfile/book/20120505082505.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('58', '【GP2-CloseGraph】[KDD 2003] CloseGraph Mining Closed Frequent Graph Patterns ', '../upfile/book/20120505082519.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('59', '【GP3-TreeMinier】[KDD 2002] Efficiently Mining Frequent Trees in a Forest ', '../upfile/book/20120505082534.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('60', '【LM1-PageRank】The PageRank Citation Ranking Bringing Order to the Web ', '../upfile/book/20120505082548.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('61', '【LM2-Google】The Anatomy of a Large-Scale Hypertextual Search Engine ', '../upfile/book/20120505082604.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('62', '【LM3-HITS】Authoritative Sources in a Hyperlinked Environment ', '../upfile/book/20120505082620.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('63', '【SP1】[ICDE 1995] Mining Sequential Pattern ', '../upfile/book/20120505082639.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('64', '【SP2-GSP】[EDBT 1996]GSP Mining Sequential Patterns Generalizations and Performance Improvements ', '../upfile/book/20120505082657.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('65', '【SP3-SPADE】[ML 2001] SPADE An Efficient Algorithm for Mining Frequent Sequences ', '../upfile/book/20120505082712.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('66', '【SP4-PrefixSpan】[ICDE 2001] PrefixSpan Mining Sequential Patterns Efficiently by Prefix-Projected Pattern Growth ', '../upfile/book/20120505082728.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('67', '【SP5-CloSpan】[SDM 2003] CloSpan Mning Closed Sequential Patterns in Large Datasets ', '../upfile/book/20120505082741.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('68', '【SP6-IncSpan】[KDD 2004] IncSpan Incremental Mining of Sequential Patterns in Large Datasets ', '../upfile/book/20120505082756.pdf', 'admin', '2012-05-05', '0,1,3');
INSERT INTO `cms_softtool` VALUES ('69', '数据挖掘与商务智能课程读书报告模版 ', '../upfile/book/20120505091342.doc', 'admin', '2012-05-05', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('70', '2012年《数据挖掘与商务智能》大作业', '../upfile/book/20120506051425.rar', 'admin', '2012-05-06', '0,1,2');
INSERT INTO `cms_softtool` VALUES ('71', '10 异常检测', '../upfile/book/20120513064839.pdf', 'admin', '2012-05-13', '0,1,2');
INSERT INTO `cms_tool` VALUES ('1', '0', '资源下载', '根目录', '否');
INSERT INTO `cms_tool` VALUES ('2', '0,1', '课件', '课件资源', '是');
INSERT INTO `cms_tool` VALUES ('3', '0,1', '经典论文', '经典论文资源', '是');
INSERT INTO `cms_upload` VALUES ('77', '面向大规模网络的在线多分辨率重叠社团检测V31', '../upfile/book/20111103095159.pdf', 'admin', '2011-11-03');
INSERT INTO `cms_upload` VALUES ('76', '科学研究与学术论文', '../upfile/book/20111030103055.ppt', 'admin', '2011-10-30');
INSERT INTO `cms_upload` VALUES ('75', 'KDD论文综述二', '../upfile/book/20111030103046.ppt', 'admin', '2011-10-30');
INSERT INTO `cms_upload` VALUES ('74', 'KDD论文综述', '../upfile/book/20111030103035.ppt', 'admin', '2011-10-30');
INSERT INTO `cms_upload` VALUES ('73', 'advertisement', '../upfile/book/20111030103022.doc', 'admin', '2011-10-30');
INSERT INTO `cms_user` VALUES ('32', 'admin', '0d8f7af364b2e336e554e0f7af4eaaa4', '0', '', '2012-03-05');
INSERT INTO `cms_user` VALUES ('2', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '0', 'user@126.com', '2011-08-07');
INSERT INTO `cms_user` VALUES ('16', 'cms', '570d99e4c85914470d914170d1e95144', '0', 'cms@126.com', '2011-10-07');
INSERT INTO `cms_user` VALUES ('1', 'luther', 'd0ec8c4e2527b225ea86c333f1fbee7f', '0', '', '2012-03-06');
