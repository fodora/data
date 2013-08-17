<?php
//====================================================
//		FileName:IBinit.php
//		Summary: 系统初始化,包含核心类文件
//
//====================================================
require_once(dirname(__FILE__) . "/config.php");
require_once(CMS_ROOT . "function.php");
require_once(CMS_CLASS_PATH . "mysql.inc.php");
require_once(CMS_CLASS_PATH . "GDImage.inc.php");
require_once(CMS_CLASS_PATH . "fileSystem.inc.php");
require_once(CMS_CLASS_PATH . "baseLogic.inc.php");
require_once(CMS_CLASS_PATH . "category.inc.php");
require_once(CMS_CLASS_PATH . "user.inc.php");
require_once(CMS_CLASS_PATH . "article.inc.php");
require_once(CMS_CLASS_PATH . "picture.inc.php");
require_once(CMS_CLASS_PATH . "validate.inc.php");
require_once(CMS_CLASS_PATH . "tool.inc.php");
require_once(CMS_CLASS_PATH . "timer.inc.php");
require_once(CMS_CLASS_PATH . "upfile.inc.php");
require_once(CMS_CLASS_PATH . "meeting.inc.php");
require_once(CMS_CLASS_PATH . "paper.inc.php");
require_once(CMS_CLASS_PATH . "link.inc.php");
require_once(CMS_CLASS_PATH . "result.inc.php");
require_once(CMS_CLASS_PATH . "conference.inc.php");
require_once(CMS_CLASS_PATH . "journal.inc.php");
require_once(CMS_CLASS_PATH . "publications.inc.php");
require_once(CMS_CLASS_PATH . "paper.inc.php");
require_once(CMS_CLASS_PATH . "news.inc.php");
require_once(CMS_CLASS_PATH . "img.inc.php");
require_once(CMS_CLASS_PATH . "count.inc.php");
require_once(CMS_CLASS_PATH . "achievementpicture.inc.php");
require_once(CMS_CLASS_PATH . "meeting_periodical.inc.php");

require_once("common/page.class.php");

//初始化数据库连接
$db	 = new mysql(DB_HOST,DB_USER,DB_PWD,DB_NAME);
$db1 = new mysql(DB_HOST,DB_USER,DB_PWD,DB_NAME);
$db2 = new mysql(DB_HOST,DB_USER,DB_PWD,DB_NAME);
$db3 = new mysql(DB_HOST,DB_USER,DB_PWD,DB_NAME);
//初始化计时器
$timer = new timer;
//设置当地时间
date_default_timezone_set('PRC');
?>
