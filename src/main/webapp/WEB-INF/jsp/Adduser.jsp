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
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="icon-user"></i>管理员<i class="caret"></i>

						</a>
							<ul class="dropdown-menu">

								<li class="divider"></li>
								<li><a tabindex="-1"
									href="${pageContext.request.contextPath }/user/tologin">退出</a>
								</li>
							</ul></li>
					</ul>
					
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
								<li><a href="#">添加用户</a> <span class="divider">/</span></li>

							</ul>
						</div>
					</div>
				</div>
				<!-- block -->
				<div class="block">
					<div class="navbar navbar-inner block-header">
						<div class="muted pull-left">用户数据</div>
					</div>
					<div class="block-content collapse in">
						<div class="span12">
							<form class="form-horizontal"
								action="${pageContext.request.contextPath }/user/toinsertUser"
								method="post" accept-charset="UTF-8" onsubmit="return check()">
								<fieldset>
									<legend>个人信息</legend>
									<div class="control-group">
										<label class="control-label" for="focusedInput"
											style="text-align: center;">用户名</label>
										<div class="controls">
											<input class="input-xlarge focused" name="username"
												id="username" type="text" >
											<span class="help-inline">*</span>
											<span id="checktext1"></span>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="inputError">用户密码</label>
										<div class="controls">
											<input type="text" name="userpassword" id="userpassword"
											> <span
												class="help-inline">-</span>
												<span id="checktext2"></span>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="inputError">用户邮箱</label>
										<div class="controls">
											<input type="text" name="email" id="email"
												> <span
												class="help-inline">-</span>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="selectError">用户性别</label>
										<div class="controls">
											<select name="sex" id="sex">
												<option value="1">男
												</option>
												<option value="0">女</option>
											</select>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="inputError">用户地址</label>
										<div class="controls">
											<input type="text" name="address" id="address"
												> <span
												class="help-inline">-</span>
										</div>
									</div>
									<div class="control-group success">
										<label class="control-label" for="selectError">设备等级</label>
										<div class="controls">
											<select name="power_id" id="power_id">
												<option selected="selected">7</option>
												<c:if test="${userSession.power_id<=6 }">
												<c:if test="${userSession.power_id<=5 }">
												<c:if test="${userSession.power_id<=4 }">
												<c:if test="${userSession.power_id<=3 }">
												<c:if test="${userSession.power_id<=2 }">
												<c:if test="${userSession.power_id==1 }">
												<option>2</option>
												</c:if>
												<option>3</option>
												</c:if>
												<option>4</option>
												</c:if>
												<option>5</option>
												</c:if>
												<option>6</option>
												</c:if>
												<option>7</option>
												</c:if>
											</select>
										</div>
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary">Add</button>
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
	function checkname() {
		var check=false;
		var username=document.getElementById("username").value;
		if (username.length<2||username.length>8){
			document.getElementById("checktext1").innerHTML = "  用户名长度必须在2-8个字符之间";  
			check=false;
		}  else {/*
			doucument.getElementById("checktext1").innerHTML="  √";
			check=true;
		*/
		check=true;
		}
		return check; 
	}  
	function checkpswd(){
		var check=false;
		var userpassword=document.getElementById("userpassword").value;
	    var reg = /^[0-9a-zA-Z]+$/;
	    if(userpassword==null||userpassword==""){
	    	document.getElementById("checktext2").innerHTML="  密码不能为空"
	    		 check=false;
	    }else{
	    	  if(!reg.test(userpassword)){
	  	    	document.getElementById("checktext2").innerHTML="  密码只能由大小英文字母和数字组成"
	  	    		 check=false;
	  	    }/* else{
	  			doucument.getElementById("checktext2").innerHTML="  √";		
	  			
	  	    } */
	  	    check=true;
	    }
	    return check;
	}
	function check(){
		var check=checkname()&&checkpswd();
		return check;
	}
	
	
	</script>

</body>

</html>