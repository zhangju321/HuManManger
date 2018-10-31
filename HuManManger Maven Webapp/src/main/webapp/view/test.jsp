<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/demo.css"> --%>
  </head>
  
  <body>
			
				<!--查询人员考勤情况  -->
			<table class="table table-striped">

				<thead>
					<tr>
					<th>部门名称</th>	
					<th>职务名称</th>
					<th>人员名称</th>
						<!-- <th>迟到扣款标准(元)</th>
						<th>早退扣款标准(元)</th>
						<th>旷工扣款标准(元)</th> -->
						<th>迟到次数</th>
						<th>早退次数</th>
						<th>旷工次数</th>
					</tr>
				</thead>
				<tbody id="tbody2">

				</tbody>
			</table>
<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
	
		

			
		<table class="table table-striped">

				<thead>
					<tr>
						 <th>迟到扣款标准(元)</th>
						<th>早退扣款标准(元)</th>
						<th>旷工扣款标准(元)</th>
					</tr>
				</thead>
				<tbody id="tbody4">

				</tbody>
			</table>	
	
			<form class="form-horizontal" role="form" id="form1">
				
				<div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">部门名称</label>
				<div class="col-sm-3">
						<input type="text" class="form-control" id="bname"
							placeholder="部门名称">
						<input type="hidden"  name="departmentId"  id="bid">
					</div>
				</div>
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">职务名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="zname"
							placeholder="职务编号">
							<input type="hidden" name="positionId" id="zid">
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">人员名称</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="rname"
							placeholder="人员编号">
							<input type="hidden" name="staff_id" id="rid">
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">职务薪水</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="salary"
							placeholder="职务薪水" name="tax_salary">
					</div>
					<input type="button" class="btn btn-default" value="计算"
							onclick="bx()">
				</div>
				
				
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">应交保险总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="lastname"
							placeholder="应交保险总额" name="insurance">
						
					</div>
					
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
							placeholder="单位保险扣款总额" name="D_withhold">
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
						<input type="text" class="form-control" id="sub"
							placeholder="津贴" name="subvention">
					</div>
					</div>
					
					
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">奖金</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="bonus"
							placeholder="奖金" name="Bonus">
					</div>
					</div>
					
				    <div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">考勤扣款总额</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="kkze"
							placeholder="考勤扣款总额" name="K_withhold">
					</div>
					
					</div>
				
					
					<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">应发工资</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="tax"
							placeholder="应发工资" name="after_tax_salary">
					</div>
						<input type="button" class="btn btn-default" value="计算应发工资"
							onclick="bx2()">
					</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-7">
						<input type="button" class="btn btn-default" value="添加"
							onclick="save()">
							
					</div>
					
				</div>
				</form>
				
				
		
    

			

  </body>
  <script>
			
			//折叠特效
$(function () { $('#collapseFour').collapse({
		toggle: false
	})});
	$(function () { $('#collapseTwo').collapse('show')});
	$(function () { $('#collapseThree').collapse('toggle')});
	$(function () { $('#collapseOne').collapse('hide')});



