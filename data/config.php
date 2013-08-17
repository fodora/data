<?php
//====================================================
//		FileName:config.php
//		Summary: 整个IB系统的配置文件,一些参数的设置.
//
//====================================================

//数据库部分参数设置
@define("DB_HOST", "127.0.0.1");	//数据库主机名
@define("DB_USER", "root");		//数据库用户名
@define("DB_PWD", "root");		//数据库密码
@define("DB_NAME", "data");		//数据库名称

//框架路径设置
@define("CMS_ROOT", dirname(__FILE__) . "/");			//系统根目录
@define("CMS_CLASS_PATH", CMS_ROOT . "class/");			//系统核心CLASS路径
@define("CMS_TEMPLATE_PATH", CMS_ROOT . "templates/");	//系统模板路径
@define("CMS_UPLOAD_PATH", CMS_ROOT . "images/tour/");	//系统上传文件路径
@define("CMS_TEMP", CMS_ROOT . "temp/");					//系统临时文件路径
@define("CMS_PREFIX", "CMS_");							//前缀

/*//定义smartTemplate相关参数
@define("USE_SMT", true);									//是否使用smartTemplate
if (defined("USE_SMT"))
{
  $_CONFIG['template_dir']			= CMS_TEMPLATE_PATH;
  $_CONFIG['smarttemplate_compiled']	= CMS_TEMP;
  $_CONFIG['smarttemplate_cache']		= CMS_TEMP;
  $_CONFIG['cache_lifetime']			= 30*60*60*24; //缓存一个月
}*/
//================
//smarty配置信息
include_once("smarty/Smarty.class.php"); //包含smarty类文件


$smarty = new Smarty(); //建立smarty实例对象$smarty

$smarty->config_dir="Smarty/Config_File.class.php";  // 目录变量

//$smarty->caching=false; //是否使用缓存，项目在调试期间，不建议启用缓存

$smarty->template_dir = "../templates"; //设置模板目录

$smarty->compile_dir = "../templates_c"; //设置编译目录

//$smarty->cache_dir = "./smarty_cache"; //缓存文件夹

$smarty->cache_dir = "../caches";  //缓存目录
$smarty->caching = false;  //开启缓存,为flase的时侯缓存无效
$smarty->cache_lifetime = 600;  //缓存时间
//----------------------------------------------------

//左右边界符，默认为{}，但实际应用当中容易与JavaScript相冲突

//----------------------------------------------------

$smarty->left_delimiter = "{";

$smarty->right_delimiter = "}";




//fckeditor配置信息
require_once("fckeditor/fckeditor.php"); //fckeditor
$editor = new FCKeditor('FCKeditor1') ;//实例化
$editor->BasePath = '../fckeditor/';//这个路径一定要和上面那个引入路径一致，否则会报错:找不到fckeditor.html页面
$editor->Width = '100%' ;
$editor->Height = '300' ;

//应用程序相关设置

//应用程序名称
@define("APP_NAME", "");
//新闻系统的安装路径
@define("APP_PATH", "/");
//新闻的放置目录
@define("ARTICLE_PATH", APP_PATH . "article/");
//新闻的物理路径
@define("ARTICLE_REAL_PATH", CMS_ROOT . "article/");
//图片相册物理路径
@define("GALLERY_REAL_PATH", CMS_ROOT . "gallery/");
//图片相册存放目录
@define("GALLERY_PATH", APP_PATH . "gallery/");
//系统风格路径
@define("STYLE_PATH", APP_PATH . "style/");
//系统当前风格
@define("APP_STYLE", "");
//前台文章每页显示的数目
@define("PAGE_SIZE", 10);
//前台图片显示的数目
@define("PIC_SIZE", 5);
//后台文章每页显示的数目
@define("ARTICLE_PAGE_SIZE", 10);
//后台图片每页显示的数目
@define("PICTURE_PAGE_SIZE", 10);
//后台图片显示的方式 list 列表 thumb缩略图
@define("PICTURE_SHOW_TYPE", "list");
//系统风格数组
$styleList = array("default" => "默认风格",
           "class"	 => "时代经典");
//$定义加水印的文字
$waterText = array('datamining', 'ideal lab');
//定义生成后的大小
$pictureSize = array('maxWidth' => 100, 'maxHeight' => 100);
//定义生成首页图片的大小
$imgSize = array('imgWidth' => 300, 'imgHeight' => 215);

//定义生成成果演示图片的大小
$imgachievementSize = array('imgWidth' => 800, 'imgHeight' => 800);
//定义缩略图的大小
$thumbSize = array('width' => 100, 'height' => 100);
?>