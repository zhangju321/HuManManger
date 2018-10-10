<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="resources/jquery-1.11.3.min.js"></script>
  </head>
  
  <body>

    	<form action="person/save" method="post">
    		<table>
    		<!-- 	<tr>
    				<td>名字</td>
    				<td><input type="text" name="name" value="张三"/></td>
    			</tr>
    			<tr>
    				<td>年龄</td>
    				<td><input type="text" name="age" value="12"/></td>
    			</tr>
    			<tr>
    				<td>性别</td>
    				<td><input type="text" name="sex" value="男"/></td>
    			</tr>
    			<tr>
    				<td>出生日期</td>
    				<td><input type="text" name="birthday" value="1997-05-25"/></td>
    			</tr> -->
    			<table>
    			<tr>
    				<td>编号</td>
    				<td><input type="hidden" name="id" /></td>
    			</tr>
    			<tr>
    				<td>名字</td>
    				<td><input type="text" name="name" /></td>
    			</tr>
    			<tr>
    				<td>年龄</td>
    				<td><input type="text" name="age" /></td>
    			</tr>
    			<tr>
    				<td>性别</td>
    				<td><input type="text" name="sex" /></td>
    			</tr>
    			<tr>
    				<td>出生日期</td>
    				<td><input type="text" name="birthday"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><input type="submit" value="提交"/></td>
    			</tr>
    		</table>
    	</form>
  </body>
</html>

