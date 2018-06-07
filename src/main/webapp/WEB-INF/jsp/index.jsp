<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>智慧工地后台系统</title>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath }/vendors/easypiechart/jquery.easy-pie-chart.css"
	rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath }/assets/styles.css"
	rel="stylesheet" media="screen">

<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<script
	src="${pageContext.request.contextPath }/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<style type="text/css">
#pageul li {
	font-size: 15px;
	margin-right: 10px;
}

ul li {
	display: inline;
}

ul a {
	text-decoration: none;
}

#pageul a {
	color: black;
}
</style>

 

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
					<!-- 	<ul class="nav">
						<li class="active"><a href="#">首页</a></li>
						</ul>
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

					</ul> -->
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<%-- 		<div class="span2" id="sidebar" >
				<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
					<li class="active"><a
						href="${pageContext.request.contextPath }/user/toindex"><i
							class="icon-chevron-right"></i> 首页</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/toSafetyHat"><i
							class="icon-chevron-right"></i> 安全帽设备</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/toenvironment"><i
							class="icon-chevron-right"></i> 环境监控数据</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/toSafetyHelmetData"><i
							class="icon-chevron-right"></i> 安全帽定位数据</a></li>
					<li><a
						href="${pageContext.request.contextPath }/user/toequipment"><i
							class="icon-chevron-right"></i> 环境监控设备</a> 
                            </li>
						<li><a
							href="${pageContext.request.contextPath }/user/toLogindate"><span
								class="badge badge-warning pull-right">${countlogindate}</span>登录日志</a></li>
						
				</ul>
			</div> --%>
			<div class="span2" id="sidebar">
				<!-- <ul class="nav nav-pills"> -->
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
					<li><a 
						href="${pageContext.request.contextPath }/user/toLogindate"><span
							class="badge badge-warning pull-right">${countlogindate}</span>登录日志</a></li>
				</ul>
				
			</div>

    
</body>
			
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

							</ul>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<!-- block -->
					<div class="block">
						<div class="navbar navbar-inner block-header">
							<div class="muted pull-left">统计</div>
						</div>
						<div class="block-content collapse in">
							<div class="span3">
								<div class="chart" data-percent="0."+"${countlogindate}">${countlogindate}</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">访问量</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="0."+"${countsafety_hat}">${countsafety_hat}</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">安全帽</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="0."+"${countuser}">${countuser}</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">用户</span>

								</div>
							</div>
							<div class="span3">
								<div class="chart" data-percent="0."+"${countequipment}">${countequipment}</div>
								<div class="chart-bottom-heading">
									<span class="label label-info">设备</span>

								</div>
							</div>
						</div>
					</div>
					<!-- /block -->
				</div>
				<div>
					<div>
						<!-- block -->
						<div class="block">
							<div class="navbar navbar-inner block-header">
								<div class="muted pull-left">用户</div>
								<div class="pull-right">
									<span class="badge badge-info">${countuser}</span>
									<a href="${pageContext.request.contextPath }/user/toaddUser"><button>添加用户</button></a>
								</div>
							</div>
							<div>
								<table class="table table-striped">
									<thead>
										<tr>
											<th style="text-align: center;">用户编号</th>
											<th style="text-align: center;">用户名</th>
											<c:if test="${userSession.power_id<=3 }">
											<th style="text-align: center;">密码</th>
											</c:if>
											<th style="text-align: center;">邮箱</th>
											<th style="text-align: center;">性别</th>
											<th style="text-align: center;">地址</th>
											<th style="text-align: center;">用户等级</th>
											<c:if test="${userSession.power_id<7 }">
											<th style="text-align: center;">用户操作</th>
											</c:if>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pageBean.pageData}" var="pageBean">
											<tr>
												<td style="text-align: center;">${pageBean.user_id}</td>
												<td style="text-align: center;">${pageBean.username}</td>
												<c:if test="${userSession.power_id<=3 }">
												<td style="text-align: center;">${pageBean.userpassword}</td>
												</c:if>
												<td style="text-align: center;">${pageBean.email}</td>
												<td style="text-align: center;"><c:if
														test="${pageBean.sex==0}">女</c:if> <c:if
														test="${pageBean.sex==1}">男</c:if></td>
												<td style="text-align: center;">${pageBean.address}</td>
												<td style="text-align: center;">${pageBean.power_id}</td>
												<c:if test="${userSession.power_id<7 }">
											<td style="text-align: center;"><a
													href="${pageContext.request.contextPath }/user/toeditUserInfo?user_id=${pageBean.user_id}">修改</a>|<a
													href="${pageContext.request.contextPath }/user/todeleteUser?user_id=${pageBean.user_id}">删除</a>
													
													</td>
											</c:if>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div align="center">
							<ul id="pageul">
								<!-- 上一页 -->
								<c:if test="${pageBean.currentPage!=1 }">
									<li><a
										href="${pageContext.request.contextPath }/user/toindex?currentPage=${pageBean.currentPage-1}"><button>上一页</button>
									</a></li>
								</c:if>
								<c:if test="${pageBean.currentPage==1 }">
									<li><button disabled="disabled">上一页</button></li>
								</c:if>

								<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
									<c:if test="${page!=pageBean.currentPage }">
										<li><a
											href="${pageContext.request.contextPath }/user/toindex?currentPage=${page }">${page }</a></li>
									</c:if>
									<c:if test="${page==pageBean.currentPage }">
										<li><font size="5px" color="red">${page }</font></li>
									</c:if>
								</c:forEach>
								<!-- 下一页 -->
								<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
									<li><a
										href="${pageContext.request.contextPath }/user/toindex?currentPage=${pageBean.currentPage+1}"><button>
												下一页</button></a></li>
								</c:if>
								<c:if test="${pageBean.currentPage==pageBean.totalPage }">
									<li><button disabled="disabled">下一页</button></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<footer>
		<p align="center">
			Copyright &copy; 2018.Company name All rights reserved.</a>
		</p>
		</footer>
	</div>
	<!--/.fluid-container-->
	<script
		src="${pageContext.request.contextPath }/vendors/jquery-1.9.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
	<script src="${pageContext.request.contextPath }/assets/scripts.js"></script>
	<script>
		$(function() {
			// Easy pie charts
			$('.chart').easyPieChart({
				animate : 1000
			});
		});
	</script>
</body>

</html>