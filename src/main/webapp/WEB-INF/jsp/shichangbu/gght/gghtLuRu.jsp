<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<title>重庆汽博实业有限公司</title>
</head>
<body>
	<jsp:include page="../../headpart.jsp"></jsp:include>
	   <div id="wrap">
            <form action="saveGuangGao" method="post">
                <img src="<%=path%>/img/logo.png" width="270px" height="60px"/>
                <p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial"/></p>
                <br /><br />
                <p class="h2" style="text-align: center;">广告销售合同</p>
                <br /><br />
                <p>甲    方：<input required="required" class="dtkz" name="first2"/></p>
                <p>地    址：<input required="required" class="dtkz" name="address"/></p>
                <p>经 办 人：<input required="required" class="dtkz" name="first_agent2"/></p>
                <p>电    话：  <input required="required" class="dtkzNum" name="phone"/></p>
                <p>开 户 行：<input required="required" class="dtkz" name="banks"/>   </p>
                <p>账    号：<input required="required" class="dtkzNum" name="bank_account"/></p>
                <br /><br /><br /><br />
                <p>乙    方：  重庆汽博实业有限公司</p>
                <p>地    址：  重庆市渝北区金渝大道99号汽配城B栋5楼</p>
                <p>经 办 人：<input required="required" class="dtkz" name="second_agent2"/></p>
                <p>电    话：  （023）8918 9966</p>
                <p>开 户 行：   中国建设银行股份有限公司重庆两江汽博支行</p>
                <p>账    号：  5000 1040 0430 5250 0282</p>
                <br /><br />
                <p>一、   广告发布条款：</p>
                <p>&nbsp;&nbsp;1、发布内容：<input required="required" class="dtkz" name="publish_content" value="品牌广告宣传"/></p>
                <p>&nbsp;&nbsp;2、刊挂期：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;上刊挂时间：从<input required="required" class="dtkzNum" name="year_start"/> 年 <input required="required" class="dtkzNum" name="month_start"/> 月 <input required="required" class="dtkzNum" name="day_start"/>日到<input required="required" class="dtkzNum" name="year_end"/>年<input required="required" class="dtkzNum" name="month_end"/> 月  <input required="required" class="dtkzNum" name="day_end"/>日止。</p>
                <p>&nbsp;&nbsp;3、合同费用：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;本次发布合同费用总金额为人民币小写￥<input required="required" class="dtkzNum" name="tatolfee"/>元 ，金额大写： <input required="required" class="dtkz" name="uppers2"/>元整   </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;上述费用包括：<input required="required" class="dtkz" name="includefee" value="广告发布费、制作费、上下画面人工费用、维护清洁费、媒体电费。（不包括客户需要的画面设计费用）；广告发布时间超过六个月（含六个月）的，非一次性付款的客户，加收该媒体点位一个月广告发布费作为合同保证金，合同执行完毕后予以退还或进行广告费用冲抵。"/></p>
                <p>&nbsp;&nbsp;4、租用媒体明细表：<input class="btn-danger" type="button" value="添加" id="bt" /></p>
                <p>
                    <table id="tables" style="text-align:center;" class="table table-hover table-bordered">
                        <thead>
                            <tr>
                                <th style="text-align:center;">媒体点位编号</th>
                                <th style="text-align:center;">发布位置</th>
                                <th style="text-align:center;">媒体形式</th>
                                <th style="text-align:center;">媒体规格</th>
                                <th style="text-align:center;">媒体数量</th>
                                <th style="text-align:center;">发布时间</th>
                                <th style="text-align:center;">发布费（元）</th>
                                <th style="text-align:center;">制作上刊费</th>
                            </tr>
                        </thead>
                        <tbody id="tbdy">
                            <tr>
                                <td><input required="required" class="dtkz" name="media_serial"/></td>
                                <td><input required="required" class="dtkz" name="location"/></td>
                                <td><input required="required" class="dtkz" name="media_type"/></td>
                                <td><input required="required" class="dtkz" name="media_specification"/></td>
                                <td><input required="required" class="dtkz" name="media_number"/></td>
                                <td><input required="required" class="dtkz" name="release_time"/></td>
                                <td><input required="required" class="dtkz" name="release_fee"/></td>
                                <td><input required="required" class="dtkz" name="production_cost"/></td>
                            </tr>
                          </tbody>
                          <tbody>
                            <tr>
                                <td style="text-align:left;" colspan="7" rowspan="1"><input class="dtkz" name="total_media"/></td>
                                <td>发布媒体总数</td>
                            </tr>
                            <tr>
                                <td style="text-align:left;" colspan="7" rowspan="1">大写：<input class="dtkz" name="uppers3"/></td>
                                <td>合同总金额（元）</td>
                            </tr>
                        </tbody>
                    </table>
				</p>
                <p>备注：<input class="dtkz" name="remark"/> </p>
                <p>&nbsp;&nbsp;5、 结算方式和付款时间：</p>
                <p>&nbsp;&nbsp;5.1  本合同所有费用的支付要求以非现金形式结算。</p>
                <p>&nbsp;&nbsp;5.2  付款时间：</p>
                <div id="main">
                    <ol>
                        <li><p>甲方需在<input required="required" class="dtkzNum" name="pay_year"/>年<input required="required" class="dtkzNum" name="pay_month"/>月<input required="required" class="dtkzNum" name="pay_day"/>日前，支付活动费用总额的<input required="required" class="dtkzNum" name="percents"/>即CNY：<input required="required" class="dtkzNum" name="amounts"/>元整，（人民币：<input required="required" class="dtkzNum" name="pay_upper"/>元整 ）</p><input class="btn-danger" type="button" value="添加" id="bt5" /></li>
                    </ol>
                </div>
                <p>二、一般性条款</p>
                <p>&nbsp;&nbsp;1、   合法媒体</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;乙方向甲方承诺该媒体是合法媒体。即：已经得到媒体所在地户外管理机构和业主方的认可，具有在这些媒体上发布广告的资格。</p>
                <p>&nbsp;&nbsp;2、   逾期付款</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;甲方逾期付款的，每逾期一日，应按逾期应付合同款的万分之五向乙方支付滞纳金。逾期付款超过三十日的，乙方有权解除合同，并追究甲方的违约责任和经济损失。</p>
                <p>&nbsp;&nbsp;3、   甲方应提供的证明文件</p>
                <p>&nbsp;&nbsp;3.1营业执照及其生产、经营资格的证明文件。</p>
                <p>&nbsp;&nbsp;3.2广告内容涉及商品质量认证、企业认证的，需出具相应的认证机构的证明文件。</p>
                <p>&nbsp;&nbsp;3.3广告内容涉及他人的肖像权或者知识产权的，需出具有权使用、获准使用的证明文件。</p>
                <p>&nbsp;&nbsp;3.4发布广告需有关行政主管部门审查的，还应提供有关批准文件。</p>
                <p>&nbsp;&nbsp;3.5确认广告内容真实性、合法性的其他证明文件。</p>
                <p>&nbsp;&nbsp;3.6开具发票所需的税务登记证（如需增值税专用发票请提供一般纳税人资格证明）、开户银行及账号、公司地址及电话等开票信息。</p>
                <p>&nbsp;&nbsp;3.7以上所例证明文件均应于合同签订之日由甲方向乙方提供。</p>
                <p>&nbsp;&nbsp;4、   广告画面的审批、制作、交付</p>
                <p>&nbsp;&nbsp;4.1甲方应在广告发布前  柒 日内交付广告样稿给乙方审查，对其中不符合《中华人民共和国广告法》及其他法律法规以及有损汽博中心广告发布的统一布局和美观的内容，乙方有权要求甲方修改。甲方修改后，乙方即送国家工商行政部门审批，于获知审批结果之日起三内通知甲方，甲方拒绝修改的，乙方有权拒绝发布。</p>
                <p>&nbsp;&nbsp;4.2甲方将制作画面的工作交由乙方或乙方指定的制作商进行，乙方对画面质量、上画时间及广告的整体布局负责。</p>
                <p>&nbsp;&nbsp;4.3如甲方能力足以自行制作画面或者坚持自行制作的，可以自行制作，但应保证画面质量、材料、规格符合广告发布要求，否则乙方有权拒收。</p>
                <p>&nbsp;&nbsp;4.4甲方在广告发布前七日内将广告画面发送给乙方，收画时间为周一至周五的工作时间，如无特殊情况，超过该时段不接收画面。</p>
                <p>&nbsp;&nbsp;4.5甲方因自行制作画面不符合发布要求或者未按时送达画面而导致广告发布延迟的，延迟发布时间计入广告发布时间，登挂时间不作顺延。</p>
                <p>&nbsp;&nbsp;5、   广告发布的确认</p>
                <p>&nbsp;&nbsp;5.1乙方在确保收到甲方的定稿文件以后，按合同约定或（双方确定）的日期完成发布上刊，并于广告发布后三个工作日内将广告发布照片送达合同所在甲方营业地址或通过邮件传送给甲方。如甲方收到上述文件两日内，未就广告发布的内容、数量及效果等事宜向乙方提出书面异议，则视为甲方已确认乙方按合同约定履行广告发布的义务。</p>
                <p>&nbsp;&nbsp;5.2广告发布开始后，甲方就广告发布的内容、数量及效果异常等事由向乙方提出异议的，应于异常事由出现之日起二个工作日内通知乙方，双方协商解决。如乙方在广告发布期内，未收到甲方有关广告发布异议的通知，则视为甲方已确认乙方按合同约定全部完成广告发布。</p>
                <p>&nbsp;&nbsp;6、   广告的维护、撤换</p>
                <p>&nbsp;&nbsp;6.1乙方负责广告发布之后的日常清洁维护工作。</p>
                <p>&nbsp;&nbsp;6.2广告发布期限届满或者发布期间内撤换的广告画面，如甲方需取回，应于广告画面撤换前七日通知乙方，并于画面撤换之日起三日内取回。逾期，乙方不予保留。</p>
                <p>&nbsp;&nbsp;6.3甲方如需在广告发布期内更换画面，每次按乙方刊例价的画面制作安装费用的标准支付所有费用。</p>
                <p>&nbsp;&nbsp;7、   广告发布内容、位置、时间的变更</p>
                <p>&nbsp;&nbsp;7.1甲方在广告发布期内拟变更广告内容的，应提前十日通知乙方，并同时提交新的广告样稿及相关证明文件。</p>
                <p>&nbsp;&nbsp;7.2因汽博中心园区建设、维护、运营及广告整体布局调整等特殊情况需变更甲方发布广告的位置的，与甲方协商解决，在征得甲方同意的情况下，乙方可将广告移往甲方认可的位置。</p>
                <p>&nbsp;&nbsp;7.3因汽博中心园区建设、维护、及广告整体布局调整等特殊情况不能按合同约定时间发布广告的，不以乙方违约论处，但甲方有权单方面终止合同，如甲方需要继续发布的，乙方保证自恢复广告发布之日起顺延被延误的发布时间。</p>
                <p>&nbsp;&nbsp;8、   合同的解除</p>
                <p>&nbsp;&nbsp;8.1广告发布合同尚未开始履行，一方当事人要求解除合同的，应于合同约定的广告发布日的30日前书面通知对方当事人，合同自通知到达对方当事人时解除。未提前30日书面通知的，合同不得解除。</p>
                <p>&nbsp;&nbsp;8.2广告发布合同已经开始履行，一方当事人要求解除合同的，应书面通知对方当事人，经双方当事人协商达成一致，并形成书面确认文件合同方可解除。</p>
                <p>&nbsp;&nbsp;9、   广告发布位置及优先使用权</p>
                <p>&nbsp;&nbsp;9.1所有广告占有位置的确定均应以甲乙双方订立的《广告销售合同》的规定为准。乙方将按照先到先得的原则进行媒体定位管理。</p>
                <p>&nbsp;&nbsp;9.2广告发布期为六个月以上的合同，甲方对原广告发布位置有优先使用权，甲方应于广告发布期限满20日前与乙方另行签订合同，否则视为放弃优先使用权。广告发布期为六个月以下的合同，无优先使用权。</p>
                <p>&nbsp;&nbsp;10、违约责任</p>
                <p>&nbsp;&nbsp;除本合同另有约定的情况或法定不可抗力因素除外，合同一方逾期履行合同或者有其他违反合同约定之行为的，应按不低于本合同标的总额的20%向另一方支付违约金，另一方有权要求违约方继续履行合同。</p>
                <p>&nbsp;&nbsp;11、争议解决</p>
                <p>&nbsp;&nbsp;本合同受中华人民共和国法律管辖并按照中华人民共和国法律解释，由本合同产生的或者与之相关的一切争议均应由乙方所在地—重庆市人民法院管辖。</p>
                <p>&nbsp;&nbsp;12、其他</p>
                <p>&nbsp;&nbsp;本合同一式四份，甲乙双方各执两份，具同等法律效力。未尽事宜，双方可协商解决并可订立补充条款</p>
                <div id="me">
                <p>甲    方：<input required="required" class="dtkz" name="first3"/></p>
                <p>经办人：<input required="required" class="dtkz" name="first_agent3"/></p>
                <p>（   签章    ）  </p>
                <p>签约日期:<input required="required" type="date" name="firstdate" class="qz"/></p>
                </div>
                <div id="other">
                <p>乙    方：重庆汽博实业有限公司</p>
                <p>经办人：<input required="required" class="dtkz" name="second_agent3"/></p>
                <p> （   签章    ）     </p>
                <p>签约日期:<input required="required" type="date" name="seconddate" class="qz"/></p>
                </div>
	            <input type="hidden" name="username" value="${user.username}" />
	            <input type="hidden" name="status" value="1" />
	            <p class="butn">
	                <button type="submit">保存</button>
	            </p>
            </form>
        </div>
	<jsp:include page="../../footpart.jsp"></jsp:include>
