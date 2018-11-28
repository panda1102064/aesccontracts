<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/ContractListsCss.css">
</head>
<body>
	<jsp:include page="../headpart.jsp"></jsp:include>
	<div id="div1">
		<br />
		<div class="titles h3">
			<b> 请选择你要操作的合同信息</b>
		</div>
		<br /> <br />
		<div id="div2">
			<table class="tables">
				<tbody>
				    <tr><th>大厦</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">大厦车位车库停车位</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dscwcktcw" target="_blank">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryDscwcktcw" target="_blank">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">大厦车位室外停车位</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dscwswtcw" target="_blank">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryDscwswtcw" target="_blank">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">大厦裙楼合同</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/dslqht"target="_blank">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/queryDslqht"target="_blank">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>名车广场</th></tr>
					<tr>
                        <td class="tdcalss">
                            <div class="div3">名车广场办公室合同</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcbgsht"target="_blank">录入</a>
                                <a class="btn btn-danger btn-sm" href="<%=path%>/queryMcgcbgsht"target="_blank">查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">名车广场内场场地合同</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcnccdht"target="_blank">录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgcnccdht"target="_blank">查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">名车广场外展场新模版</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgcwzcxmb"target="_blank">录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgcwzcxmb"target="_blank">查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">名车广场停车场协议</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/mcgctcc"target="_blank">录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryMcgctcc"target="_blank">查询</a>
                            </div>
                        </td>
                    </tr>
                    <tr><th>新二手车</th></tr>
                    <tr>
                        <td class="tdcalss">
                            <div class="div3">新二手车市场地下停车位</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/xescscdxtcw"target="_blank">录入</a>
                                <a class="btn btn-danger btn-sm"
                                    href="<%=path%>/queryXescscdxtcw"target="_blank">查询</a>
                            </div>
                        </td>
                        <td class="tdcalss">
                            <div class="div3">新二手车市场楼顶停车位</div>
                            <div class="div4">
                                <a class="btn btn-info btn-sm" href="<%=path%>/xescscldtcw">录入</a>
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
							<div class="div3">汽配一期门市模板</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpyqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpyqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">汽配一期库房模板</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpyqkfmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpyqkfmb">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>汽配二期</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">汽配二期门市模板</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpeqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpeqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">宿舍模板</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/ssmb">录入</a> <a
									class="btn btn-danger btn-sm" href="<%=path%>/querySsmb">查询</a>
							</div>
						</td>
					</tr>
					<tr><th>汽配三期</th></tr>
					<tr>
						<td class="tdcalss">
							<div class="div3">汽配三期门市模板</div>
							<div class="div4">
								<a class="btn btn-info btn-sm" href="<%=path%>/qpsqmsmb">录入</a>
								<a class="btn btn-danger btn-sm" href="<%=path%>/queryQpsqmsmb">查询</a>
							</div>
						</td>
						<td class="tdcalss">
							<div class="div3">汽配三期库房模板</div>
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