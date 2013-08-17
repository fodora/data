<?php
require_once ("IBinit.php");
define('CMS_ROOT', dirname(__FILE__).'/');
$cid = isset ( $_GET ['catid'] ) ? $_GET ['catid'] : 1;
$num_sql = "SELECT count(*) catID FROM cms_cat ";
$query = $db->query ( $num_sql );
while ( $num_sql = $db->fetch_array () ) {
	$num = array ("id" => $num_sql [catID] );
}
$num = $num ['id'];
$width = intval ( 1050 / $num );
if (file_exists (CMS_ROOT. "templates/main.tpl" )) {
	$tpl_file =CMS_ROOT. "templates/main.tpl";
	$tpl_main = file_get_contents ( $tpl_file );

} else {
	echo "模板不存在";
}
$flag = false;
$user=array();
if(isset($_COOKIE['u_user'])){
	$flag = true;
}
header ( 'Content-type: text/html; charset=gbk' );
ob_start ();
?>
<title>data mining</title>
<?php if($Page != 'yes'){?>
<link rel="stylesheet" type="text/css" href="javascript/anythingslider.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />

<script type="text/javascript" src="javascript/jquery-1.6.3.js"></script>
<script type="text/javascript" src="javascript/jquery.anythingslider.js"></script>
<script type="text/javascript" src="javascript/jquery.easing.1.2.js"></script>
<?php }else{?>
<link rel="stylesheet" type="text/css" href="../javascript/anythingslider.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<script type="text/javascript" src="../javascript/jquery-1.6.3.js"></script>
<script type="text/javascript" src="../javascript/easySlider.js"></script>


<?php }?>
<script type="text/javascript">
$(document).ready(function(){
	$('#slider1').anythingSlider({
		       
		easing: 'easeInOutExpo',
		buildArrows         : false
	});
	
});
</script>
<?php
$tpl_temp = trim ( ob_get_contents () );
$tpl_main = str_replace ( '<cms_head>', $tpl_temp, $tpl_main );
ob_end_clean ();

ob_start ();

$tpl_temp = trim ( ob_get_contents () );
$tpl_main = str_replace ( '<cms_top>', $tpl_temp, $tpl_main );
ob_end_clean ();

ob_start ();
?>
<div id="menu_container">
	<div id="header">
		<img src="<?php echo ($Page=='yes')?'../':'';?>img/log.jpg" />
	</div>
	<div class="menu">
		<table id="menu_tab">
			<tr>
        <?php
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
<!-- menu_container -->
<?php
$tpl_temp = ob_get_contents ();
// echo $tpl_temp;
$tpl_main = str_replace ( '<menu_container>', $tpl_temp, $tpl_main );
// echo $tpl_main;
ob_end_clean ();
ob_start ();


