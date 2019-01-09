<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<head>
	<title>汽博新二手车市场楼顶停位库租赁协议</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/input-list.css">
	<script type="text/javascript" src="<%=path%>/js/vue.min.js"></script>
</head>
	<body>
<jsp:include page="../../headpart.jsp"></jsp:include>
		<div id="wrap">
		<form action="saveXescscldtcw" method="post">
	<div class="ppnl">
        <h3>在这里填写合同内容信息(填完后务必详细检查)</h3>
    </div>
	<div class="pn1">		
	  <ul class="list clearfix">
	  	  <ol><input required="required" v-model="contract_serial" name="contract_serial" placeholder="合同编号"></ol>
		  <ol><input required="required" v-model="merchant_name" name="merchant_name" placeholder="承租方"></ol>
		  <ol><input required="required" v-model="place" name="place" placeholder="场地"></ol>
		  <ol><input required="required" v-model="popours" name="popours" placeholder="用途"></ol>
		  <ol><input required="required" v-model="year_start" name="year_start" placeholder="租赁期年份起"></ol>
		  <ol><input required="required" v-model="month_start" name="month_start" placeholder="租赁期月份起"></ol>
	  </ul>
  </div>
  <div class="pn2">
	  <ul class="list clearfix">
		  <ol><input required="required" v-model="day_start" name="day_start" placeholder="租赁期日起"></ol>
		  <ol><input required="required" v-model="year_end" name="year_end" placeholder="租赁期年份止"></ol>
		  <ol><input required="required" v-model="month_end" name="month_end" placeholder="租赁期月份止"></ol>
		  <ol><input required="required" v-model="day_end" name="day_end" placeholder="租赁期日止"></ol>
		  <ol><input required="required" v-model="price" name="price" placeholder="单价"></ol>
		  <ol><input required="required" v-model="rent" name="rent" placeholder="租金"></ol>
	  </ul>
  </div>
  <div class="pn3">
	  	<ul class="list clearfix">
		  <ol><input required="required" v-model="upper1" name="upper1" placeholder="租金大写"></ol>
		  <ol><input required="required" v-model="cash_deposit" name="cash_deposit" placeholder="保证金"></ol>
		  <ol><input required="required" v-model="upper2" name="upper2" placeholder="保证金大写"></ol>
		  <ol><input required="required" v-model="payment1" name="payment1" placeholder="支付方式"></ol>
		  <ol><input required="required" v-model="payment2" name="payment2" placeholder="支付方式"></ol>
		  <ol><input required="required" v-model="payment3" name="payment3" placeholder="支付方式"></ol>
		</ul>
  </div>
			<p><img src="<%=path%>/img/logo.png" width="270px;" height="50px;"/></p>
			<p style="float: right;">合同编号: {{contract_serial}}</p>
			<br /><br />
			<h1 style="text-align: center; ">汽博新二手车市场楼顶停位库租赁协议</h1>
			<br /><br /><h4>${msg}</h4><br />
			<p>出租方[以下简称甲方]: <u>重庆汽博实业有限公司 </u></p>
			<p>承租方[以下简称乙方]: <u> {{merchant_name}} </u></p>
			<p>&nbsp;&nbsp;甲乙双方本着平等自愿，协商一致原则，就乙方租赁甲方新二手车市场楼顶停车位一事达成如下协议：</p>
			<p>&nbsp;&nbsp;一、甲方向乙方提供<u> {{place}} </u>，该停车场仅用于<u> {{popours}} </u>停放。</p>
			<p>&nbsp;&nbsp;二、租赁期：<u> {{year_start}} </u>年<u> {{month_start}} </u>月<u> {{day_start}} </u>日至<u> {{ year_end}} </u>年<u> {{month_end}} </u>月<u> {{day_end}} </u>日止。场地租金单价（按乙方实际承租面积计收）为：<u> {{price}} </u>元/月/㎡，每月租金合计人民币<u> {{rent}} </u>元（大写：<u> {{upper1}} </u>元整  ）。</p>
			<p>&nbsp;&nbsp;三 、本合同签订后乙方应向甲方一次性支付履约保证金：￥<u> {{cash_deposit}} </u> 元（大写：<u> {{upper2}} </u> 整 ）。</p>
			<p>&nbsp;&nbsp;1、甲乙双方在租赁期间均不得无故提前解除合同，若甲乙双方任何一方需要提前解除合同，必须提前壹个月以书面形式通知对方。</p>
			<p>&nbsp;&nbsp;2、乙方若擅自解除合同的，乙方所缴纳的履约保证金和剩余租金作为支付给甲方的违约金。场地造成损坏的，乙方应负责恢复原状或承担赔偿责任。</p>
			<p>&nbsp;&nbsp;3、甲方在合同期内提前解除合同的。甲方在乙方搬离前向乙方支付履约保证金同等金额的违约金，并退还乙方缴纳的履约保证金及剩余租金（以实际租期按日计算）。</p>
			<p>&nbsp;&nbsp;4、本合同约定的所有房屋履约保证金在乙方无违约情况下，待本合同期满后不续租的，由甲方不计息退还给乙方。</p>
			<p>&nbsp;&nbsp;四、房屋租金按<u> {{payment1}} </u>支付。乙方应自本合同签订当日向甲方支付<u> {{payment2}} </u>的租金，以后乙方应在<u> {{payment3}}</u>的租金。乙方每逾期一日，甲方有权按照应交款总额的 0.5% 收取乙方的滞纳金，逾期超过15日，甲方有权单方面解除合同，并向乙方追缴所欠租金和滞纳金。（乙方应向甲方提供开具专票的相关证明和信息，如果乙方纳税政策有调整，需提前【30】日通知甲方，并出具相关调整说明。）</p>
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
				<p>委托代理人：<input class="qz" name="first_agent" /></p>
				<p>联系方式：89189988 </p>
				<p>日期：<input type="date" class="qz" name="first_date" id="date1" /></p>
			</div>
			<div id="other">
				<p>乙方签章：<input  class="qz" name="second_sign" /></p>
				<p>委托代理人：<input  class="qz" name="second_agent" /></p>
				<p>联系方式： <input class="qz" name="second_phone" /></p>
				<p>日期：<input  type="date" class="qz" name="second_date" id="date2" /></p>
			</div>
			<p class="butn">
				<button type="submit">保存</button>
			</p>
			<input type="hidden" name="username" value="${user.username}" />
			<input type="hidden" name="status" value="1" />
			</form>
		</div>
<script>
new Vue({
  el: '#wrap',
  data: {
	contract_serial: '',
	merchant_name: '',
	place: '新二手车市场楼顶停车场整层',
	popours: '自用车',
	year_start:'',
	month_start:'',
	day_start:'1',
	year_end:'',
	month_end:'',
	day_end:'',
	price:'',
	rent:'',
	upper1:'',
	cash_deposit:'',
	upper2:'',
	payment1:'季度',
	payment2:'第一个季度',
	payment3:'每季度初第一个月第15日前支付本季度'
  }
})
</script>
		<jsp:include page="../../footpart.jsp"></jsp:include>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
	</body>
</html>