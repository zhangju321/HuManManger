<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xxx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css"  media="all">
	<script src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
	
  </head>
  
  <body>
    
<table class="layui-hide" id="test"></table>
              
          
<script src="${pageContext.request.contextPath}/resources/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 --> 
 
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'pay/xxx'
    ,cols: [[
      {field:'insurance', width:80, title: 'ID', sort: true}
      ,{field:'endowment_insurance', width:80, title: '用户名'}
     /*  ,{field:'sex', width:80, title: '性别', sort: true}
      ,{field:'city', width:80, title: '城市'}
      ,{field:'sign', title: '签名', minWidth: 150}
      ,{field:'experience', width:80, title: '积分', sort: true}
      ,{field:'score', width:80, title: '评分', sort: true}
      ,{field:'classify', width:80, title: '职业'}
      ,{field:'wealth', width:135, title: '财富', sort: true} */
    ]]
    ,page: true
  });
});


//页面加载的时候,所有的复选框都是未选中的状态
function checkOrCancelAll(){
//1.获取checkbo的元素对象
var chElt=document.getElementById("chElt");
//2.获取选中状态
var checkedElt=chElt.checked;
//3.若checked=true,将所有的复选框选中,checked=false,将所有的复选框取消
var allCheck=document.getElementsByName("interest");
//4.循环遍历取出每一个复选框中的元素
var mySpan=document.getElementById("mySpan");
if(checkedElt){
//全选
for(var i=0;i<allCheck.length;i++){
//设置复选框的选中状态
allCheck[i].checked=true;
}
mySpan.innerHTML="取消全选";
}else{
//取消全选
for(var i=0;i<allCheck.length;i++){
allCheck[i].checked=false;
}
mySpan.innerHTML="全选";
}
}

</script>





</head>
<body>
<input type="checkbox" id="chElt" onclick="checkOrCancelAll();"/><span id="mySpan">全选</span><br/>
学习<input type="checkbox" name="interest" value="study"/>
阅读<input type="checkbox" name="interest" value="read"/>
运动<input type="checkbox" name="interest" value="sport"/>
旅行<input type="checkbox" name="interest" value="travel"/>
绘画<input type="checkbox" name="interest" value="draw"/>
音乐<input type="checkbox" name="interest" value="music"/>
--------------------- 
作者：pangqiandou 
来源：CSDN 
原文：https://blog.csdn.net/pangqiandou/article/details/78255624 
版权声明：本文为博主原创文章，转载请附上博文链接！



<h1>文件上传实例 - 菜鸟教程</h1>
<form method="post" action="/TomcatTest/UploadServlet" enctype="multipart/form-data">
    选择一个文件:
    <input type="file" name="uploadFile" />
    <br/><br/>
    <input type="submit" value="上传" />
</form>
  </body>
</html>
