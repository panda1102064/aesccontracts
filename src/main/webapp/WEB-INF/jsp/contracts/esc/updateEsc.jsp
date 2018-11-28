<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<body>
<%-- <jsp:include page="../../headpart.jsp"></jsp:include> --%>
		<div id="wrap">
			<form action="updateEsc" method="post">
				<img src="<%=path%>/img/logo.png" width="270px" height="60px" />
				<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" value="${aesc.contract_serial}" /></p>
				<br /><br />
				<p class="h2" style="text-align: center;">重庆汽博实业有限公司<br />商业用房（场地）租赁合同</p>
				<br /><br />
				<p><h2 style="color:#3fc712; text-align:center;">${msg}</h2></p>
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>地址:<u>重庆两江新区金渝大道99号附15号</u></p>
				<p>承租方[以下简称乙方]:<input class="dtkz" name="merchant_name" value="${aesc.merchant_name}" /></p>
				<p>地址：<input  class="dtkz" name="address" value="${aesc.address}" /></p><br />
				<p class="zc">第一章 总 则</p>
				<p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法律、法规的相关规定，甲、乙双方本着平等自愿、互惠互利的基本原则，经协商一致，就乙方承租甲方商业用房（场地）及由甲方实行商业用房（场地）租赁所涉相关事宜，订立本合同，以兹双方共同遵守。</p>
				<p>&nbsp;&nbsp;1、乙方作为入驻汽博中心<input required="required" class="dtkz" name="area1" value="${aesc.area1}" />的承租人，承诺自觉遵守物业管理区域的各项使用管理规定，维护汽博中心<input required="required" class="dtkz" name="area2" value="${aesc.area2}" />的整体品牌形象及商业信誉。</p>
				<p>&nbsp;&nbsp;2、乙方作为入驻汽博中心<input required="required" class="dtkz" name="rental_location" value="${aesc.rental_location}" />的承租人，承诺自愿接受甲方于<input required="required" class="dtkzNum" name="accept_year" value="${aesc.accept_year}" />年<input required="required" class="dtkzNum" name="accept_month" value="${aesc.accept_month}" /> 月 <input required="required" class="dtkzNum" name="accept_day" value="${aesc.accept_day}" /> 日与重庆博展物业管理有限公司（以下简称“物业公司”）签订的《物业管理委托服务合同》之内容的约束，并按照该合同的约定向物业公司履行相关义务（包括但不限于以物业使用人的身份缴纳物管费、水电费等）。在租赁期间，若物业公司不再担任汽博中心的物业服务企业， 则乙方应当向实际担任汽博中心的物业服务企业缴纳相关费用。 </p>
				<p class="zc">第二章 租赁物业概况</p>
				<p>&nbsp;&nbsp;3、租赁物业基本情况：</p>
				<p>&nbsp;&nbsp;3.1、乙方承租的甲方商业用房（场地），位于：重庆两江新区金渝大道99号附15号（以下简称“汽博中心”）内的<input required="required" class="dtkz" name="lessee_location" value="${aesc.lessee_location}" />，其建筑面积为：<input required="required" class="dtkzNum" name="building_area" value="${aesc.building_area}" /> ㎡ 。</p>
				<p>&nbsp;&nbsp;3.2、租赁物业的前上述信息与《房屋产权登记证》所载明的信息不一致时，以《房屋产权登记证》为准。</p>
				<p class="zc">第三章 租赁期限及租赁物业交付</p>
				<p>&nbsp;&nbsp;4、本合同项下商业用房（场地）租赁期限为<input required="required" class="dtkzNum" name="expires" value="${aesc.expires}" />年，即从自<input required="required" class="dtkzNum" name="year_start" value="${aesc.year_start}" />年<input required="required" class="dtkzNum" name="month_start" value="${aesc.month_start}" />月<input required="required" class="dtkzNum" name="day_start" value="${aesc.day_start}" />日起至<input required="required" class="dtkzNum" name="year_end" value="${aesc.year_end}" />年<input required="required" class="dtkzNum" name="month_end" value="${aesc.month_end}" />月<input required="required" class="dtkzNum" name="day_end" value="${aesc.day_end}" />日止。</p>
				<p>&nbsp;&nbsp;5、甲方于<input required="required" class="dtkzNum" name="transfer_year"  value="${aesc.transfer_year}" />年<input required="required" class="dtkzNum" name="transfer_month"  value="${aesc.transfer_month}" />月<input required="required" class="dtkzNum" name="transfer_day" value="${aesc.transfer_day}" />日前将本合同项下的商业用房（场地）移交给乙方使用。</p>
				<p>&nbsp;&nbsp;6、交接房时，乙方须对租赁场房屋（场地）内已有的物品及设施逐一进行检查，经双方书面确认物品及设施完好后，甲方交付乙方使用；在合同有效期内，乙方应确保其租赁场地内的物品及设施的完好，租赁期间，租赁房屋及设施、设备（包括乙方增设、添附设施、设备）的维护、维修义务由乙方负责，所产生的费用由乙方承担。如在使用中出现的损耗（如玻璃幕墙破裂，卷帘门损坏，门、窗、门锁损坏等），由乙方负责维修，如出现不能维修的情况，由乙方负责照价赔偿或自行更换。合同期满后，乙方应保证租赁场地内的物品及设施完好无损交付甲方。</p>
				<p class="zc"> 第四章 乙方应支付费用</p>
				<p>&nbsp;&nbsp;7、乙方应当向甲方缴纳的房屋租赁费用：</p>
				<p>&nbsp;&nbsp;7.1、房屋（场地）租金（按乙方实际承租的建筑面积计收）为：</p>
				<div id="main">
					<ol>
						<c:forEach items="${requestScope.escList}" var="escList">
							<li><p><input type="hidden" name="date_id" value="${escList.date_id}" /><input required="required" class="dtkzNum" name="year_str" value="${escList.year_str}" />年<input required="required" class="dtkzNum" name="month_str" value="${escList.month_str}" />月<input required="required" class="dtkzNum" name="day_str" value="${escList.day_str}" />日至<input required="required" class="dtkzNum" name="year_ed" value="${escList.year_ed}" />年<input required="required" class="dtkzNum" name="month_ed" value="${escList.month_ed}" />月<input required="required" class="dtkzNum" name="day_ed" value="${escList.day_ed}" />日，租金单价为：<input required="required" class="dtkzNum" name="price" value="${escList.price}" />元/㎡/月，每月租金合计为：<input required="required" class="dtkzNum" name="total" value="${escList.total}" />元；</p><!-- <input class="btn-danger" type="button" value="添加" id="bt" /> --></li>
						</c:forEach>	
					</ol>
				</div>
				<p>&nbsp;&nbsp;7.2、房屋租金按<input required="required" class="dtkzNum" name="payment1" value="${aesc.payment1}" />支付。乙方应自本合同签订当日向甲方支付第一个<input required="required" class="dtkzNum" name="payment2" value="${aesc.payment2}" />的租金，以后乙方应在每<input required="required" class="dtkzNum" name="payment3" value="${aesc.payment3}" />初第一个月第15日前支付当<input required="required" class="dtkzNum" name="payment4" value="${aesc.payment4}" />的租金。乙方逾期交纳租金，逾期在15内的，每逾期一日，应按未交纳租金的总额0.5％的标准向甲方支付滞纳金；逾期时间超过15日的，甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;7.3、前述租金的付款方式：现金或转帐。</p>
				<p>&nbsp;&nbsp;7.4、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year1" value="${aesc.charge_year1}" />年<input required="required" class="dtkzNum" name="charge_month1"  value="${aesc.charge_month1}" />月<input required="required" class="dtkzNum" name="charge_day1" value="${aesc.charge_day1}" />日起算。</p>
				<p>&nbsp;&nbsp;7.5、此合同到期后，甲方有权对该场地的租金价格保持一定幅度的递增。若乙方选择续签合同，原则上递增幅度将不超过10％。</p>
				<p>&nbsp;&nbsp;8、乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" value="${aesc.cash_deposit}" />元（大写）<input required="required" class="dtkz" name="upper1" value="${aesc.upper1}" />元整，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其它违反合同约定行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，甲方有权向乙方追讨，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，但不计算利息。    </p>
				<p>&nbsp;&nbsp;8.1、租金、合同保证金及物管费及水电空调费交款账号如下：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;租金、合同保证金打款账号</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：5000 1040 0430 5250 0282</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;物管费及水电空调费打款账号</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆博展物业管理有限公司</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：民生银行北部新区支行</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：1115 0142 1000 0047</p>
				<p>&nbsp;&nbsp;8.2、前述保证金的付款方式：现金或转帐</p>
				<p>&nbsp;&nbsp;9、乙方应当向物业公司缴纳的物业费用：</p>
				<p>&nbsp;&nbsp;9.1、物业管理服务费（按乙方承租的物业实际建筑面积计收），汽博中心<input required="required" class="dtkz" name="area3" value="${aesc.area3}" />的用房为商业性质的物业，物业管理服务费的收费标准经重庆市物局审批为：<input required="required" class="dtkzNum" name="management_fee1" value="${aesc.management_fee1}" />元/㎡/月，物业管理服务费：<input required="required" class="dtkzNum" name="management_fee2" value="${aesc.management_fee2}" />元/月。</p>
				<p>&nbsp;&nbsp;9.2、商业用户水电交费单价分别为：电<input required="required" class="dtkzNum" name="power_rate" value="${aesc.power_rate}" />元人民币/KW/小时，水<input required="required" readonly="readonly" class="dtkzNum" name="water_rate" value="${aesc.water_rate}" />元人民币/T（含公共区域分摊费），网络服务费为<input required="required" class="dtkzNum" name="net_fee" value="${aesc.net_fee}" />元/㎡/月。</p>
				<p>&nbsp;&nbsp;9.3、公共区域的水电等公摊费用按据实分摊的原则收取。</p>
				<p>&nbsp;&nbsp;9.4、前述物业费用按<input required="required" class="dtkz" name="payment5" value="${aesc.payment5}" />支付：在签定合同时，乙方应向物业公司支付第一个<input required="required" class="dtkz" name="payment6" value="${aesc.payment6}" />的物业费，以后乙方应在每<input required="required" class="dtkz" name="payment7" value="${aesc.payment7}" />初15日前向物业公司支付当<input required="required" class="dtkz" name="payment8" value="${aesc.payment8}" />的物业费。 </p>
				<p>&nbsp;&nbsp;9.5、乙方如逾期10天不缴纳物业管理服务费或相关物业费用的，本合同约定物业公司有权按乙方应交付费用总额的每日3‰加收滞纳金；逾期30天者系恶意拖欠的，物业公司除有权按照5‰加收滞纳金还有权停止向乙方提供服务，同时视为乙方对本合同的跟本性违约。</p>
				<p>&nbsp;&nbsp;10、前述物业费用付款方式：现金或转账。</p>
				<p>&nbsp;&nbsp;10.1、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year2" value="${aesc.charge_year2}" />年<input required="required" class="dtkzNum" name="charge_month2" value="${aesc.charge_month2}" />月<input required="required" class="dtkzNum" name="charge_day2" value="${aesc.charge_day2}" />日起算。</p>
				<p class="zc">第五章 营业资格及乙方经营范围</p>
				<p>&nbsp;&nbsp;11、乙方应具备在中华人民共和国境内依法取得经营主体资格并符合在汽博中心开业的条件。</p>
				<p>&nbsp;&nbsp;12、乙方租用甲方的房屋（场地）仅作为<input required="required" class="dtkz" name="purpose" value="${aesc.purpose}" />使用。乙方租用的上述房屋（场地）仅供自己使用，未经甲方书面同意，不得转租、转让、许可第三方使用或擅自更改场地用途。乙方不得随意更改店招、门头。乙方不得利用展厅内部空间随意搭建或夹层。乙方不得超出约定范围经营；如需变更以上提及事项，须提前三十天以书面形式告知甲方，经甲方书面同意后方可变更。否则，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。</p>
				<p class="zc"> 第六章 装修要求及乙方在合同期内的经营</p>
				<p>&nbsp;&nbsp;13、乙方可根据自己的经营特色在甲方现有房屋（场地）的基础上对经营场所进行装修，装修方案必须报甲方审核并通过，装修费用由乙方自行承担。具体装修要求参见“装修管理服务协议”和“消防安全责任书的有关规定”。乙方须在《商业用房（场地）租赁合同》签订后且甲方向其交付租赁房屋（场地）后30天内开门营业，否则甲方可单方面解除合同并不予退还保证金。在租赁期内，乙方须保证正常有序地开展经营，不得擅自停业（若有正当理由或政府要求整改而导致的短期停业除外）。凡擅自停业者，需承担每日 80元的停业违约金。凡连续擅自停业超过20天或累计擅自停业超过20天者，本合同自动解除并终止其法律效力。本合同自动终止后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p>&nbsp;&nbsp;13.1、乙方不得对租赁物进行空置而不实际经营，必须确保在租赁物内每日配置经营人员至少1名，确保经营时间为每日的9:00-17:00，乙方在租赁物内配置的二手车数量不得少于<input required="required" class="dtkzNum" name="car_number" value="${aesc.car_number}" />台。</p>
				<p>&nbsp;&nbsp;13.2、乙方必须确保每月在甲方指定的公司完成交易记录<input required="required" class="dtkzNum" name="trading_record" value="${aesc.trading_record}" />次。交易记录以甲方确认的数据为准。</p>
				<p>&nbsp;&nbsp;13.3、凡乙方满足汽博善悦延保条件的入库车辆，其延保渗透率必须完成入库车辆的<input required="required" class="dtkzNum" name="penetrance" value="${aesc.penetrance}" />%（汽博善悦延保产品未覆盖的车辆除外）。</p>
				<p>&nbsp;&nbsp;13.4、若乙方长期综合考评未达标，甲方有权解除本合同，同时合同解除后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p class="zc">第七章 甲方权利与义务</p>
				<p>&nbsp;&nbsp;14、甲方有权依照政府法规和本合同的约定按时收取租金和其他费用。</p>
				<p>&nbsp;&nbsp;15、甲方有权协助有关部门制止违法、违规行为，对乙方拖欠租金等相关费用以及应当整改而不整改的行为甲方有权单方面采取（包括但不限于）强制中断水、电供给的处理等措施。</p>
				<p>&nbsp;&nbsp;16、甲方有权督促乙方按照本合同约定及时向重庆博展物业管理有限公司支付相关物业费用。</p>
				<p>&nbsp;&nbsp;17、汽博中心是一个开放式的商业园区，在相应的区域均设有临时停车位，在不影响园区交通通行的情况 ，供车辆使用人随机使用。未经许可，任何人不得将车辆停放于其他物业使用人的门店前及公共通道，如接到物业使用人受阻碍的投诉或巡查安保发现占用公共通道，甲方有权对乱停放车辆予以锁闭。</p>
				<p class="zc"> 第八章 乙方权利与义务</p>
				<p>&nbsp;&nbsp;18、乙方应当自觉遵守场地管理制度和服从场地物业管理。</p>
				<p>&nbsp;&nbsp;19、乙方有要求停止侵害其合法权益行为的权利及法律、法规所赋予的其他权利。</p>
				<p>&nbsp;&nbsp;20、乙方在装修物业时，须自觉遵守甲方制定的相关管理制度和政府颁布的相关法律法规。</p>
				<p>&nbsp;&nbsp;21、乙方应自觉维护所使用物业单元的整洁和完整。</p>
				<p>&nbsp;&nbsp;22、乙方应共同维护公共场地的环境、道路的畅通及公用设施的完好，自觉保持专用部位的整洁美观，自觉维护公用设施、场地的完好整洁，不得以任何形式占用公共通道、消防通道。对相邻物业的共用部位正确合理的使用、确保其他承租人相邻权权益，维护良好相邻关系。</p>
				<p>&nbsp;&nbsp;23、乙方不得在物业外墙附属的外墙窗台、雨棚等处摆放花盆、拖帕等杂物，以免造成高空坠物等人为事故的发生。因高空坠物等原因造成的第三人损害的，一切责任由乙方自行承担。</p>
				<p>&nbsp;&nbsp;24、乙方在物业的门楣、墙柱等专用区域设置户外广告牌等标示时，应提前一周将设置的标示的相关资料（复印件）交一份给甲方审核备案，并承诺设置的户外标志不影响汽博中心整体的商业形象和物业相邻权益，并经甲方书面审核同意后方可实施。</p>
				<p>&nbsp;&nbsp;25、按时缴纳租金、物业费用等其他费用，如遇出差等特殊情况应提前缴纳租金，逾期缴费应约定标准向甲方支付违约金。</p>
				<p>&nbsp;&nbsp;26、乙方用于办公、经营的自用物业区域应24小时设置值班人员，自用物业区域内的设施维护、消防、安全防护、清洁、外墙清晰等事务由乙方自行负责。如委托甲方提供特约服务的，双方另行约定，甲方按约定收取费用。</p>
				<p>&nbsp;&nbsp;27、乙方不得擅自占用、损坏物业共用部位、共用设施设备或改变其使用功能。</p>
				<p>&nbsp;&nbsp;28、乙方经甲方同意后对租赁房屋(场地)转租时，应事先通知甲方，履行物业退租验收手续，并就相关费用结清，并有义务和责任告知、敦促受让方及物业实际使用人，遵守履行本物业区域的各项物业管理规定，履行本合同之内容。如发生欠费或违约违规行为时，乙方有义务配合甲方制止违法、违规、违约行为并承担连带责任。</p>
				<p>&nbsp;&nbsp;29、乙方在经营过程中每日产生的垃圾应自行清理入袋，并集中放置与指定的垃圾堆放点，切勿将垃圾随意倾倒在物业公共区域。</p>
				<p>&nbsp;&nbsp;30、乙方如需在物业公共及公用部位接搭电源时，必须提前告知甲方并经同意后在甲方指导下实施。</p>
				<p>&nbsp;&nbsp;31、乙方专用区域内的消防安全责任由乙方自行负责，自觉遵守《中华人民共和国消防法》之规定。</p>
				<p>&nbsp;&nbsp;32、乙方充分享有相关法律、法规规定的其他权利，同时也应承担相关法律、法规规定的义务。</p>
				<p>&nbsp;&nbsp;33、乙方在合同期限届满或因故提前终止时，乙方应在撤离该场地前，须将该租赁房屋（场地）恢复到甲方交付该租赁房屋（场地）的时原貌，如果乙方不能及时的恢复该租赁房屋（场地）时，甲方有权不予退还乙方的履约保证金和所剩租金，维修费不足以弥补损失的，甲方有权处置乙方在现场遗留的所有资产或另行赔偿。</p>
				<p class="zc">第九章 合同的终止与解除</p>
				<p>&nbsp;&nbsp;34、合同履行过程中出现下列情形之一者，合同即告终止；</p>
				<p>&nbsp;&nbsp;(1).合同期满；</p>
				<p>&nbsp;&nbsp;(2).发生不可抗力（如地震、战争、自然灾害、政府变化政策等），致使协议无法继续履行。</p>
				<p>&nbsp;&nbsp;35、下列情形之一者，甲方有权解除合同，并要求乙方赔偿损失。</p>
				<p>&nbsp;&nbsp;(1).由于乙方的产品质量问题或有经营欺诈行为，而乙方又不能积极稳妥地解决此类事件，从而对汽博中心造成不良影响（以合法、真实性为准）。</p>
				<p>&nbsp;&nbsp;(2).本合同第六章第13条、第四章第7.2条、第7.6条项下约定的情形出现。 </p>
				<p>&nbsp;&nbsp;(3).未经甲方同意进行装修擅自改动房屋结构并造成安全隐患的。</p>
				<p>&nbsp;&nbsp;36、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方书面同意方可办理解除租赁手续，乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。未经甲方书面同意，乙方单方解除行为无效。</p>
				<p>&nbsp;&nbsp;37、因不可抗力因素导致合同无法履行，由双方各自承担所造成损失，互不追究对方承担损失的责任。</p>
				<p>&nbsp;&nbsp;38、合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，对此甲方无需向乙方支付任何补偿。</p>
				<p>&nbsp;&nbsp;39、合同期限届满，乙方若需继续承租，应提前一个月向甲方提出书面申请。如甲方同意续租，双方应另行签订租赁合同。</p>
				<p class="zc">第十章 其 他</p>
				<p>&nbsp;&nbsp;40、本合同履行过程中若发生争议，双方应友好协商解决。协商解决不能的任何一方均有权申请重庆仲裁委员会根据其的仲裁规则进行仲裁。</p>
				<p>&nbsp;&nbsp;41、附则</p>
                <p>&nbsp;&nbsp;41.1、本合同未尽事宜，甲、乙双方可另行签订书面补充协议，其补充内容与本合同具有同等法律效力。</p>
                <p>&nbsp;&nbsp;41.2、合同签定地点：重庆汽博中心。</p>
                <p>&nbsp;&nbsp;41.3、本协议一式<u> 肆  </u>份，经甲、乙双方签署后生效，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份，各份具有同等法律效力。</p>
                <p>&nbsp;&nbsp;42、本合同有效附件有：（本合同附件系本合同当然组成部分，与本合同具有同等法律效力）</p>
                <p>&nbsp;&nbsp;附件1.消防安全责任确认书。</p>
                <p>&nbsp;&nbsp;附件2.商家综合评选细则。(该评选细则会根据市场实际经营情况作出相应调整。）</p>
                <p>&nbsp;&nbsp;43、乙方确认本合同及其附件的送达及在履行合同过程中接收甲方书面文件、司法诉讼过程中进行司法文书送达等均按以下所示准确地址发出；如乙方未填写本项地址，视为同意甲方直接可向乙方签约时营业执照地址、身份证地址进行寄送。</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;指定送达地址：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;邮编：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u></p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;收件人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u> </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;其他指定代收人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u>  </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;电话：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u> </p>
                <p>&nbsp;&nbsp;43.1、签收人是受送达本人或者是前款指定的代收人的，签收人应当当场核对邮件内容。签收人发现邮件内容与回执上的文书名称不一致的，应当向邮政机构的投递员提出，否则视为一致。</p>
                <p>&nbsp;&nbsp;43.2、因受送达人自己提供或者确认的送达地址不准确、拒不提供送达地址、送达地址变更未及时告知人民法院、受送达本人或者指定的代收人拒绝签收，导致诉讼文书未能被受送达人实际接收的，文书退回之日视为送达之日。</p>
                <p>&nbsp;&nbsp;44、备注：</p>
				<p><input class="dtkz" name="remark" value="${aesc.remark}" /></p>
				<br />
				<p>（以下无正文）</p>
				<br />
				<div id="me">
					<p>甲方签章：重庆汽博实业有限公司</p>
					<p>法定代表人：<input  class="qz" name="first_legal_person" value="${aesc.first_legal_person}" /> </p>
					<p>委托代理人：<input class="qz" name="first_agent" value="${aesc.first_agent}" /></p>
					<p>联系方式：89189988 </p>
					<p>日期：<input type="date" class="qz" name="first_date" value="${aesc.first_date}" /></p>
				</div>
				<div id="other">
					<p>乙方签章：<input class="qz" name="second_sign" value="${aesc.second_sign}" /></p>
					<p>法定代表人：<input class="qz" name="second_legal_person" value="${aesc.second_legal_person}" /> </p>
					<p>委托代理人：<input  class="qz" name="second_agent" value="${aesc.second_agent}" /></p>
					<p>联系方式： <input  class="qz" name="phone" value="${aesc.phone}" /></p>
					<p>日期：<input type="date" class="qz" name="second_date" value="${aesc.second_date}" /></p>
				</div>
			<p style="clear: both;">附件1</p><br /><br />
			<p class="zc">消防安全责任书确认书</p><br /><br />
			<p>&nbsp;&nbsp;为加强汽博中心的消防安全工作，坚决杜绝重、特大火灾事故，努力减少火灾危害，保障汽博中心的秩序稳定，根据《中华人民共和国消防法》和《机关、团体、企业、事业单位消防安全管理规定》的文件精神，特制定消防安全目标管理责任书，由汽博中心各承租人签字确认以保证遵守。</p>
			<p>一、组织领导</p>
			<p>&nbsp;&nbsp;1. 各单位要本着"谁主管，谁负责"的原则，切实加强消防工作的领导，将消防工作纳入本单位的日常管理工作中，做到同计划、同布置、同检查、同总结、同评比。</p>
			<p>&nbsp;&nbsp;2. 全面推行消防安全责任制，各单位法定代表人或负责人为消防安全第一责任人，同时要确定一名领导分管消防安全工作，在本单位范围内普遍实行逐级防火责任制和岗位责任制。</p>
			<p>&nbsp;&nbsp;3. 各单位分管消防的领导要协调做好本单位的消防安全工作，指定专人定期进行消防安全检查，督促下属各部门落实消防安全工作。</p>
			<p>二、责任目标</p>
			<p>&nbsp;&nbsp;1. 各单位要根据本单位的实际情况，制定重点部位的消防安全制度（制度要上墙公示），并经常检查监督，实行岗位责任制，确保本单位不发生火灾事故。</p>
			<p>&nbsp;&nbsp;2. 要利用各种方式向单位内部成员及客户进行消防安全教育，增强单位全体人员的消防安全意识，提高安全生产、作业的自觉性。</p>
			<p>&nbsp;&nbsp;3. 建立消防安全检查制度，坚持每季度和重大节假日对本单位重点部位进行消防安全检查，并做好记录，发现隐患及时整改；短期内解决不了的要采取临时安全措施。</p>
			<p>&nbsp;&nbsp;4. 各单位要加强值班巡视，明确值班人员的职责任务，做到下班后拉闸断电（不能拉闸断电的要有安全措施），能发现和处理各种火灾险情。重点部位值班人员要做到"三知"（知防火知识、知灭火知识、知火警电话）和"四会"（会报警、会使用灭火器材、会扑救初期火灾、会疏散自救）。</p>
			<p>&nbsp;&nbsp;5. 对于配备的消防设施与器材，要有专人保管，做到布局合理，不挪用、不损坏，不占用防火间距和阻塞消防通道。</p>
			<p>&nbsp;&nbsp;6. 发现本单位有可能引发火灾的隐患，要及时向物业管理部门报告，对上级公安消防和物管部门下发的消防隐患整改意见，要积极落实整改。</p>
			<p>&nbsp;&nbsp;7.本责任书自签字之日起生效，并产生法律效力。</p>
			<p> 三、本承租人已经认真阅读该责任确认书，保证遵守该责任确认书！</p><br /><br /><br /><br />
			<div style="float: right;">
			<p> 承租人签字或盖章：<input  class="dtkz" name="confirmation_signatory" value="${aesc.confirmation_signatory}" /></p>
			<p> <input  class="dtkzNum" name="confirmation_year" value="${aesc.confirmation_year}" /> 年 <input class="dtkzNum" name="confirmation_month" value="${aesc.confirmation_month}" /> 月<input  class="dtkzNum" name="confirmation_day" value="${aesc.confirmation_day}" /> 日</p>
			</div>
			<p class="butn">
					<button type="submit">修改</button>
				</p>
				<input type="hidden" name="username" value="${user.username}" />
				<input type="hidden" name="contract_id" value="${aesc.contract_id}" />
				<input type="hidden" name="status" value="1" />
			</form>
			<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<p>附件2</p><br /><br />
			<p class="zc">商家综合评选细则</p><br /><br />
			<p>&nbsp;&nbsp;重庆汽博中心新二手车市场自正式营业后，将从多方位树立其优质精品二手车商城的品牌形象，为激励商户良性竞争，提升商户的信誉度，宣传优质商户。我司将从2016年度开始综合评选场内优质经营商家。</p>
			<p>&nbsp;&nbsp;本次综合评选将结合商家每月的经营情况、交易量、延保业务量、消费者投诉和反映、市场活动参与积极度、租金及相关费用缴纳的及时性等进行综合评选。凡被评为优质商户的，均由市场统一发放优质商家证牌，并在汽博官方渠道及相应的其他宣传渠道做推荐。凡综合考评较低的商家，其以后在合同续签、场地选位，租金价格等方面将不再享有优先、优惠等条件。若长期综合考评分数不达标，甲方将有权单方面终止其租赁合同。</p>
			<p>&nbsp;&nbsp;考评占比：</p>
			<p>一、商户经营情况</p>
			<p>&nbsp;&nbsp;1、达标完成合同约定的每月最低二手车交易量。（30分）</p>
			<p>&nbsp;&nbsp;若超过最低月交易量的20%，则加3分。</p>
			<p>&nbsp;&nbsp;2、达标完成合同约定的每月最低延保业务渗透率。（40分）</p>
			<p>&nbsp;&nbsp;离每月最低延保业务量差1个，扣5分。超出1个加2分。</p>
			<p>&nbsp;&nbsp;3、若成功完成一次交易按揭，则加2分。10分封顶。</p>
			<p>二、缴纳费用相关情况</p>
			<p>&nbsp;&nbsp;1、每月或每季度按时缴纳租金及物管等相关费用，无费用拖欠（5分）</p>
			<p>三、市场活动参与配合度</p>
			<p>&nbsp;&nbsp;1、积极主动配合市场方的相关市场活动，能积极提出有利于市场发展的合理化建议。（5分）</p>
			<p>&nbsp;&nbsp;2、若主动进行品牌营销及广告投放，则加5分。</p>
			<p>四、消费者投诉及市场日常管理</p>
			<p>&nbsp;&nbsp;1、商户在实际经营过程中无消费者投诉案例。（5分）</p>
			<p>&nbsp;&nbsp;2、遵守市场内相关的管理条例，禁止占用公共通道，禁止在经营场所进行汽车的整备及美容，禁止私自乱搭线路，服从市场管理方的相关管理条例。（10分）</p>
			<p>&nbsp;&nbsp;3、经营展场内车辆摆放有序规范，车辆信息有无市场统一的公开展示证。（5分）</p>
			<p>&nbsp;&nbsp;4、若扰乱市场正常经营秩序，打架斗殴，聚众赌博，扣5分。</p>
			<p>&nbsp;&nbsp;5、若发现对消费者隐瞒欺诈，水泡车，火烧车，重大事故车。一经查证，将列入不诚信商家名单，取消星级商家评选。</p>
			<p>&nbsp;&nbsp;此综合考核评选，我市场将每季度考评一次，于次季度公布结果，具体标准如下：</p>
			<p>&nbsp;&nbsp;★★★★★&nbsp;90分以上&nbsp;&nbsp;市场推荐商户（金牌商户）</p>
			<p>&nbsp;&nbsp;★★★★&nbsp;&nbsp;70—80分&nbsp;&nbsp;优质商户</p>
			<p>&nbsp;&nbsp;综合考核评分低于50分的商家，将列入不达标备选商家名单中。</p>
		</div>
		<%-- <jsp:include page="../../footpart.jsp"></jsp:include> --%>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var main = document.getElementById("main");
		var bt = document.getElementById("bt");
		bt.onclick = function() {
			var len = main.getElementsByTagName("li").length;
			var oul = main.getElementsByTagName("ol")[0];
			var oli = document.createElement("li");
			var button = document.createElement("input");
			
			oli.innerHTML = "<p><input required='required' class='dtkzNum' name='year_str' />年<input required='required' class='dtkzNum' name='month_str' />月<input required='required' class='dtkzNum' name='day_str' />日至<input required='required' class='dtkzNum' name='year_ed' />年<input required='required' class='dtkzNum' name='month_ed' />月<input required='required' class='dtkzNum' name='day_ed' />日，租金单价为：<input required='required' class='dtkzNum' name='price' />元/㎡/月，每月租金合计为：<input required='required' class='dtkzNum' name='total' />元；</p>";
			button.type = "button";
			button.id = "bt" + len;
			button.value = "删除";
			oli.appendChild(button);
			oul.appendChild(oli);
			button.onclick = function() {
				button.parentNode.remove(button.parentNode);
			}
		}
	}
</script>
	</body>
</html>