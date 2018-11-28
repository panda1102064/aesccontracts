<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>重庆汽博实业有限公司</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
</head>
<body>
	<jsp:include page="../../headpart.jsp"></jsp:include>
	<div id="wrap">
            <form action="saveMcgctcc" method="post">
                <img src="<%=path%>/img/logo.png" width="270px" height="60px" />
                <p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial" /></p>
                <br /><br />
                <p class="h2" style="text-align: center;">重庆汽博实业有限公司<br />商业用房（场地）租赁合同</p>
                <br /><br />
                <p>出租方[以下简称甲方]:<u>重庆汽博实业有限公司</u></p>
                <p>地址:<u>重庆北部新区金渝大道99号</u></p>
                <p>承租方[以下简称乙方]:<input  class="dtkz" name="merchant_name" /></p>
                <p>地址：<input class="dtkz" name="address" /></p><br />
                <p class="zc">第一章 总 则</p>
                <p>&nbsp;&nbsp;根据《中华人民共和国合同法》及有关法律法规的规定，本着平等自愿和互惠互利的原则，为了明确甲乙双方的权利义务关系，经双方协商一致，就乙方承租甲方商业用房（场地）及由甲方实行商业用房（场地）租赁，现就所涉及的相关事宜，订立本合同。</p>
                <p>第一条&nbsp;乙方作为入驻汽博中心<input required="required" class="dtkz" name="area1" value="临时用房" />的承租人，承诺自觉遵守物业管理区域的各项使用管理规定，维护汽博中心<input required="required" class="dtkz" name="area2" value="临时用房" />的整体品牌形象及商业信誉。</p>
                <p>第二条&nbsp;租赁房屋的基本情况</p>
                <p>&nbsp;&nbsp;一、   租赁物业基本情况</p>
                <p>&nbsp;&nbsp;1、乙方承租的甲方商业用房（场地），位于：重庆北部新区经开园金渝大道99号（以下简称“汽博中心”）内的<input required="required" class="dtkz" name="rental_location" />，其建筑面积为：<input required="required" class="dtkzNum" name="building_area" />。</p>
                <p class="zc">第二章     租赁期限</p>
                <p>第三条&nbsp;本合同所涉商业用房（场地）租赁期限为<input required="required" class="dtkzNum" name="expires" value="/" />年，从<input required="required" class="dtkzNum" name="year_start" value="2018" />年<input required="required" class="dtkzNum" name="month_start" value="1" />月<input required="required" class="dtkzNum" name="day_start" value="1" />日起至<input required="required" class="dtkzNum" name="year_end" value="2018" />年<input required="required" class="dtkzNum" name="month_end" value="6" />月<input required="required" class="dtkzNum" name="day_end" value="30" />日止。</p>
                <p>第四条&nbsp;甲方于<input required="required" class="dtkzNum" name="transfer_year" value="2018" />年<input required="required" class="dtkzNum" name="transfer_month" value="1" />月<input required="required" class="dtkzNum" name="transfer_day" value="1" />日前将本合同所涉的商业用房（场地）移交给乙方使用。</p>
                <p>第五条&nbsp;交接房时，乙方须对租赁场房屋（场地）内已有的物品及设施逐一进行检查，经双方书面确认物品及设施完好后，甲方交付乙方使用；在合同有效期内，乙方应确保其租赁场地内的物品及设施的完好，租赁期间，租赁房屋及设施、设备（包括乙方增设、添附设施、设备）的维护、维修义务由乙方负责，所产生的费用由乙方承担。如在使用中出现的损耗（如玻璃幕墙破裂，卷帘门损坏，门、窗、门锁损坏等），由乙方负责维修，如出现不能维修的情况，由乙方负责照价赔偿或自行更换。合同期满后，乙方应保证租赁场地内的物品及设施完好无损交付甲方。</p>
                <p class="zc"> 第三章 营业资格及乙方经营范围</p>
                <p>第六条&nbsp;乙方应具备在中华人民共和国境内依法取得经营主体资格并符合在汽博中心开业的条件。</p>
                <p>第七条&nbsp;乙方租用甲方的房屋（场地）仅作为<input required="required" class="dtkz" name="purpose" value="停车场" />使用。乙方租用的上述房屋（场地）仅供自己使用，不得擅自转租、转让、许可第三方使用或擅自更改场地用途。如甲方发现乙方有上述违约行为，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。乙方不得超出约定范围经营；如需变更经营范围，须提前二十天以书面形式告知甲方，经甲方同意后方可变更。否则，甲方有权单方解除合同，且不退还乙方已缴纳的租金及履约保证金。</p>
                <p class="zc">&nbsp;&nbsp;第四章   装修要求及乙方在合同期内的经营</p>
                <p>第八条&nbsp;乙方可根据自己的经营特色在甲方现有房屋（场地）的基础上对经营场所进行装修，装修方案必须报甲方审核并通过，装修费用由乙方自行承担。具体装修要求参见“装修管理服务协议”和“消防安全责任书的有关规定”。乙方须在《商业用房（场地）租赁合同》且甲方向其交付租赁房屋（场地）后30天内开门营业，否则甲方可单方面解除合同并不予退还保证金。在租赁期内，乙方须保证正常有序地开展经营，不得擅自停业（若有正当理由或政府要求整改而导致的短期停业除外）。凡擅自停业者，需承担每日80元的停业违约金。凡连续擅自停业超过20天或累计擅自停业超过20天者，本合同自动解除并终止其法律效力。本合同自动终止后除乙方立即搬出经营场地之外，已交纳的租金及履约保证金不予退还。合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
                <p class="zc">&nbsp;&nbsp;第五章  甲方权利与义务</p>
                <p>第九条&nbsp;依照政府法规和本合同的约定按时收取租金和其他费用。</p>
                <p>第十条&nbsp;协助有关部门制止违法、违规行为，对乙方拖欠租金等相关费用以及应当整改而不整改的行为有权单方面采取(包括但不限于)强制中断水、电供给的处理等措施。</p>
                <p>第十一条&nbsp;负责停车收费系统建设，岗亭、道闸杆等可置换广告位区归甲方使用。</p>
                <p>第十二条&nbsp;负责办理停车场收费许可证年审。</p>
                <p>第十三条&nbsp;负责考核乙方收费人员仪容、文明用语，监督收费人员是否按停车场管理要求执行。</p>
                <p>第十四条&nbsp;甲方代表根据停车场服务标准进行随机考核，违反质量标准以甲方通知为准，乙方2日内无书面申诉视为同意，每次违反管理要求按50元每次罚款，一个月内连续违反10次，甲方可无偿解除合同。</p>
                <p>第十五条&nbsp;第十五条 甲方不得任意安排车辆到停车场停发，如遇特殊情况需按每车/每天15元缴纳费用。</p>
                <p class="zc">第六章   乙方权利与义务</p>
                <p>第十六条&nbsp;自觉遵守场地管理制度和服从场地物业管理。</p>
                <p>第十七条&nbsp;乙方负责停车场设施设备保养与维修，确保设施完好。</p>
                <p>第十八条&nbsp;乙方自行负责停车场经营风险，自行购买停车场责任保险，停车场内的车辆损坏、丢失自行承担责任。</p>
                <p>第十九条&nbsp;乙方不得排商品车在停车场停放。</p>
                <p>第二十条&nbsp;乙方须保证停车场停车有序，不得占用消防通道停车。</p>
                <p>第二十一条&nbsp;未经甲方书面同意，乙方不得将该停车场转让给第三方使用或第三方联营，不得改变停车场用途。</p>
                <p>第二十二条&nbsp;乙方可到甲方财务部购买停车发票，税费/工本费自行承担。</p>
                <p>第二十三条&nbsp;乙方与车主发生纠纷，甲方可帮助协调，但甲方不承担任何责任。</p>
                <p>第二十四条&nbsp;合同到期后甲方如继续出租，乙方享有优先续租权利。</p>
                <p>第二十五条&nbsp;按时缴纳租金等其他费用，如遇出差等特殊情况应提前缴纳租金，逾期缴费应约定标准向甲方计算违约金。</p>
                <p>第二十六条&nbsp;乙方在合同期限届满或因故提前终止时，乙方应在撤离该场地前，须将该租赁房屋（场地）恢复到甲方交付该租赁房屋（场地）的时原貌，如果乙方不能及时的恢复该租赁房屋（场地）时，甲方有权不予退还乙方的履约保证金和所剩租金，维修费不足以弥补损失的，另行赔偿。同时，甲方有权直接进入租赁物处理租赁物内乙方物品，由此给乙方造成损失（若有），甲方不承担任何责任。</p>
                <p class="zc"> 第七章    乙方应支付费用</p>
                <p>第二十七条&nbsp;乙方应当缴纳的费用（暂定）：</p>
                <p>&nbsp;&nbsp;1、房屋（场地）租金（按建筑面积计收）为每月租金合计人民币：<input required="required" class="dtkzNum" name="rent1" value="17100元"/>(大写)<input required="required" class="dtkz" name="upper2" value="壹万柒仟壹佰元整"/>。</p>
                <p>&nbsp;&nbsp;2、 乙方应向甲方支付履约保证金：￥<input required="required" class="dtkzNum" name="cash_deposit" value="51000元" />，大写：<input required="required" class="dtkz" name="upper3" value="伍万壹仟元整"/>。在签定合同后由乙方一次性付清。合同有效期内若乙方擅自解除合同或有其它违反合同行为的，履约保证金和所剩租金不予退还，并纳入违约金范围之内。违约金不足以弥补损失的，另行赔偿。合同到期后，如乙方无违约行为，履约保证金如数退还，只退本不退息。</p>
                <p>&nbsp;&nbsp;3、租金为<input required="required" class="dtkz" name="payment1" value="每月"/>支付，在签定合同时，乙方应向甲方支付<input required="required" class="dtkz" name="payment2" value="第一个月" />的租金，以后乙方应在<input required="required" class="dtkz" name="payment3" value="每月初" />10日前应<input required="required" class="dtkz" name="payment4" value="缴清本月" />的租金。乙方逾期交纳租金，每逾期一日，应按未交纳租金总额的0.5％向甲方支付滞纳金。逾期时间不得超过10日，否则甲方有权单方解除合同，不予退还履约保证金，并可向乙方追收所欠租金及滞纳金。</p>
                <p>&nbsp;&nbsp;4、付款方式：现金或转帐支票。</p>
                <p>第二十八条&nbsp;上述收费起算时间：双方约定起租时间从<input required="required" class="dtkzNum" name="lease_year" value="2018" />年<input required="required" class="dtkzNum" name="lease_month"  value="1"/>月<input required="required" class="dtkzNum" name="lease_day" value="1" />日起算。</p>
                <p class="zc">第八章 合同的终止与解除</p>
                <p>第二十九条&nbsp;有下列情形之一者，合同即告终止；</p>
                <p>&nbsp;&nbsp;1）合同期满。</p>
                <p>&nbsp;&nbsp;2）发生不可抗力（如地震、战争、自然灾害、政府变化政策等），致使协议无法继续履行。</p>
                <p>&nbsp;&nbsp;3）乙方承租后，将无条件配合甲方进行所有的改扩建工程等相关事宜。我方将根据施工进度进行临时的租期调整，如施工提前，将提前终止合同；如施工延后，将延后租赁时间。同时，因门面拆除甲方不会承担乙方的装修赔偿、搬迁费、及其他赔偿等。。</p>
                <p>第三十条&nbsp;下列情形之一者，甲方有权解除合同，并要求乙方赔偿损失。</p>
                <p>&nbsp;&nbsp;1）由于乙方的产品质量问题或有经营欺诈行为，而乙方又不能积极稳妥地解决此类事件，从而对汽博中心造成不良影响（以合法、真实性为准）。</p>
                <p>&nbsp;&nbsp;2）未经甲方书面同意，将租赁物转租、转借给他人使用的；</p>
                <p>&nbsp;&nbsp;3）未经甲方书面同意，拆改变动租赁物结构或损坏租赁物的； </p>
                <p>&nbsp;&nbsp;4）改变本合同规定的租赁用途或利用该租赁物存放危险物品或进行违法活动的； </p>
                <p>&nbsp;&nbsp;5）拖欠租金累计10日以上的； </p>
                <p>&nbsp;&nbsp;6）逾期未交纳按约定应当由乙方交纳的各项费用，或给甲方造成严重损害或被追责的；</p>
                <p>&nbsp;&nbsp;7）乙方私自调价或不按批复收费标准违规收取停车费。</p>
                <p>第三十一条&nbsp;在合同期内，乙方因自身原因需提前解除合同，须提前三十日以书面形式向甲方提出，经甲方书面同意方可办理解除租赁手续，乙方所缴纳的剩余租金和履约保证金将作为违约金支付给甲方。未经甲方书面同意，乙方单方解除行为无效。</p>
                <p>第三十二条&nbsp;因不可抗力因素导致合同无法履行，由双方各自承担所造成损失。</p>
                <p>第三十三条&nbsp;合同期限届满或因故提前终止，乙方对租赁场地进行的装修无偿向甲方移交，不得故意损坏，甲方无义务向乙方进行任何补偿。</p>
                <p>第三十四条&nbsp;合同到期时，乙方若需继续承租，应提前一个月向甲方提出书面申请。如甲方同意续租，双方应另行签订租赁合同。</p>
                <p class="zc">第九章 其 他</p>
                <p>第三十五条&nbsp;争议解决方式：在合同履行过程中若发生争议，双方应友好协商解决。协商不成双方自愿提交重庆仲裁委员会根据该会规则解决。</p>
                <p>第三十六条&nbsp;附则</p>
                <p>&nbsp;&nbsp;1、本合同未尽事宜，甲、乙双方可另行签订书面补充协议，其补充内容与本合同具有同等法律效力。</p>
                <p>&nbsp;&nbsp;2、合同签定地点：重庆汽博中心。</p>
                <p>&nbsp;&nbsp;3、本协议一式<u> 肆  </u>份，甲方执 <u> 叁 </u>份,乙方执<u> 壹 </u>份，具有同等法律效力。</p>
                <p>&nbsp;&nbsp;4、本协议自甲、乙双方法定代表人或其授权代理人签字并盖章后生效。</p>
                <p>第三十七条&nbsp;租金、合同保证金交款账号如下：</p>
                <p>&nbsp;&nbsp;租金、合同保证金打款帐号 </p>
                <p>&nbsp;&nbsp;名称：重庆汽博实业有限公司</p>
                <p>&nbsp;&nbsp;开户银行：建行重庆两江汽博支行</p>
                <p>&nbsp;&nbsp;帐号：5000 1040 0430 5250 0282</p>
                <p>第三十八条&nbsp;乙方确认本合同及其附件的送达及在履行合同过程中接收甲方书面文件、司法诉讼过程中进行司法文书送达等均按以下所示准确地址发出；如乙方未填写本项地址，视为同意甲方直接可向乙方签约时营业执照地址、身份证地址进行寄送。</p>
                <p>&nbsp;&nbsp;指定送达地址：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </u></p>
                <p>&nbsp;&nbsp;邮编：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u></p>
                <p>&nbsp;&nbsp;收件人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u> </p>
                <p>&nbsp;&nbsp;其他指定代收人：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </u>  </p>
                <p>&nbsp;&nbsp;电话：<u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </u> </p>
                <p>1、签收人是受送达本人或者是前款指定的代收人的，签收人应当当场核对邮件内容。签收人发现邮件内容与回执上的文书名称不一致的，应当向邮政机构的投递员提出，否则视为一致。</p>
                <p>2、因受送达人自己提供或者确认的送达地址不准确、拒不提供送达地址、送达地址变更未及时告知人民法院、受送达本人或者指定的代收人拒绝签收，导致诉讼文书未能被受送达人实际接收的，文书退回之日视为送达之日。</p>
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
                    <p>委托代理人：<input class="qz" name="second_agent" /></p>
                    <p>联系方式： <input class="qz" name="phone" /></p>
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