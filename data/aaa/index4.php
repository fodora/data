<?php
define ( 'CMS_ROOT', dirname ( __FILE__ ) . '/' );
require CMS_ROOT . 'top4.php';
$pic_size = PIC_SIZE;
date_default_timezone_set ( 'PRC' );
function wek($str) {
	switch ($str) {
		case '0' :
			$wek = "������";
			break;
		case '1' :
			$wek = "����һ";
			break;
		case '2' :
			$wek = "���ڶ�";
			break;
		case '3' :
			$wek = "������";
			break;
		case '4' :
			$wek = "������";
			break;
		case '5' :
			$wek = "������";
			break;
		case '6' :
			$wek = "������";
			break;
	}
	return $wek;
}

function getCid($str) {
	$arr = explode ( ",", $str );
	return $arr [2];
}
function change_jpg($str) {
	$arr = explode ( '.', $str );
	$str_jpg = $arr [0] . "_mark" . '.jpg';
	return $str_jpg;
}
$img_sql = "SELECT * FROM cms_img order by id desc ";
$query = $db1->query ( $img_sql );
$total = mysql_num_rows ( $query );
while ( $img = $db1->fetch_array () ) {
	$img_name [] = array ("picName" => $img [picName], "id" => $img [id] );
}
if ($total >= $pic_size)
	$picnum = $pic_size;
else
	$picnum = $total;
for($i = 0; $i < $picnum; $i ++) {
	$img [$i] = "gallery/" . change_jpg ( $img_name [$i] [picName] );
}

?>
<div class="container_top">
	<div class="top_left">
					<ul id="slider1">
          <?php	for($i = 0; $i < $picnum; $i ++) {?>
<li><img src="<?php  echo $img[$i]?>" /></li>
<?php }?>
</ul>
			</div>
			<!--end of top_left-->
			<div class="top_right">
				<table class="tab" style="width: 100%; margin-top: 0px;">
					<tr class="title">
						<td></td>
						<td class="t_title">&nbsp;����֪ͨ<span style="margin-left: 100px;">
		        <?php
										echo date ( "Y" ) . "��" . date ( "n" ) . "��" . date ( "d" ) . "��" . date ( " H:i:s  " );
										?>
		        </span></td>
					</tr>
		        <?php
										$news_sql = "SELECT * FROM `cms_news`  order by date DESC  limit 7";
										$query = $db->query ( $news_sql );
										while ( $row_news = $db->fetch_array () ) {
											$news = array ("news_content" => $row_news [news_content], "id" => $row_news [id], "date" => $row_news [date], "flag" => $row_news [flag] );
											?>
		          <tr>
						<td style="vertical-align: top;"><img src="img/item.jpg"
							style="margin-top: 5px;"></td>
						<td class="middle">
		            <?php echo $news["news_content"];?>
		            <span class="uptime"><?echo $news[date];?></span>
		             <?php
											if ($news [flag] == 1) {
												?>
		            <img src="img/news.gif">
		            <?php
											}
											?>
				 </td>
					</tr>
		         <?php
										}
										?>
		     </table>
			</div>
			<!-- topright -->
			


</div>
<div class="main">
	<div class="content">
		<div class="primary">
			
			<div id="main_left" class="model">
				<table class="tab">
					<tr class="title">
						<td class="t_title"><span class="more_link"><a
								href="http://kdd.xidian.edu.cn/nv/nv_02.php?catid=2"> ��ϸ����>></a></span>&nbsp;ʵ���Ҽ��</td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ݹ�������Ϣϵͳʵ���ң�Data
							Engineering and Information Systems Lab,
							���iDEAL��������2011�꣬���������ӿƼ���ѧ���ѧԺ������һ����ѧ�о���֯��<br>&nbsp;&nbsp;&nbsp;&nbsp;ʵ����λ��������̫����·2�ţ��������ӿƼ���ѧ��У������¥320��<br>
							&nbsp;&nbsp;&nbsp;&nbsp;
							��ʵ�����������뺣�����ݵķ����������ھ򡢹�����������صĿ�ѧ�����о��Լ����������Ϣϵͳ���з���<br>
						</td>

					</tr>
				</table>
			</div>

		</div>
		<!-- primary -->

		<div class="secondary">
			
			<?php
			$nv_sql = "SELECT * FROM `cms_cat` WHERE catID =4";
			$query = $db->query ( $nv_sql );
			while ( $nv_title = $db->fetch_array () ) {
				$nv = array ("ctitle" => $nv_title [catTitle], "cid" => $nv_title [catID], "cpath" => $nv_title [catPath] );
			}
			;
			?>
	<div id="main_right">
				<table class="tab model">
					<tr class="title">

						<td class="t_title"><span class="more_link"><a
								href="check.php?catid=<?php echo $nv["cid"];?>"> ����>></a></span>&nbsp;<?php echo $nv["ctitle"]?></td>
					</tr>

      	    <?php
											$cp = $nv [cpath] . ',' . $nv [cid];
											$nv2_sql = "SELECT * FROM `cms_article` WHERE catPath='$cp' order by id DESC limit 7";
											$query = $db1->query ( $nv2_sql );
											while ( $row_2 = $db1->fetch_array () ) {
												$nv_2 = array ("title" => $row_2 [title], "id" => $row_2 [id], "postTime" => $row_2 [postTime] );
												
												?>
		 <tr>

						<td class="middle"><img src="img/item.jpg"><a
							href="nv/nv.php?id=<?echo $nv_2[id];?>&catid=<?php echo $nv["cid"];?>"><?php echo $nv_2['title']?></a><span
							class="uptime"><?echo $nv_2['postTime'];?></span></td>
					</tr>

        <?php
											}
											?>
	  </table>
			</div>



		</div>
		<!-- secondary -->
	</div>
	<!-- content -->
	<div class="links">

		

		<table class="tab model">
			<tr class="title">
				<td class="t_title">&nbsp;��������</td>
			</tr>
      	<?php
							$link_sql = "SELECT * FROM `cms_link` limit 7 ";
							$query = $db->query ( $link_sql );
							while ( $link_title = $db->fetch_array () ) {
								$link = array ("name" => $link_title [name], "url" => $link_title [url] );
								?>
		 <tr>
				<td class="middle"><img src="img/item.jpg"><a
					href="<?php echo $link['url']?>" target="_blank"><?php echo $link['name']?></a></td>
			</tr>
	<?php
							}
							?>
     </table>
	</div>
</div>
<?php
require CMS_ROOT . 'f.php';
