<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<body>
<%-- <jsp:include page="../../headpart.jsp"></jsp:include> --%>
		<div id="wrap">
			<form action="updatePjcw" method="post">
				<img src="<%=path%>/img/logo.png" width="270px" height="60px" />
				<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" value="${aesc.contract_serial}" /></p>
				<br /><br />
				<p class="h2" style="text-align: center;">汽配市场车位租赁协议</p>
				<br /><br />
				<p><h1 style="color: #3fc712;text-align: center;">${msg}</h1></p>
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>承租方[以下简称乙方]:<input class="dtkz" name="merchant_name" value="${aesc.merchant_name}" /></p>
				<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方汽配市场停车位一事达成如下协议：</p>
				<p>&nbsp;&nbsp;一、甲方向乙方提供停车位<input class="dtkzNum" name="car_num" value="${aesc.car_num}" />个。该车位用于<input class="dtkz" name="purpose" value="${aesc.purpose}" />停放。车牌号为：<input class="dtkz" name="car_serial" value="${aesc.car_serial}" />(备用车牌为：<input class="dtkz" name="car_serial1" value="${aesc.car_serial1}" />)该停车区位于汽配市场区域内。</p>
				<p>&nbsp;&nbsp;二、租赁期限：自<input required="required" class="dtkzNum" name="year_start" value="${aesc.year_start}" />年<input required="required" class="dtkzNum" name="month_start" value="${aesc.month_start}" />月<input required="required" class="dtkzNum" name="day_start" value="${aesc.day_start}" />日至<input required="required" class="dtkzNum" name="year_end" value="${aesc.year_end}" />年<input required="required" class="dtkzNum" name="month_end" value="${aesc.month_end}" />月<input required="required" class="dtkzNum" name="day_end" value="${aesc.day_end}" />日止。车位租赁费：<input required="required" class="dtkzNum" name="rent" value="${aesc.rent}" />元/个/月，共计:<input required="required" class="dtkzNum" name="total" value="${aesc.total}" />元/月（大写： <input required="required" class="dtkz" name="upper" value="${aesc.upper}" />元整  ）。</p>
				<p>&nbsp;&nbsp;三、乙方须按<input required="required" class="dtkz" name="payment1" value="${aesc.payment1}" />向甲方交付车辆停放场地使用车位租赁费，甲方应提供相关正规发票，交款时间为每<input required="required" class="dtkz" name="payment2" value="${aesc.payment2}" />初首月的1日前缴纳<input required="required" class="dtkz" name="payment3" value="${aesc.payment3}" />的车位租赁费。乙方每逾期一日，甲方有权将按照应交款总额的0.5%收取乙方的滞纳金。逾期时间超过15日的，甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;四、乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" value="${aesc.cash_deposit}" />元，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其它违反合同约定行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，但不计算利息。</p>
				<p>&nbsp;&nbsp;五、甲方收取的费用仅限于乙方车辆停放所占用场地使用车位租赁费，不包含车辆外观及车内物品保管。甲方只负责乙方的整车安全，即：乙方车辆不被偷盗。</p>
				<p>&nbsp;&nbsp;六、协议期满，乙方若需继续使用，应在协议到期前  30 天到汽博中心市场招商部办理续租手续；否则，将视为乙方放弃优先续租权，协议自动终止后，甲方有权将该车位转租他人，且不需对乙方另行通知。</p>
				<p>&nbsp;&nbsp;七、若协议到期后乙方仍未办理续租手续，车辆也未驶离，则甲方将按临时停车位收费(20元/车/天),乙方不得以任何理由拒付停车费。否则，在乙方未完清所有费用之前，甲方有权禁止乙方车辆离场。</p>
				<p>&nbsp;&nbsp;八、乙方在停车区域内须按明确的租赁车位对号停车，不得乱停乱放，占用道路或他人停车位。车辆的进出必须服从当值保安人员的指挥，及配合甲方的统一管理。</p>
				<p>&nbsp;&nbsp;九、若涉及到该场地整体改造或甲方临时需占用等客观原因，甲方将收回该场地时，需要提前一周以书面形式通知乙方，乙方将在5日内与甲方友好协商并配合甲方的统一管理。其中所涉及的费用按乙方实际使用时间结算。</p>
				<p>&nbsp;&nbsp;十、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方同意方可办理解除租赁手续，乙方所缴纳的剩余租金将作为违约金支付给甲方。</p>
				<p>&nbsp;&nbsp;十一、乙方需要变更车牌号信息时，应提前 7 天到甲方市场招商运营部提交相关变更资料，经甲方同意后方可变更，若乙方未经甲方同意私自变更信息，甲方有权拒绝乙方车辆进场    停车。</p>
				<p>&nbsp;&nbsp;十二、本协议一式<u> 肆  </u>份，经甲、乙双方签署后生效，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份。具有同等法律效力。</p>
				<p>&nbsp;&nbsp;十三、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
				<p>&nbsp;&nbsp;十四、备注</p>
				<p><input class="dtkz" name="remark" value="${aesc.remark}" /></p>
				<p>&nbsp;&nbsp;十五、租金、合同保证金交款账号如下：</p>
				<p>&nbsp;&nbsp;租金、合同保证金打款帐号 </p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：5000 1040 0430 5250 0282</p>
				<br />
				<div id="me">
					<p>甲方签章：重庆汽博实业有限公司</p>
					<p>委托代理人：<input  class="qz" name="first_agent" value="${aesc.first_agent}" /></p>
					<p>联系方式：89189988 </p>
					<p>日期：<input  type="date" class="qz" name="first_date" value="${aesc.first_date}" /></p>
				</div>
				<div id="other">
					<p>乙方签章：<input class="qz" name="second_sign" value="${aesc.second_sign}" /></p>
					<p>委托代理人：<input  class="qz" name="second_agent" value="${aesc.second_agent}" /></p>
					<p>联系方式： <input  class="qz" name="phone" value="${aesc.phone}" /></p>
					<p>日期：<input type="date" class="qz" name="second_date" value="${aesc.second_date}" /></p>
				</div>
				<p class="butn">
					<button type="submit">修改</button>
				</p>
				<input type="hidden" name="contract_id" value="${aesc.contract_id}" />
				<input type="hidden" name="username" value="${user.username}" />
				<input type="hidden" name="status" value="1" />
			</form>
		</div>
		<%-- <jsp:include page="../../footpart.jsp"></jsp:include> --%>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
	</body>
</html>
