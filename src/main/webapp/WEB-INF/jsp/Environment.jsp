<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>数据表格页面</title>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath }/assets/styles.css"
	rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath }/assets/DT_bootstrap.css"
	rel="stylesheet" media="screen">
<style type="text/css">
#pageul li {
	font-size: 15px;
	margin-right: 10px;
}
ul li{display: inline;}
ul a{text-decoration: none;}
#pageul a {
	color: black;
}
</style>
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
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="icon-user"></i>管理员<i class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="${pageContext.request.contextPath }/user/touserinformation">个人资料</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="${pageContext.request.contextPath }/user/tologin">退出</a></li>
							</ul></li>
					</ul>
					<!-- <ul class="nav">
						<li class="active"><a href="#">首页</a></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">设置 <b class="caret"></b>

						</a>
							<ul class="dropdown-menu" id="menu1">
								<li><a href="#">工具 <i class="icon-arrow-right"></i>

								</a>
									<ul class="dropdown-menu sub-menu">
										<li><a href="#">报表</a></li>
										<li><a href="#">日志</a></li>
										<li><a href="#">错误</a></li>
									</ul></li>
								<li><a href="#">SEO设置</a></li>
								<li><a href="#">其他链接</a></li>
								<li class="divider"></li>
								<li><a href="#">其他链接</a></li>
								<li><a href="#">其他链接</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown">内容 <i
								class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">博客</a></li>
								<li><a tabindex="-1" href="#">新闻</a></li>
								<li><a tabindex="-1" href="#">定制页面</a></li>
								<li><a tabindex="-1" href="#">日历</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#">答疑</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown">用户 <i
								class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">用户列表</a></li>
								<li><a tabindex="-1" href="#">搜索</a></li>
								<li><a tabindex="-1" href="#">权限</a></li>
							</ul></li>
					</ul> -->
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2" id="sidebar">
			<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
					<li ><a
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
							<li class="active"><a
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
								<li><a href="${pageContext.request.contextPath }/user/toindex">首页</a> <span class="divider">/</span></li>
									  <li>
	                                        <a href="#">环境监控数据</a> <span class="divider">/</span>	
	                                    </li>
							</ul>
						</div>
					</div>
				</div>
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">Environment dataTables</div>
						</div>
						<div class="block-content collapse in">
							<div class="span12">
							<table class="table table-striped">
									<thead>
										<tr>
										<th style="text-align: center;">设备号</th>
											<th style="text-align: center;">温度</th>
											<th style="text-align: center;">湿度</th>
											<th style="text-align: center;">光照</th>
											<th style="text-align: center;">噪音</th>
											<th style="text-align: center;">PM2.5</th>
											<th style="text-align: center;">PM10</th>
											<th style="text-align: center;">数据接收时间</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pageBean1.pageData }"
											var="environmental">
											<tr >
												<td style="text-align: center;">${environmental.enviromental_id}</td>
												<td style="text-align: center;">${environmental.temperature}</td>
												<td style="text-align: center;">${environmental.humidity}</td>
												<td style="text-align: center;">${environmental.illumination}</td>
												<td style="text-align: center;">${environmental.noise}</td>
												<td style="text-align: center;">${environmental.pm2}</td>
												<td style="text-align: center;">${environmental.pm10}</td>
												<td style="text-align: center;">${environmental.sendtime}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
						<div align="center">
							<ul id="pageul">
								<!-- 上一页 -->
								<c:if test="${pageBean1.currentPage!=1 }">
									<li><a
										href="${pageContext.request.contextPath }/user/toenvironment?currentPage=${pageBean1.currentPage-1}"><button>上一页</button> </a></li>
								</c:if>
								<c:if test="${pageBean1.currentPage==1 }">
									<li><button  disabled="disabled"> 上一页</button></li>
								</c:if>

								<c:forEach begin="1" end="${pageBean1.totalPage }" var="page">
									<c:if test="${page!=pageBean1.currentPage }">
										<li><a
											href="${pageContext.request.contextPath }/user/toenvironment?currentPage=${page }">${page }</a></li>
									</c:if>
									<c:if test="${page==pageBean1.currentPage }">
										<li><font size="5px" color="red">${page }</font></li>
									</c:if>
								</c:forEach>
								<!-- 下一页 -->
								<c:if test="${pageBean1.currentPage!=pageBean1.totalPage }">
									<li><a
										href="${pageContext.request.contextPath }/user/toenvironment?currentPage=${pageBean1.currentPage+1}"><button> 下一页</button></a></li>
								</c:if>
								<c:if test="${pageBean1.currentPage==pageBean1.totalPage }">
									<li><button  disabled="disabled">下一页</button> </li>
								</c:if>
							</ul>
						</div>
					<!-- /block -->
				</div>


			</div>
		</div>
		<hr>
		<footer>
		<p align="center">Copyright &copy; 2018.Company name All rights
			reserved</p>
		</footer>
	</div>
	<!--/.fluid-container-->

	<script
		src="${pageContext.request.contextPath }/vendors/jquery-1.9.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/datatables/js/jquery.dataTables.min.js"></script>


	<script src="${pageContext.request.contextPath }/assets/scripts.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/DT_bootstrap.js"></script>
	<script>
		$(function() {

		});
	</script>
</body>

</html>