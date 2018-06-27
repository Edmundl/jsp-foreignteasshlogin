<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/rglg.css">
<title>外聘教师系统登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>
<div class="DVcover">
	<div class="dvimg">
		<img src="images/login.png"/>
	</div>
	<div class="dvform">
		<s:form action="log" method="post">
			<table>
				<marquee class="scroll" scrolldelay="100">外聘教师管理系统欢迎您登录</marquee>
				<tr>
					<td class="txt">用户名：</td>
					<td><s:textfield name="username" size="16" theme="simple"/></td>
				</tr>
				<tr>
					<td class="txt">密   码：</td>
					<td><s:password name="password" size="16" theme="simple"/></td>
				</tr>
				<tr>
					<td class="txt">身   份：</td>
					<td>
						<select class="sel" name="iden">
							<option value="管理员">管理员</option>
							<option value="外聘教师">外聘教师</option>
							<option value="教学助理">教学助理</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<sx:submit value="登录" method="login"></sx:submit>
					</td>
				</tr>
			</table>
		</s:form>
	</div>
</div>
</body>
</html>