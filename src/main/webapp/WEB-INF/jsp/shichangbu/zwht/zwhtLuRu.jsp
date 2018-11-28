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
	        <form action="saveZhanWei" method="post">
	            <img src="<%=path%>/img/logo.png" width="270px" height="60px"/>
	            <p style="float: right;">合同编号:<input required="required" class="dtkzNum" name="contract_serial"/></p>
	            <br /><br />
	            <p class="h2" style="text-align: center;"> 展位活动合同</p>
	            <br /><br />
	            <p>甲    方：<input required="required" class="dtkz" name="first2"/></p>
	            <p>地    址：<input required="required" class="dtkz" name="address"/></p>
	            <p>经 办 人：<input required="required" class="dtkz" name="first_agent2"/></p>
	            <p>电    话：<input required="required" class="dtkzNum" name="phone"/></p>
	            <p>开 户 行：<input required="required" class="dtkz" name="banks"/></p>
	            <p>账    号：<input required="required" class="dtkzNum" name="bank_account"/></p>
	            <br /><br /><br /><br />
	            <p>乙    方： 重庆汽博实业有限公司</p>
	            <p>地    址： 重庆市渝北区金渝大道99号汽配城B栋5楼</p>
	            <p>经 办 人：<input required="required" class="dtkz" name="second_agent2"/></p>
	            <p>电    话： （023）8918 9966</p>
	            <p>开 户 行：中国建设银行股份有限公司重庆两江汽博支行</p>
	            <p>账    号： 5000 1040 0430 5250 0282</p>
	            <br /><br />
	            <p>一、  车展活动条款：</p>
	            <p>&nbsp;&nbsp;1、  活动主题：<input required="required" class="dtkz" name="activity_theme" value="品牌宣传活动"/></p>
	            <p>&nbsp;&nbsp;2、  活动地点：<input required="required" class="dtkz" name="activity_site" value="汽博中心汽配一期驾考等待区"/></p>
	            <p>&nbsp;&nbsp;3、  合同日期：</p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;活动时间：从<input required="required" class="dtkzNum" name="year_start"/> 年 <input required="required" class="dtkzNum" name="month_start"/>月 <input required="required" class="dtkzNum" name="day_start"/> 日到<input required="required" class="dtkzNum" name="year_end"/>年<input required="required" class="dtkzNum" name="month_end"/>月 <input required="required" class="dtkzNum" name="day_end"/> 日止。</p>
	            <p>&nbsp;&nbsp;4、合同费用：</p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;本次车展活动合同费用总金额为人民币小写￥  <input required="required" class="dtkzNum" name="tatolfee"/>元 ，金额大写：  <input required="required" class="dtkz" name="uppers"/>元整   </p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;上述费用包括：<input required="required" class="dtkz" name="includefee" value="展位服务费（本次活动场地由甲方自行搭建）"/></p>
	            <p>&nbsp;&nbsp;5、 结算方式和付款时间：</p>
	            <p>&nbsp;&nbsp;5.1  本合同所有费用的支付要求以非现金形式结算。</p>
	            <p>&nbsp;&nbsp;5.2  付款时间：</p>
	            <div id="main">
                    <ol>
                        <li><p>甲方需在<input required="required" class="dtkzNum" name="pay_year"/>年<input required="required" class="dtkzNum" name="pay_month"/>月<input required="required" class="dtkzNum" name="pay_day"/>日前，支付活动费用总额的<input required="required" class="dtkzNum" name="percents"/>即CNY：<input required="required" class="dtkzNum" name="amounts"/>元整，（人民币：<input required="required" class="dtkzNum" name="pay_upper"/>元整 ）</p><input class="btn-danger" type="button" value="添加" id="bt" /></li>
                    </ol>
                </div>
	            <p>二、一般性条款</p>
	            <p>&nbsp;&nbsp;1、  甲方的权利和义务 </p>
	            <p>&nbsp;&nbsp;1.1若甲方展出的展品为伪劣假冒的产品和/或侵权产品，所产生的一切纠纷由甲方自行承担，乙方不予负责。</p>
	            <p>&nbsp;&nbsp;1.2展位的搭建与装饰：甲方必须于指定的时间内进行展位的搭建和布置。由于甲方或其委托搭建商的原因使其他参展商或公共财产受到损害，甲方须作出赔偿。 </p>
	            <p>&nbsp;&nbsp;1.3未经乙方事先书面同意，甲方不得将其展位转让给第三方。</p>
	            <p>&nbsp;&nbsp;2、  乙方权利和义务 </p>
	            <p>&nbsp;&nbsp;2.1展位的分配：乙方将依据甲方申请的展位类型、位置及面积分配展位。  </p>
	            <p>&nbsp;&nbsp;2.2乙方未按约定提供展位致使甲方不能正常参展的，乙方将如数退还甲方已交的展位费。   </p>
	            <p>&nbsp;&nbsp;3、违约责任</p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;除本合同另有约定的情况或法定不可抗力因素除外，合同一方逾期履行合同或者有其他违反合同约定之行为的，应按不低于本合同标的总额的20%向另一方支付违约金，另一方有权要求违约方继续履行合同。</p>
	            <p>&nbsp;&nbsp;4、争议解决</p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;本合同受中华人民共和国法律管辖并按照中华人民共和国法律解释，由本合同产生的或者与之相关的一切争议均应由乙方所在地—重庆市人民法院管辖。</p>
	            <p>&nbsp;&nbsp;5、其他</p>
	            <p>&nbsp;&nbsp;&nbsp;&nbsp;本合同一式肆份，甲乙双方各执贰份，具同等法律效力。未尽事宜，双方可协商解决。</p>
	            <div id="me">
	            <p>甲    方：<input required="required" class="dtkz" name="first3"/>  </p>
	            <p>经办人：<input required="required" class="dtkz" name="first_agent3"/>  </p>
	            <p>（   签章    ）   </p>
	            <p>签约日期:<input required="required" type="date" name="firstdate" class="qz"/></p>
	            </div>
	            <div id="other">
	            <p> 乙    方：重庆汽博实业有限公司</p>
	            <p> 经办人：<input required="required" class="dtkz" name="second_agent3"/></p>
	            <p>（   签章    ）     </p>
	            <p>  签约日期:<input required="required" type="date" name="seconddate" class="qz"/></p>
	            </div>
	            <!-- 都是不安全的操作。但是省事 ，想安全点后台写也是可以的-->
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
        var main = document.getElementById("main");
        var bt = document.getElementById("bt");
        bt.onclick = function() {
            var len = main.getElementsByTagName("li").length;
            var oul = main.getElementsByTagName("ol")[0];
            var oli = document.createElement("li");
            var button = document.createElement("input");
            
            oli.innerHTML = "<p>甲方需在<input required='required' class='dtkzNum' name='pay_year' />年<input required='required' class='dtkzNum' name='pay_month' />月<input required='required' class='dtkzNum' name='pay_day' />日前，支付活动费用总额的<input required='required' class='dtkzNum' name='percents' />即CNY：<input required='required' class='dtkzNum' name='amounts' />整，（人民币：<input required='required' class='dtkzNum' name='pay_upper' />元整 ）</p>";
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
</html>