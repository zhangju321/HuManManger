<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="ch">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="左右结构项目，属于大人员的社交工具">
<meta name="keywords" content="左右结构项目 社交 占座 ">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>Bootstrap左右结构响应式后台管理模板</title>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/js/bootstrap/css/bootstrap-theme.min.css">
	  <link rel="stylesheet" href="js/layui/css/layui.css"  media="all">
  <script src="js/layui/layui.js" charset="utf-8"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resource/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="resource/jqueryExt.js"></script>
<script type="text/javascript" src="resource/jquery.form.js"></script>
<script>
	$(function() {
		$(".meun-item").click(function() {
			$(".meun-item").removeClass("meun-item-active");
			$(this).addClass("meun-item-active");
			var itmeObj = $(".meun-item").find("img");
			itmeObj.each(function() {
				var items = $(this).attr("src");
				items = items.replace("_grey.png", ".png");
				items = items.replace(".png", "_grey.png")
				$(this).attr("src", items);
			});
			var attrObj = $(this).find("img").attr("src");
			;
			attrObj = attrObj.replace("_grey.png", ".png");
			$(this).find("img").attr("src", attrObj);
		});
		$("#topAD").click(function() {
			$("#topA").toggleClass(" glyphicon-triangle-right");
			$("#topA").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topBD").click(function() {
			$("#topB").toggleClass(" glyphicon-triangle-right");
			$("#topB").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topCD").click(function() {
			$("#topC").toggleClass(" glyphicon-triangle-right");
			$("#topC").toggleClass(" glyphicon-triangle-bottom");
		});
		$(".toggle-btn").click(function() {
			$("#leftMeun").toggleClass("show");
			$("#rightContent").toggleClass("pd0px");
		})
	})
</script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/slide.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
</head>

