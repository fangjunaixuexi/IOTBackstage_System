<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>表单提交页面</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/assets/styles.css" rel="stylesheet" media="screen">
        <script src="${pageContext.request.contextPath }/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">BootAdmin</a>
                   <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i>管理员<i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">个人资料</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="login.html">退出</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                                <a href="#">首页</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">设置 <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="#">工具 <i class="icon-arrow-right"></i>

                                        </a>
                                        <ul class="dropdown-menu sub-menu">
                                            <li>
                                                <a href="#">报表</a>
                                            </li>
                                            <li>
                                                <a href="#">日志</a>
                                            </li>
                                            <li>
                                                <a href="#">错误</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">SEO设置</a>
                                    </li>
                                    <li>
                                        <a href="#">其他链接</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">其他链接</a>
                                    </li>
                                    <li>
                                        <a href="#">其他链接</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">内容 <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">博客</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">新闻</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">定制页面</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">日历</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="#">答疑</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">用户 <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">用户列表</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">搜索</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">权限</a>
                                    </li>
                                </ul>
                            </li>
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
					<li ><a href="${pageContext.request.contextPath }/user/toindex"><i
							class="icon-chevron-right"></i> 首页</a></li>
					<li><a href="calendar.html"><i class="icon-chevron-right"></i>
							日历</a></li>
					<li><a href="stats.html"><i class="icon-chevron-right"></i>
							统计图表</a></li>
					<li class="active"><a href="${pageContext.request.contextPath }/user/toenvironment"><i class="icon-chevron-right"></i>
							环境监控</a></li>
					<li><a href="${pageContext.request.contextPath }/user/tosafety"><i class="icon-chevron-right"></i>
							安全帽定位</a></li>
					<li><a href="buttons.html"><i class="icon-chevron-right"></i>
							按钮 & 图标</a></li>
					<li><a href="editors.html"><i class="icon-chevron-right"></i>
							编辑器</a></li>
					<li><a href="interface.html"><i class="icon-chevron-right"></i>
							UI界面</a></li>
					<li><a href="#"><span
							class="badge badge-success pull-right">731</span> 订单</a></li>
					<li><a href="#"><span
							class="badge badge-success pull-right">812</span> 清单</a></li>
					<li><a href="#"><span class="badge badge-info pull-right">27</span>
							客户</a></li>
					<li><a href="#"><span class="badge badge-info pull-right">1,234</span>
							用户</a></li>
					<li><a href="#"><span class="badge badge-info pull-right">2,221</span>
							消息</a></li>
					<li><a href="#"><span class="badge badge-info pull-right">11</span>
							报告</a></li>
					<li><a href="#"><span
							class="badge badge-important pull-right">83</span> 错误</a></li>
					<li><a href="#"><span
							class="badge badge-warning pull-right">4,231</span> 日志</a></li>
				</ul>
                </div>
                <!--/span-->
                <div class="span10" id="content">
                      <!-- morris stacked chart -->
                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Form Example</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                     <form class="form-horizontal">
                                      <fieldset>
                                        <legend>Form Horizontal</legend>
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">Focused input</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused...">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label">Uneditable input</label>
                                          <div class="controls">
                                            <span class="input-xlarge uneditable-input">Some value here</span>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="disabledInput">Disabled input</label>
                                          <div class="controls">
                                            <input class="input-xlarge disabled" id="disabledInput" type="text" placeholder="Disabled input here..." disabled="">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="optionsCheckbox2">Disabled checkbox</label>
                                          <div class="controls">
                                            <label>
                                              <input type="checkbox" id="optionsCheckbox2" value="option1" disabled="">
                                              This is a disabled checkbox
                                            </label>
                                          </div>
                                        </div>
                                        <div class="control-group warning">
                                          <label class="control-label" for="inputError">Input with warning</label>
                                          <div class="controls">
                                            <input type="text" id="inputError">
                                            <span class="help-inline">Something may have gone wrong</span>
                                          </div>
                                        </div>
                                        <div class="control-group error">
                                          <label class="control-label" for="inputError">Input with error</label>
                                          <div class="controls">
                                            <input type="text" id="inputError">
                                            <span class="help-inline">Please correct the error</span>
                                          </div>
                                        </div>
                                        <div class="control-group success">
                                          <label class="control-label" for="inputError">Input with success</label>
                                          <div class="controls">
                                            <input type="text" id="inputError">
                                            <span class="help-inline">Woohoo!</span>
                                          </div>
                                        </div>
                                        <div class="control-group success">
                                          <label class="control-label" for="selectError">Select with success</label>
                                          <div class="controls">
                                            <select id="selectError">
                                              <option>1</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>
                                            <span class="help-inline">Woohoo!</span>
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <button type="submit" class="btn btn-primary">Save changes</button>
                                          <button type="reset" class="btn">Cancel</button>
                                        </div>
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                     <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Form Example</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal">
                                      <fieldset>
                                        <legend>Form Components</legend>
                                        <div class="control-group">
                                          <label class="control-label" for="typeahead">Text input </label>
                                          <div class="controls">
                                            <input type="text" class="span6" id="typeahead"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>
                                            <p class="help-block">Start typing to activate auto complete!</p>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="date01">Date input</label>
                                          <div class="controls">
                                            <input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
                                            <p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="optionsCheckbox">Checkbox</label>
                                          <div class="controls">
                                            <label class="uniform">
                                              <input class="uniform_on" type="checkbox" id="optionsCheckbox" value="option1">
                                              Option one is this and that&mdash;be sure to include why it's great
                                            </label>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="select01">Select list</label>
                                          <div class="controls">
                                            <select id="select01" class="chzn-select">
                                              <option>something</option>
                                              <option>2</option>
                                              <option>3</option>
                                              <option>4</option>
                                              <option>5</option>
                                            </select>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="multiSelect">Multicon-select</label>
                                          <div class="controls">
                                            <select multiple="multiple" id="multiSelect" class="chzn-select span4">
                                              <option>Alabama</option><option>Alaska</option><option>Arizona</option><option>Arkansas</option><option>California</option><option>Colorado</option><option>Connecticut</option><option>Delaware</option><option>District Of Columbia</option><option>Florida</option><option>Georgia</option><option>Hawaii</option><option>Idaho</option><option>Illinois</option><option>Indiana</option><option>Iowa</option><option>Kansas</option><option>Kentucky</option><option>Louisiana</option><option>Maine</option><option>Maryland</option><option>Massachusetts</option><option>Michigan</option><option>Minnesota</option><option>Mississippi</option><option>Missouri</option><option>Montana</option><option>Nebraska</option><option>Nevada</option><option>New Hampshire</option><option>New Jersey</option><option>New Mexico</option><option>New York</option><option>North Carolina</option><option>North Dakota</option><option>Ohio</option><option>Oklahoma</option><option>Oregon</option><option>Pennsylvania</option><option>Rhode Island</option><option>South Carolina</option><option>South Dakota</option><option>Tennessee</option><option>Texas</option><option>Utah</option><option>Vermont</option><option>Virginia</option><option>Washington</option><option>West Virginia</option><option>Wisconsin</option><option>Wyoming</option>
                                            </select>
                                            <p class="help-block">Start typing to activate auto complete!</p>
                                          </div>

                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">File input</label>
                                          <div class="controls">
                                            <input class="input-file uniform_on" id="fileInput" type="file">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="textarea2">Textarea WYSIWYG</label>
                                          <div class="controls">
                                            <textarea class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px"></textarea>
                                          </div>
                                        </div>
                                        <div class="form-actions">
                                          <button type="submit" class="btn btn-primary">Save changes</button>
                                          <button type="reset" class="btn">Cancel</button>
                                        </div>
                                      </fieldset>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                     <!-- wizard -->
                    <div class="row-fluid section">
                         <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Form Wizard</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <div id="rootwizard">
                                        <div class="navbar">
                                          <div class="navbar-inner">
                                            <div class="container">
                                        <ul>
                                            <li><a href="#tab1" data-toggle="tab">Step 1</a></li>
                                            <li><a href="#tab2" data-toggle="tab">Step 2</a></li>
                                            <li><a href="#tab3" data-toggle="tab">Step 3</a></li>
                                        </ul>
                                         </div>
                                          </div>
                                        </div>
                                        <div id="bar" class="progress progress-striped active">
                                          <div class="bar"></div>
                                        </div>
                                        <div class="tab-content">
                                            <div class="tab-pane" id="tab1">
                                               <form class="form-horizontal">
                                                  <fieldset>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Name</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Email</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Phone</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                  </fieldset>
                                                </form>
                                            </div>
                                            <div class="tab-pane" id="tab2">
                                                <form class="form-horizontal">
                                                  <fieldset>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Address</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">City</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">State</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                  </fieldset>
                                                </form>
                                            </div>
                                            <div class="tab-pane" id="tab3">
                                                <form class="form-horizontal">
                                                  <fieldset>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Company Name</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Contact Name</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                    <div class="control-group">
                                                      <label class="control-label" for="focusedInput">Contact Phone</label>
                                                      <div class="controls">
                                                        <input class="input-xlarge focused" id="focusedInput" type="text" value="">
                                                      </div>
                                                    </div>
                                                  </fieldset>
                                                </form>
                                            </div>
                                            <ul class="pager wizard">
                                                <li class="previous first" style="display:none;"><a href="javascript:void(0);">First</a></li>
                                                <li class="previous"><a href="javascript:void(0);">Previous</a></li>
                                                <li class="next last" style="display:none;"><a href="javascript:void(0);">Last</a></li>
                                                <li class="next"><a href="javascript:void(0);">Next</a></li>
                                                <li class="next finish" style="display:none;"><a href="javascript:;">Finish</a></li>
                                            </ul>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                </div>
            </div>
            <hr>
            <footer>
                <p align="center">Copyright &copy; 2018.Company name All rights reserved.</a></p>
            </footer>
        </div>
        <!--/.fluid-container-->
        <link href="${pageContext.request.contextPath }/vendors/datepicker.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/vendors/uniform.default.css" rel="stylesheet" media="screen">
        <link href="${pageContext.request.contextPath }/vendors/chosen.min.css" rel="stylesheet" media="screen">

        <link href="${pageContext.request.contextPath }/vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

        <script src="${pageContext.request.contextPath }/vendors/jquery-1.9.1.js"></script>
        <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/vendors/jquery.uniform.min.js"></script>
        <script src="${pageContext.request.contextPath }/vendors/chosen.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath }/vendors/bootstrap-datepicker.js"></script>

        <script src="${pageContext.request.contextPath }/vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
        <script src="${pageContext.request.contextPath }/vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

        <script src="${pageContext.request.contextPath }/vendors/wizard/jquery.bootstrap.wizard.min.js"></script>


        <script src="${pageContext.request.contextPath }/assets/scripts.js"></script>
        <script>
        $(function() {
            $(".datepicker").datepicker();
            $(".uniform_on").uniform();
            $(".chzn-select").chosen();
            $('.textarea').wysihtml5();

            $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#rootwizard').find('.bar').css({width:$percent+'%'});
                // If it's the last tab then hide the last button and show the finish instead
                if($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            }});
            $('#rootwizard .finish').click(function() {
                alert('Finished!, Starting over!');
                $('#rootwizard').find("a[href*='tab1']").trigger('click');
            });
        });
        </script>
    </body>

</html>