</body>
    <script type="text/javascript" src="<%=path%>/js/inputExtend.js"></script>
    <script type="text/javascript">
    window.onload = function() {
        var tables = document.getElementById("tables");
        var bt = document.getElementById("bt");
        
        var main = document.getElementById("main");
        var bt5 = document.getElementById("bt5");
        bt5.onclick = function() {
            var len = main.getElementsByTagName("li").length;
            var oul = main.getElementsByTagName("ol")[0];
            var oli = document.createElement("li");
            var button = document.createElement("input");
            
            oli.innerHTML = "<p>甲方需在<input required='required' class='dtkzNum' name='pay_year' />年<input required='required' class='dtkzNum' name='pay_month' />月<input required='required' class='dtkzNum' name='pay_day' />日前，支付活动费用总额的<input required='required' class='dtkzNum' name='percents' />即CNY：<input required='required' class='dtkzNum' name='amounts' />元整，（人民币：<input required='required' class='dtkzNum' name='pay_upper' />元整 ）</p>";
            button.type = "button";
            button.id = "bt5" + len;
            button.value = "删除";
            oli.appendChild(button);
            oul.appendChild(oli);
            button.onclick = function() {
                button.parentNode.remove(button.parentNode);
            }
        }
        
        bt.onclick = function() {
            var len = tables.getElementsByTagName("tr").length;
            var tbd = document.getElementById("tbdy");
            var tr = document.createElement("tr");
            var button = document.createElement("input");
            
            button.type = "button";
            button.id = "bt" + len;
            button.value = "删除";
                var td1 = document.createElement("td");  
                var td2 = document.createElement("td");  
                var td3 = document.createElement("td");  
                var td4 = document.createElement("td");  
                var td5 = document.createElement("td");  
                var td6 = document.createElement("td");  
                var td7 = document.createElement("td");  
                var td8 = document.createElement("td");  
                td1.innerHTML = "<input required='required' class='dtkz' name='media_serial' />";
                td2.innerHTML = "<input required='required' class='dtkz' name='location' />";
                td3.innerHTML = "<input required='required' class='dtkz' name='media_type' />";
                td4.innerHTML = "<input required='required' class='dtkz' name='media_specification' />";
                td5.innerHTML = "<input required='required' class='dtkz' name='media_number' />";
                td6.innerHTML = "<input required='required' class='dtkz' name='release_time' />";
                td7.innerHTML = "<input required='required' class='dtkz' name='release_fee' />";
                td8.innerHTML = "<input required='required' class='dtkz' name='production_cost' />";
                tr.appendChild(td1);
                tr.appendChild(td2);
                tr.appendChild(td3);
                tr.appendChild(td4);
                tr.appendChild(td5);
                tr.appendChild(td6);
                tr.appendChild(td7);
                tr.appendChild(td8);
            tr.appendChild(button);
            tbd.appendChild(tr);
            button.onclick = function() {
                button.parentNode.remove(button.parentNode);
            }
        }
    }
    </script>
    
</html>