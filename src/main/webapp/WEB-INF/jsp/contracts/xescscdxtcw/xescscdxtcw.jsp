<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<head>
	<title>汽博新二手车市场地下停车库租赁协议</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
</head>
	<body>
<jsp:include page="../../headpart.jsp"></jsp:include>
		<div id="wrap">
		<form action="addxescscdxtcw" method="post">
			<p><img src="<%=path%>/img/logo.png" width="270px;" height="50px;"/></p>
			<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial"/></p>
			<br /><br />
			<h1 style="text-align: center; ">汽博新二手车市场地下停车库租赁协议</h1>
			<p>&nbsp;</p><p>&nbsp;</p>
			<p>出租方[以下简称甲方]: <u>重庆汽博实业有限公司 </u></p><br />
			<p>承租方[以下简称乙方]: <input class="form-control" type="text" name="merchant_name"></p>
			<br />
			<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方汽博新二手车市场地下停车库车位一事达成如下协议：</p>
			<p>&nbsp;&nbsp;一、甲方向乙方提供地下车库<input required="required" name="offer" class="dtkz" type="text" value="负  楼停车位 个，场地号为 号" />，该车位用于<input required="required" class="dtkz" type="text" name="purpose" value="自用车" />停放，车牌号为渝<input required="required" class="dtkz" type="text" name="plate" /> ，该停车区位于汽博新二手车市场车库内。</p>
			<p>&nbsp;&nbsp;二、租赁期限及场地使用服务费：自<input required="required" name="year_start" class="dtkzNum" type="text" value="" />年<input required="required" class="dtkzNum" type="text" name="month_start" value="1" />月 <input required="required" class="dtkzNum" type="text" name="day_start" value="1" />日至 <input required="required" class="dtkzNum" type="text" name="year_end" value="" />年<input required="required" class="dtkzNum" type="text" name="month_end" value="" />月 <input  value=""required="required" class="dtkzNum" type="text" name="day_end" />日止。服务费为：<input required="required" type="text" class="dtkzNum" name="service_charge" />元/个/月，共计 <input required="required" type="text" class="dtkzNum" name="total" />元/月（大写： <input required="required" class="dtkz" name="numeral_sed" type="text" /> ）。</p>
			<p>&nbsp;&nbsp;三、计租时间及相关费用计算时间：从<input required="required" name="year_rd" class="dtkzNum" type="text"  value=""/>年 <input required="required" class="dtkzNum" type="text" name="month_rd" value="1" />月 <input required="required" class="dtkzNum" type="text"  name="day_rd" value="1" />日起算。</p>
			<p>&nbsp;&nbsp;四、乙方应向甲方支付履约保证金：￥<input required="required" name="cash_deposit" class="dtkzNum" type="text" />元（大写）<input required="required" class="dtkz" type="text" name="numeral_four" />元整 ，在签定合同后由乙方一次性付清。合同有效期内若乙方擅自解除合同或有其它违反合同行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，只退本不退息。</p>
			<p>&nbsp;&nbsp;五、乙方按 <input required="required" name="payment_way" class="dtkz" type="text"  value="季度"/>向甲方交付场地租金，交款时间为每<input required="required" type="text" class="dtkz" name="payment_time" value="季度"/>初第一个月的15日前 缴纳本 <input required="required" type="text" class="dtkz" name="rent" value="季度" />的场地租金。乙方每逾期一日，甲方有权将按照应交款总额的0.5%收取乙方的滞纳金，逾期超过15日，甲方有权单方面解除合同，并向乙方追缴所欠租金和滞纳金。</p>
			<p>&nbsp;&nbsp;六、甲方收取的费用仅限于乙方车辆停放所占用场地的租金，不包含车辆外观及车内物品保管。甲方只负责乙方的整车安全，即：乙方车辆不被偷盗。</p>
			<p>&nbsp;&nbsp;七、协议期满，乙方若需继续使用，应在协议到期前 15天到汽博中心招商部运营部办理续租手续；否则，将视为乙方放弃优先续租权，协议自动终止后，甲方有权将该场地转租他人，且不需对乙方另行通知。</p>
			<p>&nbsp;&nbsp;八、若协议到期后乙方仍未办理续租手续，车辆也未驶离停车库，则甲方将按临时停车位收费(20元/车/天),乙方不得以任何理由拒付停车费。否则，在乙方未完清所有费用之前，甲方有权禁止乙方车辆离场。</p>
			<p>&nbsp;&nbsp;九、乙方在停车区域内须按明确的租赁场地对号停车，不得乱停乱放，占用道路或他人场地。车辆的进出必须服从当值保安人员的指挥，及配合甲方的统一管理。</p>
			<p>&nbsp;&nbsp;十、若涉及到该场地整体改造或甲方临时需占用等客观原因，甲方将收回该场地时，需要提前30天以书面形式通知乙方，乙方将在5日内与甲方友好协商并配合甲方的统一管理。其中所涉及的费用按乙方实际使用时间结算。</p>
			<p>&nbsp;&nbsp;十一、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方同意方可办理解除租赁手续，乙方所缴纳的剩余租金将作为违约金支付给甲方。</p>
			<p>&nbsp;&nbsp;十二、本协议一式肆份，甲方执<u> 叁 </u>份，乙方执<u> 壹 </u>份。具有同等法律效力。</p>
			<p>&nbsp;&nbsp;十三、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
			<p>&nbsp;&nbsp;十四、备注</p>
			<p><textarea rows="5" cols="100%" name="remark" />/</textarea></p>
			<br />
			<p>&nbsp;&nbsp;十五、租金打款帐号</p>
			<br />
			<p>名称：重庆汽博实业有限公司</p>
			<p>开户银行：建行重庆两江汽博支行</p>
			<p>帐号：5000 1040 0430 5250 0282</p>
			<br />
			<p>（以下无正文）</p>
			<br />
			<div id="me">
				<p>甲方签章：重庆汽博实业有限公司</p>
				<p>委托代理人：<input class="qz" name="first_agent" /></p>
				<p>联系方式：89189988 </p>
				<p>日期：<input type="date" class="qz" name="first_date" id="date1" /></p>
			</div>
			<div id="other">
				<p>乙方签章：<input class="qz" name="second_sign" /></p>
				<p>委托代理人：<input  class="qz" name="second_agent" /></p>
				<p>联系方式： <input  class="qz" name="second_phone" /></p>
				<p>日期：<input type="date" class="qz" name="second_date" id="date2" /></p>
			</div>
			<input type="hidden" name="username" value="${user.username}" />
			<input type="hidden" name="status" value="1" />
			<p class="butn">
				<button type="submit">保存</button>
			</p>
			</form>
		</div>
		<jsp:include page="../../footpart.jsp"></jsp:include>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
	</body>
</html>