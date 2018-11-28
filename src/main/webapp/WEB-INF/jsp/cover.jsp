<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--  <%@include file="base.jsp"%> --%>
    <% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重庆汽博实业有限公司</title>
<style type="text/css">
			#logo1{
				width: 450px;
				margin: 0 auto;
				padding: 0px;
			}
			
			.htid{
			   position:inherit;
			   top:100px; 
			}
</style>
</head>
<body>
	<img src="<%=path%>/img/logo.png" width="270px" height="60px" style="position:relative ;"/>
	<img src="<%=path%>/img/wx.jpg" width="100px;" height="100px;"  style="float: right;"/>
	<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
	<p class="htid" >合同号：<u> ${aesc.contract_serial} 号   </u></p><br />
	<div id="logo1">
		<div style="margin-top: 320px;">
			<h1>&nbsp;&nbsp;&nbsp;重庆汽博实业有限公司</h1>
			<h1>商业用房（场地）租赁合同</h1>
		</div>
	</div>
</body>
</html>