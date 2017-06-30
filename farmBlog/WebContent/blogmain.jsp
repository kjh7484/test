<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
	html {
	background: url(images/main.jpg) no-repeat center center fixed; 
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	}
	 #main{
	 position:absolute;
	 background-color: white;
	 width:50%;
	 height:50%;
	 top: 25%;
	 left: 25%;
	 -moz-border-radius: 12px;
  	-webkit-border-radius: 12px;
   	 border-radius: 12px;
	 }

</style>
<meta charset="UTF-8">
<title>Welcome to FarmBlog</title>
<script src="js/jquery-1.9.0.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
	$("#main").hide();
	$("html").click(function(){
		$("#main").slideDown(1000);
	});
}); 
</script>
</head>
<body>
<div id="main" align="center" valign="center">
<h1>Farm 블로그에 오신걸 환영합니다.</h1>
<h2>A safe place for all your files</h2>
<img src="images/Enter.png" onclick="location.href='blogStart.blog'" style="cursor:pointer;" width="200" height="100"/>
</div>
</body>
</html>