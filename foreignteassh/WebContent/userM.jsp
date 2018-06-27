<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.List" import="com.dao.*" import="com.model.*"%>
<%@ include file="frameM.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/manager.css">

<title>用户表</title>
</head>
<body>
<!-- <div class="sel">
	<form method="post" action="selectuser">
		<div class="seltxt">
			<select name="type">
				<option value='username'>用户名</option>
				<option value='identity'>身份</option>
			</select>
			<input type="text" name="value" class="selinput">
			<input type="submit" value="查询" class="selbtn">
		</div>
	</form>
</div> -->
<%
	List<User> list = new UserDao().getAlluser();
if(list!=null){
%>
<div style="height:600px;overflow-x: auto;">
<table width=60% height=200px align="center" id="biuuu_city_list">
	<caption>用户表管理</caption>
	<tr>
		<td>用户名</td>
		<td>密码</td>
		<td>身份</td>
		<td>职工号</td>
		<td colspan="2">操作用户</td>
	</tr>
	<%
	for(User user:list){
		String i="";
		String iden=user.getIdentity();
		if(iden.equals("1")){
			i="管理员";
		}else if(iden.equals("2")){
			i="外聘教师";
		}else if(iden.equals("3")){
			i="教学助理";
		}
	%>
		
		<tbody >
			<s:iterator var="user" value="#request.userlist">
				<tr>
					<td align="center">
						<div class="style3">
							<s:property value="#user.username"></s:property>
						</div>
					</td>
					<td align="center">
						<div class="style3">
							<s:property value="#user.name"></s:property>
						</div>
					</td>
					<td align="center">
						<div class="style3">
							<s:property value="#user.name"></s:property>
						</div>
					</td>
					<td align="center">
						<div class="style3">
							<s:property value="#user.name"></s:property>
						</div>
					</td>
					<td align="center">
						<div class="style3">
							<s:a action="useraction" method="updUser" style="cursor: pointer;">
								修改<s:param name="id">${user.id}</s:param>
							</s:a>
							<s:a action="useraction" method="delUser" style="cursor: pointer;">
								删除<s:param name="id">${user.id}</s:param>
							</s:a>
						</div>
					</td>
				</tr>
			</s:iterator>
		</tbody>
<%
	}
%>
<tr>
	<td style="font-size:25px;" colspan="5">
		<input class="add" type="button" value="添加" onclick="window.location.href='userinsert.jsp'"/>
	</td>
</tr>
</table>
</div>
<%
}
%>
</body>
</html>