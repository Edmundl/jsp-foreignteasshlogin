<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/frameM.css">
</head>
<body>
<div class="top">
	<img src="images/managerlogo.png"/>
	<span>欢迎管理员<a href="login.jsp"><%= session.getAttribute("uname")%></a>来到后台系统</span>
</div>
<div class="left">
	<ul>
		<li><a href="userM.jsp">用户管理</a></li>
		<li><a href="teamsM.jsp">外聘教师管理</a></li>
		<li><a href="lessonM.jsp">外聘教师课程管理</a></li>
		<li><a href="teaevaluateM.jsp">外聘教师评价管理</a></li>
	</ul>
</div>
</body>
</html>