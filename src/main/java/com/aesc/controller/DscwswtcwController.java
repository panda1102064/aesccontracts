package com.aesc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Dscwswtcw;
import com.aesc.service.DscwswtcwService;

@Controller
public class DscwswtcwController {
	
	@Resource
	private DscwswtcwService dscwswtcwService;
	
	/**
	 * 方法名称: redirectCw ；
	 * 方法描述:  TODO: /跳转到录入页面  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:42:28；
	 * @throws
	 */
	@RequestMapping("/dscwswtcw")
	public String redirectCw() {
		return "contracts/dscwswtcw/dscwswtcw";
	}
	
	/**
	 * 方法名称: saveDscwswtcw ；
	 * 方法描述:  TODO: /执行保存  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:42:13；
	 * @throws
	 */
	@RequestMapping("/saveDscwswtcw")
	public String saveDscwswtcw(Dscwswtcw dscwswtcw){
	 // try {
	    dscwswtcwService.saveDscwswtcw(dscwswtcw);
    /*} catch (DataIntegrityViolationException e) {
      return "manager/error";
    } */
		return "contracts/dscwswtcw/dscwswtcw";
	}
	
	/**
	 * 方法名称: queryDscwswtcw ；
	 * 方法描述:  TODO: /执行查询  ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:42:00；
	 * @throws
	 */
	@RequestMapping("/queryDscwswtcw")
	public ModelAndView queryDscwswtcw(Model model){
		List<Dscwswtcw> dscwswtcwList = new ArrayList<Dscwswtcw>();
		dscwswtcwList = dscwswtcwService.queryDscwswtcw();
		model.addAttribute("dscwswtcwList",dscwswtcwList );
		return new ModelAndView("contracts/dscwswtcw/queryDscwswtcw");
	}
	
	/**
	 * 方法名称: queryDscwswtcwById ；
	 * 方法描述:  TODO: /通过ID查询合同信息  ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:41:49；
	 * @throws
	 */
	@RequestMapping("/queryDscwswtcwById")
	public ModelAndView queryDscwswtcwById(int contract_id,Model model){
		Dscwswtcw dscwswtcw = null;
		dscwswtcw = dscwswtcwService.queryDscwswtcwById(contract_id);
		model.addAttribute("aesc", dscwswtcw);
		return new ModelAndView("contracts/dscwswtcw/dscwswtcwDetail");
	}
	
	/**
	 * 方法名称: updateDscwswtcwById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:46:03；
	 * @throws
	 */
	@RequestMapping("/updateDscwswtcwById")
	public ModelAndView updateDscwswtcwById(int contract_id,Model model){
	  Dscwswtcw dscwswtcw = null;
	  dscwswtcw = dscwswtcwService.queryDscwswtcwById(contract_id);
	  model.addAttribute("aesc", dscwswtcw);
	  return new ModelAndView("contracts/dscwswtcw/updateDscwswtcw");
	}
	
	/**
	 * 方法名称: updateDscwswtcw；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:41:40；
	 * @throws
	 */
	@RequestMapping("/updateDscwswtcw")
	public ModelAndView updateDscwswtcw(Dscwswtcw dscwswtcw,Model model){
	  boolean flag = dscwswtcwService.updateDscwswtcw(dscwswtcw);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", dscwswtcw);
	  return new ModelAndView("contracts/dscwswtcw/updateDscwswtcw");
	}
}
