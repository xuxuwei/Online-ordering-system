<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>修改管理员信息界面</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><strong>后台管理</strong>
			</a>
		</div>

		<ul class="nav navbar-top-links navbar-right">

			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" aria-expanded="false"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 个人信息</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 设置</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<!-- 这里的moduleList是保存的某个用户它所有的模块信息 -->
			<c:forEach var="m" items="${moduleList}">
			<li><a href="${m.url}">${m.moduleName}</a></li>
			</c:forEach>
		
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">主页</a>
					</li>
					<li><a href="backAdmin.action">管理员信息管理</a>
					</li>
					<li class="active">修改管理员信息</li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">按要求输入相应信息</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<form role="form" action="backAdmin!modifySuccess.action"
											method="post">
											<div class="form-group">
												<label>姓名</label> <input class="form-control"
													name="user.userName" value="${user.userName }">

											</div>
											<div class="form-group">
												<label>密码</label> <input type="password"
													class="form-control" placeholder="密码不能为空"
													name="user.userPassword" value="${user.userPassword}" />
											</div>

											<div class="form-group">
												<label>电话</label> <input class="form-control"
													placeholder="电话不能为空号" name="user.userTel"
													value="${user.userTel }">
											</div>

											<div class="form-group">
												<label>邮箱</label> <input class="form-control"
													placeholder="格式如：email@example.com" name="user.userEmail"
													value="${user.userEmail }">

											</div>
											<div class="form-group">
													<label>所属部门</label> <select class="form-control" name="user.role.roleId" disabled="disabled" >
													<option value="2"  <c:if test="${user.role.roleId=='2' }">selected="selected" </c:if>> 系统维护部门</option>
													<option value="3"  <c:if test="${user.role.roleId=='3' }">selected="selected" </c:if>>配送部门</option>
													<option value="4"  <c:if test="${user.role.roleId=='4' }">selected="selected" </c:if>>销售部门</option>
												</select>
											</div>
											<input type="hidden" name="user.role.roleId" value="${user.role.roleId}">
											<input type="hidden" name="user.id" value="${user.id }">
											<button type="submit" class="btn btn-default">确定</button>
											<button type="reset" class="btn btn-default">重置</button>
										</form>
									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>


</body>
</html>

