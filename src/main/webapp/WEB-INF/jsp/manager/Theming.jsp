<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
    <title>重庆汽博实业有限公司</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/themes/flat-blue.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/themes/flat-green.css">
</head>
<body class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <nav id="navbar" class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li>系统管理</li>
                            <li class="active">主题设置</li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
					<li class="dropdown profile"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-expanded="false">${user.username}<span class="caret"></span></a>
						<ul class="dropdown-menu animated fadeInDown">
							<li class="profile-img"><img
								src="<%=path%>/img/profile/picjumbo.com_HNCK4153_resize.jpg"
								class="profile-img"></li>
							<li>
								<div class="profile-info">
									<h4 class="username">${user.username}</h4>
									<p>smolky7@gmail.com|IT部</p>
									<div class="btn-group margin-bottom-2x" role="group">
										<button type="button" class="btn btn-default">
											<i class="fa fa-user"></i> 简介
										</button>
										<button type="button" class="btn btn-default">
											<a href="<%=path%>/logOut"><i class="fa fa-sign-out"></i> 退出</a>
										</button>
									</div>
								</div>
							</li>
						</ul>
					</li>
				</ul>
            </div>
            </nav>
            <div id="sidebar" class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="side-menu-container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">
							<div class="icon fa fa-paper-plane"></div>
							<div class="title">汽博实业有限公司</div>
						</a>
						<button type="button"
							class="navbar-expand-toggle pull-right visible-xs">
							<i class="fa fa-times icon"></i>
						</button>
					</div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html"> <span
								class="icon fa fa-tachometer"></span><span class="title">控制台</span>
						</a></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-desktop"> <span
								class="icon fa fa-desktop"></span><span class="title">系统管理(敬请期待)</span>
						</a> 
							<div id="dropdown-desktop" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="<%=path%>/Theming">主题设置</a></li>
										<li><a href="<%=path%>/Tables">敬请期待</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-slack"> <span
								class="icon fa fa-slack"></span><span class="title">招商部</span>
						</a> 
							<div id="dropdown-slack" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="<%=path%>/ZSBcontractLists">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-group"> <span
								class="icon fa fa-group"></span><span class="title">市场部</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-group" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>

						<!-- Dropdown-->
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#component-cubes"> <span
								class="icon fa fa-cubes"></span><span class="title">财务部</span>
						</a> <!-- Dropdown level 1 -->
							<div id="component-cubes" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<!-- Dropdown-->
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-graduation"> <span
								class="icon fa fa-graduation-cap"></span><span class="title">行政人事部</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-graduation" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<!-- Dropdown-->
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-binoculars"> <span
								class="icon fa fa-binoculars"></span><span class="title">工程部</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-binoculars" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-windows"> <span
								class="icon fa fa-windows"></span><span class="title">IT部</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-windows" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-ambulance"> <span
								class="icon fa fa-ambulance"></span><span class="title">加油站</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-ambulance" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-cab"> <span
								class="icon fa fa-cab"></span><span class="title">善悦</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-cab" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-legal"> <span
								class="icon fa fa-legal"></span><span class="title">市场管理</span>
						</a> <!-- Dropdown level 1 -->
							<div id="dropdown-legal" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div>
						</li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">主题</span>
                        <div class="description">色彩选择和主题布局配置</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">主题</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                  <p>请选择您的导航栏和侧边栏的颜色.</p>
                                  <div class="sub-title">导航栏</div>
                                  <div>
                                    <div class="radio3 radio-check radio-inline">
                                      <input type="radio" id="radio1" name="radio-navbar" value="default" checked="">
                                      <label for="radio1">
                                     白色
                                      </label>
                                    </div>
                                    <div class="radio3 radio-check radio-inline">
                                      <input type="radio" id="radio2" name="radio-navbar" value="inverse">
                                      <label for="radio2">
                                        黑色
                                      </label>
                                    </div>
                                  </div>
                                  <div class="sub-title">侧边菜单栏</div>
                                  <div>
                                    <div class="radio3 radio-check radio-inline">
                                      <input type="radio" id="radio3" name="radio-sidebar" value="default">
                                      <label for="radio3">
                                      白色
                                      </label>
                                    </div>
                                    <div class="radio3 radio-check radio-inline">
                                      <input type="radio" id="radio4" name="radio-sidebar" value="inverse" checked="">
                                      <label for="radio4">
                                         黑色
                                      </label>
                                    </div>
                                  </div>
                                  <div class="sub-title">颜色选择</div>
                                  <div>
                                    <div class="radio3 radio-check radio-inline">
                                      <input type="radio" id="radio-blue" name="radio-color" value="blue" checked="">
                                      <label for="radio-blue">
                                         蓝色 
                                      </label>
                                    </div>
                                    <div class="radio3 radio-check radio-success radio-inline">
                                      <input type="radio" id="radio-green" name="radio-color" value="green">
                                      <label for="radio-green">
                                        绿色
                                      </label>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="app-footer">
		<div class="wrapper">
			<span class="pull-right"><a href="#"><i class="fa fa-long-arrow-up">回到顶部</i></a>
		</div>
		</footer>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/Chart.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap-switch.min.js"></script>

    <script type="text/javascript" src="<%=path%>/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="<%=path%>/js/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="<%=path%>/js/select2.full.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/ace/ace.js"></script>
    <script type="text/javascript" src="<%=path%>/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="<%=path%>/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="<%=path%>/js/app.js"></script>
    <script type="text/javascript" src="<%=path%>/js/theming.js"></script>
    <!-- Javascript -->
</body>

</html>
