<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
   <script src="${pageContext.request.contextPath}main/webapp/resources/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
  </head>
  
  <body style="background-image: url(webapp/Images/img.jpg)">
  
  <div class="container-fiuled" >
  	<div class="row-fluid" >
	<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid" style="background-color: orange" >
    <div class="navbar-header" >
        <span class="navbar-brand" style="color: red">AAA在线考试系统</span>
    </div>
    <div >
       	<ul class="nav navbar-nav navbar-right"> 
            <li><a href="user/message.jsp"><span class="glyphicon glyphicon-user"></span> ${user.userName}</a></li> 
            <li><a href="javascript:logout()" ><span class="glyphicon glyphicon-log-in"></span> 注销</a></li> 
        </ul>
   	 </div>
    </div>
	</nav>
</div>
  	
  	
  	<div class="row-fluid">
  		<div class="col-md-2" >
  		<ul class="nav nav-pills nav-stacked">
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class="active"><a href="cla_find.action" target="main" >班级管理</a></li>
             <li class="active"><a href="qu_findAll.action" target="main">试题管理</a></li>
             <li class="active"><a href="tea_find.action" target="main">教师管理</a></li>
             <li class="active"><a href="exam_find.action" target="main">试卷管理</a></li>
             <li class="active"><a href="stu_find.action" target="main">学生管理</a></li>
             <li class="active"><a href="subject_find.action" target="main">科目管理</a></li>
             <li class="active"><a href="grade_list.action" target="main">查询年级</a></li>
             <li class="active"><a href="user_find.action" target="main" >用户管理</a></li>
             <li class="active"><a href="role_find.action" target="main" >角色管理</a></li>

		</ul>

  		</div>
  		<div class="col-md-10" >
  				<iframe name="main" style="width:100%; height:100%; border:none;"></iframe>
  		</div>
  	</div>
  	<div class="row-fluid">
  		<div class="col-md-12" style="background:green">
  			<h6 class="text-center">底部版权</h6>
  		</div>
  	</div>
  </div>
  
  
  </body>

</html>
<script>
	function logout(){
		if(confirm("确认要退出系统吗")){
			location.href="tabUser_logout.action";
		}
	}
</script>

 