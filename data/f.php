<?php 
$tpl_temp = trim(ob_get_contents());

$tpl_main = str_replace('<cms_main>', $tpl_temp,$tpl_main);
ob_end_clean();

ob_start();
?>
	<div id="footer2">
		
		<div id="templatemo_footer">
			 Address: East Building 320. No. 2 South Taibai Road, Xi'an, Shanxi, 710071.
               </br>
           	 &copy;<?php echo date("Y");?> Data Engineering And Information Systems Laboratory, School of Software, Xidian University.
           	 </br>
           	 Entrance:<a href="admin/index.php"   target="_blank"><u><b>Administrator</b></u></a>
           	 Email:<a href="mailto:fodora@sina.com"><u><b>webmaster</b></u></a>
           	主页访问次数:<script src="index/count.php"></script>
		</div>
		<!--templatemo_footer-->
	</div>
	<!--footer-->
<?php 
$tpl_temp = trim(ob_get_contents());
$tpl_main = str_replace('<foot_container>', $tpl_temp,$tpl_main);
ob_end_clean();
exit ( $tpl_main);
?>