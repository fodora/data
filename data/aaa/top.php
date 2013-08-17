<?php
 require_once("IBinit.php");
  	//计算导航栏的个数
  	$num_sql="SELECT count(*) catID FROM cms_cat ";
  	 $query=$db->query($num_sql);
  	 while($num_sql=$db->fetch_array()){
 	$num=array("id"=>$num_sql[catID]);

 }
    $num=$num['id'];
    $n=1050/$num;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>data mining</title>
<style>
body {
	background-color:#fff;
	padding:0;
	font-family: Arial, Helvetica, sans-serif;
	margin:0px auto auto auto;
	color:#424849;
	font-size:12px;
}
#main_container {
	width:1050px;
	height:auto;
	margin:auto;
	padding:0px;
	border:none;
}
#header {
	height:150px;
	margin:auto;
}
.menu {
	font-size:14px;
	padding:0px;
	width:1050px;


}
#top_tab {
	border:none;
	border-collapse:collapse;
	background-color:#4096EE;
	width:1050px;
	padding:0;
	height:28px;

}
#top_tab td{
	width:86px;
	line-height:24px;

}
.menu a, .menu a:visited {
	display:block;
	float:left;
	height:100%;
	width:100%;
	font-size:14px;
	text-decoration:none;
	color:#fff;
	background:#4096EE;
	padding:0;
	text-align:center;
}
.menu a:hover {
	color:#000;
	background:#a9d7ee;
}
</style>
<script>

function wid(num){
	var width = 1050/num;
	var newwidth = Math.floor(width);

	var tds = document.getElementsByTagName('td');
	var s = tds[2].style.width;



	for(var i = 0;i < tds.length;i++){

		tds[i].style.width=newwidth+"px";
	}
}


</script>

</head>
<body onLoad="javascript:wid('<?=htmlspecialchars($num) ?>')" >
<div id="main_container">
  <!--页首logo-->
  <div id ="header"><img src="img/log.jpg"/></div>
  <!--导航-->
  <div class="menu">

      <table id="top_tab">
        <tr>
        <?php
    	    //从数据库中读取导航栏
 			 $cat_sql="SELECT * FROM cms_cat where catvalue='是' order by catID";
 			 $query=$db->query($cat_sql);
			 while($row_cat=$db->fetch_array()){
 			        $cat=array("title"=>$row_cat[catTitle], "num"=>$row_cat[catID]);
 					echo '<td>';
 			        if($cat['title']=='首页'){
    	 ?>
         	<a  href="index.php?catid=<?php echo $cat['num'];?>" target="_parent"><?php echo $cat['title'];?></a>
		<?php
 			        }else{
		?>
			<a  href="check.php?catid=<?php echo $cat['num'];?>" target="_parent"><?php echo $cat['title'];?></a>
		<?php
			        }
					echo '</td>';
		      }
		?>

       </tr>
   </table>
  </div>
</div>
</body>
</html>