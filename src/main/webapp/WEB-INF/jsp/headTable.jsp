<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>重庆汽博实业有限公司</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="重庆汽博实业_IT部_Dawn Chen.Thanks for https://github.com/caseypc's templates contributions." />
<meta name="author" content="陈晨" />
<!-- 字体 -->
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
<!-- CSS类库 -->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/select2.min.css">
<!-- CSS自定义应用 -->
<link rel="shortcut icon" href="<%=path%>/img/favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/themes/flat-blue.css">
</head>
<body class="flat-blue">
	<div class="app-container">
		<div class="row content-container">
			 <nav class="navbar navbar-default navbar-fixed-top navbar-top">
			<div class="container-fluid">
				<div class="navbar-header">
				<!-- 导航栏 -->
					<button type="button" class="navbar-expand-toggle">
						<i class="fa fa-bars icon"></i>
					</button>
					<ol class="breadcrumb navbar-breadcrumb">
						<li class="active"><!-- 写死或者动态生成非常麻烦，暂不考虑有该导航，暂留！ --></li>
					</ol>
					<button type="button"
						class="navbar-right-expand-toggle pull-right visible-xs">
						<i class="fa fa-th icon"></i>
					</button>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<!-- 个人资料信息栏 -->
					<li class="dropdown profile"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-expanded="false">${user.username}<span class="caret"></span></a>
						<ul class="dropdown-menu animated fadeInDown">
							<li class="profile-img"><img
								src="<%=path%>/img/qbzx.jpg"
								class="profile-img"></li>
							<li>
								<div class="profile-info">
									<h4 class="username">${user.username}</h4>
									<p>${user.telephone}|${user.departments}</p>
									<div class="btn-group margin-bottom-2x" role="group">
										<button type="button" class="btn btn-default">
											<a onclick="window.open('<%=path%>/personInfo?username=${user.username}')"><i class="fa fa-user"></i> 简介</a>
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
			<!-- 侧边栏 -->
			 <div class="side-menu sidebar-inverse">
				<nav class="navbar navbar-default" role="navigation">
				<div class="side-menu-container">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">
							<div class="icon fa fa-car"></div>
							<div class="title">汽博实业有限公司</div>
						</a>
						<button type="button"
							class="navbar-expand-toggle pull-right visible-xs">
							<i class="fa fa-times icon"></i>
						</button>
					</div>
					<!-- 菜单栏 -->
					<ul class="nav navbar-nav">
						<li class="active"><a href="http://www.aesc.com.cn" target="black"> <span
								class="icon fa fa-tachometer"></span><span class="title">控制台</span>
						</a></li>
						<%-- <li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-desktop111"> <span
								class="icon fa fa-desktop"></span><span class="title">系统管理(敬请期待)</span>
						</a> 
							<div id="dropdown-desktop" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="<%=path%>/Tables">敬请期待</a></li>
									</ul>
								</div>
							</div></li> --%>
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-slack"> <span
								class="icon fa fa-slack"></span><span class="title">招商部</span>
						</a> 
							<div id="dropdown-slack" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="<%=path%>/ZSBcontractLists">招商部租赁合同分类列表</a></li>
									</ul>
								</div>
							</div></li>
						<%-- <li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-group"> <span
								class="icon fa fa-group"></span><span class="title">市场部</span>
						</a> 
							<div id="dropdown-group" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="<%=path%>/zwhtLuRu">展位活动合同录入</a></li>
                                        <li><a href="<%=path%>/zwhtQuery">展位活动合同查询</a></li>
                                        <li><a href="<%=path%>/gghtLuRu">广告销售合同录入</a></li>
                                        <li><a href="<%=path%>/gghtQuery">广告销售合同查询</a></li>
									</ul>
								</div>
							</div></li>
						
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#component-cubes"> <span
								class="icon fa fa-cubes"></span><span class="title">财务部</span>
						</a> 
							<div id="component-cubes" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-graduation"> <span
								class="icon fa fa-graduation-cap"></span><span class="title">行政人事部</span>
						</a> 
							<div id="dropdown-graduation" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div></li>
						
						<li class="panel panel-default dropdown"><a
							data-toggle="collapse" href="#dropdown-binoculars"> <span
								class="icon fa fa-binoculars"></span><span class="title">工程部</span>
						</a> 
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
						</a> 
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
						</a> 
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
						</a> 
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
						</a> 
							<div id="dropdown-legal" class="panel-collapse collapse">
								<div class="panel-body">
									<ul class="nav navbar-nav">
										<li><a href="#">租赁合同</a></li>
										<li><a href="#">一般合同</a></li>
									</ul>
								</div>
							</div>
						</li>--%>
					</ul>
				</div>
			</nav>
			</div> 

			<!-- 展示内容部分。警告Warning：重要标签！！！删除后页面布局将发生重大改变！！！ -->
			<div class="container-fluid">
				<div class="side-body">
                    <div class="page-title">
                        <span class="title">合同信息列表</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">${contractInfo}</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>合同编号</th>
                                                <th>承租方名称</th>
                                                <th>签约方联系方式</th>
                                                <th>录入日期</th>
                                                <th>录入人</th>
                                                <th>操作选项</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>合同编号</th>
                                                <th>承租方名称</th>
                                                <th>签约方联系方式</th>
                                                <th>录入日期</th>
                                                <th>录入人</th>
                                                <th>操作选项</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
