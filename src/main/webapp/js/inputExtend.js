//input框的文字动态扩展
$(function(){  
    //propertychange监听input里面的字符变化,属性改变事件  
    $('.dtkz').bind('input propertychange', function() {  
        var $this = $(this);  
        var text_length = $this.val().length;//获取当前文本框的长度  
        var current_width = parseInt(text_length) *20+10;//该20是改变前的宽度除以当前字符串的长度,算出每个字符的长度  
        $this.css("width",current_width+"px");  
    });  
});  


//input框的数字动态扩展
$(function(){  
    //propertychange监听input里面的字符变化,属性改变事件  
    $('.dtkzNum').bind('input propertychange', function() {  
        var $this = $(this);  
        var text_length = $this.val().length;//获取当前文本框的长度  
        var current_width = parseInt(text_length) *20+10;//该10是改变前的宽度除以当前数字字符串的长度,算出每个字符的长度  
        $this.css("width",current_width+"px");  
    });  
}); 


//打印
/*function doPrint() { 
bdhtml=window.document.body.innerHTML; 
sprnstr="<!--startprint-->"; //开始打印标识字符串有17个字符
eprnstr="<!--endprint-->"; //结束打印标识字符串
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); //从开始打印标识之后的内容
prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr)); //截取开始标识和结束标识之间的内容
window.document.body.innerHTML=prnhtml; //把需要打印的指定内容赋给body.innerHTML
window.print(); //调用浏览器的打印功能打印指定区域
window.document.body.innerHTML=bdhtml; // 最后还原页面
}
*/

//自动获取当日日期
Date.prototype.toDateInputValue = (function() {
	var local = new Date(this); 
	local.setMinutes(this.getMinutes() - this.getTimezoneOffset()); 
	return local.toJSON().slice(0,10);
	});

document.getElementById("date1").value=new Date().toDateInputValue();
document.getElementById("date2").value=new Date().toDateInputValue();
