<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Pay_ty.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css">
</head>

<body>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="home">
			<p>
			
						
				<div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseOne">
					添加考勤扣款标准
				</a>
				
			</h4>
		</div>
		<div id="collapseOne" class="panel-collapse collapse in">
			<div class="panel-body">
				<!-- 考勤扣款标准添加 -->
	<form class="form-horizontal" role="form" id="form2">
			
			<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">迟到扣款标准</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="迟到扣款标准" name="early">
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">早退扣款标准</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="早退扣款标准" name="withhold">
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">旷工扣款标准</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="旷工扣款标准" name="absent">
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">考勤表编号</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="考勤表编号" name="work_id">
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="添加"
							onclick="save2()">
					</div>
				</div>
				</form>
				
				<!--查询project  -->
			<table class="table table-striped">

				<thead>
					<tr>
						<th>迟到扣款标准</th>
						<th>早退扣款标准</th>
						<th>旷工扣款标准</th>
						<th>迟到</th>
						<th>早退</th>
						<th>旷工</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
			</div>
		</div>
	</div>
	
		
</div>
			
			
			
			<form class="form-horizontal" role="form" id="form1">
			
			<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">部门编号</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="部门编号" name="departmentId">
					</div>
				</div>
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">人员编号</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="人员编号" name="staff_id">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">税前薪水</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="firstname"
							placeholder="税前薪水" name="tax_salary">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">应交保险总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="应交保险总额" name="insurance">
						
					</div>
					<input type="button" class="btn btn-default" value="计算"
							onclick="bx()">
					</div>
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人养老保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname1"
							placeholder="个人养老保险" name="endowment_insurance">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人医疗保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname2"
							placeholder="个人医疗保险" name="medical_insurance">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人生育保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname3"
							placeholder="个人生育保险" name="birth_insurance">
					</div>
					</div>
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人失业保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname4"
							placeholder="个人失业保险" name="unemployment_insurance">
					</div>
					</div>
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人工伤保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname5"
							placeholder="个人工伤保险" name="injury_insurance">
					</div>
					</div>
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人住房公积金</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname6"
							placeholder="个人住房公积金" name="housing_fund">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">个人保险扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_one"
							placeholder="个人保险扣款总额" name="B_withhold">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位保险扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_men"
							placeholder="单位保险扣款总额" name="housing_fund_d">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位养老保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d1"
							placeholder="单位养老保险" name="endowment_insurance_d">
					</div>
					</div>
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位医疗保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d2"
							placeholder="单位医疗保险" name="medical_insurance_d">
					</div>
					</div>
					
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位生育保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d3"
							placeholder="单位生育保险" name="birth_insurance_d">
					</div>
					</div>
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位失业保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d4"
							placeholder="单位失业保险" name="unemployment_insurance_d">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位工伤保险</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d5"
							placeholder="单位工伤保险" name="injury_insurance_d">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">单位住房公积金</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname_d6"
							placeholder="单位住房公积金" name="housing_fund_d">
					</div>
					</div>
					
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">津贴</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="津贴" name="subvention">
					</div>
					</div>
					
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">奖金</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="奖金" name="Bonus">
					</div>
					</div>
					
				    <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">考勤扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="考勤扣款总额" name="K_withhold">
					</div>
					</div>
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">应发工资</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="应发工资" name="after_tax_salary">
					</div>
					</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="添加"
							onclick="save()">
					</div>
				</div>
			</form>

    
    </div>
    
</div>
			

				
				
				
	
 
				
</body>
<script>
//折叠特效
$(function () { $('#collapseFour').collapse({
		toggle: false
	})});
	$(function () { $('#collapseTwo').collapse('show')});
	$(function () { $('#collapseThree').collapse('toggle')});
	$(function () { $('#collapseOne').collapse('hide')});


//计算
 function bx(){
 //个人保险
 	var zum1=$("#lastname").val();

 	var one_insurance1=zum1*0.05;
 	var one_insurance2=zum1*0.1;
 	var one_insurance3=zum1*0.05;
 	var one_insurance4=zum1*0.03;
 	var one_insurance5=zum1*0.02;
 	var one_insurance6=zum1*0.05;
 	var one=one_insurance1+one_insurance2+one_insurance3+one_insurance4+one_insurance5+one_insurance6;
 	
 	$("#lastname1").val(one_insurance1);
 	$("#lastname2").val(one_insurance2);
 	$("#lastname3").val(one_insurance3);
 	$("#lastname4").val(one_insurance4);
 	$("#lastname5").val(one_insurance5);
 	$("#lastname6").val(one_insurance6);
 	$("#lastname_one").val(one);
 	//获取保险总额
 	var pp=$("#lastname").val();
 	//单位保险
 	var men=pp-one;
 	$("#lastname_men").val(men);
 	var pic1=$("#lastname_men").val();
 		
 	var men_insurance1=pic1*0.12;
 	var men_insurance2=pic1*0.18;
 	var men_insurance3=pic1*0.14;
 	var men_insurance4=pic1*0.16;
 	var men_insurance5=pic1*0.22;
 	var men_insurance6=pic1*0.18;
 	
 	$("#lastname_d1").val(men_insurance1);
 	$("#lastname_d2").val(men_insurance2);
 	$("#lastname_d3").val(men_insurance3);
 	$("#lastname_d4").val(men_insurance4);
 	$("#lastname_d5").val(men_insurance5);
 	$("#lastname_d6").val(men_insurance6);
 	
 	
 }
//添加pay
	function save() {
		/* 表单序列化 */
		var str = $("#form1").serialize();
		/* var ddd=3;
		$("#project_id").val(ddd);
		alert(333); */
		$.ajax({
			url : "pay/paysave",
			type : "post",
			async : true,
			data : $("#form1").serialize(), //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				alert(data);
				
			}
		});
	}
	
	
//添加考勤扣款标准
function save2() {
		/* 表单序列化 */
		var str = $("#form1").serialize();
		/* var ddd=3;
		$("#project_id").val(ddd);
		alert(333); */
		$.ajax({
			url : "pay/checksave",
			type : "post",
			async : true,
			data : $("#form2").serialize(), //数据类型不需要转化成json
			dataType : 'text', //返回类型type
			success : function(data) {
				alert(data);
				findAll();
			}
		});
	}
	
	
	//查询薪资扣款标准表和考勤统计表
	//查询全部
	 function findAll() {
		
		$.ajax({
			url : "pay/queryAll2",
			type : "post",
			async : true,
			dataType : 'Json',
			success : function(data) {
				/* alert(data); */

				$("#tbody").html("");
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.early + "</td>";
					tr += "<td>" + obj.withhold + "</td>";
					tr += "<td>" + obj.absent + "</td>";
					tr += "<td>" + obj.late + "</td>";
					tr += "<td>" + obj.early_retreat + "</td>";
					tr += "<td>" + obj.absenteeism + "</td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}

	$(function() {
		findAll();
	}) 
</script>
</html>
