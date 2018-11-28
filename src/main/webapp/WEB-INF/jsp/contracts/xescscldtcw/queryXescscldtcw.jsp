<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../../headTable.jsp"></jsp:include>
						<c:forEach items="${requestScope.xescscldtcwList}" var="xescscldtcwList" varStatus="v">
					<tr>
								<td>${xescscldtcwList.contract_serial}</td>
								<td>${xescscldtcwList.merchant_name}</td>
								<td>${xescscldtcwList.second_phone}</td>
								<td>${xescscldtcwList.first_date}</td>
								<td>${xescscldtcwList.username}</td>
						<td>
							<a class="btn btn-success " onclick="window.open('<%=path%>/queryXescscldtcwById?contract_id=${xescscldtcwList.contract_id}','_blank')">详情</a>
							<a class="btn btn-danger " onclick="window.open('<%=path%>/updateXescscldtcwById?contract_id=${xescscldtcwList.contract_id}','_blank',width=600,height=500,resizable='no',scrollbars='no')">修改</a>
						</td>
					</tr>
						</c:forEach>
<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>

						
