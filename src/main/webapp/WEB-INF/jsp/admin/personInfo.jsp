<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重庆汽博实业有限公司</title>
</head>
<body>
	<jsp:include page="../headpart.jsp"></jsp:include>
		<div style="width:35%; margin:auto;margin-top:150px;">
				<form  action="updateUserInfo" method="post"> 
					<fieldset>
					<legend>用户信息 &nbsp;&nbsp;<span style="color: #2dbb1d;">${msg}</span></legend>
					<table>
						<tbody>
							<tr>
								<th>用户名：</th>
								<td>
									<input type="text" name="username" value="${userInfo.username}" readonly="readonly" />
								</td>
							</tr>
							<tr>
								<th>密码：</th>
								<td>
									<input type="password" name="password" pattern="^[a-zA-Z]\w{5,17}$" required="required" placeholder="请输入密码"><span style="color: red;">*(字母开头+数字，长度大于6)</span>
								</td>
							</tr>
							<tr>
								<th>年龄：</th>
								<td>
									<input type="text" value="${userInfo.age}" readonly="readonly" />
								</td>
							</tr>
							<tr>
								<th>性别：</th>
								<td>
									<input type="text" value="${userInfo.sex}" readonly="readonly" />
								</td>
							</tr>
							<tr>
								<th>联系方式：</th>
								<td>
									<input type="text" name="telephone" value="${userInfo.telephone}" required="required" pattern="(13\d|14[5789]|15[^4\D]|17[^49\D]|18\d|16[56]|19[1890])\d{8}" placeholder="请输入联系方式"><span style="color: red;">*(11位手机号格式)</span>
								</td>
							</tr>
							<tr>
								<th>生日：</th>
								<td>
									${userInfo.birthday}
								</td>
							</tr>
							<tr>
								<th>注册时间：</th>
								<td>
									${userInfo.createtime}
								</td>
							</tr>
							<tr>
								<th>部门：</th>
								<td>
									<input type="text" value="${userInfo.departments}" readonly="readonly" />
								</td>
							</tr>
							<tr>
								<th>职位：</th>
								<td>
									<input type="text" value="${userInfo.positions}" readonly="readonly" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td></td>
								<td>
									<button type="submit" class="btn btn-success" >修改</button>
								</td>
							</tr>
						</tbody>
					</table>
					</fieldset>
					<input type="hidden" name="status" value="1" />
				</form>
         </div>   
	<jsp:include page="../footpart.jsp"></jsp:include>
</body>
</html>