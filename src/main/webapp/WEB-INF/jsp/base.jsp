<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/contractsBase.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/print.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">
<title>汽博实业有限公司</title>
<script language="javascript"> 

// 打印页面设置 
function printsetup(){ 
	try{
    wb.execwb(8,1); 
}catch(e){
	err(e);
}
} 

// 打印页面预览 
function printpreview(){ 
	try{
    wb.ExecWB(7,1);
}catch(e){
	err(e);
}
} 

//打印
function printit(){ 
  if(confirm('确定打印吗？')){ 
	  try{
		  wb.execwb(6,6); //6,1也是可以的
	  }catch(e){
		  err(e);
	  }
    
  } 
} 


//页眉、页脚的问题：用到active控件修改注册表
var HKEY_Root,HKEY_Path,HKEY_Key;
HKEY_Root="HKEY_CURRENT_USER";
HKEY_Path="\\Software\\Microsoft\\Internet Explorer\\PageSetup\\";
//设置网页打印的页眉页脚为空
function PageSetup_Null(){
    try{
        var Wsh=new ActiveXObject("WScript.Shell");
        HKEY_Key="header";
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"");
        HKEY_Key="footer";
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"");
    }
    catch(e){
    	err(e);
    }
}
//设置网页打印的页眉页脚为默认值
function PageSetup_Default(){
    try{
        var Wsh=new ActiveXObject("WScript.Shell");
        HKEY_Key="header";
        //设置页眉为空
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"");
        //Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"&u&b&d");
        HKEY_Key="footer";
        //设置页脚只要页码
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"&b&p&b");//&b占位左边和右边让页码在中间显示
       //Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"&w&b页码,&p/&P");
    }
    catch(e){
    	err(e);
    }
}
//相应的js方法只要在打印前调用即可如：在onbeforeprint事件的处理器中调用PageSetup_Null()，然
//后再onafterprint事件的处理器中调用PageSetup_Default()
function err(e){
	alert("请使用IE浏览器或者IE兼容模式操作，并允许使用Active控件。否则将无法打印、预览或设置！");
	window.open("https://www.baidu.com/s?word=ie%E5%85%81%E8%AE%B8activex%E6%8E%A7%E4%BB%B6");
	//ActiveXObject is not defined： 允许ActiveX即可
	console.error(e);
}
</script>
</head>
<body>
	<div class="Noprint">
		<object classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" height="0" id="wb" name="wb" width="0"></object> 
		<a class="btn btn-success" href="javascript:printit();"><i class="fa fa-print fa-2x"></i> IE打印</a>
		<a class="btn btn-success" href="javascript:printpreview();"><i class="fa fa-print fa-2x"></i> IE打印预览</a>
		<a class="btn btn-success" href="javascript:printsetup();"><i class="fa fa-print fa-2x"></i> IE打印页面设置</a>
		<a class="btn btn-success" href="javascript:PageSetup_Default();"><i class="fa fa-print fa-2x"></i> IE设置页脚页码</a>
		<a class="btn btn-success" href="javascript:PageSetup_Null();"><i class="fa fa-print fa-2x"></i> IE设置页眉页脚为空白</a>
		<a class="btn btn-warning" href="javascript:window.print();" style="float:right;"><i class="fa fa-print fa-2x"></i> 打印</a>
		<a class="btn btn-success" href="<%=path%>/IE_setting"><i class="fa fa-cog fa-spin fa-2x"></i> 设置方法</a>
	</div> 
</body>
</html>