<?php
/*
 * Created on 2011-10-13
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require_once("IBinit.php");
  	//�����ݿ��ж����������ı���
 	$cat_id=$_GET['catid'];
 	//ʵ���Ҽ��ҳ��
  	if(intval($cat_id)==2)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_02.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	//ʵ���ҳ�Աҳ��
  	else
  	if(intval($cat_id)==3)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_03.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	//������Ϣҳ��
  	else
  	if(intval($cat_id)==5)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_05.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	//ѧ������
  	else
  	if(intval($cat_id)==6)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_06.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	else
  	if(intval($cat_id)==7)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_index.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
 	//��Դ����ҳ��
  	if(intval($cat_id)==9)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_091.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	else
  	//�ɹ�չʾҳ��
  	if(intval($cat_id)==8)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_08_1.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	//��ϵ����
	else
  	if(intval($cat_id)==10)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_10.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	//english
  	else
  	if(intval($cat_id)==11)
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_11.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		 exit;
  	}
  	else
  	{
		//�ض��������
		echo "<script language='javascript'>window.location.href='nv/nv_index.php?catid=$cat_id';</script>";
		 //ȷ���ض���󣬺������벻�ᱻִ��
		exit;

  	}

?>
