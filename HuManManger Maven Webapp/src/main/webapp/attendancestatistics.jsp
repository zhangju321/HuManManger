<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
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
<!-- 使用模态窗口引入bootstrap -->
<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="resources/jquery.form.js"></script>

<link rel="stylesheet" href="resources/js/layui/css/layui.css"
	media="all">
<script src="resources/js/layui/layui.js" charset="utf-8"></script>
</head>

<body>
	<table class="table table-hover">
		<thead>
			<tr class="success">
				<th>员工姓名</th>
				<th>外出次数</th>
				<th>迟到次数</th>
				<th>出差次数</th>
				<th>请假次数</th>
				<!-- <th>操作</th> -->
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>




</body>

</html>

<script>

	/* 页面加载函数 */
	$(function() {
		selectas();
	});

	function selectas() {
		
		$.ajax({
			url : "as/selectas",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.co + "</td>"; //外出次数 
					tr += "<td>" + obj.cr + "</td>"; //迟到次数 
					tr += "<td>" + obj.ct + "</td>"; //出差次数
					tr += "<td>" + obj.cv + "</td>"; //请假次数 
			        /* tr += "<td><input type='button'  title=" + obj.staff_id + "  data-toggle='modal' data-target='#myModal' class='Details btn btn-default' value='详细信息'></td>";				
					 */tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}
	
	/*详细信息  */
	$(document).on("click", ".Details", function() {
		var id = this.title;
		$.ajax({
			url : "as/Details",
			type : "post",
			data : {
				"staff_id" : id
			},
			dataType : "json",
			success : function(data) {
			alert("成功");

			}
		});
	});


</script>