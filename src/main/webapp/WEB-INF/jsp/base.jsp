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
<link rel="shortcut icon" href="<%=path%>/img/favicon.ico">
<title>汽博实业有限公司</title>
<script language="javascript"> 
// 打印页面设置 
function printSetup(){ 
	try{
    wb.execwb(8,1); 
	}catch(e){
		err(e);
	}
} 

// 打印页面预览 
function printPreview(){ 
	try{
    wb.ExecWB(7,1);
	}catch(e){
	err(e);
	}
} 

//打印
function printIt(){ 
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
//设置网页打印的页眉页脚为空白
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
//设置网页打印的页眉页脚为默认值显示页数
function PageSetup_Default(){
    try{
        var Wsh=new ActiveXObject("WScript.Shell");
        //设置页眉为空
        HKEY_Key="header";
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"");
        //设置页脚只要页码
        HKEY_Key="footer";
        //&b占位左边和右边让页码在中间显示
        //Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"&b&p&b");
        Wsh.RegWrite(HKEY_Root+HKEY_Path+HKEY_Key,"&b第 &p 页/共 &P 页&b");
    }
    catch(e){
    	err(e);
    }
}

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
		<object classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2" id="wb" name="wb" height="0" width="0"></object> 
		<a class="btn btn-success" href="javascript:printIt();"><i class="fa fa-print fa-2x"></i> ④IE打印</a>
		<a class="btn btn-success" href="javascript:printPreview();"><i class="fa fa-print fa-2x"></i> ③IE打印预览</a>
		<a class="btn btn-success" href="javascript:PageSetup_Default();"><i class="fa fa-print fa-2x"></i> ②IE设置页脚的页码居中</a>
		<a class="btn btn-success" href="javascript:PageSetup_Null();"><i class="fa fa-print fa-2x"></i> ①IE设置页眉页脚不显示</a>
		<a class="btn btn-success" href="javascript:printSetup();" title="设置还不对？点这个设置"><i class="fa fa-print fa-2x"></i> IE打印页面设置</a>
		<a class="btn btn-warning" href="javascript:window.print();" style="float:right;"><i class="fa fa-print fa-2x"></i> 打印</a>
		<a class="btn btn-success" href="<%=path%>/IE_setting" target="_blank"><i class="fa fa-cog fa-spin fa-2x"></i> 设置方法</a>
	</div> 
</body>
</html>