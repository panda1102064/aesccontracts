<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<body>
<jsp:include page="../../headpart.jsp"></jsp:include>
		<div id="wrap">
			<form action="saveMcgcbgsht" method="post">
				<img src="<%=path%>/img/logo.png" width="270px" height="60px" />
				<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" /></p>
				<br /><br />
				<p class="h2" style="text-align: center;">重庆汽博实业有限公司<br />商业用房（场地）租赁合同</p>
				<br /><br />
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>地址:<u>重庆北部新区金渝大道99号</u></p>
				<p>承租方[以下简称乙方]:<input class="dtkz" name="merchant_name" /></p>
				<p>地址：<input class="dtkz" name="address" /></p><br />
				<p class="zc">第一章 总 则</p>
				<p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法、律法规的相关规定，甲、乙双方本着平等自愿、互惠互利的基本原则，经协商一致，就乙方承租甲方商业用房（场地）及由甲方实行商业用房（场地）租赁所涉相关事宜，订立本合同，以兹双方共同遵守。</p>
				<p>&nbsp;&nbsp;1、乙方作为入驻汽博中心<input required="required" class="dtkz" name="area1" value="名车广场  场办公室" />的承租人，承诺自觉遵守物业管理区域的各项使用管理规定，维护汽博中心<input required="required"  class="dtkz" name="area2" value="名车广场" />的整体品牌形象及商业信誉。</p>
				<p>&nbsp;&nbsp;2、乙方作为入驻汽博中心<input  required="required" class="dtkz" name="rental_location" value="名车广场  场办公室" />的承租人，承诺自愿接受甲方于<input  required="required" class="dtkzNum" name="accept_year" value="2018" />年<input required="required"  class="dtkzNum" name="accept_month" value="1" /> 月 <input required="required"  class="dtkzNum" name="accept_day" value="1" /> 日与重庆博展物业管理有限公司（以下简称“物业公司”）签订的《物业管理委托服务合同》之内容的约束，并按照该合同的约定向物业公司履行相关义务（包括但不限于以物业使用人的身份缴纳物管费、水电费等）。在租赁期间，若物业公司不再担任汽博中心的物业服务企业， 则乙方应当向实际担任汽博中心的物业服务企业缴纳相关费用。 </p>
				<p class="zc">第二章 租赁物业概况</p>
				<p>&nbsp;&nbsp;3、租赁物业基本情况：</p>
				<p>&nbsp;&nbsp;3.1、乙方承租的甲方商业用房（场地），位于：重庆北部新区经开园金渝大道99号（以下简称“汽博中心”）内的<input required="required" class="dtkz" name="lessee_location" />，其建筑面积为：<input  required="required" class="dtkzNum" name="building_area" />㎡ ，该租赁场地的房屋（场地）租金、物业管理服务费或其它根据场地面积计算的款项均以本款约定的租赁建筑面积计算。</p>
				<p>&nbsp;&nbsp;3.2、租赁物业的前上述信息与《房屋产权登记证》所载明的信息不一致时，以《房屋产权登记证》为准。</p>
				<p class="zc">第三章 租赁期限及租赁物业交付</p>
				<p>&nbsp;&nbsp;4、本合同项下商业用房（场地）租赁期限为<input required="required" class="dtkzNum" name="expires" value="" />年，即从自<input  required="required" class="dtkzNum" name="year_start" value="2018" />年<input required="required"  class="dtkzNum" name="month_start" value="1" />月<input required="required"  class="dtkzNum" name="day_start" value="1" />日起至<input required="required"  class="dtkzNum" name="year_end" value="2018" />年<input required="required" class="dtkzNum" name="month_end" value="6" />月<input required="required" class="dtkzNum" name="day_end" value="30" />日止。</p>
				<p>&nbsp;&nbsp;5、甲方于<input required="required" class="dtkzNum" name="transfer_year" value="2018" />年<input required="required" class="dtkzNum" name="transfer_month" value="1" />月<input required="required" class="dtkzNum" name="transfer_day" value="1" />日前将本合同项下的商业用房（场地）移交给乙方使用。</p>
				<p>&nbsp;&nbsp;6、交接房时，乙方须对租赁场房屋（场地）内已有的物品及设施逐一进行检查，经双方书面确认物品及设施完好后，甲方交付乙方使用；在合同有效期内，乙方应确保其租赁场地内的物品及设施的完好，租赁期间，租赁房屋及设施、设备（包括乙方增设、添附设施、设备）的维护、维修义务由乙方负责，所产生的费用由乙方承担。如在使用中出现的损耗（如玻璃幕墙破裂，卷帘门损坏，门、窗、门锁损坏等），由乙方负责维修，如出现不能维修的情况，由乙方负责照价赔偿或自行更换。合同期满后，乙方应保证租赁场地内的物品及设施完好无损交付甲方。</p>
				<p class="zc"> 第四章 乙方应支付费用</p>
				<p>&nbsp;&nbsp;7、乙方应当向甲方缴纳的房屋租赁费用（暂定）：</p>
				<p>&nbsp;&nbsp;7.1、房屋（场地）租金（按乙方实际承租的建筑面积计收）为每月租金合计人民币：<input required="required" class="dtkzNum" name="total" />元(大写)<input required="required" class="dtkz" name="upper1" />元整 。</p>
				<p>&nbsp;&nbsp;7.2、房屋租金按<input required="required" class="dtkz" name="payment1" value="半年"/>支付。乙方应自本合同签订当日向甲方支付第一个<input required="required" class="dtkz" name="payment2" value="半年"/>的租金，以后乙方应在每<input required="required" class="dtkz" name="payment3" value="半年"/>初第一个月第10日前支付本<input required="required" class="dtkz" name="payment4" value="半年"/>的租金。乙方逾期交纳租金，逾期在15内的，每逾期一日，应按未交纳租金的总额0.5％的标准向甲方支付滞纳金；逾期时间超过15日的，甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;7.3、前述租金的付款方式：现金或转帐支票。</p>
				<p>&nbsp;&nbsp;7.4、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year1" value="2018" />年<input required="required" class="dtkzNum" name="charge_month1" value="1" />月<input required="required" class="dtkzNum" name="charge_day1" value="1" />日起算。</p>
				<p>&nbsp;&nbsp;8、乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" />元（大写）<input required="required" class="dtkz" name="upper2" />元整，在本合同签订时乙方应当立即以一次性付清的方式向甲方支付。合同有效期内若乙方擅自解除合同或有其它违反合同约定行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，甲方有权向乙方追讨，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，但不计算利息。    </p>
				<p>&nbsp;&nbsp;8.1、前述保证金的付款方式：现金或转帐支票。</p>
				<p>&nbsp;&nbsp;9、乙方应当向物业公司缴纳的物业费用（暂定）：</p>
				<p>&nbsp;&nbsp;9.1、物业管理服务费（按乙方承租的物业实际建筑面积计收），汽博中心<input required="required" class="dtkz" name="area3" value="名车广场" />的用房为商业性质的物业，物业管理服务费的收费标准经重庆市物局审批为：<input required="required" class="dtkzNum" name="management_fee1" />元/㎡/月，物业管理服务费：<input required="required" class="dtkzNum" name="management_fee2" />元/月。</p>
				<p>&nbsp;&nbsp;9.2、中央空调使用耗能费：按实际公示标准收费。</p>
				<p>&nbsp;&nbsp;9.3、商业用户水电交费单价分别为：电<input required="required" class="dtkzNum" name="power_rate" value="1.14" readonly="readonly" />元人民币/KW/小时，水<input  readonly="readonly" required="required" class="dtkzNum" name="water_rate" value="4.80"/>元人民币/T（含公共区域分摊费）。</p>
				<p>&nbsp;&nbsp;9.4、公共区域的水电等公摊费用按据实分摊的原则收取。</p>
				<p>&nbsp;&nbsp;9.5、前述物业费用按<input required="required" class="dtkz" name="payment5" value="季度"/>支付；在签定合同时，乙方应向物业公司支付第一个<input required="required" class="dtkz" name="payment6" value="季度" />的物业费，以后乙方应在每<input required="required" class="dtkz" name="payment7" value="季度" />初25日前向物业公司支付下个<input required="required" class="dtkz" name="payment8" value="季度"/>的物业费。 </p>
				<p>&nbsp;&nbsp;9.6、乙方如逾期10天不缴纳物业管理服务费或相关物业费用的，本合同约定物业公司有权按乙方应交付费用总额的每日3‰加收滞纳金；逾期30天者系恶意拖欠的，物业公司除有权按照5‰加收滞纳金还有权停止向乙方提供服务，同时视为乙方对本合同的跟本性违约。</p>
				<p>&nbsp;&nbsp;10、前述物业费用付款方式：现金或转账支票。</p>
				<p>&nbsp;&nbsp;10.1、上述收费起算时间：从<input required="required" class="dtkzNum" name="charge_year2" value="2018" />年<input required="required" class="dtkzNum" name="charge_month2" value="1" />月<input required="required" class="dtkzNum" name="charge_day2" value="1" />日起算。</p>
				<p class="zc">第五章 营业资格及乙方经营范围</p>
				<p>&nbsp;&nbsp;11、乙方应具备在中华人民共和国境内依法取得经营主体资格并符合在汽博中心开业的条件。</p>
				<p>&nbsp;&nbsp;12、乙方租用甲方的房屋（场地）仅作为<input required="required" class="dtkz" name="purpose" value="办公室" />使用。乙方不得超出约定范围经营；如需变更经营范围，须提前二十天以书面形式告知甲方，经甲方书面同意后方可变更。否则，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。</p>
				<p>&nbsp;&nbsp;12.1、未经甲方书面同意，乙方不得对本合同项下租赁物对外进行整体转租、分项转租、转用、赠与他人使用。若乙方违反本条约定，对外擅自转租、转用的，甲方有权解除合同，并要求乙方对甲方损失承担赔偿责任。若乙方擅自转租、转用而获得收益的，应当将收益无条件返还给甲方。</p>
				<p class="zc"> 第六章 装修要求及乙方在合同期内的经营</p>
				<p>&nbsp;&nbsp;13、乙方可根据自己的经营特色在甲方现有房屋（场地）的基础上对经营场所进行装修，装修方案必须报甲方审核并通过，装修费用由乙方自行承担。若乙方实施的装修需要经相关行政职能部门审批的，乙方应当完善相应的报备手续，具体装修要求参见“装修管理服务协议”和“消防安全责任书的有关规定”。乙方须在《商业用房（场地）租赁合同》签订后且甲方向其交付租赁房屋（场地）后30天内开门营业，否则甲方可单方面解除合同并不予退还保证金。在租赁期内，乙方须保证正常有序地开展经营，不得擅自停业（若有正当理由或政府要求整改而导致的短期停业除外）。凡擅自停业者，需承担每日 80元的停业违约金。凡连续擅自停业超过20天或累计擅自停业超过20天者，本合同自动解除并终止其法律效力。本合同自动终止后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p>&nbsp;&nbsp;13.1、乙方实施的装修、装饰、增设、添附必须符合居住或经营（行业规定）、卫生、消防安全等相关规定。乙方应请求有合格资质的检验部门对房屋进行查验检收，所需费用由乙方承担。若经检验不合格，乙方应承担改正房屋及其设施直至房屋检验合格为止。</p>
				<p>&nbsp;&nbsp;13.2、租赁期满或合同解除的，租赁物内的装修、装饰、增设、添附按照《最高人民法院关于审理城镇房屋租赁合同纠纷案件具体应用法律若干问题的解释》相关规定进行处理。</p>
				<p class="zc">第七章 甲方权利与义务</p>
				<p>&nbsp;&nbsp;14、甲方有权依照政府法规和本合同的约定按时收取租金和其他费用。</p>
				<p>&nbsp;&nbsp;15、甲方有权协助有关部门制止违法、违规行为，对乙方拖欠租金等相关费用以及应当整改而不整改的行为甲方有权单方面采取(包括但不限于)强制中断水、电供给的处理等措施。</p>
				<p>&nbsp;&nbsp;16、甲方有权督促乙方按照本合同约定及时支付相关物业费用。</p>
				<p>&nbsp;&nbsp;17、汽博中心是一个开放式的商业园区，在相应的区域均设有临时停车位，在不影响园区交通通行的情况 ，供车辆使用人随机使用。未经许可，任何人不得将车辆停放于其他物业使用人的门店前及公共通道，如接到物业使用人受阻碍的投诉或巡查安保发现占用公共通道，甲方有权对乱停放车辆予以锁闭。</p>
				<p class="zc"> 第八章 乙方权利与义务</p>
				<p>&nbsp;&nbsp;18、乙方应当自觉遵守场地管理制度和服从场地物业管理。</p>
				<p>&nbsp;&nbsp;19、乙方有要求停止侵害其合法权益行为的权利及法律、法规所赋予的其他权利。</p>
				<p>&nbsp;&nbsp;20、乙方在装修物业时，须自觉遵守甲方制定的相关管理制度和政府颁布的相关法律法规。</p>
				<p>&nbsp;&nbsp;21、乙方应自觉维护所使用物业单元的整洁和完整。</p>
				<p>&nbsp;&nbsp;22、乙方应共同维护公共场地的环境、道路的畅通及公用设施的完好，自觉保持专用部位的整洁美观，自觉维护公用设施、场地的完好整洁，不得以任何形式占用公共通道、消防通道。对相邻物业的共用部位正确合理的使用、确保其他承租人相邻权权益，维护良好相邻关系。</p>
				<p>&nbsp;&nbsp;23、乙方不得在物业外墙附属的外墙窗台、雨棚等处摆放花盆、拖帕等杂物，以免造成高空坠物等人为事故的发生。</p>
				<p>&nbsp;&nbsp;24、乙方在物业的门楣、墙柱等专用区域设置户外广告牌等标示时，应提前一周将设置的标示的相关资料（复印件）交一份给甲方审核备案，并承诺设置的户外标志不影响汽博中心整体的商业形象和物业相邻权益，并经甲方书面审核同意后方可实施。</p>
				<p>&nbsp;&nbsp;25、按时缴纳租金、物业费用等其他费用，如遇出差等特殊情况应提前缴纳租金，逾期缴费应约定标准向甲方支付违约金。</p>
				<p>&nbsp;&nbsp;26、乙方用于办公、经营的自用物业区域应24小时设置值班人员，自用物业区域内的设施维护、消防、安全防护、清洁、外墙清晰等事务由乙方自行负责。如委托甲方提供特约服务的，双方另行约定，甲方按约定收取费用。</p>
				<p>&nbsp;&nbsp;27、乙方不得擅自占用、损坏物业共用部位、共用设施设备或改变其使用功能。</p>
				<p>&nbsp;&nbsp;28、乙方在经营过程中每日产生的垃圾应自行清理入袋，并集中放置与指定的垃圾堆放点，切勿将垃圾随意倾倒在物业公共区域。</p>
				<p>&nbsp;&nbsp;39、乙方如需在物业公共及公用部位接搭电源时，必须提前告知甲方并经同意后在甲方指导下实施。</p>
				<p>&nbsp;&nbsp;30、乙方专用区域内的消防安全责任由乙方自行负责，自觉遵守《中华人民共和国消防法》之规定。</p>
				<p>&nbsp;&nbsp;31、乙方充分享有相关法律、法规规定的其他权利，同时也应承担相关法律、法规规定的义务。</p>
				<p>&nbsp;&nbsp;32、乙方在合同期限届满或因故提前终止时，乙方应在撤离该场地前，须将该租赁房屋（场地）恢复到甲方交付该租赁房屋（场地）的时原貌，如果乙方不能及时的恢复该租赁房屋（场地）时，甲方有权不予退还乙方的履约保证金和所剩租金，维修费不足以弥补损失的，另行赔偿。同时，甲方有权直接进入租赁物处理租赁物内乙方物品，由此给乙方造成损失（若有），甲方不承担任何责任。</p>
				<p>&nbsp;&nbsp;32.1、乙方承诺，放弃对租赁房屋的优先购买权，若甲方在租赁期内对外转让房屋的，无须向乙方作出通知。</p>
				<p class="zc">第九章 合同的终止与解除</p>
				<p>&nbsp;&nbsp;33、合同履行过程中出现下列情形之一者，合同即告终止；</p>
				<p>&nbsp;&nbsp;1)合同期满；</p>
				<p>&nbsp;&nbsp;2)发生不可抗力（如地震、战争、自然灾害、政府变化政策等），致使协议无法继续履行。</p>
				<p>&nbsp;&nbsp;3)乙方承租后，将无条件配合甲方进行所有的改扩建工程等相关事宜。甲方将根据施工进度进行临时的租期调整，如施工提前，将提前终止合同；如施工延后，将延后租赁时间。同时，因建设施工等原因导致门面拆除的甲方无需向乙方承担装修赔偿、搬迁费、及其他费用的赔偿。</p>
				<p>&nbsp;&nbsp;34、下列情形之一者，甲方有权解除合同，并要求乙方赔偿损失。</p>
				<p>&nbsp;&nbsp;1)由于乙方的产品质量问题或有经营欺诈行为，而乙方又不能积极稳妥地解决此类事件，从而对汽博中心造成不良影响（以合法、真实性为准）。</p>
				<p>&nbsp;&nbsp;2)未经甲方书面同意，将租赁物转租、转借给他人使用的； </p>
				<p>&nbsp;&nbsp;3)未经甲方书面同意，拆改变动租赁物结构或损坏租赁物的；</p>
				<p>&nbsp;&nbsp;4）改变本合同规定的租赁用途或利用该租赁物存放危险物品或进行违法活动的； </p>
				<p>&nbsp;&nbsp;5)拖欠租金累计15日以上的； </p>
				<p>&nbsp;&nbsp;6)逾期未交纳按约定应当由乙方交纳的各项费用，或给甲方造成严重损害或被追责的， </p>
				<p>&nbsp;&nbsp;7)违反本合同关于经营要求方面约定（若有）的义务。</p>
				<p>&nbsp;&nbsp;35、在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方书面同意方可办理解除租赁手续，乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。未经甲方书面同意，乙方单方解除行为无效。</p>
				<p>&nbsp;&nbsp;36、因不可抗力因素导致合同无法履行，由双方各自承担所造成损失，互不追究对方承担损失的责任。</p>
				<p>&nbsp;&nbsp;37、合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，对此甲方无需向乙方支付任何补偿。</p>
				<p>&nbsp;&nbsp;38、合同期限届满，乙方若需继续承租，应提前一个月向甲方提出书面申请。如甲方同意续租，双方应另行签订租赁合同。</p>
				<p class="zc">第十章 其 他</p>
				<p>&nbsp;&nbsp;39、本合同履行过程中若发生争议，双方应友好协商解决。协商解决不能的任何一方均有权申请重庆仲裁委员会根据其的仲裁规则进行仲裁。</p>
				<p>&nbsp;&nbsp;40、附则</p>
				<p>&nbsp;&nbsp;40.1、本合同未尽事宜，甲、乙双方可另行签订书面补充协议，其补充内容与本合同具有同等法律效力。</p>
				<p>&nbsp;&nbsp;40.2、合同签定地点：重庆汽博中心。</p>
				<p>&nbsp;&nbsp;40.3、本协议一式<u> 肆  </u>份，经甲、乙双方签署后生效，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份，各份具有同等法律效力。</p>
				<p>&nbsp;&nbsp;41、本合同有效附件有：（本合同附件系本合同当然组成部分，与本合同具有同等法律效力）</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;附件1.消防安全责任确认书。</p>
                <p>&nbsp;&nbsp;42、乙方确认本合同及其附件的送达及在履行合同过程中接收甲方书面文件、司法诉讼过程中进行司法文书送达等均按以下所示准确地址发出；如乙方未填写本项地址，视为同意甲方直接可向乙方签约时营业执照地址、身份证地址进行寄送。</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;指定送达地址：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;邮编：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u></p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;收件人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u> </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;其他指定代收人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u>  </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;电话：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </u> </p>
                <p>&nbsp;&nbsp;42.1、签收人是受送达本人或者是前款指定的代收人的，签收人应当当场核对邮件内容。签收人发现邮件内容与回执上的文书名称不一致的，应当向邮政机构的投递员提出，否则视为一致。</p>
                <p>&nbsp;&nbsp;42.2、因受送达人自己提供或者确认的送达地址不准确、拒不提供送达地址、送达地址变更未及时告知人民法院、受送达本人或者指定的代收人拒绝签收，导致诉讼文书未能被受送达人实际接收的，文书退回之日视为送达之日。</p>
				<p>&nbsp;&nbsp;43、备注：</p>
				<p><input class="dtkz" name="remark" /></p>
				<p>&nbsp;&nbsp;44、租金、合同保证金及物管费及水电空调费交款账号如下：</p>
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
					<p>法定代表人：<input  class="qz" name="first_legal_person" /> </p>
					<p>委托代理人：<input class="qz" name="first_agent" value="何婕" /></p>
					<p>联系方式：89189988 </p>
					<p>日期：<input type="date" class="qz" name="first_date" id="date1" /></p>
				</div>
				<div id="other">
					<p>乙方签章：<input class="qz" name="second_sign" /></p>
					<p>法定代表人：<input  class="qz" name="second_legal_person" /> </p>
					<p>委托代理人：<input  class="qz" name="second_agent" /></p>
					<p>联系方式： <input class="qz" name="phone" /></p>
					<p>日期：<input  type="date" class="qz" name="second_date" id="date2" /></p>
				</div>
				
			<p style="clear:both;">附件1</p><br /><br />
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
			<p> 承租人签字或盖章：<input  class="dtkz" name="confirmation_signatory" /></p>
			<p> <input  class="dtkzNum" name="confirmation_year" /> 年 <input  class="dtkzNum" name="confirmation_month" /> 月<input class="dtkzNum" name="confirmation_day" /> 日</p>
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