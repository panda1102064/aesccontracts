<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../base.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<title>重庆汽博实业有限公司</title>
</head>
<body>
        <div id="wrap">
                <img src="<%=path%>/img/logo.png" width="270px" height="60px"/>
                <p style="float: right;">合同编号:<u> ${aesc.contract_serial} </u></p>
                <br /><br />
                <p class="h2" style="text-align: center;">展位活动合同</p>
                <br /><br />
                <p>甲    方：<u> ${aesc.first2 } </u></p>
                <p>地    址：<u> ${aesc.address } </u></p>
                <p>经 办 人：<u> ${aesc.first_agent2} </u></p>
                <p>电    话：<u> ${aesc.phone} </u></p>
                <p>开 户 行：<u> ${aesc.banks} </u></p>
                <p>账    号：<u> ${aesc.bank_account} </u></p>
                <br /><br /><br />
                <p>乙    方： 重庆汽博实业有限公司</p>
                <p>地    址： 重庆市渝北区金渝大道99号汽配城B栋5楼</p>
                <p>经 办 人：<u> ${aesc.second_agent2} </u></p>
                <p>电    话： （023）8918 9966</p>
                <p>开 户 行：中国建设银行股份有限公司重庆两江汽博支行</p>
                <p>账    号： 5000 1040 0430 5250 0282</p>
                <br /><br />
                <p>一、  车展活动条款：</p>
                <p>&nbsp;&nbsp;1、  活动主题：<u> ${aesc.activity_theme} </u></p>
                <p>&nbsp;&nbsp;2、  活动地点：<u> ${aesc.activity_site} </u></p>
                <p>&nbsp;&nbsp;3、  合同日期：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;活动时间：从<u> ${aesc.year_start} </u>年<u> ${aesc.month_start} </u>月<u> ${aesc.day_start} </u> 日到<u> ${aesc.year_end} </u>年<u> ${aesc.month_end} </u>月 <u> ${aesc.day_end} </u> 日止。</p>
                <p>&nbsp;&nbsp;4、合同费用：</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;本次车展活动合同费用总金额为人民币小写￥  <u> ${aesc.tatolfee} </u>元 ，金额大写：  <u> ${aesc.uppers} </u>元整   </p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;上述费用包括：<u> ${aesc.includefee} </u></p>
                <p>&nbsp;&nbsp;5、 结算方式和付款时间：</p>
                <p>&nbsp;&nbsp;5.1  本合同所有费用的支付要求以非现金形式结算。</p>
                <p>&nbsp;&nbsp;5.2  付款时间：</p>
                <ol>
                <c:forEach items="${requestScope.zwTimeList}" var="zwTimeList">
                        <li><p>甲方需在<u> ${zwTimeList.pay_year } </u>年<u> ${zwTimeList.pay_month } </u>月<u> ${zwTimeList.pay_day } </u>日前，支付活动费用总额的<u> ${zwTimeList.percents } </u>即CNY：<u> ${zwTimeList.amounts } </u>元整，（人民币：<u> ${zwTimeList.pay_upper } </u>元整 ）</p></li>
                </c:forEach>
                </ol>
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
                <br><br>
                <div id="me">
                <p>甲    方：<u> ${aesc.first3} </u></p>
                <p>经办人：<u> ${aesc.first_agent3} </u></p>
                <p>（   签章    ）   </p>
                <p>签约日期:<u> ${aesc.firstdate} </u></p>
                </div>
                <div id="other">
                <p> 乙    方：重庆汽博实业有限公司</p>
                <p> 经办人：<u> ${aesc.second_agent3} </u></p>
                <p>（   签章    ）     </p>
                <p>  签约日期:<u> ${aesc.seconddate} </u></p>
                </div>
        </div>
</body>
</html>