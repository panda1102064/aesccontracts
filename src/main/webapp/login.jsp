<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="zh-CN" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="zh-CN" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="zh-CN" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="zh-CN" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="zh-CN" class="no-js"> <!--<![endif]-->
<head>
	<meta charset="UTF-8" />
	<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
	<title>重庆汽博中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="robots" content="none"/> 
	<meta name="description" content="重庆汽博实业_IT部_Dawn" />
	<meta name="author" content="陈晨" />
	<link rel="shortcut icon" href="<%=path%>/img/favicon.ico"> 
	<link rel="stylesheet" type="text/css" href="<%=path%>/logincss/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/logincss/css/style.css" />
</head>
<body>
	<div class="container">
	    <section>				
	        <div id="container_demo" >
	            <div id="wrapper">
	                <div id="login" class="animate form">
	                    <form  action="login" method="post"> 
	                        <h3>重庆汽博合同管理系统</h3> 
	                        <p> 
	                            <label for="username" class="uname" data-icon="u" > 用户名： </label>
	                            <input id="username" name="username" pattern="^[\u4e00-\u9fa5]{0,8}$" required="required" type="text" placeholder="请输入您的用户名"/>
	                        </p>
	                        <p> 
	                            <label for="password" class="youpasswd" data-icon="p"> 密码： </label>
	                            <input id="password" name="password" pattern="^[a-zA-Z]\w{5,17}$" required="required" type="password" placeholder="请输入您的密码 " /> 
	                        </p>
	                        <!-- <p class="keeplogin"> 
								<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
								<label for="loginkeeping">记住密码</label>
							</p> -->
					        <p class="login button"> 
					        	<input type="submit" value="登录" /> 
							</p>
	                    </form>
	                </div>
	            </div>
	        </div>  
	    </section>
	</div>
<nav class="codrops-demos">
	<span>地址：重庆北部新区金渝大道99号   电话：023-89189988   传真：023-89189988  <a href="http://www.aesc.com.cn/" target="_blank">重庆汽博</a> Copyright ©  版权所有     渝ICP备13003553号</span>
</nav>
<script src="http://open.sojson.com/common/js/canvas-nest.min.js" count="177" zindex="-2" opacity="0.7" color="47,135,193" type="text/javascript"> 
</script> 
</body>
</html>