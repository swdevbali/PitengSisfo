<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,recite18th.library.Db,application.config.Config,recite18th.library.Pagination" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>
<head>
<title>Sistem Informasi Kepegawaian Daerah Kabupaten Bantul 2011</title>
<link rel="shortcut icon" type="image/png" href="<%=Config.base_url%>images/favicon.png">
<link type="text/css" href="<%=Config.base_url%>css/main.css" rel="stylesheet"/>
<link type="text/css" href="<%=Config.base_url%>css/thickbox.css" rel="stylesheet"/>
<link type="text/css" href="<%=Config.base_url%>css/tab.css" rel="stylesheet"/>
<link type="text/css" href="<%=Config.base_url%>css/datepicker.css" rel="stylesheet"/>

<script src="<%=Config.base_url%>js/r18th.js" type="text/javascript"></script>
<script src="<%=Config.base_url%>js/jquery.js" type="text/javascript"></script>
<script src="<%=Config.base_url%>js/thickbox.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=Config.base_url%>js/datepicker.js"></script>
<script type="text/javascript"> 
  $(document).ready(function(){
  
	$("ul.subnav").parent().append("<span></span>"); //Only shows drop down trigger when js is enabled - Adds empty span tag after ul.subnav
	
	$("ul.topnav li span").click(function() { //When trigger is clicked...
		
		//Following events are applied to the subnav itself (moving subnav up and down)
		$(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

		$(this).parent().hover(function() {
		}, function(){	
			$(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
		});

		//Following events are applied to the trigger (Hover events for the trigger)
		}).hover(function() { 
			$(this).addClass("subhover"); //On hover over, add class "subhover"
		}, function(){	//On Hover Out
			$(this).removeClass("subhover"); //On hover out, remove class "subhover"
	});

});
</script>
<style type="text/css">
body {
	margin: 0; padding: 0;
	font: 11px normal Arial, Helvetica, sans-serif;
	background:#99CCCC url('<%=Config.base_url%>body_bg.gif') repeat-x;
}
.container {
	width: 1050px;
	margin: 0 auto;
	position: relative;
	background-color:#EEEF3F;
	
}
#header {
	/*background: url('<%=Config.base_url%>Movie1.swf') no-repeat center top;*/
	padding-top: 0px;
}
#header .disclaimer {
	color: #999;
	padding: 100px 0 7px 0;
	text-align: right;
	display: block;
	position: absolute;
	top: 0; right: 0;
}
#header .disclaimer a {	color: #ccc;}
ul.topnav {
	list-style: none;
	padding: 0 20px;	
	margin: 0;
	float: left;
	width: 1011px;
	background: #333;
	font-size: 1.2em;
	background: url('<%=Config.base_url%>topnav_bg.gif') repeat-x;
}
ul.topnav li {
	float: left;
	margin: 0;	
	padding: 0 15px 0 0;
	position: relative; /*--Declare X and Y axis base--*/
}
ul.topnav li a{
	padding: 10px 5px;
	color: #fff;
	display: block;
	text-decoration: none;
	float: left;
}
ul.topnav li a:hover{
	background: '<%=Config.base_url%>topnav_hover.gif' no-repeat center top;
}
ul.topnav li span { /*--Drop down trigger styles--*/
	width: 17px;
	height: 35px;
	float: left;
	background: url('<%=Config.base_url%>subnav_btn.gif') no-repeat center top;
}
ul.topnav li span.subhover {background-position: center bottom; cursor: pointer;} /*--Hover effect for trigger--*/
ul.topnav li ul.subnav {
	list-style: none;
	position: absolute; /*--Important - Keeps subnav from affecting main navigation flow--*/
	left: 0; top: 35px;
	background: #333;
	margin: 0; padding: 0;
	display: none;
	float: left;
	width: 170px;
	-moz-border-radius-bottomleft: 5px;
	-moz-border-radius-bottomright: 5px;
	-webkit-border-bottom-left-radius: 5px;
	-webkit-border-bottom-right-radius: 5px;
	border: 1px solid #111;
}
ul.topnav li ul.subnav li{
	margin: 0; padding: 0;
	border-top: 1px solid #252525; /*--Create bevel effect--*/
	border-bottom: 1px solid #444; /*--Create bevel effect--*/
	clear: both;
	width: 170px;
}
html ul.topnav li ul.subnav li a {
	float: left;
	width: 145px;
	background: #333 url('<%=Config.base_url%>dropdown_linkbg.gif') no-repeat 10px center;
	padding-left: 20px;
}
html ul.topnav li ul.subnav li a:hover { /*--Hover effect for subnav links--*/
	background: #222 url('<%=Config.base_url%>dropdown_linkbg.gif') no-repeat 10px center; 
}
#header img {
	margin: 20px 0 10px;
}
.page {
	margin:0px 5px;
}

</style>

<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
body {
	background-image: url();
	margin-left: 1px;
	margin-top: 1px;
	margin-right: 1px;
	margin-bottom: 1px;
}
.style15 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style15 {color: #000000}
.style15 {
	font-size: 36px;
	color: #0000FF;
}
.style27 {
	color: #0000FF;
	font-size: 14px;
	font-style: italic;
}
.style28 {
	font-size: 14px;
	color: #0000CC;
	font-style: italic;
}
.style33 {color: #0000FF; font-size: 24px; font-style: italic; }
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>
<div class="container">
<%@ include file="header.jsp" %>

<br/><br/><br/><br/>

<div class="page" id="page">
	<div class="content">
	  <tr><td height="24" valign="top"><div align="center">
	    <%@ include file="body.jsp" %>
</div>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
