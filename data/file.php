<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ideal实验室后台管理</title>
<meta http-equiv="content-type" content="text/html;charset=GB2312" />
<script type="text/javascript" src="javascript/calendar1.js"></script>
</head>

<body onload= fun()>
<select name="sel" id="sel" onchange="f(2004)"></select>
<select name="month" id="month" onchange="mon(5)"></select>
</body>
</html>

<?php
    $date = "2012-4-00";
    echo date("Y-m",strtotime($date));
?>
