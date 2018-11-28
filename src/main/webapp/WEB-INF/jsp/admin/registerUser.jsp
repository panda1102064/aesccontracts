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
				<form  action="addUser" method="post"> 
					<fieldset>
					<legend>用户注册 &nbsp;&nbsp;<span style="color: #2dbb1d;">${msg}</span></legend>
					<table>
						<tbody>
							<tr>
								<th>用户名：</th>
								<td>
									<input type="text" name="username" pattern="^[\u4e00-\u9fa5]{0,8}$" required="required" placeholder="请输入姓名"><span style="color: red;">*</span>
								</td>
							</tr>
							<tr>
								<th>密码：</th>
								<td>
									<input type="password" name="password" pattern="^[a-zA-Z]\w{5,17}$" required="required" placeholder="请输入密码"><span style="color: red;">*(字母开头，长度在6~18之间，只能包含字母、数字)</span>
								</td>
							</tr>
							<tr>
								<th>年龄：</th>
								<td>
									<input style="width:172px;" type="number" name="age" min="18" max="60" required="required" placeholder="请输入年龄18-60"><span style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<th>性别：</th>
								<td>
									<input type= "radio" name="sex" value="男" id="sexb" checked="checked"/><label style="cursor: pointer;" for ="sexb">男</label>
									<input type= "radio" name="sex" value="女" id="sexg"/><label style="cursor: pointer;" for ="sexg">女</label>
								</td>
							</tr>
							<tr>
								<th>联系方式：</th>
								<td>
									<input type="text" name="telephone" required="required" pattern="(13\d|14[57]|15[^4,\D]|17[13678]|18\d)\d{8}|170[0589]\d{7}" placeholder="请输入联系方式"><span style="color: red;">*(11位手机号格式)</span>
								</td>
							</tr>
							<tr>
								<th>生日：</th>
								<td>
									<input type="date" name="birthday" required="required" placeholder="请输入日期"><span style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<th>部门：</th>
								<td>
									<select name="departments">
										<option value="行政人事部" >行政人事部</option>
										<option value="财务部" >财务部</option>
										<option value="工程部" >工程部</option>
										<option value="物管部" >物管部</option>
										<option value="IT部" >IT部</option>
										<option value="招商运营部" >招商运营部</option>
										<option value="市场部" >市场部</option>
										<option value="加油站" >加油站</option>
										<option value="善悦" >善悦</option>
										<option value="市场管理" >市场管理</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>职位：</th>
								<td>
									<input type="text" name="positions" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$" required="required" placeholder="请输入所属职位"><span style="color: red;">*</span>
								</td>
							</tr>
							<!-- <tr>
								<th>角色权限：</th>
								pattern="[\u4e00-\u9fa5]"
								pattern="/^[a-z0-9_-]{6,18}$/"
								pattern="[1-9]\d{1}"
								pattern="(13\d|14[57]|15[^4,\D]|17[13678]|18\d)\d{8}|170[0589]\d{7}"
								pattern="(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)" 
								<td>
									<select name="permissionsid">
										<option value="1" >普通职员</option>
										<option value="2" >管理员</option>
									</select>
								</td>
							</tr> -->
							<tr style="text-align: center;">
								<td></td>
								<td>
									<button type="submit" class="btn btn-success" >提交</button>
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