//计算应发工资
 function bx2() {
  		var yf1 = $("#salary").val(); //职务工资
  		var num1 = parseInt(yf1);
  		var yf2 = $("#lastname_one").val(); //个人保险扣款
  		var num2 = parseInt(yf2);
  		var yf3 = $("#sub").val(); //津贴
  		var num3 = parseInt(yf3);
  		var yf4 = $("#bonus").val(); //奖金
  		var num4 = parseInt(yf4);
  		var yf5 = $("#kkze").val(); //考勤扣款
  		var num5 = parseInt(yf5);
  
  		var yf = num1 - num2 + num3 + num4 - num5; //应发工资=职务工资-个人保险扣款+津贴+奖金-考勤扣款
  		$("#tax").val(yf);
  	}
  
  	//计算保险应交总额，个人保险扣款总额，单位保险扣款总额
  	function bx(){
 //个人保险
    var zum=$("#salary").val();
    var zum1=zum*0.08;
 	$("#lastname").val(zum1);
    
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
 		//单位保险
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
 //员工
 $(function(){
	$("#tbody2").on("click",".xz",function(){
	//获取部门编号姓名  并将值加到薪资技术的input内
	   var bm=$(this).parent().parent().find("#bmname").html();
	  $("#bname").val(bm);
	  var bid=$(this).parent().parent().find("#bmid").html();
	  $("#bid").val(bid);
	  //获取职务编号姓名  并将值加到薪资技术的input内
	  var zw=$(this).parent().parent().find("#zwname").html();
	  $("#zname").val(zw);
	  var zwid=$(this).parent().parent().find("#zwid").html();
	  $("#zid").val(zwid);
	  
	  //获取员工编号姓名  并将值加到薪资技术的input内
	  var ygname=$(this).parent().parent().find("#rsname").html();
	  $("#rname").val(ygname); 
	  
	   var ygid=$(this).parent().parent().find("#rsid").html();
	  $("#rid").val(ygid); 
	
		//查找table，tr两个父节点下的id---
 	var early=$(this).parent().parent().find("#early").html();//迟到次数
	var withhold=$(this).parent().parent().find("#withhold").html();//早退次数
	var absent=$(this).parent().parent().find("#absent").html();//旷工次数
//计算
 	var kkze=early*10+withhold*10+absent*3;
 	alert("计算考勤总额为:"+kkze);
 	//将计算结果赋值到扣款总额的input框内
 	$("#kkze").val(kkze);
	 			
	 			
	 			if(kkze>0){
	 			$("#bonus").val(0);
	 			}else{
	 			$("#bonus").val(200);
	 			}
	});
 })
 //考勤计算
/*  $(function(){
	$(document).on("click",".js",function(){
	

				});
				}) */
				
				
				

 
 
//添加薪资基数
	function save() {
		/* 表单序列化 */
		var str = $("#form1").serialize();
		/* var ddd=3;
		$("#project_id").val(ddd);
		alert(333); */
		$.ajax({
			url : "pay/psave",
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

	
	

	//查询员工部门职务表和考勤统计表
  function findAll(startPage){
    $.ajax({
       url : "pay/queryAll2",
       type:"post",
       async : true,
       data : {
				"startPage" : startPage
			}, 
       dataType:"json",
      success : function(data) {
				/* alert(data); */
                var ary = data.list;
				$("#tbody2").html("");
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i];
					var tr = "<tr>";
					tr += "<td id='bmid' style='display:none'>" + obj.departmentId + "</td>";
					tr += "<td id='bmname'>" + obj.departmentName + "</td>";
					tr += "<td id='zwid' style='display:none'>" + obj.positionId + "</td>";
					tr += "<td id='zwname'>" + obj.positionName + "</td>";
					tr += "<td id='rsid' style='display:none'>" + obj.staff_id + "</td>";
					tr += "<td id='rsname'>" + obj.STAFF_NAME + "</td>";
					tr += "<td id='early'>" + obj.late + "</td>";
					tr += "<td id='withhold'>" + obj.early_retreat + "</td>";
					tr += "<td id='absent'>" + obj.absenteeism + "</td>";
					 tr +="<td><input type='button' id='" + obj.departmentId+ "' value='设置薪资' class='xz'></td>";
					
					 tr +="<td> <input type='checkbox' name='interest' value='study'/></td>";
					tr += "</tr>";
					$("#tbody2").append(tr);
          }
          //当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					findAll(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   findAll(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   findAll(1);
					}
					 findAll(curr);
				});
				if (data.isFirstPage) {
					$("#syy").attr("disabled", "disabled");
					$("#shouye").attr("disabled", "disabled");
				} else {
					$("#syy").removeAttr("disabled", "disabled");
					$("#shouye").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy").attr("disabled", "disabled");
					$("#weiye").attr("disabled", "disabled");
				} else {
					$("#xyy").removeAttr("disabled", "disabled");
					$("#weiye").removeAttr("disabled", "disabled");
				}
       }
    });
  };
  
  $(function() {
		findAll(1);
	}) 
	
  	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		findAll(currPage + 1);
	})
	$("#shouye").click(function() {
		findAll(1);
	})
	
	
	
	
	
	
	
	//查询考勤扣款标准
	 function findAllcheck() {
		
		$.ajax({
			url : "pay/querycheck",
			type : "post",
			async : true,
			dataType : 'Json',
			success : function(data) {
				/* alert(data); */

				$("#tbody4").html("");
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td id='early_k'>" + obj.early + "</td>";
					tr += "<td id='withhold_k'>" + obj.withhold + "</td>";
					tr += "<td id='absent_k'>" + obj.absent + "</td>";
					tr += "</tr>";
					$("#tbody4").append(tr);
					/* alert("ddd"+obj.check_id); */
				}
				
			}
		});
	}

	$(function() {
		findAllcheck();
	})
  
  
  	 /* 保存数据 */
  	/*function personxcInsert() {
		alert($("#form1").serialize());
		$.ajax({
			url : "test/psave?staffid=" + $("#rid").val() + "",
			type : 'post',
			async : true,
			data : $("#form1").serialize(),
			dataType : 'text',
			success : function(data) {
				alert(data);
			},
			error : function(data) {}
		})
	} */
	
	
	/* function getIds() {
		var ids = "";
		var checkClass = $("input[name='allCheck']:checked");
		checkClass.each(function() {
			ids+=$(this).val();
			ids+=",";
		});
		ids = ids.substr(0, ids.lastIndexOf(","));
		alert(ids);
	}
 */
  </script>
</html>
