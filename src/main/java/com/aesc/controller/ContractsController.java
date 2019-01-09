package com.aesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ContractsController {

	/**
	 * 方法名称: redirectMain ；
	 * 方法描述: 错误页返回菜单主页  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月11日 下午4:38:16；
	 * @throws
	 */
	//跳转到主菜单页
	@RequestMapping("/meun")
	public String redirectMain(){
	  return "manager/main";
	}
	
	//招商合同列表
	@RequestMapping("/ZSBcontractLists")
	public String redirectinputContract(){
		return "manager/ZSBcontractLists";
	}
	
	//IE兼容设置
	@RequestMapping("/IE_setting")
	public String IE_setting(){
	  return "IE_setting";
	}
		
}
