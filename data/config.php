<?php
//====================================================
//		FileName:config.php
//		Summary: ����IBϵͳ�������ļ�,һЩ����������.
//
//====================================================

//���ݿⲿ�ֲ�������
@define("DB_HOST", "127.0.0.1");	//���ݿ�������
@define("DB_USER", "root");		//���ݿ��û���
@define("DB_PWD", "root");		//���ݿ�����
@define("DB_NAME", "data");		//���ݿ�����

//���·������
@define("CMS_ROOT", dirname(__FILE__) . "/");			//ϵͳ��Ŀ¼
@define("CMS_CLASS_PATH", CMS_ROOT . "class/");			//ϵͳ����CLASS·��
@define("CMS_TEMPLATE_PATH", CMS_ROOT . "templates/");	//ϵͳģ��·��
@define("CMS_UPLOAD_PATH", CMS_ROOT . "images/tour/");	//ϵͳ�ϴ��ļ�·��
@define("CMS_TEMP", CMS_ROOT . "temp/");					//ϵͳ��ʱ�ļ�·��
@define("CMS_PREFIX", "CMS_");							//ǰ׺

/*//����smartTemplate��ز���
@define("USE_SMT", true);									//�Ƿ�ʹ��smartTemplate
if (defined("USE_SMT"))
{
  $_CONFIG['template_dir']			= CMS_TEMPLATE_PATH;
  $_CONFIG['smarttemplate_compiled']	= CMS_TEMP;
  $_CONFIG['smarttemplate_cache']		= CMS_TEMP;
  $_CONFIG['cache_lifetime']			= 30*60*60*24; //����һ����
}*/
//================
//smarty������Ϣ
include_once("smarty/Smarty.class.php"); //����smarty���ļ�


$smarty = new Smarty(); //����smartyʵ������$smarty

$smarty->config_dir="Smarty/Config_File.class.php";  // Ŀ¼����

//$smarty->caching=false; //�Ƿ�ʹ�û��棬��Ŀ�ڵ����ڼ䣬���������û���

$smarty->template_dir = "../templates"; //����ģ��Ŀ¼

$smarty->compile_dir = "../templates_c"; //���ñ���Ŀ¼

//$smarty->cache_dir = "./smarty_cache"; //�����ļ���

$smarty->cache_dir = "../caches";  //����Ŀ¼
$smarty->caching = false;  //��������,Ϊflase��ʱ�����Ч
$smarty->cache_lifetime = 600;  //����ʱ��
//----------------------------------------------------

//���ұ߽����Ĭ��Ϊ{}����ʵ��Ӧ�õ���������JavaScript���ͻ

//----------------------------------------------------

$smarty->left_delimiter = "{";

$smarty->right_delimiter = "}";




//fckeditor������Ϣ
require_once("fckeditor/fckeditor.php"); //fckeditor
$editor = new FCKeditor('FCKeditor1') ;//ʵ����
$editor->BasePath = '../fckeditor/';//���·��һ��Ҫ�������Ǹ�����·��һ�£�����ᱨ��:�Ҳ���fckeditor.htmlҳ��
$editor->Width = '100%' ;
$editor->Height = '300' ;

//Ӧ�ó����������

//Ӧ�ó�������
@define("APP_NAME", "");
//����ϵͳ�İ�װ·��
@define("APP_PATH", "/");
//���ŵķ���Ŀ¼
@define("ARTICLE_PATH", APP_PATH . "article/");
//���ŵ�����·��
@define("ARTICLE_REAL_PATH", CMS_ROOT . "article/");
//ͼƬ�������·��
@define("GALLERY_REAL_PATH", CMS_ROOT . "gallery/");
//ͼƬ�����Ŀ¼
@define("GALLERY_PATH", APP_PATH . "gallery/");
//ϵͳ���·��
@define("STYLE_PATH", APP_PATH . "style/");
//ϵͳ��ǰ���
@define("APP_STYLE", "");
//ǰ̨����ÿҳ��ʾ����Ŀ
@define("PAGE_SIZE", 10);
//ǰ̨ͼƬ��ʾ����Ŀ
@define("PIC_SIZE", 5);
//��̨����ÿҳ��ʾ����Ŀ
@define("ARTICLE_PAGE_SIZE", 10);
//��̨ͼƬÿҳ��ʾ����Ŀ
@define("PICTURE_PAGE_SIZE", 10);
//��̨ͼƬ��ʾ�ķ�ʽ list �б� thumb����ͼ
@define("PICTURE_SHOW_TYPE", "list");
//ϵͳ�������
$styleList = array("default" => "Ĭ�Ϸ��",
           "class"	 => "ʱ������");
//$�����ˮӡ������
$waterText = array('datamining', 'ideal lab');
//�������ɺ�Ĵ�С
$pictureSize = array('maxWidth' => 100, 'maxHeight' => 100);
//����������ҳͼƬ�Ĵ�С
$imgSize = array('imgWidth' => 300, 'imgHeight' => 215);

//�������ɳɹ���ʾͼƬ�Ĵ�С
$imgachievementSize = array('imgWidth' => 800, 'imgHeight' => 800);
//��������ͼ�Ĵ�С
$thumbSize = array('width' => 100, 'height' => 100);
?>