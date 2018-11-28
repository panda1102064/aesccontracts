package com.aesc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Xescscdxtcw;
import com.aesc.service.XescscdxtcwService;

@Controller
public class XescscdxtcwController {
  
	@Resource
	private XescscdxtcwService xescscdxtcwService;

	/**
	 * 方法名称: redirectXescscdxtcw ；
	 * 方法描述:  TODO: / 跳转到新二手车市场地下停车位的合同录入信息  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:50:30；
	 * @throws
	 */
	@RequestMapping("/xescscdxtcw")
	public String redirectXescscdxtcw() {
		return "contracts/xescscdxtcw/xescscdxtcw";
	}

	/**
	 * 方法名称: entrycontract ；
	 * 方法描述:  TODO: / 新二手车市场地下停车位的合同录入  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:50:04；
	 * @throws
	 */
	@RequestMapping("/addxescscdxtcw")
	public String entrycontract(Xescscdxtcw xescscdxtcw) {
		//try {
		  xescscdxtcwService.add(xescscdxtcw);
    /*} catch (DataIntegrityViolationException e) {
      return "manager/error";
    } */
		return "contracts/xescscdxtcw/xescscdxtcw";
	}

	/**
	 * 方法名称: redirectQueryXescscdxtcw ；
	 * 方法描述:  TODO: / 新二手车市场地下停车位合同的查询页面  ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:49:24；
	 * @throws
	 */
	@RequestMapping("/queryXescscdxtcw")
	public ModelAndView redirectQueryXescscdxtcw(Model model) {
		List<Xescscdxtcw> contractsList = new ArrayList<Xescscdxtcw>();
		contractsList = xescscdxtcwService.queryAll();
		model.addAttribute("contractsList", contractsList);
		return new ModelAndView("contracts/xescscdxtcw/queryXescscdxtcw");
	}

	/**
	 * 方法名称: queryById ；
	 * 方法描述:  TODO: / 通过ID查询合同详情信息  ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:49:16；
	 * @throws
	 */
	@RequestMapping("/queryXescscdxtcwById")
	public ModelAndView queryById(Xescscdxtcw xescscdxtcwInfo, Model model) {
		Xescscdxtcw xescscdxtcw = null;
		xescscdxtcw = xescscdxtcwService.queryById(xescscdxtcwInfo.getContract_id());
		model.addAttribute("aesc", xescscdxtcw);
		return new ModelAndView("contracts/xescscdxtcw/detail");
	}
	
	/**
	 * 方法名称: updateXescscdxtcwById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:48:29；
	 * @throws
	 */
	@RequestMapping("/updateXescscdxtcwById")
	public ModelAndView updateXescscdxtcwById(Xescscdxtcw xescscdxtcwInfo, Model model) {
	  Xescscdxtcw xescscdxtcw = null;
	  xescscdxtcw = xescscdxtcwService.queryById(xescscdxtcwInfo.getContract_id());
	  model.addAttribute("aesc", xescscdxtcw);
	  return new ModelAndView("contracts/xescscdxtcw/updateXescscdxtcw");
	}
	
	/**
	 * 方法名称: updateXescscdxtcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月9日 下午7:51:53；
	 * @throws
	 */
	@RequestMapping("/updateXescscdxtcw")
	public ModelAndView updateXescscdxtcw(Xescscdxtcw xescscdxtcwInfo, Model model) {
	  boolean flag = xescscdxtcwService.updateXescscdxtcw(xescscdxtcwInfo);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", xescscdxtcwInfo);
	  return new ModelAndView("contracts/xescscdxtcw/updateXescscdxtcw");
	}
}
