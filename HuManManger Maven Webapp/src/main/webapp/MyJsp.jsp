<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css" href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	
	<script src="resource/js/jquery.min.js"></script>
	<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="resource/jqueryExt.js"></script>
     <script type="text/javascript" src="resource/jquery.form.js"></script>
     
    
    <style>
    .navbar-collapse{
    padding-left: 5px;
    padding-right: 5px;
 }
 .nav>li{
     text-align: center;
 }
 .nav>li>a{
     color:#444;
     margin: 0 5px;
 }
 .nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover{
     background-color: #222222;
 }
 .dropdown-menu{
     min-width: 200px;
     margin-left: 40px;
     background-color: #E3E3E3;
 }
 .dropdown-menu>li>a{
     padding: 10px 15px;
 }

body {
    width: 100%;
    height: 100%;
    margin: 0;
    overflow: hidden;
    background-color: #FFFFFF;
    font-family: "Microsoft YaHei", sans-serif;
 }
 .pageSidebar{
    width: 240px;
    height:100%;
    padding-bottom: 30px;
    overflow: auto;
    background-color: #e3e3e3;
 }
 .splitter {
     width: 5px;
     height: 100%;
     bottom: 0;
     left: 240px;
     position: absolute;
     overflow: hidden;
     background-color: #fff;
 }
 .pageContent{
     height: 100%;
     min-width: 768px;
     left: 246px;
     top: 0;
     right: 0;
     z-index: 3;
     padding-bottom: 30px;
     position: absolute;
 }
 .pageContainer{
     bottom: 0;
     left:0;
     right: 0;
     top: 53px;
     overflow: auto;
     position: absolute;
     width: 100%;
 }
 .footer {
     width: 100%;
     height: 30px;
     line-height: 30px;
     margin-top: 0;
     left: 0;
     right: 0;
     bottom: 0;
     position: absolute;
     z-index: 10;
     background-color:#DFDFDF;
 }
 
 .nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover{
    color:#555;
    cursor:default;
    background-color:#fff;
    border:1px solid #ddd;
    border-bottom-color:transparent
} .nav>li>a{
    position:relative;
    display:block;
    padding:10px 15;
    </style> 
  
     
  </head>
  
  <body>
 
  
  <!--顶部导航栏部分-->
   <nav class="navbar navbar-inverse">
   <div class="container-fluid">
    <div class="navbar-header"> 
    <a class="navbar-brand" title="logoTitle" href="#">人力资源管理系统</a>
     </div>
      <div class="collapse navbar-collapse"> 
     
      <ul class="nav navbar-nav navbar-right">
       <li role="presentation"> 
       <a href="#">当前用户：<span class="badge">张钜</span></a> 
       </li> 
       <li> <a href="../login/logout"> <span class="glyphicon glyphicon-lock"></span>退出登录</a> </li>
        </ul> 
        </div> 
        </div> 
        </nav> 
        <!-- 中间主体内容部分 --> 
        <div class="pageContainer"> 
        <!-- 左侧导航栏 --> 
        <div class="pageSidebar">
         <ul class="nav nav-stacked nav-pills"> 
         <li role="presentation"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">招聘管理<span class="caret"></span></a> 
          <ul class="dropdown-menu"> 
          <li> <a href="sf.jsp" target="mainFrame">招聘1</a> </li>
           <li> <a href="nav2.html" target="mainFrame">招聘2</a> </li>
            <li> <a href="nav3.html" target="mainFrame">招聘3</a> </li>
             </ul>
         </li> 
         <li role="presentation"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">员工管理<span class="caret"></span></a>
         <ul class="dropdown-menu"> 
          <li> <a href="sf.jsp" target="mainFrame">员工1</a> </li>
           <li> <a href="sf.jsp" target="mainFrame">员工2</a> </li>
            <li> <a href="sf.jsp" target="mainFrame">员工3</a> </li>
             </ul>
          </li> 
         <li role="presentation"> 
         <a class="dropdown-toggle" data-toggle="dropdown" href="#">考勤设置<span class="caret"></span></a>
         <ul class="dropdown-menu"> 
          <li> <a href="config.jsp" target="mainFrame">排班管理</a> </li>
           <li> <a href="schedule.jsp" target="mainFrame">班次管理</a> </li>
            <li> <a href="rule.jsp" target="mainFrame">考勤规则</a> </li>
            <li> <a href="sf.jsp" target="mainFrame">免签节假日</a> </li>
             </ul>
          </li>
          <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">薪资设置<span class="caret"></span> </a>
           <ul class="dropdown-menu"> 
          <li> <a href="sf.jsp" target="mainFrame">薪资1</a> </li>
           <li> <a href="sf.jsp" target="mainFrame">薪资2</a> </li>
            <li> <a href="sf.jsp" target="mainFrame">薪资3</a> </li>
             </ul>
            </li> 
            <li role="presentation"> 
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">权限分配<span class="caret"></span> </a> 
            <ul class="dropdown-menu"> 
          <li> <a href="sf.jsp" target="mainFrame">权限1</a> </li>
           <li> <a href="sf.jsp" target="mainFrame">权限2</a> </li>
            <li> <a href="sf.jsp" target="mainFrame">权限3</a> </li>
             </ul>
             </li>
              </ul>
               </div>
                <!-- 左侧导航和正文内容的分隔线 --> 
                <div class="splitter"></div>
                 <!-- 正文内容部分 --> 
                 <div class="pageContent"> 
                  <ul class="nav nav-tabs">
                   <li role="presentation" class="active"><a href="#">Home</a></li>
                   <li role="presentation"><a href="#">Profile</a></li> 
                   <li role="presentation"><a href="#">Messages</a></li>
                </ul>
                 <iframe src="index.html" id="mainFrame" name="mainFrame" frameborder="0" width="100%"  height="100%" frameBorder="0"></iframe>
                  </div>
                   </div> 
                   <!-- 底部页脚部分 -->
                    <div class="footer">
                     <p class="text-center"> 人力资源管理系统 </p>
                      </div>
  </body>
</html>
<script>
$(".nav li").click(function() {
    $(".active").removeClass('active');
    $(this).addClass("active");
});
</script>
