<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="../../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>汽博新二手车市场楼顶停位库租赁协议</title>
</head>
	<body>
		<div id="wrap">
			<p><img src="<%=path%>/img/logo.png" width="270px;" height="50px;"/></p>
			<p style="position: absolute; right: 80px; top: 20px;">合同编号：${aesc.contract_serial}</p>
			<br /><br />
			<h1 style="text-align: center; ">汽博新二手车市场楼顶停位库租赁协议</h1>
			<p>&nbsp;</p><p>&nbsp;</p>
			<p>出租方[以下简称甲方]: <u>重庆汽博实业有限公司 </u></p>
			<p>承租方[以下简称乙方]: <u> ${aesc.merchant_name} </u></p>
			<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方新二手车市场楼顶停车位一事达成如下协议：</p>
			<p>&nbsp;&nbsp;一、甲方向乙方提供<u> ${aesc.place} </u>，该停车场仅用于<u> ${aesc.popours} </u>停放。</p>
			<p>&nbsp;&nbsp;二、租赁期：<u> ${aesc.year_start} </u>年<u> ${aesc.month_start} </u>月<u> ${aesc.day_start} </u>日至 <u> ${aesc.year_end} </u>年<u> ${aesc.month_end} </u>月 <u> ${aesc.day_end} </u>日止。场地租金单价（按乙方实际承租面积计收）为：<u> ${aesc.price} </u>元/月/㎡，每月租金合计人民币：<u> ${aesc.rent} </u>元（大写：<u> ${aesc.upper1} </u>元整  ）。</p>
			<p>&nbsp;&nbsp;三 、本合同签订后乙方应向甲方一次性支付履约保证金：￥<u> ${aesc.cash_deposit} </u>元（大写：<u> ${aesc.upper2} </u>整 ）。</p>
			<p>&nbsp;&nbsp;1、甲乙双方在租赁期间均不得无故提前解除合同，若甲乙双方任何一方需要提前解除合同，必须提前壹个月以书面形式通知对方。</p>
			<p>&nbsp;&nbsp;2、乙方若擅自解除合同的，乙方所缴纳的履约保证金和剩余租金作为支付给甲方的违约金。场地造成损坏的，乙方应负责恢复原状或承担赔偿责任。</p>
			<p>&nbsp;&nbsp;3、甲方在合同期内提前解除合同的。甲方在乙方搬离前向乙方支付履约保证金同等金额的违约金，并退还乙方缴纳的履约保证金及剩余租金（以实际租期按日计算）。</p>
			<p>&nbsp;&nbsp;4、本合同约定的所有房屋履约保证金在乙方无违约情况下，待本合同期满后不续租的，由甲方不计息退还给乙方。</p>
			<p>&nbsp;&nbsp;四、房屋租金按<u> ${aesc.payment1} </u>支付。乙方应自本合同签订当日向甲方支付<u> ${aesc.payment2} </u>的租金，以后乙方应在<u> ${aesc.payment3} </u>的租金。乙方每逾期一日，甲方有权按照应交款总额的 0.5% 收取乙方的滞纳金，逾期超过15日，甲方有权单方面解除合同，并向乙方追缴所欠租金和滞纳金。（乙方应向甲方提供开具专票的相关证明和信息，如果乙方纳税政策有调整，需提前【30】日通知甲方，并出具相关调整说明。）</p>
			<p>&nbsp;&nbsp;五、甲方收取的费用仅限于乙方车辆停放所占用场地的租金，不包含车辆外观及车内物品保管。甲方只负责乙方的整车安全，即：乙方车辆不被偷盗。</p>
			<p>&nbsp;&nbsp;六、协议期满，乙方若需继续使用，应在协议到期前 30天 到汽博中心招商部运营部办理续租手续；否则，将视为乙方放弃优先续租权，协议自动终止后，甲方有权将该场地转租他人，且不需对乙方另行通知。</p>
			<p>&nbsp;&nbsp;七、若协议到期后乙方仍未办理续租手续，车辆也未驶离停车场，则甲方将按临时停车位收费(20元/车/天),乙方不得以任何理由拒付停车费。否则，在乙方未完清所有费用之前，甲方有权禁止乙方车辆离场。</p>
			<p>&nbsp;&nbsp;八、乙方在停车区域内须按明确的租赁场地对号停车，不得乱停乱放，占用道路或他人场地。车辆的进出必须服从当值保安人员的指挥，及配合甲方的统一管理。</p>
			<p>&nbsp;&nbsp;九、若涉及到该场地整体改造或甲方临时需占用等客观原因，甲方将收回该场地时，需要提前30天以书面形式通知乙方，乙方将在5日内与甲方友好协商并配合甲方的统一管理。其中所涉及的费用按乙方实际使用时间结算。</p>
			<p>&nbsp;&nbsp;十、本协议一式肆份，甲方执<u> 叁 </u>份，乙方执<u> 壹 </u>份。具有同等法律效力。</p>
			<p>&nbsp;&nbsp;十一、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
			<p>&nbsp;&nbsp;十二、租金打款账号</p>
			<p>名称：重庆汽博实业有限公司</p>
			<p>开户银行：建行重庆两江汽博支行</p>
			<p>账号：5000 1040 0430 5250 0282</p>
			<br />
			<br />
			<div id="me">
				<p>甲方签章：重庆汽博实业有限公司</p>
				<p>委托代理人：${aesc.first_agent}</p>
				<p>联系方式：89189988 </p>
				<p>日期：${aesc.first_date}</p>
			</div>
			<div id="other">
				<p>乙方签章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<p>委托代理人：${aesc.second_agent}</p>
				<p>联系方式： ${aesc.second_phone}</p>
				<p>日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
	</body>
</html>