<body>
	<div id="wrap">
		<!-- 左侧菜单栏目块 -->
		<div class="leftMeun" id="leftMeun">
			<div id="logoDiv">
				<p id="logoP">
					<img id="logo" alt="左右结构项目" src="images/logo.png"><span>左右结构项目</span>
				</p>
			</div>
			<div id="personInfor">
				<p id="userName">张钜</p>

				<p>
					<a>退出登录</a>
				</p>
			</div>
			<div class="meun-title">账号管理</div>
			<div class="meun-item meun-item-active" href="#sour"
				aria-controls="sour" role="tab" data-toggle="tab">
				<img src="images/icon_source.png">资源管理
			</div>
			<div class="meun-item" href="#char" aria-controls="char" role="tab"
				data-toggle="tab">
				<img src="images/icon_chara_grey.png">权限管理
			</div>
			<div class="meun-item" href="#user" aria-controls="user" role="tab"
				data-toggle="tab">
				<img src="images/icon_user_grey.png">用户管理
			</div>
			<div class="meun-item" href="#chan" aria-controls="chan" role="tab"
				data-toggle="tab">
				<img src="images/icon_change_grey.png">修改密码
			</div>
			<div class="meun-title">地区管理</div>
			<div class="meun-item" href="#scho" aria-controls="scho" role="tab"
				data-toggle="tab">
				<img src="images/icon_house_grey.png">招聘管理
			</div>
			<div class="meun-item" href="#regu" aria-controls="regu" role="tab"
				data-toggle="tab">
				<img src="images/icon_rule_grey.png">员工管理
			</div>
			<div class="meun-item" href="#stud" aria-controls="stud" role="tab"
				data-toggle="tab">
				<img src="images/icon_card_grey.png">考勤信息
			</div>
			<div class="meun-item" href="#sitt" aria-controls="sitt" role="tab"
				data-toggle="tab">
				<img src="images/icon_char_grey.png">薪资管理
			</div>
		
		</div>
		<!-- 右侧具体内容栏目 -->
		<div id="rightContent">
			<a class="toggle-btn" id="nimei"> <i
				class="glyphicon glyphicon-align-justify"></i>
			</a>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- 资源管理模块 -->
				<div role="tabpanel" class="tab-pane active" id="sour">
					<div class="check-div form-inline">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addSource">添加资源</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">编码</div>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">名称</div>
							<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">链接</div>
							<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">操作</div>
						</div>
						<div class="tablebody">
							<div class="row">
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">1</div>
								<div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4"
									role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseSystem" aria-expanded="true"
									aria-controls="collapseOne">
									<span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span>
									<span>系统管理</span>
								</div>
								<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
									/admin/system/userlist/software/</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#changeSource">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteSource">删除</button>
								</div>
							</div>

							<!--系统管理折叠狂-->

							<div id="collapseSystem" class="collapse in" aria-expanded="true">
								<div class="row">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
										2</div>
									<div id="topBD" onClick="changeA()"
										class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
										role="button" data-toggle="collapse" data-parent="#accordion"
										href="#collapseAccount" aria-expanded="true"
										aria-controls="collapseOne">
										<span onClick="changeB()" id="topB"
											class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">/rlist/
									</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<button class="btn btn-success btn-xs" data-toggle="modal"
											data-target="#changeSource">修改</button>
										<button class="btn btn-danger btn-xs" data-toggle="modal"
											data-target="#deleteSource">删除</button>
									</div>
								</div>
								<!--用户管理折叠狂-->
								<div id="collapseAccount" class="collapse in"
									aria-expanded="true">
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
											1</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span class=""> &nbsp;</span><span>资源管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">
											2</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>权限管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
										3</div>
									<div id="topCD"
										class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2"
										role="button" data-toggle="collapse" data-parent="#accordion"
										href="#collapseSchool" aria-expanded="true"
										aria-controls="collapseOne">
										<span id="topC" onClick="changeC()"
											class="glyphicon glyphicon-triangle-bottom"></span><span>
											地区管理</span>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
										/admin/system</div>
									<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
										<button class="btn btn-success btn-xs" data-toggle="modal"
											data-target="#changeSource">修改</button>
										<button class="btn btn-danger btn-xs" data-toggle="modal"
											data-target="#deleteSource">删除</button>
									</div>
								</div>
								<!--地区管理折叠狂-->
								<div id="collapseSchool" class="collapse in"
									aria-expanded="true">
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">
											1</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
											<span></span><span>地区管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">
											2</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>规则管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs " data-toggle="modal "
												data-target="#changeSource ">修改</button>
											<button class="btn btn-danger btn-xs " data-toggle="modal "
												data-target="#deleteSource ">删除</button>
										</div>
									</div>
									<div class="row ">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
											3</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
											<span></span><span>人员信息</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">
											4</div>
										<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
											<span></span><span>座位管理</span>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											/admin/system/userlist/software/</div>
										<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
											<button class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#changeSource">修改</button>
											<button class="btn btn-danger btn-xs" data-toggle="modal"
												data-target="#deleteSource">删除</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>
					<!--弹出窗口 添加资源-->
					<div class="modal fade" id="addSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">链接：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">排序：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="leixing" id="anniu">菜单
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="leixing" id="meun"> 按钮
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-xs btn-green">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改资源弹出窗口-->
					<div class="modal fade" id="changeSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">链接：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">排序：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">父节点：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="leixing" id="anniu">菜单
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="leixing" id="meun"> 按钮
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!--弹出删除资源警告窗口-->
					<div class="modal fade" id="deleteSource" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该资源？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 权限管理模块 -->
				<div role="tabpanel" class="tab-pane" id="char">

					<div class="check-div">
						<button class="btn btn-yellow btn-xs" data-toggle="modal"
							data-target="#addChar">添加权限</button>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-1 ">编码</div>
							<div class="col-xs-4">权限名</div>
							<div class="col-xs-5">描述</div>
							<div class="col-xs-2">操作</div>
						</div>
						<div class="tablebody">
							<div class="row">
								<div class="col-xs-1 ">1</div>
								<div class="col-xs-4">
									</span><span>管理员</span>
								</div>
								<div class="col-xs-5">管理员具有超年权限</div>
								<div class="col-xs-2">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#changeChar">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteChar">删除</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-1 ">2</div>
								<div class="col-xs-4">
									<span>游客</span>
								</div>
								<div class="col-xs-5">可以查看信息</div>
								<div class="col-xs-2">
									<button class="btn btn-success btn-xs">修改</button>
									<button class="btn btn-danger btn-xs">删除</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>
					<!--增加权限弹出窗口-->
					<div class="modal fade" id="addChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">权限名：</label>
												<div class="col-xs-6 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">描述：</label>
												<div class="col-xs-6 ">
													<textarea class="form-control input-sm duiqi"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
												<div class="col-xs-6">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>

										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改权限弹出窗口-->
					<div class="modal fade" id="changeChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">权限名：</label>
												<div class="col-xs-6 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">描述：</label>
												<div class="col-xs-6 ">
													<textarea class="form-control input-sm duiqi"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">系统资源：</label>
												<div class="col-xs-6">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>

										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除权限警告窗口-->
					<div class="modal fade" id="deleteChar" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该权限？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--用户管理模块-->
				<div role="tabpanel" class="tab-pane" id="user">
					<div class="check-div form-inline">
						<div class="col-xs-3">
							<button class="btn btn-yellow btn-xs" data-toggle="modal"
								data-target="#addUser">添加用户</button>
						</div>
						<div class="col-xs-4">
							<input type="text" class="form-control input-sm"
								placeholder="输入文字搜索">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
						<div class="col-lg-3 col-lg-offset-2 col-xs-4"
							style=" padding-right: 40px;text-align: right;">
							<label for="paixu">排序:&nbsp;</label> <select
								class=" form-control">
								<option>地区</option>
								<option>地区</option>
								<option>班期</option>
								<option>性别</option>
								<option>年龄</option>
								<option>份数</option>
							</select>
						</div>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-2 ">用户名</div>
							<div class="col-xs-2">地区</div>
							<div class="col-xs-2">真实姓名</div>
							<div class="col-xs-2">电话</div>
							<div class="col-xs-2">状态</div>
							<div class="col-xs-2">操作</div>
						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-2 ">goodmoning</div>
								<div class="col-xs-2">国际关系地区</div>
								<div class="col-xs-2">李豆豆</div>
								<div class="col-xs-2">13688889999</div>
								<div class="col-xs-2">状态</div>
								<div class="col-xs-2">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#reviseUser">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteUser">删除</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>

					<!--弹出添加用户窗口-->
					<div class="modal fade" id="addUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">用户名：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">电话：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">地区：</label>
												<div class="col-xs-8">
													<select class=" form-control select-duiqi">
														<option value="">国际关系地区</option>
														<option value="">北京大学</option>
														<option value="">天津大学</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<select class=" form-control select-duiqi">
														<option value="">管理员</option>
														<option value="">普通用户</option>
														<option value="">游客</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="situation" id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="situation" id="forbid"> 禁用
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">用户名：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">电话：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">地区：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sKnot" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="situation" id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="situation" id="forbid"> 禁用
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该用户？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn  btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!-- 修改密码模块 -->
				<div role="tabpanel" class="tab-pane" id="chan">
					<div class="check-div">原始密码为12312313</div>
					<div
						style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
						<form class="form-horizontal">
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">原密码：</label>
								<div class="col-xs-5">
									<input type="" class="form-control input-sm duiqi" id="sKnot"
										placeholder="" style="margin-top: 7px;">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">新密码：</label>
								<div class="col-xs-5">
									<input type="" class="form-control input-sm duiqi" id="sKnot"
										placeholder="" style="margin-top: 7px;">
								</div>
							</div>
							<div class="form-group">
								<label for="sKnot" class="col-xs-4 control-label">重复密码：</label>
								<div class="col-xs-5">
									<input type="" class="form-control input-sm duiqi" id="sKnot"
										placeholder="" style="margin-top: 7px;">
								</div>
							</div>
							<div class="form-group text-right">
								<div class="col-xs-offset-4 col-xs-5"
									style="margin-left: 169px;">
									<button type="reset" class="btn btn-xs btn-white">取 消</button>
									<button type="submit" class="btn btn-xs btn-green">保存</button>
								</div>
							</div>
						</form>
					</div>

				</div>
				<!--地区管理模块-->
				<div role="tabpanel" class="tab-pane" id="scho">
       <div style="text-align: center">
            <input type="button" data-toggle="modal"
									data-target="#myModal" class="saveORUpdate btn btn-default"
									value="增加排班">
                    </div>
					<table border="1" class="table">
						<thead>
							<tr class="success">
								<th>排班类型</th>
								<th>第一次登记</th>
								<th>第二次登记</th>
								<th>第三次登记</th>
								<th>第四次登记</th>
								<th>第一次签到延后多少分钟允许登记</th>
								<th>第二次签到延后多少分钟允许登记</th>
								<th>第三次签到延后多少分钟允许登记</th>
								<th>第四次签到延后多少分钟允许登记</th>
								<th>修改</th>
								<th>删除</th>
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
						<h4 class="modal-title" id="modalTitle1">新建班次</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">排班类型:</label>
								<div class="col-sm-4">
							   <input type="hidden" id="duty_id" name="duty_id" class="form-control" >
							    <input type="text" id="duty_name" name="duty_name" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第一次登记:</label>
							 <div class="layui-input-inline">
                                <input class="layui-input" id="test4" name="duty_time1" placeholder="HH:mm:ss" type="text">
                               </div> 
                             
							</div> 
			
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第二次登记:</label>
								<!-- <div class="col-sm-4">
								<input type="date" id="duty_time2" name="duty_time2" class="form-control">
								</div> -->
								<!-- <div class="layui-input-inline">
                                <input class="layui-input" id="test5" name="duty_time2" placeholder="HH:mm:ss" type="text">
                               </div> -->
                               <div class="layui-input-inline">
                              <input class="layui-input" id="test8" name="duty_time2" placeholder="yyyy-MM-dd HH:mm:ss" type="text">
                              </div>
	   						</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第三次登记:</label>
								<!-- <div class="col-sm-4">
								<input type="date" id="duty_time3" name="duty_time3" class="form-control">
								</div> -->
								<div class="layui-input-inline">
                                <input class="layui-input" id="test6" name="duty_time3" placeholder="HH:mm:ss" type="text">
                               </div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第四次登记:</label>
								<!-- <div class="col-sm-4">
								<input type="date" id="duty_time4" name="duty_time4" class="form-control">
								</div> -->
								<div class="layui-input-inline">
                                <input class="layui-input" id="test7" name="duty_time4" placeholder="HH:mm:ss" type="text">
                               </div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第一次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									<input type="text" id="duty_after1" class="form-control" name="duty_after1" />
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">第二次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text" id="duty_after2" class="form-control" name="duty_after2"> 
										
								</div>
							</div>
							        
							
							<div class="form-group">
								<label for="sellCount" class="col-sm-2 control-label">第三次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text" id="duty_after3" class="form-control" name="duty_after3"> 
										
								</div>
							</div>
							
							<div class="form-group">
								<label for="goodsDate" class="col-sm-2 control-label">第四次签到延后多少分钟允许登记:</label>
								<div class="col-sm-4">
									 <input type="text"  class="form-control" id="duty_after4" name="duty_after4"> 
										
								</div>
							</div>
							
							<input type="button"  id="saveOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

					<!--弹出添加用户窗口-->
					<div class="modal fade" id="addSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加地区</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">地区名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">经度：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">纬度：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">简称：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改地区</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">地区名称：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">经度：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">纬度：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">简称：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteSchool" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该地区？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-danger">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--规则管理模块-->
				<div role="tabpanel" class="tab-pane" id="regu"
					style="padding-top: 50px;">
					<div class="data-div">
						<div class="tablebody col-lg-10 col-lg-offset-1">
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax1"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">30</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax2"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">15</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax3"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">60</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax4"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">100</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax5"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">7</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
								<div class="col-xs-7 expand-col">
									<div class="slider-minmax6"></div>
									<div class="row top100">
										<span class="left">0</span> <span class="right">10</span>
									</div>
								</div>
								<div class="col-xs-2">
									<button class="btn btn-xs btn-white">默认值</button>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white"
									data-dismiss="modal">取 消</button>
								<button type="button" class="btn btn-xs btn-green">保 存</button>
							</div>
						</div>
					</div>
				</div>
				<!--时间段管理模块-->
				<div role="tabpanel" class="tab-pane" id="time">
					<div class="check-div form-inline">
						<span href="#sitt" aria-controls="sitt" role="tab"
							data-toggle="tab" style="cursor: pointer;"><span
							class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-yellow btn-xs " data-toggle="modal"
							data-target="#addTime">添加时间段</button>

					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-3 ">编码</div>
							<div class="col-xs-3">开始</div>
							<div class="col-xs-3">结束</div>

							<div class="col-xs-3">操作</div>
						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-3 ">6426398978</div>
								<div class="col-xs-3">10:10</div>
								<div class="col-xs-3">19:30</div>
								<div class="col-xs-3">
									<button class="btn btn-success btn-xs" data-toggle="modal"
										data-target="#changeTime">修改</button>
									<button class="btn btn-danger btn-xs" data-toggle="modal"
										data-target="#deleteTime">删除</button>
								</div>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>

					<!--弹出增加时间段窗口-->
					<div class="modal fade" id="addTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">开始时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">结束时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--修改增加时间段窗口-->
					<div class="modal fade" id="changeTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">开始时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">结束时间：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-green btn-xs">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!--弹出删除时间段警告窗口-->
					<div class="modal fade" id="deleteTime" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该时间段？</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-danger btn-xs">保
										存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

				</div>
				<!--座位管理模块-->
				<div role="tabpanel" class="tab-pane" id="sitt">

					<div class="check-div form-inline" style="">
						<div class="col-lg-4 col-xs-7 col-md-6">
							<button class="btn btn-yellow btn-xs" data-toggle="modal"
								data-target="#addBuilding">添加楼宇</button>
							<label for="paixu">楼宇:&nbsp;</label> <select
								class=" form-control">
								<option>第一教学楼</option>
								<option>逸夫楼</option>
								<option>综合楼</option>
								<option>图书馆</option>
							</select>
							<button class="btn btn-white btn-xs ">修 改</button>
						</div>
						<div class="col-lg-4 col-lg-offset-4 col-xs-4 col-md-5 "
							style="padding-right: 40px;text-align: right;">
							<input type="text" class=" form-control input-sm "
								placeholder="输入文字搜索">
							<button class="btn btn-white btn-xs ">查 询</button>
						</div>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-2 " style="padding-left: 20px;">楼层</div>
							<div class="col-xs-3" style="padding-left: 20px;">区域</div>
							<div class="col-xs-2" style="padding-left: 2px;">座位数</div>
							<div class="col-xs-2">空余座位</div>
							<div class="col-xs-3">操作</div>
						</div>
						<div class="tablebody">

							<div class="sitTable">
								<table class="table  table-responsive">
									<tr>
										<td valign="middle" class="col-xs-2" rowspan="3">图书馆第一层</td>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
									<tr>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
									<tr>
										<td class="col-xs-3">第一自习室</td>
										<td class="col-xs-2">2</td>
										<td class="col-xs-2" style="padding-left: 40px!important;">3</td>
										<td class="col-xs-3" style="padding-left: 50px!important;">
											<a class="linkCcc" href="#sitDetail" aria-controls="char"
											role="tab" data-toggle="tab">座位信息</a> <a class="linkCcc"
											href="#time" aria-controls="char" role="tab"
											data-toggle="tab">时间段设置</a>
										</td>
									</tr>
								</table>
							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>

					<!--弹出添加楼宇窗口-->
					<div class="modal fade" id="addBuilding" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">楼层：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm duiqi"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">区域：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm duiqi"
														id="sLink" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">座位数：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm duiqi"
														id="sOrd" placeholder="">
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出修改用户窗口-->
					<div class="modal fade" id="reviseUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<form class="form-horizontal">
											<div class="form-group ">
												<label for="sName" class="col-xs-3 control-label">用户名：</label>
												<div class="col-xs-8 ">
													<input type="email" class="form-control input-sm"
														id="sName" placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
												<div class="col-xs-8 ">
													<input type="" class="form-control input-sm" id="sLink"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sOrd"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">电话：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">地区：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="sKnot" class="col-xs-3 control-label">权限：</label>
												<div class="col-xs-8">
													<input type="" class="form-control input-sm" id="sKnot"
														placeholder="">
												</div>
											</div>
											<div class="form-group">
												<label for="situation" class="col-xs-3 control-label">状态：</label>
												<div class="col-xs-8">
													<label class="control-label" for="anniu"> <input
														type="radio" name="situation" id="normal">正常
													</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
														class="control-label" for="meun"> <input
														type="radio" name="situation" id="forbid"> 禁用
													</label>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-xs btn-green">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->

					<!--弹出删除用户警告窗口-->
					<div class="modal fade" id="deleteUser" role="dialog"
						aria-labelledby="gridSystemModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
								</div>
								<div class="modal-body">
									<div class="container-fluid">确定要删除该用户？删除后不可恢复！</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-xs btn-white"
										data-dismiss="modal">取 消</button>
									<button type="button" class="btn btn-green btn-xs">保 存</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</div>
				<!--座位详情模块-->
				<div role="tabpanel" class="tab-pane" id="sitDetail">
					<div class="check-div form-inline">
						<span href="#sitt" aria-controls="sitt" role="tab"
							data-toggle="tab" style="cursor: pointer;"><span
							class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
					</div>
					<div class="data-div">
						<div class="row tableHeader">
							<div class="col-xs-6 ">座位编码</div>
							<div class="col-xs-6 ">座位名称</div>

						</div>
						<div class="tablebody">

							<div class="row">
								<div class="col-xs-6 ">sad2345fas345533</div>
								<div class="col-xs-6">王座</div>

							</div>

						</div>

					</div>
					<!--页码块-->
					<footer class="footer">
						<ul class="pagination">
							<li><select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
							</select> 页</li>
							<li class="gray">共20页</li>
							<li><i class="glyphicon glyphicon-menu-left"> </i></li>
							<li><i class="glyphicon glyphicon-menu-right"> </i></li>
						</ul>
					</footer>

				</div>
				<!--人员管理模块-->
				<div role="tabpanel" class="tab-pane" id="stud">
					 
					 <table border="1" class="table">
     <thead>
       <tr class="success">
         <!-- <th>唯一自增</th> -->
         <th>部门名称</th>
         <th>角色名</th>
         <th>人员名</th>
         <th>排班名称</th>
         <th>是/否</th>
         <th>排班开始日期</th>
         <th>排班结束日期</th>
         
         <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="saveORUpdate btn btn-default" value="添加"></th>
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
						<h4 class="modal-title" id="modalTitle1">添加考勤排班设置</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form" id="file1" enctype="multipart/form-data">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">部门名称:</label>
								<div class="col-sm-4">
							<input type="hidden" id="id" name="id" class="form-control" >
							
								<select id="departFind" class="form-control" name="departmentId"></select>
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">角色名:</label>
								<div class="col-sm-4">
								
								<select id="roleFind" class="form-control" name="roleId"></select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">人员名:</label>
								<div class="col-sm-4">
								
								<select id="staffFind" class="form-control" name="staff_id"></select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班名称:</label>
								<div class="col-sm-4">
								<input type="text" id="name" name="name" class="form-control">
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">是/否:</label>
								<div class="col-sm-4">
								<input type="radio" id="status" name="status" value="0" checked="checked">是
								<input type="radio" id="status" name="status" value="1" >否
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班开始日期:</label>
								<div class="col-sm-4">
									<input type="date" id="date_start" class="form-control" name="date_start"/>   
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班结束日期:</label>
								<div class="col-sm-4">
									 <input type="date" id="date_end" class="form-control" name="date_end"> 
										
								</div>
							</div>
							        
							
							<input type="button"  id="saveOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
					
					<!-- /.modal -->

				</div>
			</div>
		</div>
	</div>


	<script src="js/jquery.nouislider.js"></script>

	<!-- this page specific inline scripts -->
	<script>
		//min/max slider
		function huadong(my, unit, def, max) {
			$(my).noUiSlider({
				range : [ 0, max ],
				start : [ def ],
				handles : 1,
				connect : 'upper',
				slide : function() {
					var val = Math.floor($(this).val());
					$(this).find(".noUi-handle").text(
						val + unit
					);
					console.log($(this).find(".noUi-handle").parent().parent().html());
				},
				set : function() {
					var val = Math.floor($(this).val());
					$(this).find(".noUi-handle").text(
						val + unit
					);
				}
			});
			$(my).val(def, true);
		}
		huadong('.slider-minmax1', "分钟", "5", 30);
		huadong('.slider-minmax2', "分钟", "6", 15);
		huadong('.slider-minmax3', "分钟", "10", 60);
		huadong('.slider-minmax4', "次", "2", 10);
		huadong('.slider-minmax5', "天", "3", 7);
		huadong('.slider-minmax6', "天", "8", 10);
	</script>
	<script>
		$(function() {
			conFind();
		});
		function conFind() {
			$.ajax({
				url : "attend_config/conFind",
				type : "post",
				dataType : "json",
				success : function(data) {
					$("#tbody").empty();
					for (var i = 0; i < data.length; i++) {
						var obj = data[i];
						var tr = "<tr>";
						tr += "<td>" + obj.duty_name + "</td>";
						tr += "<td>" + obj.duty_time1 + "</td>";
						tr += "<td>" + obj.duty_time2 + "</td>";
						tr += "<td>" + obj.duty_time3 + "</td>";
						tr += "<td>" + obj.duty_time4 + "</td>";
						tr += "<td>" + obj.duty_after1 + "</td>";
						tr += "<td>" + obj.duty_after2 + "</td>";
						tr += "<td>" + obj.duty_after3 + "</td>";
						tr += "<td>" + obj.duty_after4 + "</td>";
						tr += "<td><input type='button' data-toggle='modal' data-target='#myModal' id=" + obj.duty_id + "  class='findById btn btn-default' value='修改'></td>";
						tr += "<td><input type='button' id=" + obj.duty_id + "  class='delete btn btn-default' value='删除'></td>";
						tr += "</tr>";
						$("#tbody").append(tr);
					}
				}
			});
		}
		;
	
	
		$(document).on("click", ".saveORUpdate", function() {
			$("#duty_id").val("");
			$("#duty_name").val("");
			$("#duty_time1").val("");
			$("#duty_time2").val("");
			$("#duty_time3").val("");
			$("#duty_time4").val("");
			$("#duty_after1").val("");
			$("#duty_after2").val("");
			$("#duty_after3").val("");
			$("#duty_after4").val("");
		});
		$(document).on("click", "#saveOrUpdate", function() {
			var obj = $("#file1").serializeObject(); //将表单数据转换json对象
			$.ajax({
				url : "attend_config/saveOrUpdate",
				type : "post",
				async : true,
				contentType : "application/json;charset=utf-8", //发送的内容类型utf-8
				data : JSON.stringify(obj), //将json对象转换成json字符串
				dataType : "text",
				success : function(data) {
					conFind();
				}
			});
		});
	
		$(document).on("click", ".findById", function() {
			var id = this.id;
			$.ajax({
				url : "attend_config/conFindById",
	
				data : {
					"duty_id" : id
				},
				type : "post",
				dataType : "json",
	
				success : function(data) {
					$("#duty_id").val(data.duty_id);
					$("#duty_name").val(data.duty_name);
					$("#duty_time1").val(data.duty_time1);
					$("#duty_time2").val(data.duty_time2);
					$("#duty_time3").val(data.duty_time3);
					$("#duty_time4").val(data.duty_time4);
					$("#duty_after1").val(data.duty_after1);
					$("#duty_after2").val(data.duty_after2);
					$("#duty_after3").val(data.duty_after3);
					$("#duty_after4").val(data.duty_after4);
				}
			});
		});
	
		$(document).on("click", ".delete", function() {
	
			var id = this.id;
			$.ajax({
				url : "attend_config/conDelete",
				data : {
					"duty_id" : id
				},
				type : "post",
				dataType : "text",
				success : function(data) {
					alert(data);
					conFind();
				}
			});
		});
	</script>
	<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  //时间选择器
  laydate.render({
    elem: '#test4',
    type: 'time'
  });
   laydate.render({
    elem: '#test5',
    type: 'time'
  });
   laydate.render({
    elem: '#test6',
    type: 'time'
  });
   laydate.render({
    elem: '#test7',
    type: 'time'
  });
  
   //日期时间选择器
  laydate.render({
    elem: '#test8'
    ,type: 'datetime'
  });
  });
  </script>
  
  <script>
  $(function(){
    scheFind();
    roleFind();
    departFind();
    staffFind();
  });
  function scheFind(){
    $.ajax({
       url:"attend_schedule/scheFind",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var sts=data[i].status;
          var stsstr=null;
          if(sts=='0'){
            stastr="否"
          };
          if(sts=='1'){
            stastr="是"
          };  
            var tr="<tr>";
                /*  tr+="<td>"+obj.id+"</td>"; */
                 tr+="<td>"+obj.departmentName+"</td>";
                 tr+="<td>"+obj.roleName+"</td>";
                 tr+="<td>"+obj.STAFF_NAME+"</td>";
                 tr+="<td>"+obj.name+"</td>";              
                 tr+="<td>"+stastr+"</td>";
                 tr+="<td>"+obj.date_start+"</td>";
                 tr+="<td>"+obj.date_end+"</td>";
                 tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' id="+obj.id+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.id+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="<td><input type='button' id="+obj.id+"  class='updateState btn btn-default' value='状态修改'></td>";
                                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  };
  

  $(document).on("click",".saveORUpdate",function(){
          $("#id").val("");
          $("#departmentId").val("");
          $("#roleId").val("");
          $("#staff_id").val("");
          $("#name").val("");
          $("#status").val("");
          $("#date_start").val("");
          $("#date_end").val("");
  });
   $(document).on("click","#saveOrUpdate",function(){
     var obj=$("#file1").serializeObject();//将表单数据转换json对象
     $.ajax({
       url:"attend_schedule/saveOrUpdate",
       type:"post",
       async:true,
       contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
       data:JSON.stringify(obj),//将json对象转换成json字符串
       dataType:"text",
       success:function(data){
          scheFind();
       }
     });
  });
  
   $(document).on("click",".findById",function(){
   
    var id=this.id;
    $.ajax({
       url:"attend_schedule/scheFindById",
  
       data:{"id":id},
       type:"post",
       dataType:"json",
       success:function(data){
       
          $("#id").val(data.id);
          $("#departmentId").val(data.departmentName);
          $("#roleId").val(data.roleName);
          $("#staff_id").val(data.STAFF_NAME);
          $("#name").val(data.name);
          $("#status").val(data.status);
          $("#date_start").val(data.date_start);
          $("#date_end").val(data.date_end);
       }
    });
  });
  
   $(document).on("click",".delete",function(){
    
    var id=this.id;
    
    $.ajax({
       url:"attend_schedule/scheDelete",
       data:{"id":id},
       
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         scheFind();
       }
    });
  });
  
   $(document).on("click",".updateState",function(){
    
    var id=this.id;
    alert(id);
  
    $.ajax({
       url:"attend_schedule/updateState",
       data:{"id":id},   
       type:"post",
       dataType:"text",
       success:function(data){
         alert(data);
         scheFind();
       }
    });
  });
  
  function roleFind(){
				 $.ajax({
				        url:"attend_schedule/roleFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        		$("#roleFind").append("<option value='"+data[i].roleId+"'>"+data[i].roleName+"</option>");
				        	}
				        }
			      });
		
	}
	 function departFind(){
				 $.ajax({
				        url:"attend_schedule/departFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        		$("#departFind").append("<option value='"+data[i].departmentId+"'>"+data[i].departmentName+"</option>");
				        	}
				        }
			      });
		
	}
 function staffFind(){
				  $.ajax({
				        url:"attend_schedule/staffFind",
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        	for(var i=0;i<data.length;i++){
				        		$("#staffFind").append("<option value='"+data[i].staff_id+"'>"+data[i].STAFF_NAME+"</option>"); 
				         	/* 	if(data[i].staff_id==${staff_id}){
	$("#staffFind").append("<option value='"+data[i].staff_id+"' selected='selected'>"+data[i].STAFF_NAME+"</option>");
	}else{
	$("#staffFind").append("<option value='"+data[i].staff_id+"'>"+data[i].STAFF_NAME+"</option>");
		}  */
				        	}
				        }
			      }); 
		 
	
	 } 
	
	
	
</script>
</body>

</html>
