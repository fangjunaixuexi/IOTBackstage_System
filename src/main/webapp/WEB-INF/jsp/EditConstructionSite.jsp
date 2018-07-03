<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单提交页面</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath }/assets/styles.css"
	rel="stylesheet" media="screen">
<script
	src="${pageContext.request.contextPath }/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">智慧工地</a>
					<div class="nav-collapse collapse">
				<c:choose>
				<c:when test="${userSession == null }">
						<ul class="nav pull-right">
						<li class="dropdown"><a href="${pageContext.request.contextPath }/user/tologin" role="button">
						 未登录</a>
						 </li>
						 </ul>
				</c:when>
				<c:otherwise>
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="icon-user"></i>个人<i class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1"
									href="${pageContext.request.contextPath }/user/touserinformation">个人资料</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1"
									href="${pageContext.request.contextPath }/user/tologin">退出</a></li>
							</ul></li>
					</ul>
					</c:otherwise>
					</c:choose>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2" id="sidebar">
				<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
					<li class="active"><a
						href="${pageContext.request.contextPath }/user/toindex"><i
							class="icon-chevron-right"></i> 首页</a></li>
					<li class="dropdown">
						<!-- span标签 是添加一个下三角的图标 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown">安全帽定位<span class="caret" ></span></a>
						<ul class="dropdown-menu">
							<li><a
						href="${pageContext.request.contextPath }/user/toSafetyHelmetData"><i
							class="icon-chevron-right"></i> 安全帽定位数据</a></li>
						<li><a
						href="${pageContext.request.contextPath }/user/toSafetyHat"><i
							class="icon-chevron-right"></i> 安全帽设备</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<!-- span标签 是添加一个下三角的图标 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown">环境监控<span class="caret" ></span></a>
						<ul class="dropdown-menu">
							<li><a
						href="${pageContext.request.contextPath }/user/toenvironment"><i
							class="icon-chevron-right"></i> 环境监控数据</a></li>
							<li><a
						href="${pageContext.request.contextPath }/user/toequipment"><i
							class="icon-chevron-right"></i> 环境监控设备</a></li>
						</ul>
					</li>
						<li class="dropdown">
						<!-- span标签 是添加一个下三角的图标 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown">视频监控<span class="caret" ></span></a>
						<ul class="dropdown-menu">
							<li><a
						href="${pageContext.request.contextPath }/user/tovideo_monitor"><i
							class="icon-chevron-right"></i> 视频监控设备</a></li>
						</ul>
					</li>
						<li class="dropdown">
						<!-- span标签 是添加一个下三角的图标 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown">塔机<span class="caret" ></span></a>
						<ul class="dropdown-menu">
							<li><a
						href="${pageContext.request.contextPath }/user/toTowerCrane"><i
							class="icon-chevron-right"></i> 塔机设备</a></li>
						</ul>
					</li>
						<li class="dropdown">
						<!-- span标签 是添加一个下三角的图标 --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown">区域管理<span class="caret" ></span></a>
						<ul class="dropdown-menu">
							<li><a
						href="${pageContext.request.contextPath }/user/toConstructionSite"><i
							class="icon-chevron-right"></i>工地管理</a></li>
						</ul>
					</li>
					<li><a 
						href="${pageContext.request.contextPath }/user/toLogindate"><span
							class="badge badge-warning pull-right">${countlogindate}</span>登录日志</a></li>
				</ul>
			</div>
			<!--/span-->
			<div class="span10" id="content">
				<div class="row-fluid">
					<div class="navbar">
						<div class="navbar-inner">
							<ul class="breadcrumb">
								<i class="icon-chevron-left hide-sidebar"><a href='#'
									title="Hide Sidebar" rel='tooltip'>&nbsp;</a></i>
								<i class="icon-chevron-right show-sidebar"
									style="display: none;"><a href='#' title="Show Sidebar"
									rel='tooltip'>&nbsp;</a></i>
								<li><a
									href="${pageContext.request.contextPath }/user/toindex">首页</a>
									<span class="divider">/</span></li>
								<li><a
									href="${pageContext.request.contextPath }/user/toConstructionSite">工地管理</a>
									<span class="divider">/</span></li>
								<li><a href="#">修改工地</a> <span class="divider">/</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- block -->
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">修改数据</div>
					</div>
					<div class="block-content collapse in">
						<div class="span12">
							<form class="form-horizontal"
								action="${pageContext.request.contextPath }/user/toupdateConstructionSite"
								method="post" accept-charset="UTF-8" onsubmit="return check()">
								<fieldset>
									<legend>修改工地信息</legend>
									<div class="control-group">
										<label class="control-label" for="focusedInput"
											style="text-align: center;">工地编号</label>
										<div class="controls">
											<input class="input-xlarge focused" name="regionid"
												id="regionid" type="text"
												value="${constructionSiteSession.regionid }"> <span
												class="help-inline">*</span> <span id="checktext1"></span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput"
											style="text-align: center;">工地id</label>
										<div class="controls">
											<input class="input-xlarge focused" name="c_id" id="c_id"
												type="text" value="${constructionSiteSession.c_id}" readonly="readonly">
											<span class="help-inline">*</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput"
											style="text-align: center;">工地名称</label>
										<div class="controls">
											<input class="input-xlarge focused" name="regionname" id="regionname"
												type="text" value="${constructionSiteSession.regionname}" >
											<span class="help-inline">*</span>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="selectError">工地所属</label>
										<div class="controls">
											<select name="father">
													<option selected="selected" value="${constructionSiteSession.father}">${constructionSiteSession.fathername}</option>
												<c:forEach items="${listRegionAdministrationSession }"
													var="admin">
													<option value="${admin.regionid}">${admin.regionname}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary">Save
											changes</button>
										<button type="reset" class="btn">Cancel</button>
									</div>
								</fieldset>
							</form>

						</div>
					</div>
				</div>
				<!-- /block -->
			</div>


		</div>
	</div>
	<hr>
	<footer>
	<p align="center">Copyright &copy; 2018.Company name All rights
		reserved.</p>
	</footer>
	</div>
	<!--/.fluid-container-->
	<link href="${pageContext.request.contextPath }/vendors/datepicker.css"
		rel="stylesheet" media="screen">
	<link
		href="${pageContext.request.contextPath }/vendors/uniform.default.css"
		rel="stylesheet" media="screen">
	<link href="${pageContext.request.contextPath }/vendors/chosen.min.css"
		rel="stylesheet" media="screen">

	<link
		href="${pageContext.request.contextPath }/vendors/wysiwyg/bootstrap-wysihtml5.css"
		rel="stylesheet" media="screen">

	<script
		src="${pageContext.request.contextPath }/vendors/jquery-1.9.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/jquery.uniform.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/bootstrap-datepicker.js"></script>

	<script
		src="${pageContext.request.contextPath }/vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

	<script
		src="${pageContext.request.contextPath }/vendors/wizard/jquery.bootstrap.wizard.min.js"></script>


	<script src="${pageContext.request.contextPath }/assets/scripts.js"></script>
	<script type="text/javascript">
		function check() {
			var reg = /^\d+$/;
			var check = false;
			var flag = null;
			var regionid = document.getElementById("regionid").value;
			if (regionid == "" || regionid == null) {
				document.getElementById("checktext1").innerHTML = "设备编号不能为空 ";
				check = false;
			} else {
				flag = reg.test(regionid);
				if (!flag) {
					document.getElementById("checktext1").innerHTML = "设备编号只能为数字";
					check = false;
				} else {
					document.getElementById("checktext1").innerHTML = " √";
					check = true;
				}
			}
			return check;
		}
	</script>
</body>

</html>