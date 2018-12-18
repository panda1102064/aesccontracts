<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<head>
	<title>汽博新名车广场地下停车库租赁协议</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
</head>
	<body>
<jsp:include page="../../headpart.jsp"></jsp:include>
		<div id="wrap">
		<form action="updateParkingSpace" method="post">
			<p><img src="<%=path%>/img/logo.png" width="270px;" height="50px;"/></p>
			<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial"value="${aesc.contract_serial}" /></p>
			<p>&nbsp;</p><p>&nbsp;</p>
			<p><h2 style="color:#3fc712; text-align:center;">${msg}</h2></p>
			<h3 style="text-align: center; ">
				<select id="slt2" name="contract_title2">
					<option value="新名车广场地下停车库租赁协议">新名车广场地下停车库租赁协议</option>
					<option value="新名车广场正大门前车位租赁协议">新名车广场正大门前车位租赁协议</option>
				</select>
			</h3>
			<p>&nbsp;</p><p>&nbsp;</p>
			<p>出租方[以下简称甲方]: <u>重庆汽博实业有限公司 </u></p><br />
			<p>承租方[以下简称乙方]: <input class=".col-xs-6 form-control" type="text" name="merchant_name" value="${aesc.merchant_name}"/></p>
			<br />
			<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方
			<select id="slt3" name="contract_title3">
					<option value="新名车广场地下停车库停车位">新名车广场地下停车库停车位</option>
					<option value="新名车广场正大门前停车位">新名车广场正大门前停车位</option>
			</select>一事达成如下协议：</p>
			<p>&nbsp;&nbsp;一、甲方向乙方提供<input required="required" name="offer" class="form-control" type="text" value="${aesc.offer}" />，该车位用于<input required="required" class="dtkz" type="text" name="purpose" value="${aesc.purpose}" />停放，车牌号为：<input required="required" class="dtkz" type="text" name="plate" value="${aesc.plate}" /> ，该停车区位于
			<select id="slt4" name="contract_title4">
					<option value="新名车广场负二楼地下车库内">新名车广场负二楼地下车库内</option>
					<option value="新名车广场正大门前停车位">新名车广场正大门前停车位</option>
			</select>。</p>
			<p>&nbsp;&nbsp;二、租赁期限及场地使用服务费：</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;1、合同期从<input required="required" id="year_start" name="year_start" class="dtkzNum" type="text" value="${aesc.year_start}" />年<input required="required" class="dtkzNum" type="text" name="month_start" value="${aesc.month_start}" />月 <input required="required" class="dtkzNum" type="text" name="day_start" value="${aesc.day_start}" />日至 <input required="required" class="dtkzNum" type="text" id="year_end" name="year_end"value="${aesc.year_end}" />年<input required="required" class="dtkzNum" type="text" name="month_end" value="${aesc.month_end}" />月 <input required="required" class="dtkzNum" type="text" name="day_end" value="${aesc.day_end}" />日止。</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;2、服务费为：<input required="required" type="text" class="dtkzNum" name="service_charge" value="${aesc.service_charge}" />元/个/月，每月共计： <input required="required" type="text" class="dtkzNum" name="total" value="${aesc.total}" />元（大写： <input required="required" class="dtkz" name="numeral_sed" type="text" value="${aesc.numeral_sed}" />元整 ）。</p>
			<p>&nbsp;&nbsp;三、计租时间及相关费用计算时间：从<input required="required" id="year_rd" name="year_rd" class="dtkzNum" type="text" value="${aesc.year_rd}" />年 <input required="required" class="dtkzNum" type="text" name="month_rd" value="${aesc.year_rd}" />月 <input required="required" class="dtkzNum" type="text"  name="day_rd" value="${aesc.day_rd}" />日起算。</p>
			<p>&nbsp;&nbsp;四、乙方须按 <input required="required" name="payment_way" class="dtkz" type="text" value="${aesc.payment_way}" />向甲方交付车辆停放场地使用服务费，甲方应提供相关正规发票，交款时间为<input required="required" type="text" class="form-control" name="payment_time" value="${aesc.payment_time}" />的服务费。乙方每逾期一日，甲方有权将按照应交款总额的0.5%收取乙方的滞纳金。逾期时间超过15日的，甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。同时，甲方有权不让乙方车辆进出新名车广场地下停车库，直到乙方所欠费用结清。</p>
			<p>&nbsp;&nbsp;五、乙方应向甲方支付履约保证金：￥<input required="required" name="cash_deposit" class="dtkzNum" type="text" value="${aesc.cash_deposit}" />元（大写）<input required="required" class="dtkz" type="text" name="numeral_five" value="${aesc.numeral_five}" />元整 ，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其它违反合同约定行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，但不计算利息。</p>
			<p>&nbsp;&nbsp;六、甲方收取的费用仅限于乙方车辆停放所占用场地使用服务费，不包含车辆外观及车内物品保管。甲方只负责乙方的整车安全，即：乙方车辆不被偷盗。</p>
			<p>&nbsp;&nbsp;七、协议期满，乙方若需继续使用，应在协议到期前15天到汽博中心招商部运营办理续租手续；否则，将视为乙方放弃优先续租权，协议自动终止后，甲方有权将该车位转租他人，且不需对乙方另行通知。</p>
			<p>&nbsp;&nbsp;八、若协议到期后乙方仍未办理续租手续，车辆也未驶离车库，则甲方将按临时停车位收费(20元/车/天),乙方不得以任何理由拒付停车费。否则，在乙方未完清所有费用之前，甲方有权禁止乙方车辆离场。</p>
			<p>&nbsp;&nbsp;九、乙方在停车区域内须按明确的租赁车位对号停车，不得乱停乱放，占用道路或他人停车位。车辆的进出必须服从当值保安人员的指挥，及配合甲方的统一管理。若乙方不按规定停车，造成的一切后果由乙方自行承担。</p>
			<p>&nbsp;&nbsp;十、若涉及到该场地整体改造或甲方临时需占用等客观原因，甲方将收回该场地时，需要提前一周以书面形式通知乙方，乙方将在5日内与甲方友好协商并配合甲方的统一管理。其中所涉及的费用按乙方实际使用时间结算。</p>
			<p>&nbsp;&nbsp;十一、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方书面同意方可办理解除租赁手续；未经甲方书面同意，乙方单方解除行为无效。乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。</p>
			<p>&nbsp;&nbsp;十二、乙方需要变更车牌号信息时，应提前七天到甲方招商部运营提交相关变更资料，经甲方同意后方可变更，若乙方未经甲方同意私自变更信息，甲方有权拒绝乙方车辆进场停车。</p>
			<p>&nbsp;&nbsp;十三、本协议一式肆份，甲方执<u> 叁 </u>份，乙方执<u> 壹 </u>份。具有同等法律效力。</p>
			<p>&nbsp;&nbsp;十四、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
			<p>&nbsp;&nbsp;十五、备注</p>
			<p><textarea class="form-control" rows="5" cols="100%" name="remark"/>${aesc.remark}</textarea></p>
			<br />
			<p>&nbsp;&nbsp;十六、租金打款帐号</p>
			<br />
			<p>名称：重庆汽博实业有限公司</p>
			<p>开户银行：建行重庆两江汽博支行</p>
			<p>帐号：5000 1040 0430 5250 0282</p>
			<br />
			<p>（以下无正文）</p>
			<br />
			<div id="me">
				<p>甲方签章：重庆汽博实业有限公司</p>
				<p>委托代理人：<input class="qz" name="first_agent" value="${aesc.first_agent}" /></p>
				<p>联系方式：89189988 </p>
				<p>日期：<input type="date" class="qz" name="first_date" id="date1" value="${aesc.first_date}" /></p>
			</div>
			<div id="other">
				<p>乙方签章：<input class="qz" name="second_sign" value="${aesc.second_sign}" /></p>
				<p>委托代理人：<input  class="qz" name="second_agent" value="${aesc.second_agent}" /></p>
				<p>联系方式： <input  class="qz" name="second_phone" value="${aesc.second_phone}" /></p>
				<p>日期：<input type="date" class="qz" name="second_date" id="date2" value="${aesc.second_date}" /></p>
			</div>
			<input type="hidden" name="username" value="${user.username}" />
			<input type="hidden" name="contract_id" value="${aesc.contract_id}" />
			<input type="hidden" name="status" value="1" />
			<p class="butn">
				<button type="submit">保存</button>
			</p>
			</form>
		</div>
		<jsp:include page="../../footpart.jsp"></jsp:include>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
		<script>
		laydate.render({
  			elem: '#year_start',
  			type:'year',
  			value:new Date().getFullYear()
		});
		laydate.render({
  			elem: '#year_end',
  			type:'year',
  			value:new Date().getFullYear()
		});
		laydate.render({
  			elem: '#year_rd',
  			type:'year',
  			value:new Date().getFullYear()
		});
		document.getElementById("slt2").value = "${aesc.contract_title2}";
		document.getElementById("slt3").value = "${aesc.contract_title3}";
		document.getElementById("slt4").value = "${aesc.contract_title4}";
		</script>
	</body>
</html>