<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=path%>/img/favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/ContractListsCss.css">
</head>
<body>
	<jsp:include page="../headpart.jsp"></jsp:include>
	<div id="div1">
		<br />
		<div class="titles h2">
			<b>请选择要操作的合同</b>
		</div>
		<br /> <br />
		<div id="div2">
			<table class="tables">
				<tbody>
				    <tr><th>汽博大厦</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">车库停车位</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dscwcktcw" >录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryDscwcktcw" >查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">室外停车位</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dscwswtcw" >录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryDscwswtcw" >查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">大厦裙楼</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dslqht" >录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/queryDslqht" >查询</a>
							</div>
						</td>
					</tr>
					<tr><th>名车广场(新能源)</th></tr>
					<tr>
                        <td class="tdcalss">
                            <div class="div3">办公室</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcbgsht" >录入</a>
                                <a class="btn btn-danger btn-sm" href="<%=path%>/queryMcgcbgsht" >查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">内场场地</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcnccdht" >录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgcnccdht" >查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">外展场</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcwzcxmb" >录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgcwzcxmb" >查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">停车场协议</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgctcc" >录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgctcc" >查询</a>
                            </div>
                        </td>
                    </tr>
                    <tr><th>新名车广场</th></tr>
					<tr>
					   <td class="tdcalss">
                            <div class="div3">展厅合同</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/exhibitionHallEntry">录入</a> <a
                                    class="btn btn-danger btn-sm" href="<%=path%>/queryExhibitionHall">查询</a>
                            </div>
                        </td>
					   <td class="tdcalss">
                            <div class="div3">停车位</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/ParkingSpaceEntry">录入</a> <a
                                    class="btn btn-danger btn-sm" href="<%=path%>/queryParkingSpace">查询</a>
                            </div>
                        </td>
					</tr>
                    <tr><th>新二手车市场</th></tr>
                    <tr>
                        <td class="tdcalss">
                            <div class="div3">地下停车位</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/xescscdxtcw" >录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryXescscdxtcw" >查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">楼顶停车位</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/xescscldtcw" >录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryXescscldtcw">查询</a>
                            </div>
                        </td>
						<td class="tdcalss">
							<div class="div3">二手车</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/esc">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/queryEsc">查询</a>
							</div>
						</td>
                    </tr>
                    <tr><th>其他车位</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">车位合同</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/cw">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/queryCw">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">配件车位</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/pjcw">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/queryPjcw">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>汽配一期</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">汽配一期门市</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpyqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpyqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">汽配一期库房</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpyqkfmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpyqkfmb">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>汽配二期</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">汽配二期门市</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpeqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpeqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">宿舍</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/ssmb">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/querySsmb">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>汽配三期</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">汽配三期门市</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpsqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpsqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">汽配三期库房</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpsqkfmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpsqkfmb">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>其他房屋租赁</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">临时用房——无物管费</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/lsyf_wwgf">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryLsyf_wwgf">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">临时用房——新增</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/luRuLinShiYongFangXinZeng">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryLuRuLinShiYongFangXinZeng">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>通用合同</th></tr>
					<tr>
					   <td class="tdcalss">
                            <div class="div3">通用合同</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/tyht">录入</a> <a
                                    class="btn btn-danger btn-sm" href="<%=path%>/queryTyht">查询</a>
                            </div>
                        </td>
					   <td class="tdcalss">
                            <div class="div3">通用合同--跨年</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/tongYongHeTongKuaNianLuRu">录入</a> <a
                                    class="btn btn-danger btn-sm" href="<%=path%>/queryTongYongHeTongKuaNian">查询</a>
                            </div>
                        </td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="../footpart.jsp"></jsp:include>
</body>
</html>