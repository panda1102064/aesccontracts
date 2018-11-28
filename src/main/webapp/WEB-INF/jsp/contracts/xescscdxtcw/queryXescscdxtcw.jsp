<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../../headTable.jsp"></jsp:include>
						<c:forEach items="${requestScope.contractsList}" var="contractsList" varStatus="v">
					<tr>
								<td>${contractsList.contract_serial}</td>
								<td>${contractsList.merchant_name}</td>
								<td>${contractsList.second_phone}</td>
								<td>${contractsList.first_date}</td>
								<td>${contractsList.username}</td>
						<td>
							<a class="btn btn-success " onclick="window.open('<%=path%>/queryXescscdxtcwById?contract_id=${contractsList.contract_id}','_blank')">详情</a>
							<a class="btn btn-danger " onclick="window.open('<%=path%>/updateXescscdxtcwById?contract_id=${contractsList.contract_id}','_blank',width=600,height=500,resizable='no',scrollbars='no')">修改</a>
						</td>
					</tr>
						</c:forEach>
<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>
