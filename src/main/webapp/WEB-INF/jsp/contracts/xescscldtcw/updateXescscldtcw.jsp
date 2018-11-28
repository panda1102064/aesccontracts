<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<head>
	<title>汽博新二手车市场楼顶停位库租赁协议</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
</head>
	<body>
<%-- <jsp:include page="../../headpart.jsp"></jsp:include> --%>
		<div id="wrap">
		<form action="updateXescscldtcw" method="post">
			<p><img src="<%=path%>/img/logo.png" width="270px;" height="50px;"/></p>
			<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" value="${aesc.contract_serial}"/></p>
			<br /><br />
			<h1 style="text-align: center; ">汽博新二手车市场楼顶停位库租赁协议</h1>
			<p>&nbsp;</p><p>&nbsp;</p>
			<p><h2 style="color:#3fc712; text-align:center;">${msg}</h2></p>
			<p>出租方[以下简称甲方]: <u>重庆汽博实业有限公司 </u></p>
			<p>承租方[以下简称乙方]: <input  class="dtkz" type="text" name="merchant_name" value="${aesc.merchant_name}" /></p>
			<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方新二手车市场楼顶停车位一事达成如下协议：</p>
			<p>&nbsp;&nbsp;一、甲方向乙方提供<input required="required" class="dtkz"  name="place" value="${aesc.place}"/> ，该停车场仅用于<input required="required" class="dtkz"  name="popours" value="${aesc.popours}"/>停放。</p>
			<p>&nbsp;&nbsp;二、租赁期：<input required="required" name="year_start" class="dtkzNum" type="text" value="${aesc.year_start}"/>年<input required="required" class="dtkzNum" type="text" name="month_start" value="${aesc.month_start}"/>月 <input required="required" class="dtkzNum" type="text" name="day_start" value="${aesc.day_start}"/>日至 <input required="required" class="dtkzNum" type="text" name="year_end" value="${aesc.year_end}"/>年<input required="required" class="dtkzNum" type="text" name="month_end" value="${aesc.month_end}"/>月 <input required="required" class="dtkzNum" type="text" name="day_end" value="${aesc.day_end}"/>日止。场地租金单价（按乙方实际承租面积计收）为：<input required="required" class="dtkzNum"  name="price" value="${aesc.price}"/>元/月/㎡，每月租金合计人民币：<input required="required" class="dtkzNum"  name="rent" value="${aesc.rent}"/>元（大写：<input required="required" class="dtkz"  name="upper1" value="${aesc.upper1}"/>元整  ）。</p>
			<p>&nbsp;&nbsp;三 、本合同签订后乙方应向甲方一次性支付履约保证金：￥<input required="required" class="dtkzNum"  name="cash_deposit" value="${aesc.cash_deposit}"/>元（大写：<input required="required" class="dtkz"  name="upper2" value="${aesc.upper2}"/>整 ）。</p>
			<p>&nbsp;&nbsp;1、甲乙双方在租赁期间均不得无故提前解除合同，若甲乙双方任何一方需要提前解除合同，必须提前壹个月以书面形式通知对方。</p>
			<p>&nbsp;&nbsp;2、乙方若擅自解除合同的，乙方所缴纳的履约保证金和剩余租金作为支付给甲方的违约金。场地造成损坏的，乙方应负责恢复原状或承担赔偿责任。</p>
			<p>&nbsp;&nbsp;3、甲方在合同期内提前解除合同的。甲方在乙方搬离前向乙方支付履约保证金同等金额的违约金，并退还乙方缴纳的履约保证金及剩余租金（以实际租期按日计算）。</p>
			<p>&nbsp;&nbsp;4、本合同约定的所有房屋履约保证金在乙方无违约情况下，待本合同期满后不续租的，由甲方不计息退还给乙方。</p>
			<p>&nbsp;&nbsp;四、房屋租金按<input required="required" class="dtkz"  name="payment1" value="${aesc.payment1}"/>支付。乙方应自本合同签订当日向甲方支付第一个<input required="required" class="dtkz" name="payment2" value="${aesc.payment2}"/>的租金，以后乙方应在每<input required="required" class="dtkz"  name="payment3" value="${aesc.payment3}"/>初第一个月第<input required="required" class="dtkz"  name="payday" value="${aesc.payday}"/>日前支付本<input required="required" class="dtkz"  name="payment4" value="${aesc.payment4}"/>的租金。乙方每逾期一日，甲方有权按照应交款总额的 0.5% 收取乙方的滞纳金，逾期超过15日，甲方有权单方面解除合同，并向乙方追缴所欠租金和滞纳金。（乙方应向甲方提供开具专票的相关证明和信息，如果乙方纳税政策有调整，需提前【30】日通知甲方，并出具相关调整说明。）</p>
			<p>&nbsp;&nbsp;五、甲方收取的费用仅限于乙方车辆停放所占用场地的租金，不包含车辆外观及车内物品保管。甲方只负责乙方的整车安全，即：乙方车辆不被偷盗。</p>
			<p>&nbsp;&nbsp;六、协议期满，乙方若需继续使用，应在协议到期前 30天 到汽博中心招商部运营部办理续租手续；否则，将视为乙方放弃优先续租权，协议自动终止后，甲方有权将该场地转租他人，且不需对乙方另行通知。</p>
			<p>&nbsp;&nbsp;七、若协议到期后乙方仍未办理续租手续，车辆也未驶离停车场，则甲方将按临时停车位收费(20元/车/天),乙方不得以任何理由拒付停车费。否则，在乙方未完清所有费用之前，甲方有权禁止乙方车辆离场。</p>
			<p>&nbsp;&nbsp;八、乙方在停车区域内须按明确的租赁场地对号停车，不得乱停乱放，占用道路或他人场地。车辆的进出必须服从当值保安人员的指挥，及配合甲方的统一管理。</p>
			<p>&nbsp;&nbsp;九、若涉及到该场地整体改造或甲方临时需占用等客观原因，甲方将收回该场地时，需要提前30天以书面形式通知乙方，乙方将在5日内与甲方友好协商并配合甲方的统一管理。其中所涉及的费用按乙方实际使用时间结算。</p>
			<p>&nbsp;&nbsp;十、本协议一式肆份，甲方执<u> 叁 </u>份，乙方执<u> 壹 </u>份。具有同等法律效力。</p>
			<p>&nbsp;&nbsp;十一、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
			<p>&nbsp;&nbsp;十二、租金打款帐号</p>
			<p>名称：重庆汽博实业有限公司</p>
			<p>开户银行：建行重庆两江汽博支行</p>
			<p>帐号：5000 1040 0430 5250 0282</p>
			<br />
			<br />
			<div id="me">
				<p>甲方签章：重庆汽博实业有限公司</p>
				<p>委托代理人：<input class="qz" name="first_agent" value="${aesc.first_agent}"/></p>
				<p>联系方式：89189988 </p>
				<p>日期：<input type="date" class="qz" name="first_date" value="${aesc.first_date}"/></p>
			</div>
			<div id="other">
				<p>乙方签章：<input  class="qz" name="second_sign" value="${aesc.second_sign}"/></p>
				<p>委托代理人：<input  class="qz" name="second_agent" value="${aesc.second_agent}"/></p>
				<p>联系方式： <input class="qz" name="second_phone" value="${aesc.second_phone}"/></p>
				<p>日期：<input  type="date" class="qz" name="second_date" value="${aesc.second_date}"/></p>
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