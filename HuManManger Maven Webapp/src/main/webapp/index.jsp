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
	
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
     <script type="text/javascript" src="resource/jquery.form.js"></script>
  </head>
  
  <body style="background-image: url(images/img.jpg)">
  
  <div class="container-fiuled" >
  	<div class="row-fluid" >
	<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid" style="background-color: orange" >
    <div class="navbar-header" >
        <span class="navbar-brand" style="color: red">人力资源管理系统</span>
    </div>
    <div >
       	<ul class="nav navbar-nav navbar-right"> 
             
            <li><a href="javascript:logout()" ><span class="glyphicon glyphicon-log-in"></span> 注销</a></li> 
        </ul>
   	 </div>
    </div>
	</nav>
</div>
  		
  	<div class="row-fluid">
  		<div class="col-md-2" >
		<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
			<div class="panel-group" id="panel-159773">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-159773" href="#panel-element-467705">招聘管理</a>
					</div>
					<div id="panel-element-467705" class="panel-collapse collapse in">
							<div class="panel-body">	
							<a href="" target="main">招聘需求</a>
						</div>
						<div class="panel-body">
							<a href="" target="main">招聘筛选</a>
						</div>
						<div class="panel-body">
							<a href="" target="main">招聘录用</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-159773" href="#panel-element-786865">员工档案</a>
					</div>
					<div id="panel-element-786865" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="" target="main" >人事档案</a>
						</div>
						<div class="panel-body">
							<a href="" target="main" >合同管理</a>
						</div>
						<div class="panel-body">
							<a href="" target="main" >人事调动管理</a>
						</div>
						<div class="panel-body">
							<a href="" target="main" >离职管理</a>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="panel-721071">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-721071" href="#panel-element-342761">考勤设置</a>
					</div>
					<div id="panel-element-342761" class="panel-collapse collapse in">
						<div class="panel-body">
							<a href="config.jsp" target="main">班次管理</a>
						</div>
						<div class="panel-body" >
							<a href="" target="main">个人考勤</a>
						</div>
						<div class="panel-body" >
							<a href="schedule.jsp" target="main">排班管理</a>
						</div>
						<div class="panel-body">
							<a href="" target="main">考勤审批</a>
						</div>
						<div class="panel-body">
							<a href="" target="main" >考勤记录</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-721071" href="#panel-element-968625">薪资管理</a>
					</div>
					<div id="panel-element-968625" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="" target="main" >薪资设置</a>
						</div>
						<div class="panel-body">
							<a href="" target="main" >薪资福利</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

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
			location.href="config.jsp";
		}
	}
</script>

 