<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../../headTable.jsp"></jsp:include>
				<c:forEach items="${requestScope.dslqhtList}" var="dslqhtList" varStatus="v">
					<tr>
								<td>${dslqhtList.contract_serial}</td>
								<td>${dslqhtList.merchant_name}</td>
								<td>${dslqhtList.phone}</td>
								<td>${dslqhtList.first_date}</td>
								<td>${dslqhtList.username}</td>
						<td>
							<a class="btn btn-success " onclick="window.open('<%=path%>/queryDslqhtById?contract_id=${dslqhtList.contract_id}','_blank')">详情</a>
							<a class="btn btn-danger " onclick="window.open('<%=path%>/updateDslqhtById?contract_id=${dslqhtList.contract_id}','_blank',width=500,height=400,resizable='no')">修改</a>
						</td>
					</tr>
						</c:forEach>
<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>
						
