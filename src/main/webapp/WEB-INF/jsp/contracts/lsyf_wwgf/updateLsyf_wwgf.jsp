<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path=request.getContextPath(); %>
<!DOCTYPE html >
<html>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<body>
<%-- <jsp:include page="../../headpart.jsp"></jsp:include> --%>
		<div id="wrap">
			<form action="updateLsyf_wwgf" method="post">
				<img src="<%=path%>/img/logo.png" width="270px" height="60px" />
				<p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" value="${aesc.contract_serial}" /></p>
				<br /><br />
				<p class="h2" style="text-align: center;">重庆汽博实业有限公司<br />商业用房（场地）租赁合同</p>
				<br /><br />
				<p><h1 style="color: #3fc712;text-align: center;">${msg}</h1></p>
				<p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
				<p>地址:<u>重庆北部新区金渝大道99号</u></p>
				<p>承租方[以下简称乙方]:<input  class="dtkz" name="merchant_name" value="${aesc.merchant_name}" /></p>
				<p>地址：<input class="dtkz" name="address" value="${aesc.address}" /></p><br />
				<p class="zc">第一章 总 则</p>
				<p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法律法规的规定，本着平等自愿和互惠互利的原则，为了明确甲乙双方的权利义务关系，经双方协商一致，就乙方承租甲方商业用房（场地）及由甲方实行商业用房（场地）租赁，现就所涉及的相关事宜，订立本合同。</p>
				<p>&nbsp;&nbsp;第一条&nbsp;乙方作为入驻汽博中心<input required="required" class="dtkz" name="area1" value="${aesc.area1}" />的承租人，承诺自觉遵守物业管理区域的各项使用管理规定，维护汽博中心<input required="required" class="dtkz" name="area2" value="${aesc.area2}" />的整体品牌形象及商业信誉。</p>
				<p>&nbsp;&nbsp;第二条&nbsp;租赁房屋的基本情况</p>
				<p>&nbsp;&nbsp;一、	租赁物业基本情况</p>
				<p>&nbsp;&nbsp;1、乙方承租的甲方商业用房（场地），位于：重庆北部新区经开园金渝大道99号（以下简称“汽博中心”）内的<input required="required" class="dtkz" name="rental_location" value="${aesc.rental_location}" />，其建筑面积为：<input required="required" class="dtkzNum" name="building_area" value="${aesc.building_area}" /> ㎡ 。</p>
				<p class="zc">第二章     租赁期限</p>
				<p>&nbsp;&nbsp;第三条&nbsp;本合同所涉商业用房（场地）租赁期限为<input required="required" class="dtkzNum" name="expires" value="${aesc.expires}" />年，从<input required="required" class="dtkzNum" name="year_start" value="${aesc.year_start}" />年<input required="required" class="dtkzNum" name="month_start" value="${aesc.month_start}" />月<input required="required" class="dtkzNum" name="day_start" value="${aesc.day_start}" />日起至<input required="required" class="dtkzNum" name="year_end" value="${aesc.year_end}" />年<input required="required" class="dtkzNum" name="month_end" value="${aesc.month_end}" />月<input required="required" class="dtkzNum" name="day_end" value="${aesc.day_end}" />日止。</p>
				<p>&nbsp;&nbsp;第四条&nbsp;甲方于<input required="required" class="dtkzNum" name="transfer_year" value="${aesc.transfer_year}" />年<input required="required" class="dtkzNum" name="transfer_month" value="${aesc.transfer_month}" />月<input required="required" class="dtkzNum" name="transfer_day" value="${aesc.transfer_day}" />日前将本合同所涉的商业用房（场地）移交给乙方使用。</p>
				<p>&nbsp;&nbsp;第五条&nbsp;交接房时，乙方须对租赁场房屋（场地）内已有的物品及设施逐一进行检查，经双方书面确认物品及设施完好后，甲方交付乙方使用；在合同有效期内，乙方应确保其租赁场地内的物品及设施的完好，租赁期间，租赁房屋及设施、设备（包括乙方增设、添附设施、设备）的维护、维修义务由乙方负责，所产生的费用由乙方承担。如在使用中出现的损耗（如玻璃幕墙破裂，卷帘门损坏，门、窗、门锁损坏等），由乙方负责维修，如出现不能维修的情况，由乙方负责照价赔偿或自行更换。合同期满后，乙方应保证租赁场地内的物品及设施完好无损交付甲方</p>
				<p class="zc"> 第三章 营业资格及乙方经营范围</p>
				<p>&nbsp;&nbsp;第六条&nbsp;乙方应具备在中华人民共和国境内依法取得经营主体资格并符合在汽博中心开业的条件。</p>
				<p>&nbsp;&nbsp;第七条&nbsp;乙方租用甲方的房屋（场地）仅作为<input required="required" class="dtkz" name="purpose" value="${aesc.purpose}" />使用。乙方租用的上述房屋（场地）仅供自己使用，不得擅自转租、转让、许可第三方使用或擅自更改场地用途。如甲方发现乙方有上述违约行为，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。乙方不得超出约定范围经营；如需变更经营范围，须提前二十天以书面形式告知甲方，经甲方同意后方可变更。否则，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。</p>
				<p class="zc">&nbsp;&nbsp;第四章   装修要求及乙方在合同期内的经营</p>
				<p>&nbsp;&nbsp;第八条&nbsp;乙方可根据自己的经营特色在甲方现有房屋（场地）的基础上对经营场所进行装修，装修方案必须报甲方审核并通过，装修费用由乙方自行承担。具体装修要求参见“装修管理服务协议”和“消防安全责任书的有关规定”。乙方须在《商业用房（场地）租赁合同》且甲方向其交付租赁房屋（场地）后30天内开门营业，否则甲方可单方面解除合同并不予退还保证金。在租赁期内，乙方须保证正常有序地开展经营，不得擅自停业（若有正当理由或政府要求整改而导致的短期停业除外）。凡擅自停业者，需承担每日80元的停业违约金。凡连续擅自停业超过20天或累计擅自停业超过20天者，本合同自动解除并终止其法律效力。本合同自动终止后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p class="zc">&nbsp;&nbsp;第五章  甲方权利与义务</p>
				<p>&nbsp;&nbsp;第九条&nbsp;依照政府法规和本合同的约定按时收取租金和其他费用。</p>
				<p>&nbsp;&nbsp;第十条&nbsp;协助有关部门制止违法、违规行为，对乙方拖欠租金等相关费用以及应当整改而不整改的行为有权单方面采取(包括但不限于)强制中断水、电供给的处理等措施。</p>
				<p class="zc">第六章	乙方权利与义务</p>
				<p>&nbsp;&nbsp;第十二条&nbsp;自觉遵守场地管理制度和服从场地物业管理。</p>
				<p>&nbsp;&nbsp;第十三条&nbsp;有权请求停止违反共同利益行为的权利和法律、法规所赋予的其他权利。</p>
				<p>&nbsp;&nbsp;第十四条&nbsp;乙方在装修物业时，须自觉遵守甲方制定的相关管理制度和政府颁布的相关法律法规。</p>
				<p>&nbsp;&nbsp;第十五条&nbsp;乙方应自觉维护所使用物业单元的整洁和完整。</p>
				<p>&nbsp;&nbsp;第十六条&nbsp;共同维护公共场地的环境、道路的畅通及公用设施的完好，自觉保持专有部位的整洁美观，自觉维护公用设施、场地的完好整洁，不得以任何形式占用公共通道。对相邻物业的共用部位正确合理的行驶、享有相邻权益，维护良好相邻关系。</p>
				<p>&nbsp;&nbsp;第十七条&nbsp;不得在物业外墙附属的外墙窗台、雨棚等处摆放花盆、拖帕等杂物，以免造成高空坠物，避免人为事故的发生。</p>
				<p>&nbsp;&nbsp;第十八条&nbsp;乙方在物业的门楣、墙柱等专用区域设置户外广告牌等标示时，应提前一周将设置的标示的相关资料（复印件）交一份给甲方审核备案，并承诺设置的户外标志不影响汽博中心整体的商业形象和物业相邻权益，经甲方审核同意后方可实施。</p>
				<p>&nbsp;&nbsp;第十九条&nbsp;按时缴纳租金等其他费用，如遇出差等特殊情况应提前缴纳租金，逾期缴费应约定标准向甲方计算违约金。</p>
				<p>&nbsp;&nbsp;第二十条&nbsp;乙方用于办公、经营的自用物业区域应24小时设置值班人员，自用物业区域内的设施维护、消防、安全防护、清洁、外墙清晰等事务由乙方自行负责。如委托甲方提供特约服务的，双方另行约定，甲方按约定收取费用。</p>
				<p>&nbsp;&nbsp;第二十一条&nbsp;不得擅自占用、损坏物业共用部位、共用设施设备或改变其使用功能。</p>
				<p>&nbsp;&nbsp;第二十二条&nbsp;乙方充分享有相关法律、法规规定的其他权利，同时也应承担相关法律、法规规定的义务。</p>
				<p>&nbsp;&nbsp;第二十三条&nbsp;每日产生的垃圾应自行清理入袋，并集中放置与指定的垃圾堆放点，切勿将垃圾随意倾倒在物业公共区域。</p>
				<p>&nbsp;&nbsp;第二十四条&nbsp;如需在物业公共及公用部位接搭电源时，必须提前告知甲方并经同意后在甲方指导下实施。</p>
				<p>&nbsp;&nbsp;第二十五条&nbsp;乙方自由区域内的消防安全责任由乙方自行负责，自觉遵守《中华人民共和国消防法》之规定。</p>
				<p>&nbsp;&nbsp;第二十六条&nbsp;乙方在合同期限届满或因故提前终止时，乙方应在撤离该场地前，须将该租赁房屋（场地）恢复到甲方交付该租赁房屋（场地）的时原貌，如果乙方不能及时的恢复该租赁房屋（场地）时，甲方有权不予退还乙方的履约保证金和所剩租金，维修费不足以弥补损失的，另行赔偿。同时，甲方有权直接进入租赁物处理租赁物内乙方物品，由此给乙方造成损失（若有），甲方不承担任何责任。</p>
				<p class="zc"> 第七章	  乙方应支付费用</p>
				<p>&nbsp;&nbsp;第二十七条&nbsp;乙方应当缴纳的费用（暂定）：</p>
				<p>&nbsp;&nbsp;1、房屋（场地）租金（按建筑面积计收）为：<input required="required" class="dtkzNum" name="rent1" value="${aesc.rent1}" />元/月/㎡；每月租金合计人民币：<input required="required" class="dtkzNum" name="rent2" value="${aesc.rent2}" />元(大写)<input required="required" class="dtkz" name="upper" value="${aesc.upper}" />元整。</p>
				<p>&nbsp;&nbsp;2、 乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" value="${aesc.cash_deposit}" />元，在签定合同后由乙方一次性付清。合同有效期内若乙方擅自解除合同或有其它违反合同行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，只退本不退息。</p>
				<p>&nbsp;&nbsp;3、租金为<input required="required" class="dtkzNum" name="payment1" value="${aesc.payment1}" />支付，在签定合同时，乙方应向甲方支付<input required="required" class="dtkzNum" name="payment2" value="${aesc.payment2}" />的租金，以后乙方应在<input required="required" class="dtkzNum" name="payment3" value="${aesc.payment3}" />支付<input required="required" class="dtkzNum" name="payment4" value="${aesc.payment4}" />的租金。乙方逾期交纳租金，每逾期一日，应按未交纳租金总额的0.5％向甲方支付滞纳金。逾期时间不得超过15日，否则甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
				<p>&nbsp;&nbsp;4、付款方式：现金或转帐。</p>
				<p>&nbsp;&nbsp;第二十八条&nbsp;上述收费起算时间：双方约定起租时间从<input required="required" class="dtkzNum" name="lease_year" value="${aesc.lease_year}" />年<input required="required" class="dtkzNum" name="lease_month" value="${aesc.lease_month}" />月<input required="required" class="dtkzNum" name="lease_day" value="1" value="${aesc.lease_day}" />日起算。</p>
				<p class="zc">第八章 合同的终止与解除</p>
				<p>&nbsp;&nbsp;第二十九条&nbsp;有下列情形之一者，合同即告终止；</p>
				<p>&nbsp;&nbsp;1).合同期满；</p>
				<p>&nbsp;&nbsp;2).发生不可抗力（如地震、战争、自然灾害、政府变化政策等），致使协议无法继续履行。</p>
				<p>&nbsp;&nbsp;3) 乙方承租后，将无条件配合甲方进行所有的改扩建工程等相关事宜。我方将根据施工进度进行临时的租期调整，如施工提前，将提前终止合同；如施工延后，将延后租赁时间。同时，因门面拆除甲方不会承担乙方的装修赔偿、搬迁费、及其他赔偿等。。</p>
				<p>&nbsp;&nbsp;第三十条&nbsp;下列情形之一者，甲方有权解除合同，并要求乙方赔偿损失。</p>
				<p>&nbsp;&nbsp;1).由于乙方的产品质量问题或有经营欺诈行为，而乙方又不能积极稳妥地解决此类事件，从而对汽博中心造成不良影响（以合法、真实性为准）。</p>
				<p>&nbsp;&nbsp;2）未经甲方书面同意，将租赁物转租、转借给他人使用的；</p>
				<p>&nbsp;&nbsp;3）未经甲方书面同意，拆改变动租赁物结构或损坏租赁物的； </p>
				<p>&nbsp;&nbsp;4）改变本合同规定的租赁用途或利用该租赁物存放危险物品或进行违法活动的； </p>
				<p>&nbsp;&nbsp;5）拖欠租金累计15日以上的； </p>
				<p>&nbsp;&nbsp;6）逾期未交纳按约定应当由乙方交纳的各项费用，或给甲方造成严重损害或被追责的</p>
				<p>&nbsp;&nbsp;7）违反本合同关于经营要求方面约定（若有）的义务。</p>
				<p>&nbsp;&nbsp;第三十一条&nbsp;在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方书面同意方可办理解除租赁手续，乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。未经甲方书面同意，乙方单方解除行为无效。</p>
				<p>&nbsp;&nbsp;第三十二条&nbsp;因不可抗力因素导致合同无法履行，由双方各自承担所造成损失。</p>
				<p>&nbsp;&nbsp;第三十三条&nbsp;合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
				<p>&nbsp;&nbsp;第三十四条&nbsp;合同到期时，乙方若需继续承租，应提前一个月向甲方提出书面申请。如甲方同意续租，双方应另行签订租赁合同。</p>
				<p class="zc">第九章 其 他</p>
				<p>&nbsp;&nbsp;第三十五条&nbsp;争议解决方式：在合同履行过程中若发生争议，双方应友好协商解决。协商不成双方自愿提交重庆仲裁委员会根据该会规则解决。</p>
				<p>&nbsp;&nbsp;第三十六条&nbsp;附则</p>
				<p>&nbsp;&nbsp;1、本合同未尽事宜，甲、乙双方可另行签订书面补充协议，其补充内容与本合同具有同等法律效力。</p>
				<p>&nbsp;&nbsp;2、合同签定地点：重庆汽博中心。</p>
				<p>&nbsp;&nbsp;3、本协议一式<u> 肆  </u>份，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份，具有同等法律效力。</p>
				<p>&nbsp;&nbsp;4、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
				<p>&nbsp;&nbsp;d) 本合同有效附件有：</p>
				<p>&nbsp;&nbsp;附件1.消防安全责任确认书。</p>
				<p>&nbsp;&nbsp;第三十七条&nbsp;租金、合同保证金交款账号如下：</p>
				<p>&nbsp;&nbsp;租金、合同保证金打款帐号 </p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;帐号：5000 1040 0430 5250 0282</p>
				<p>&nbsp;&nbsp;第三十八条&nbsp;备注：</p>
				<p><input class="dtkz" name="remark" value="${aesc.remark}" /></p>
				<br />
				<p>（以下无正文）</p>
				<br />
				<div id="me">
					<p>甲方签章：重庆汽博实业有限公司</p>
					<p>委托代理人：<input class="qz" name="first_agent" value="${aesc.first_agent}" /></p>
					<p>联系方式：89189988 </p>
					<p>日期：<input type="date" class="qz" name="first_date" value="${aesc.first_date}" /></p>
				</div>
				<div id="other">
					<p>乙方签章：<input class="qz" name="second_sign" value="${aesc.second_sign}" /></p>
					<p>委托代理人：<input class="qz" name="second_agent" value="${aesc.second_agent}" /></p>
					<p>联系方式： <input class="qz" name="phone" value="${aesc.phone}" /></p>
					<p>日期：<input  type="date" class="qz" name="second_date" value="${aesc.second_date}" /></p>
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
				<p> 承租人签字或盖章：<input  class="dtkz" name="confirmation_signatory" value="${aesc.confirmation_signatory}" /></p>
				<p> <input  class="dtkzNum" name="confirmation_year" value="${aesc.confirmation_year}" /> 年 <input class="dtkzNum" name="confirmation_month" value="${aesc.confirmation_month}" /> 月<input  class="dtkzNum" name="confirmation_day" value="${aesc.confirmation_day}" /> 日</p>
				</div>
				<input type="hidden" name="contract_id" value="${aesc.contract_id}" />
				<input type="hidden" name="username" value="${user.username}" />
				<input type="hidden" name="status" value="1" />
				<p class="butn">
					<button type="submit">修改</button>
				</p>
			</form>
		</div>
		<%-- <jsp:include page="../../footpart.jsp"></jsp:include> --%>
		<script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
	</body>
</html>