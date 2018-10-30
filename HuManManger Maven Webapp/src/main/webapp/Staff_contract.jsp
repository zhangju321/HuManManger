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
			<tr class="success">
				<th>合同编号</th>
				<th>员工姓名</th>
				<th>合同续签公司</th>
				<th>合同类型</th>
				<th>合同签订日期</th>
				<th>合同到期日期</th>
  
				<th>操作</th>
				<th><input type="button" data-toggle="modal"
					data-target="#myModal" class="emptys btn btn-default" value="新建合同"></th>
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>
	
	
	<!-- 模态框弹出录入内容 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="modalTitle1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						&times;
						<!-- 关闭按钮 -->
					</button>
					<h4 class="modal-title" id="modalTitle1">合同管理</h4>
				</div>
				<div class="modal-body">
					<!--form提交表单  -->
					<form class="form-horizontal" id="form1"
						enctype="multipart/form-data">
						  <div class="row">
						  
							<div class="form-group">
							
                                <div class="col-lg-4">
                               <label>员工</label>
								  <input type="hidden" id="contractId" name="contractId" class="form-control" placeholder="请输入">
										<select class="staff form-control" id="staffId" name="staffId">
        	                            </select>
								</div>
								
                                  <div class="col-lg-4">
                               <label>员工</label>
                                    <input type="text" class="form-control" placeholder="请输入">
                                  </div>
                                  
					        </div>
					        
                         </div>
								
						<input type="button" id="insertorupdate" data-toggle='modal'
							data-target='#myModal' class="btn btn-primary" value="保存">
					</form>

				</div>
				<div class="modal-footer">

					<button type="button" class="up btn btn-default"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>



</body>

</html>

<script>

	/* 页面加载函数 */
	$(function() {
		selectcontract();
	});

	function selectcontract() {
		
		$.ajax({
			url : "contract/selectcontract",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					var tr = "<tr>";
					tr += "<td>" + obj.CONTRACT_ID + "</td>"; //合同编号
					tr += "<td>" + obj.STAFF_NAME + "</td>"; //员工姓名
					tr += "<td>" + obj.CONTRACT_ENTERPRIES + "</td>"; //合同续签公司
					tr += "<td>" + obj.CONTRACT_TYPE + "</td>"; //合同类型
					tr += "<td>" + obj.MAKE_CONTRACT + "</td>"; //合同签订日期
					tr += "<td>" + obj.CONTRACT_END_TIME + "</td>"; //合同到期日期
					tr += "<td><input type='button' data-toggle='modal' data-target='#myModal' title=" + obj.CONTRACT_ID + "  class='selectByID btn btn-default' value='修改'></td>";
					tr += "<td><input type='button' id=" + obj.CONTRACT_ID + "  class='delete btn btn-default' value='删除'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}
       /*     
       CONTRACT_ID contractId;//合同编号
       STAFF_ID  staffId;//员工外键
       CONTRACT_TYPE contractType;//合同类型
       CONTRACT_SPECIALIZATION contractSpecialization;//合同属性
       MAKE_CONTRACT makeContract;//合同签订日期
       TRAIL_EFFECTIVE_TIME trailEffectiveTime;//试用生效日期
       PROBATIONARY_PERIOD probationaryPeriod;//试用期限
       TRAIL_OVER_TIME trailOverTime;//试用到期日期
       PASS_OR_NOT passOrNot;//是否转正
       PROBATION_END_DATE probationEndDate;//合同转正日期
       PROBATION_EFFECTIVE_DATE probationEffectiveDate;//合同生效日期
       ACTIVE_PERIOD activePeriod;//合同期限
       CONTRACT_END_TIME contractEndTime;//合同到期日期
       REMARK remark;//备注
       REMOVE_OR_NOT removeOrNot;//合同是否解除
       STATUS status;//合同状态
       SIGN_TIMES signTimes;//签约次数
       ATTACHMENT_ID attachmentId;//附件编号
       ATTACHMENT_NAME attachmentName;//附件名称
       ADD_TIME addTime;//登记时间
       LAST_UPDATE_TIME lastUpdateTime;//最后修改时间
       REMIND_TIME remindTime;//合同到期提醒
       STAFF_USER_NAME staffUserName;//甲方
       REMIND_USER remindUser;//提醒人员
       REMIND_TYPE remindType;//提醒方式 
       HAS_REMINDED hasReminded;//是否已经提醒
       RENEW_TIME renewTime;//合同续签时间
       CONTRACT_ENTERPRIES contractEnterpries;//合同续签公司
       IS_TRIAL isTrial;//合同是否试用
       IS_RENEW isRenew;//合同是否续签
       CONTRACT_REMOVE_TIME contractRemoveTime;//合同解除日期
        */




	/* 添加之前清空form表单 */
	$(document).on("click", ".emptys", function() {
		$("#contractId").val("");//职务表外键 职务名称 
		$("#staffId").html("");//职务表外键 职务名称 
		
	   $.ajax({
       url:"contract/selectstaffinfo",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".staff").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
         }
       }
     });
		
	});
	
	//添加与修改
	$(document).on("click", "#insertorupdate", function() {
	
		var obj = $("#form1").serializeObject();
		$.ajax({
			url : "contract/insertorupdate",
			type : "post",
			async : true,
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(obj),
			dataType : "text",
			success : function(data) {
				selectcontract();
			}
		});

	});
	/*修改前查询  */
	$(document).on("click", ".selectByID", function() {
	
		$("#staffId").html("");//职务表外键 职务名称 
		var id = this.title;
		$.ajax({
			url : "contract/selectByID",
			type : "post",
			data : {
				"contractId" : id
			},
			dataType : "json",
			success : function(data) {
			alert(data.contractId)
				$("#contractId").val(data.contractId); //员工编号
				$("#staffId").val(data.staffId); //员工编号

			}
		});
	   $.ajax({
       url:"contract/selectstaffinfo",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".staff").append("<option value='"+obj.staffId+"'>"+obj.staffName+"</option>");
         }
       }
     });
	});

	/* 删除 */
	$(document).on("click", ".delete", function() {
		var id = this.id;
		
		$.ajax({
			url : "contract/delete",
			type : "post",
			data : {
				"contractId" : id
			},
			dataType : "text",
			success : function(data) {
				selectcontract();
			}
		});
	});


	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t1',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t2',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t3',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t4',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t5',
			type : 'datetime'
		});
		var laydate = layui.laydate;
		//日期时间选择器
		laydate.render({
			elem : '#t6',
			type : 'datetime'
		});
	});
</script>