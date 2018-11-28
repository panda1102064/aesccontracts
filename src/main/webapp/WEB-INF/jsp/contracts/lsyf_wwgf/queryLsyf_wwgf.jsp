<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../../headTable.jsp"></jsp:include>
				<c:forEach items="${requestScope.lsyf_wwgf}" var="lsyf_wwgf" varStatus="v">
					<tr>
								<td>${lsyf_wwgf.contract_serial}</td>
								<td>${lsyf_wwgf.merchant_name}</td>
								<td>${lsyf_wwgf.phone}</td>
								<td>${lsyf_wwgf.first_date}</td>
								<td>${lsyf_wwgf.username}</td>
						<td>
							<a class="btn btn-success " onclick="window.open('<%=path%>/querylsyf_wwgfById?contract_id=${lsyf_wwgf.contract_id}','_blank')">详情</a>
							<a class="btn btn-danger " onclick="window.open('<%=path%>/updatelsyf_wwgfById?contract_id=${lsyf_wwgf.contract_id}','_blank',width=500,height=400,resizable='no',scrollbars='no')">修改</a>
						</td>
					</tr>
						</c:forEach>
<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>

