<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重庆汽博实业有限公司</title>
</head>
<body>
	<jsp:include page="../../headTable.jsp"></jsp:include>
	<c:forEach items="${requestScope.gghtList}" var="gghtList" varStatus="v">
		<tr>
		  <td>${gghtList.contract_serial}</td>
		  <td>${gghtList.first2}</td>
		  <td>无此项信息</td>
		  <td>${gghtList.seconddate}</td>
		  <td>${gghtList.username}</td>
		  <td>
		      <a class="btn btn-success " onclick="window.open('<%=path%>/queryGghtById?contract_id=${gghtList.contract_id}')">详情</a>
		  </td>
		</tr>
    </c:forEach>
	<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>