<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@include file="../../base.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
	<body>
	<div class="PageNext"><jsp:include page="../../cover.jsp"/><!--动态包含--></div> 
		<div id="wrap">
				<p class="h2" style="text-align: center;">商业用房（场地）租赁合同</p>
				<br /><br />
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>地址:<u>重庆两江新区金渝大道99号附15号</u></p>
				<p>承租方[以下简称乙方]:<u> ${aesc.merchant_name} </u></p>
				<p>地址：<u> ${aesc.address}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></p><br />
				<br /><p class="zc">第一章 总 则</p><br />
				<p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法律、法规的相关规定，甲、乙双方本着平等自愿、互惠互利的基本原则，经协商一致，就乙方承租甲方商业用房（场地）及由甲方实行商业用房（场地）租赁所涉相关事宜，订立本合同，以兹双方共同遵守。</p>
				<p>&nbsp;&nbsp;1、乙方作为入驻汽博中心<u> ${aesc.area1} </u>的承租人，承诺自觉遵守物业管理区域的各项使用管理规定，维护汽博中心<u> ${aesc.area2} </u>的整体品牌形象及商业信誉。</p>
				<p>&nbsp;&nbsp;2、乙方作为入驻汽博中心<u> ${aesc.rental_location} </u>的承租人，承诺自愿接受甲方于<u> ${aesc.accept_year} </u>年<u> ${aesc.accept_month} </u>月 <u> ${aesc.accept_day} </u>日与重庆博展物业管理有限公司（以下简称“物业公司”）签订的《物业管理委托服务合同》之内容的约束，并按照该合同的约定向物业公司履行相关义务（包括但不限于以物业使用人的身份缴纳物管费、水电费等）。在租赁期间，若物业公司不再担任汽博中心的物业服务企业， 则乙方应当向实际担任汽博中心的物业服务企业缴纳相关费用。 </p>
				<br /><p class="zc">第二章 租赁物业概况</p><br />
				<p>&nbsp;&nbsp;3、租赁物业基本情况：</p>
				<p>&nbsp;&nbsp;3.1、乙方承租的甲方商业用房（场地），位于：重庆两江新区金渝大道99号附15号（以下简称“汽博中心”）内的<u> ${aesc.lessee_location} </u>，其建筑面积为：<u> ${aesc.building_area} </u>㎡ 。</p>
				<p>&nbsp;&nbsp;3.2、租赁物业的前上述信息与《房屋产权登记证》所载明的信息不一致时，以《房屋产权登记证》为准。</p>
				<br /><p class="zc">第三章 租赁期限及租赁物业交付</p><br />
				<p>&nbsp;&nbsp;4、本合同项下商业用房（场地）租赁期限为<u> ${aesc.expires} </u>年，即从自<u> ${aesc.year_start} </u>年<u> ${aesc.month_start} </u>月<u> ${aesc.day_start} </u>日起至<u> ${aesc.year_end} </u>年<u> ${aesc.month_end} </u>月<u> ${aesc.day_end} </u>日止。</p>
				<p>&nbsp;&nbsp;5、甲方于<u> ${aesc.transfer_year} </u>年<u> ${aesc.transfer_month} </u>月<u> ${aesc.transfer_day} </u>日前将本合同项下的商业用房（场地）移交给乙方使用。</p>
				<p>&nbsp;&nbsp;6、交接房时，乙方须对租赁场房屋（场地）内已有的物品及设施逐一进行检查，经双方书面确认物品及设施完好后，甲方交付乙方使用；在合同有效期内，乙方应确保其租赁场地内的物品及设施的完好，租赁期间，租赁房屋及设施、设备（包括乙方增设、添附设施、设备）的维护、维修义务由乙方负责，所产生的费用由乙方承担。如在使用中出现的损耗（如玻璃幕墙破裂，卷帘门损坏，门、窗、门锁损坏等），由乙方负责维修，如出现不能维修的情况，由乙方负责照价赔偿或自行更换。合同期满后，乙方应保证租赁场地内的物品及设施完好无损交付甲方。</p>
				<br /><p class="zc"> 第四章 乙方应支付费用</p><br />
				<p>&nbsp;&nbsp;7、乙方应当向甲方缴纳的房屋租赁费用：</p>
				<p>&nbsp;&nbsp;7.1、房屋（场地）租金（按乙方实际承租的建筑面积计收）为：</p>
				<ol>
				<c:forEach items="${requestScope.escList}" var="aescDate">
						<li><p><u> ${aescDate.year_str} </u>年<u> ${aescDate.month_str} </u>月<u> ${aescDate.day_str} </u>日至<u> ${aescDate.year_ed} </u>年<u> ${aescDate.month_ed} </u>月<u> ${aescDate.day_ed} </u>日，租金单价为：<u> ${aescDate.price} </u>元/㎡/月，每月租金合计为：<u> ${aescDate.total} </u>元；</p></li>
				</c:forEach>
				</ol>
				<p>&nbsp;&nbsp;7.2、房屋租金按<u> ${aesc.payment1} </u>支付。乙方应自本合同签订当日向甲方支付第一个<u> ${aesc.payment2} </u>的租金，以后乙方应在每<u> ${aesc.payment3} </u>初第一个月第15日前支付当<u> ${aesc.payment4} </u>的租金。乙方逾期交纳租金，逾期在15内的，每逾期一日，应按未交纳租金的总额0.5％的标准向甲方支付滞纳金；逾期时间超过15日的，甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;7.3、前述租金的付款方式：现金或转账。</p>
				<p>&nbsp;&nbsp;7.4、上述收费起算时间：从<u> ${aesc.charge_year1} </u>年<u> ${aesc.charge_month1} </u>月<u> ${aesc.charge_day1} </u>日起算。</p>
				<p>&nbsp;&nbsp;7.5、此合同到期后，甲方有权对该场地的租金价格保持一定幅度的递增。若乙方选择续签合同，原则上递增幅度将不超过10％。</p>
				<p>&nbsp;&nbsp;8、乙方应向甲方支付履约保证金：￥<u> ${aesc.cash_deposit} </u>元（大写）<u> ${aesc.upper1} </u>元整，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其它违反合同约定行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，甲方有权向乙方追讨，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，但不计算利息。    </p>
				<p>&nbsp;&nbsp;8.1、前述保证金的付款方式：现金或转账。</p>
				<p>&nbsp;&nbsp;9、乙方应当向物业公司缴纳的物业费用：</p>
				<p>&nbsp;&nbsp;9.1、物业管理服务费（按乙方承租的物业实际建筑面积计收），汽博中心<u> ${aesc.area3} </u>的用房为商业性质的物业，物业管理服务费的收费标准经重庆市物局审批为：<u> ${aesc.management_fee1} </u>元/㎡/月，物业管理服务费：<u> ${aesc.management_fee2} </u>元/月。</p>
				<p>&nbsp;&nbsp;9.2、商业用户水电交费单价分别为：电<u> ${aesc.power_rate} </u>元人民币/KW/小时，水<u> ${aesc.water_rate} </u>元人民币/T（含公共区域分摊费），网络服务费为<u> ${aesc.net_fee} </u>元/㎡/月。</p>
				<p>&nbsp;&nbsp;9.3、公共区域的水电等公摊费用按据实分摊的原则收取。</p>
				<p>&nbsp;&nbsp;9.4、前述物业费用按<u> ${aesc.payment5} </u>支付；在签定合同时，乙方应向物业公司支付第一个<u> ${aesc.payment6} </u>的物业费，以后乙方应在每<u> ${aesc.payment7} </u>初15日前向物业公司支付当<u> ${aesc.payment8} </u>的物业费。 </p>
				<p>&nbsp;&nbsp;9.5、乙方如逾期10天不缴纳物业管理服务费或相关物业费用的，本合同约定物业公司有权按乙方应交付费用总额的每日3‰加收滞纳金；逾期30天者系恶意拖欠的，物业公司除有权按照5‰加收滞纳金还有权停止向乙方提供服务，同时视为乙方对本合同的跟本性违约。</p>
				<p>&nbsp;&nbsp;10、前述物业费用付款方式：现金或转账。</p>
				<p>&nbsp;&nbsp;10.1、上述收费起算时间：从<u> ${aesc.charge_year2} </u>年<u> ${aesc.charge_month2} </u>月<u> ${aesc.charge_day2} </u>日起算。</p>
				<br /><p class="zc">第五章 营业资格及乙方经营范围</p><br />
				<p>&nbsp;&nbsp;11、乙方应具备在中华人民共和国境内依法取得经营主体资格并符合在汽博中心开业的条件。</p>
				<p>&nbsp;&nbsp;12、乙方租用甲方的房屋（场地）仅作为<u> ${aesc.purpose} </u>使用。乙方租用的上述房屋（场地）仅供自己使用，未经甲方书面同意，不得转租、转让、许可第三方使用或擅自更改场地用途。乙方不得随意更改店招、门头。乙方不得利用展厅内部空间随意搭建或夹层。乙方不得超出约定范围经营；如需变更以上提及事项，须提前三十天以书面形式告知甲方，经甲方书面同意后方可变更。否则，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。</p>
				<br /><p class="zc"> 第六章 装修要求及乙方在合同期内的经营</p><br />
				<p>&nbsp;&nbsp;13、乙方可根据自己的经营特色在甲方现有房屋（场地）的基础上对经营场所进行装修，装修方案必须报甲方审核并通过，装修费用由乙方自行承担。具体装修要求参见“装修管理服务协议”和“消防安全责任书的有关规定”。乙方须在《商业用房（场地）租赁合同》签订后且甲方向其交付租赁房屋（场地）后30天内开门营业，否则甲方可单方面解除合同并不予退还保证金。在租赁期内，乙方须保证正常有序地开展经营，不得擅自停业（若有正当理由或政府要求整改而导致的短期停业除外）。凡擅自停业者，需承担每日 80元的停业违约金。凡连续擅自停业超过20天或累计擅自停业超过20天者，本合同自动解除并终止其法律效力。本合同自动终止后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p>&nbsp;&nbsp;13.1、乙方不得对租赁物进行空置而不实际经营，必须确保在租赁物内每日配置经营人员至少1名，确保经营时间为每日的9:00-17:00，乙方在租赁物内配置的二手车数量不得少于<u> ${aesc.car_number} </u>台。</p>
				<p>&nbsp;&nbsp;13.2、乙方必须确保每月在甲方指定的公司完成交易记录<u> ${aesc.trading_record} </u>次。交易记录以甲方确认的数据为准。</p>
				<p>&nbsp;&nbsp;13.3、凡乙方满足汽博善悦延保条件的入库车辆，其延保渗透率必须完成入库车辆的<u> ${aesc.penetrance} </u>%（汽博善悦延保产品未覆盖的车辆除外）。</p>
				<p>&nbsp;&nbsp;13.4、若乙方长期综合考评未达标，甲方有权解除本合同，同时合同解除后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<br /><p class="zc">第七章 甲方权利与义务</p><br />
				<p>&nbsp;&nbsp;14、甲方有权依照政府法规和本合同的约定按时收取租金和其他费用。</p>
				<p>&nbsp;&nbsp;15、甲方有权协助有关部门制止违法、违规行为，对乙方拖欠租金等相关费用以及应当整改而不整改的行为甲方有权单方面采取（包括但不限于）强制中断水、电供给的处理等措施。</p>
				<p>&nbsp;&nbsp;16、甲方有权督促乙方按照本合同约定及时向重庆博展物业管理有限公司支付相关物业费用。</p>
				<p>&nbsp;&nbsp;17、汽博中心是一个开放式的商业园区，在相应的区域均设有临时停车位，在不影响园区交通通行的情况 ，供车辆使用人随机使用。未经许可，任何人不得将车辆停放于其他物业使用人的门店前及公共通道，如接到物业使用人受阻碍的投诉或巡查安保发现占用公共通道，甲方有权对乱停放车辆予以锁闭。</p>
				<br /><p class="zc"> 第八章 乙方权利与义务</p><br />
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
				<br /><p class="zc">第九章 合同的终止与解除</p><br />
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
				<br /><p class="zc">第十章 其 他</p><br />
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
				<p><u> ${aesc.remark} </u></p>
				<p>&nbsp;&nbsp;45、租金、合同保证金及物管费及水电空调费交款账号如下：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;租金、合同保证金打款账号</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;账号：5000 1040 0430 5250 0282</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;物管费及水电空调费打款账号</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆博展物业管理有限公司</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：民生银行北部新区支行</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;账号：1115 0142 1000 0047</p>
                <p>&nbsp;</p>
                <p>（以下无正文）</p>
                <p>&nbsp;</p>
				<div id="me">
					<p>甲方签章：重庆汽博实业有限公司</p>
					<p>法定代表人：${aesc.first_legal_person}</p>
					<p>委托代理人：${aesc.first_agent}</p>
					<p>联系方式：89189988 </p>
					<p>日期：${aesc.first_date}</p>
				</div>
				<div id="other">
					<p>乙方签章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					<p>法定代表人：${aesc.second_legal_person}</p>
					<p>委托代理人：${aesc.second_agent}</p>
					<p>联系方式： ${aesc.phone}</p>
					<p>日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				</div>
				<div class="PageBefore"><jsp:include page="../../xfaqzrqrs.jsp"/></div>
				<div><jsp:include page="../../sjzhpxxz.jsp"/></div>
		</div>
	</body>
</html>
