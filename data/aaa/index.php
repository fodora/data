<?php
 // 设定要用的默认时区。自 PHP 5.1 可用
 require_once("IBinit.php");
 $pic_size=PIC_SIZE;
date_default_timezone_set('PRC');
 function wek($str)
 {
 	switch ($str) {
		case '0':
		$wek="星期天";
		break;
		case '1':
		$wek="星期一";
		break;
		case '2':
		$wek="星期二";
		break;
		case '3':
		$wek="星期三";
		break;
		case '4':
		$wek="星期四";
		break;
		case '5':
		$wek="星期五";
		break;
		case '6':
		$wek="星期六";
		break;
	}
	return $wek;
 }

    //得到cid的值
   function getCid($str)
   {
	 $arr=explode(",",$str);
	 return $arr[2];
   }
     //转换图片后缀名
   function change_jpg( $str)
   {
		$arr=explode('.',$str);
		$str_jpg=$arr[0]."_mark".'.'.jpg;
		return $str_jpg;
   }
	$img_sql="SELECT * FROM cms_img order by id desc ";
	//计算图片的个数
  	$query=$db1->query($img_sql);
  	$total = mysql_num_rows($query);
   	while($img=$db1->fetch_array()){
    $img_name[]=array("picName"=>$img[picName],"id"=>$img[id]);
   	}
   	//要显示图片的个数
   	if($total>=$pic_size)
   	 	$picnum=$pic_size;
   	 else
   	 	$picnum=$total;
  	for($i=0; $i<$picnum;$i++)
   	{
		$img[$i]="gallery/".change_jpg($img_name[$i][picName]);
   	}

  ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<!--keywords是给搜索引擎看的-->
<meta http-equiv="keywords" content="数据工程与信息系统实验室,IDEAL实验室,数据工程与信息系统IDEAL实验室" />

<title>数据工程与信息系统IDEAL实验室</title>
<link rel="stylesheet" type="text/css" href="css/home.css" />

<style>
td{
	border:none;}

</style>

<!--首页的图片自动切换 -->
<script>
var current =0;
pics = new Array(
	<?php
	for($i=0; $i<$picnum;$i++)
	{
		if($i!=$picnum-1)
			echo '"'.$img[$i].'",';
		else
			echo '"'.$img[$i].'"';
	}
  ?>);
