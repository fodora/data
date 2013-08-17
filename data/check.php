<?php
/*
 * Created on 2011-10-13
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require_once("IBinit.php");
  	//从数据库中读出导航栏的标题
 	$cat_id=$_GET['catid'];
 	//实验室简介页面
  	if(intval($cat_id)==2)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_02.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	//实验室成员页面
  	else
  	if(intval($cat_id)==3)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_03.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	//会议信息页面
  	else
  	if(intval($cat_id)==5)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_05.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	//学术论文
  	else
  	if(intval($cat_id)==6)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_06.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	else
  	if(intval($cat_id)==7)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_index.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
 	//资源下载页面
  	if(intval($cat_id)==9)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_091.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	else
  	//成果展示页面
  	if(intval($cat_id)==8)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_08_1.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	//联系我们
	else
  	if(intval($cat_id)==10)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_10.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	//english
  	else
  	if(intval($cat_id)==11)
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_11.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		 exit;
  	}
  	else
  	{
		//重定向浏览器
		echo "<script language='javascript'>window.location.href='nv/nv_index.php?catid=$cat_id';</script>";
		 //确保重定向后，后续代码不会被执行
		exit;

  	}

?>
