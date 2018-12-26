package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Xescscldtcw;
import com.aesc.service.XescscldtcwService;

@Controller
public class XescscldtcwController {
  
  @Resource
  private XescscldtcwService xescscldtcwService;
  
  /**
   * 方法名称: redirectXescscldtcw ；
   * 方法描述: 
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 下午1:34:51；
   * @throws
   */
	@RequestMapping("/xescscldtcw")
	public String redirectXescscldtcw() {
		return "contracts/xescscldtcw/xescscldtcw";
	}
	
	/**
	 * 方法名称: redirectSaveXescscdxtcw ；
	 * 方法描述: 
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 下午1:34:47；
	 * @throws
	 */
	@RequestMapping("/saveXescscldtcw")
	public String redirectSaveXescscdxtcw(Xescscldtcw xescscldtcw){
	    xescscldtcwService.saveXescscdxtcw(xescscldtcw);
	    return "contracts/xescscldtcw/xescscldtcw";
	}
	
	/**
	 * 方法名称: redirectQueryXescscldtcw ；
	 * 方法描述: 
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 下午1:34:43；
	 * @throws
	 */
	@RequestMapping("/queryXescscldtcw")
	public String redirectQueryXescscldtcw(Model model){
	  List<Xescscldtcw> xescscldtcwList = xescscldtcwService.queryXescscldtcw();
	  model.addAttribute("xescscldtcwList", xescscldtcwList);
	  return "contracts/xescscldtcw/queryXescscldtcw";
	}
	
	/**
	 * 方法名称: redirectQueryXescscldtcwById ；
	 * 方法描述: 
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 下午1:34:39；
	 * @throws
	 */
	@RequestMapping("/queryXescscldtcwById")
	public String redirectQueryXescscldtcwById(int contract_id, Model model){
	  Xescscldtcw xescscldtcw = xescscldtcwService.queryXescscldtcwById(contract_id);
	  model.addAttribute("aesc", xescscldtcw);
	  return "contracts/xescscldtcw/detailXescscldtcw";
	}
	
	/**
	 * 方法名称: updateXescscldtcwById ；
	 * 方法描述:  
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午8:49:37；
	 * @throws
	 */
	@RequestMapping("/updateXescscldtcwById")
	public String updateXescscldtcwById(int contract_id, Model model){
	  Xescscldtcw xescscldtcw = xescscldtcwService.queryXescscldtcwById(contract_id);
	  model.addAttribute("aesc", xescscldtcw);
	  return "contracts/xescscldtcw/updateXescscldtcw";
	}
	
	/**
	 * 方法名称: updateXescscldtcw ；
	 * 方法描述:  
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午8:53:03；
	 * @throws
	 */
	@RequestMapping("/updateXescscldtcw")
	public String updateXescscldtcw(Xescscldtcw xescscldtcw, Model model){
	  boolean flag = xescscldtcwService.updateXescscldtcw(xescscldtcw);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", xescscldtcw);
	  return "contracts/xescscldtcw/updateXescscldtcw";
	}
}
