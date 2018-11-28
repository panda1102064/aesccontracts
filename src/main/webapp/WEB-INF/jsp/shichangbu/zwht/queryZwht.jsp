<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="../../headTable.jsp"></jsp:include>
                <c:forEach items="${requestScope.zwhtList}" var="zwhtList" varStatus="v">
                    <tr>
                                <td>${zwhtList.contract_serial}</td>
                                <td>${zwhtList.first2}</td>
                                <td>无此项信息</td>
                                <td>${zwhtList.seconddate}</td>
                                <td>${zwhtList.username}</td>
                        <td>
                            <a class="btn btn-success " onclick="window.open('<%=path%>/queryZwhtById?contract_id=${zwhtList.contract_id}')">详情</a>
                        </td>
                    </tr>
                        </c:forEach>
<jsp:include page="../../footTable.jsp"></jsp:include>
</body>
</html>
