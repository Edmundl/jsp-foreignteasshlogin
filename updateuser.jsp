<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ include file="frameM.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/assistant.css">
<title>Insert title here</title>
</head>
<body>
<%
	String username=request.getParameter("username");
	String pwd=request.getParameter("password");
	String identity=request.getParameter("identity");
	String teanum=request.getParameter("teanum");
	System.out.println(username+"1");
%>
<table width="60%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
             <td height="30px" width="100%">
				<span class="style1" >修改用户</span>
			</td>
          </tr>
          <tr>
          		<td>
          			<s:form action="useraction" theme="simple">
					<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
					<tr height="50px">
						<td align="center" width="60px">
							<div class="style2">用户名：</div>
						</td >
						<td width="60px">
							<div class="style2">
								<s:textfield name="username" theme="simple"></s:textfield>
							</div>
						</td >
					</tr>
					<tr>
						<td align="center" width="200px">
							 <div class="style2">密码：</div>
						</td>
 						<td width="200px">			
							 <div class="style2">
								<s:password name="pwd" theme="simple"></s:password>
							 </div>
						</td>
					</tr>
					<tr>
						<td align="center" width="200px">			
							 <div class="style2">身份：</div>
						</td>
						<td width="200px">			
							 <div class="style2">
								<s:textfield name="identity" theme="simple"></s:textfield>
							 </div>
						</td>
					</tr>
					<tr>
						<td align="center" width="200px">			
							 <div class="style2">职工号：</div>
						</td>
						<td width="200px">			
							 <div class="style2">
								<s:textfield name="teanum" theme="simple"></s:textfield>
							 </div>
						</td>
					</tr>
					<tr height="50px">
						<td colspan="2" align="center">
							<div class="style2">
							 <s:submit value="提交" method="updateUser" theme="simple" onclick="return check();"></s:submit>
							 </div>
						</td>
					</tr>
					</table>
					</s:form>
				</td>
          </tr> 
        </table>
</body>
</html>