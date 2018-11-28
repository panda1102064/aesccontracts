<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<body>
<jsp:include page="../../headpart.jsp"></jsp:include>
		<div id="wrap">
			<form action="saveMcgcwzcxmb" method="post">
				<img src="<%=path%>/img/logo.png" width="270px" height="60px" />
				<p style="float: right;">合同编号:<input style="border-bottom-color:red;" required="required" class="dtkzNum" name="contract_serial" /></p>
				<br /><br />
				<p class="h2" style="text-align: center;">重庆汽博实业有限公司<br />商业用房（场地）租赁合同</p>
				<br /><br />
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>地址:<u>重庆北部新区金渝大道99号</u></p>
				<p>承租方[以下简称乙方]:<input  class="dtkz" name="merchant_name" /></p>
				<p>地址：<input  class="dtkz" name="address" /></p><br />
				<p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法律法规的规定，本着平等自愿和互惠互利的原则，为了明确甲乙双方的权利义务关系，就乙方需租赁甲方名车广场（外展场）车位协商一致后，达成如下协议：</p>
				<p>&nbsp;&nbsp;一、租赁物业基本情况</p>
				<p>&nbsp;&nbsp;1、乙方租用甲方名车广场（外展场）<input required="required" class="dtkzNum" name="area1" />个车位，编号为<input required="required" class="dtkzNum" name="serial" />，单价：￥<input required="required" class="dtkzNum" name="price" />元/个/月（人民币），合租办公室：<input required="required" class="dtkzNum" name="office_rent" />元/个/月，总计：￥<input required="required" class="dtkzNum" name="total" />元/月（人民币）；</p>
				<p>&nbsp;&nbsp;二、	租赁期限</p>
				<p>&nbsp;&nbsp;上述车位租赁期限原则上为<input required="required" class="dtkzNum" name="expires" value="\" />年，从<input required="required" class="dtkzNum" name="year_start" value="2018" />年<input required="required" class="dtkzNum" name="month_start" value="1" />月<input required="required" class="dtkzNum" name="day_start" value="1" />日起至<input required="required" class="dtkzNum" name="year_end" value="2018" />年<input required="required" class="dtkzNum" name="month_end" value="6" />月<input required="required" class="dtkzNum" name="day_end" value="30" />日止。</p>
				<p>&nbsp;&nbsp;三、租金及物管费的交付方式</p>
				<p>&nbsp;&nbsp;1、租金为每<input required="required" class="dtkzNum" name="payment1" value="半年" />支付，在签定合同时，乙方应向甲方支付第一个<input required="required" class="dtkzNum" name="payment2" value="半年" />的租金，以后乙方应在每<input required="required" class="dtkzNum" name="payment3" value="半年" />第一个月10日前支付下个<input required="required" class="dtkzNum" name="payment4" value="半年" />的租金。乙方逾期交纳租金，每逾期一日，应按未交纳租金总额的0.5％向甲方支付滞纳金。逾期时间不得超过15日，否则甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;2、乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" />元，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其他违反合同行为的，甲方有权力单方面终止合同，履约保证金和所剩租金不予退还，并纳入违约金范围内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，只退本不退息。</p>
				<p>&nbsp;&nbsp;3、付款方式：现金、转帐支票或网上银行。</p>
				<p>&nbsp;&nbsp;3.1、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year1" value="2018" />年<input required="required" class="dtkzNum" name="charge_month1" value="1" />月<input required="required" class="dtkzNum" name="charge_day1" value="1" />日起算。</p>
				<p>&nbsp;&nbsp;4、物业管理服务费（按乙方承租的物业实际建筑面积计收），汽博中心<input required="required" class="dtkz" name="purpose" value="名车广场外展场"/>的用房为商业性质的物业，物业管理服务费的收费标准经重庆市物局审批为：  <input required="required" class="dtkzNum" name="management_fee" value="30" />元/个/月，物业管理服务费合计：<input required="required" class="dtkzNum" name="management_total" />元/月。</p>
				<p>&nbsp;&nbsp;5、前述物业费用按季度支付：在签定合同时，乙方应向物业公司支付第一季度的物业费，以后乙方应在每季度初25日前支付下个季度的物业费。</p>
				<p>&nbsp;&nbsp;5.1、乙方如逾期10天不缴纳物业管理服务费或相关物业费用的，本合同约定物业公司有权按乙方应交付费用总额的每日3‰加收滞纳金；逾期20天者系恶意拖欠的，物业公司除有权按照5‰加收滞纳金还有权停止向乙方提供服务，同时视为乙方对本合同的根本性违约。</p>
				<p>&nbsp;&nbsp;6、付款方式：现金、转帐支票或网上银行。</p>
				<p>&nbsp;&nbsp;6.1、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year2" value="2018" />年<input required="required" class="dtkzNum" name="charge_month2" value="1" />月<input required="required" class="dtkzNum" name="charge_day2" value="1" />日起算。</p>
				<p>&nbsp;&nbsp;四、乙方租用甲方名车广场（外展场）用于<input required="required" class="dtkz" name="syfs" />停放。乙方租赁的上述场地，仅供自己使用，不得擅自转租、转让、许可第三方使用或擅自改变合同所有约定的停放车型。如甲方发现乙方有上诉违约行为，甲方有权单方面解除合同，且不退还乙方已缴纳的租金。</p>
				<p>&nbsp;&nbsp;五、甲方收取的租金仅限于乙方车辆停放所占用地租金，不包含车辆保管费，即：双方只构成占用车位场地租赁关系，不构成车辆保管关系。该车位车辆的安保负责由乙方自行负责。</p>
				<p>&nbsp;&nbsp;六、租约期满，乙方如需要继续租赁，应在协议到期前 15 天到汽博中心招商运营部办公室办理续租手续：否则，将视为乙方自动终止协议，甲方将该车位转租他人时不需另行通知乙方。</p>
				<p>&nbsp;&nbsp;七、在合同期满后，甲方有权根据乙方的整体经营状况及品牌的市场满意度，进行综合评估，决定是否与乙方续签场地租赁合同或调整乙方租赁场地。</p>
				<p>&nbsp;&nbsp;八、乙方租赁到期后未办理续租手续，该车辆将按临时停车位收取场地费（50元/车/天），乙方不得以任何理由拒付停车费用，否则，甲方有权禁止乙方有权进出该场地。</p>
				<p>&nbsp;&nbsp;九、乙方在外卖场的停车区域内应对号入位，不得乱停乱放，占用道路和其他人赁车位，并按照甲方规划的方式进行停放。</p>
				<p>&nbsp;&nbsp;十、乙方进出外卖场的车辆必须服从当值保安人员的指挥及配合甲方的统一管理。</p>
				<p>&nbsp;&nbsp;十一、合同终止与解除</p>
				<p>&nbsp;&nbsp;1、有下列情形之一者，合同即告终止；</p>
				<p>&nbsp;&nbsp;1）合同期满；</p>
				<p>&nbsp;&nbsp;2）发生不可抗力（如地震、战争、自然灾害、政府变化政策等），致使协议无法继续履行。</p>
				<p>&nbsp;&nbsp;3） 乙方承租后，将无条件配合甲方进行所有的改扩建工程等相关事宜。甲方将根据施工进度进行临时的租期调整，如施工提前，将提前终止合同；如施工延后，将延后租赁时间。同时，因门面拆除甲方不会承担乙方的装修赔偿、搬迁费、及其他赔偿等。</p>
				<p>&nbsp;&nbsp;2、下列情形之一者，甲方有权解除合同，并要求乙方赔偿损失。</p>
				<p>&nbsp;&nbsp;1）由于乙方的产品质量问题或有经营欺诈行为，而乙方又不能积极稳妥地解决此类事件，从而对甲方造成不良影响（以合法、真实性为准）。</p>
				<p>&nbsp;&nbsp;2）本合同第三条第1项、第2项，第四条约定的情形出现。	</p>
				<p>&nbsp;&nbsp;3）未经甲方同意进行装修擅自改动并造成安全隐患的，经甲方劝阻，拒不整改的。</p>
				<p>&nbsp;&nbsp;4）改变本合同规定的租赁用途或利用该租赁物存放危险物品或进行违法活动的。</p>
				<p>&nbsp;&nbsp;5）拖欠租金累计15日以上的。</p>
				<p>&nbsp;&nbsp;6）逾期未交纳按约定应当由乙方交纳的各项费用，或给甲方造成严重损害或被追责的。</p>
				<p>&nbsp;&nbsp;7）违反本合同关于经营要求方面约定（若有）的义务。</p>
				<p>&nbsp;&nbsp;3、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方同意方可办理解除租赁手续，乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。未经甲方书面同意，乙方单方解除行为无效。</p>
				<p>&nbsp;&nbsp;4、因不可抗力因素导致合同无法履行，由双方各自承担所造成损失。</p>
				<p>&nbsp;&nbsp;5、如乙方所租赁展位连续25天都不能全部停满车辆。则甲方有权一次性收回所租车位。</p>
				<p>&nbsp;&nbsp;6、到期时，乙方若需继续承租，应提前一个月向甲方提出书面申请。如甲方同意续租，双方应另行签订租赁合同。</p>
				<p>&nbsp;&nbsp;7.若乙方违反名车广场市场管理办法，甲方有权单方面解除合同。</p>
				<p>&nbsp;&nbsp;十二、争议解决方式</p>
				<p>&nbsp;&nbsp;在合同履行过程中若发生争议，双方应友好协商解决。协商不成按以下第2种方式解决：1、申请重庆仲裁委员会仲裁。</p>
				<p>&nbsp;&nbsp;2、依法向合同履行地人民法院起诉。</p>
				<p>&nbsp;&nbsp;十三、附则</p>
				<p>&nbsp;&nbsp;a)本合同未尽事宜，甲、乙双方可另行商定补充协议，其补充内容与本合同具有同等法律效力。</p>
				<p>&nbsp;&nbsp;b)本协议一式<u> 肆  </u>份，经甲、乙双方签署后生效，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份，协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
				<p>&nbsp;&nbsp;十四、备注及补充说明</p>
				<p>&nbsp;&nbsp;若遇到到市场客观因素（如治理堵塞、道路改建、区域整体布局调整）甲方需收回该场地时。乙方须无条件配合甲方，其中所涉及的费用按实际使用时间计算。甲方在车位资源允许的情况下，优先为乙方提供新场地进行经营，但不保证与原车位数量相等。合同租赁期间，甲方若因整体市场推广而需临时征用乙方租赁场地时，应提前15天告知乙方，乙方须无条件配合。</p>
				<p><input class="dtkz" name="remark" /></p>
				<p>&nbsp;&nbsp;十五、租金、合同保证金及物管费及水电空调费交款账号如下：</p>
				<p>&nbsp;&nbsp;租金、合同保证金打款帐号 </p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：5000 1040 0430 5250 0282</p>
				<p>&nbsp;&nbsp;物管费及水电空调费打款帐号</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆博展物业管理有限公司</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：民生银行北部新区支行</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：1115 0142 1000 0047</p>
				<br />
				<p>（以下无正文）</p>
				<br />
				<div id="me">
					<p>甲方签章：重庆汽博实业有限公司</p>
					<p>委托代理人：<input  class="qz" name="first_agent" value="何婕" /></p>
					<p>联系方式：89189988 </p>
					<p>日期：<input type="date" class="qz" name="first_date" id="date1" /></p>
				</div>
				<div id="other">
					<p>乙方签章：<input  class="qz" name="second_sign" /></p>
					<p>委托代理人：<input  class="qz" name="second_agent" /></p>
					<p>联系方式： <input  class="qz" name="phone" /></p>
					<p>日期：<input  type="date" class="qz" name="second_date" id="date2" /></p>
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