//pic_as = new Array("#","#","#");
window.onload = function(){
		setA(0);
		flect();
		set();

}
function set(){
	timeid = setInterval("swich()",3000);
}
function stoptime(){
	clearInterval(timeid);
}
//清理下角框效果
function clear(){
	var as = document.getElementById("slider").getElementsByTagName("a");
	for(var i =0;i<=<?echo $picnum;?>;i++){
		as[i].style.color="black";
		as[i].style.background="none";
		as[i].style.fontWeight = "normal";
	}
}
//对第i个小框设置hover效果
function setA(i){
	var as = document.getElementById("slider").getElementsByTagName("a");
	as[i].style.color="#fff";
	as[i].style.backgroundColor="#000";
	as[i].style.fontWeight="bold";

}
//定时转换函数
function swich(){
	clear();
	var pic = document.getElementById("pic");
	var pic_a = document.getElementById("pic_a");
	if(<?echo $picnum;?>==current){
		current=0;
	}
	pic.src = pics[current];
	pic_a.href = pic_as[current];
	setA(current);
	current++;
}
//hover控制函数
function flect(){
	var as = document.getElementById("slider").getElementsByTagName("a");
	var pic = document.getElementById("pic");
	var pic_a = document.getElementById("pic_a");
	<?php
		for($i=0; $i<$picnum;$i++)
		{
	?>
	as[<?php echo $i;?>].onmouseover=function(){
		stoptime();
		pic.src = pics[<?php echo $i;?>];
		//pic_a.href = pic_a[<?php echo $i;?>];
		clear();
		setA(<?php echo $i;?>);
	}
	as[<?php echo $i;?>].onmouseout = function(){
		set();
	}
	<?php
		}
	?>
}
</script>
</head>
<body>
<div id="main_container">
  <iframe src="top.php" width="1050" height="180" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" ></iframe>
  <!--主体-->
  <div id ="main_content">
    <div id="main_top">
      <div class="top_left"> <a href="#" id="pic_a"> <img src="<?php  echo $img[0]?>" id="pic"/></a>
        <div id="bottom">
          <ul id="slider">
          <?php
          	for($i=1; $i<=$picnum;$i++)
          	{
          ?>
            <li style="margin:10px 0px 0px 2px;"><a href="" id="a2"><?php echo $i; ?></a></li>
            <?php
            }
            ?>
            <!--<li><a href="#" id="a2">2</a></li>-->
          </ul>
        </div>
      </div>
        <div class="top_right">
        <table class ="tab" style="width:100%;margin-top:0px;border:1px #FFF solid;" >
        <tr class="title">
          <td class="t_first"></td>
          <td class="t_title"><img src="img2/png-0298.png"  width="20" id = "pic_nav"/>&nbsp;新闻通知<span style="margin-left:200px;">
        <?php

		echo date("Y") . "年";
		echo date("n") . "月";
		echo date("d") . "日 ";
		echo date(" H:i:s  ");
		?>
        </span></td>
          <td class="t_last"><a href="nv/news_index.php"> More...</a></td>
        </tr>
        <?php
         //从数据库中读取热点新闻的内容
 		 $news_sql="SELECT * FROM `cms_news`  order by date DESC  limit 7";
 		 $query=$db->query($news_sql);
 		while($row_news=$db->fetch_array()){
 		$news=array("news_content"=>$row_news[news_content] ,"id"=>$row_news[id],"date"=>$row_news[date],"flag"=>$row_news[flag]);
        ?>
          <tr>
            <td class="first"></td>
            <td class="middle">
            <?php echo $news["news_content"];?>
             <?php
            	if($news[flag]==1)
            	{
            ?>
            <img src="img/news.gif" >
            <?php
            	}
            ?>
		 </td>
            <td class="last"><?echo $news[date];?></td>
          </tr>
         <?php
 		}
         ?>
     </table>
      </div>
    </div>
	<!-- main left start-->

	<div id="main_left">
      <table class="tab" >
        <tr class="title">
          <td class="t_first" ></td>
          <td class="t_title" ><img src="img2/png-13.png"  width="20" id = "pic_nav"/>&nbsp;友情链接</td>
           <td class="t_last"></td>
        </tr>
      	<?php
	 //读出前台需要显示的导航栏
  	$link_sql="SELECT * FROM `cms_link` limit 7 ";
 	 $query=$db->query($link_sql);
 	 while($link_title=$db->fetch_array()){
 		$link=array("name"=>$link_title[name],"url"=>$link_title[url], );
	?>
		 <tr>
          <td class="first"></td>
          <td class="middle" ><a href="<?php echo $link['url']?>" target="_blank"><?php echo $link['name']?></a></td>
          <td class="last"></td>
        </tr>
	<?php
 	 }
	?>
     </table>
   </div>
     <!-- main left end-->

	<!--  main right start -->
	<?php
	 //读出前台需要显示的导航栏
  	$nv_sql="SELECT * FROM `cms_cat` WHERE catID =4";
 	 $query=$db->query($nv_sql);
 	 while($nv_title=$db->fetch_array()){
 		$nv=array("ctitle"=>$nv_title[catTitle],"cid"=>$nv_title[catID],"cpath"=>$nv_title[catPath], );
 	 	};
	?>
	<div id="main_right">
      <table class="tab" >
      	 <tr class="title">
          	<td class="t_first"></td>
         	<td class="t_title"><img src="img2/png-11.png"  width="20" id = "pic_nav"/>&nbsp;<?php echo $nv["ctitle"]?></td>
            <td class="t_last"><a href="check.php?catid=<?php echo $nv["cid"];?>"> More...</a></td>
          </tr>

      	    <?php
     //读出内容
   	$cp= $nv[cpath].','.$nv[cid];
 	$nv2_sql="SELECT * FROM `cms_article` WHERE catPath='$cp' order by id DESC limit 7";
	$query=$db1->query($nv2_sql);
 	while($row_2=$db1->fetch_array()){
 	$nv_2=array("title"=>$row_2[title] ,"id"=>$row_2[id],"postTime"=>$row_2[postTime]);

    ?>
		 <tr>
          <td class="first"></td>
          <td class="middle"><a href="nv/nv.php?id=<?echo $nv_2[id];?>&catid=<?php echo $nv["cid"];?>"><?php echo $nv_2['title']?></a></td>
          <td class="last"><?php echo $nv_2['postTime']?></td>
        </tr>

        <?php
 	 }
        ?>
	  </table>
	</div>
	<!-- main right end  -->
  </div>
 <iframe src="foot.php" width="1050" height="90" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
</div>
<!--maincontainer-->
</body>
</html>
