package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Pjcw;
import com.aesc.service.PjcwService;

@Controller
public class PjcwController {
	
	@Resource
	private PjcwService pjcwService;
	
	@RequestMapping("/pjcw")
	public String redirectpPjcw() {
		return "contracts/pjcw/pjcw";
	}
	/**
	 * 
	 * 方法名称: redirectSavePjcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月7日 下午3:44:14；
	 * @throws
	 */
	@RequestMapping("/savePjcw")
	public String redirectSavePjcw(Pjcw pjcw){
		//try {
		  pjcwService.savePjcw(pjcw);
    /*} catch (DataIntegrityViolationException e) {
      return "manager/error";
    }*/ 
		return "contracts/pjcw/pjcw";
	}
	/**
	 * 
	 * 方法名称: redirectqueryPjcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月7日 下午4:17:25；
	 * @throws
	 */
	@RequestMapping("/queryPjcw")
	public ModelAndView redirectQueryPjcw(Model model){
		List<Pjcw> pjcwList= pjcwService.queryPjcw();
		model.addAttribute("pjcwList", pjcwList);
		return new ModelAndView("contracts/pjcw/queryPjcw");
	}
	/**
	 * 
	 * 方法名称: redirectQueryPjcwListById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月7日 下午4:37:14；
	 * @throws
	 */
	@RequestMapping("/queryPjcwListById")
	public ModelAndView redirectQueryPjcwListById(int contract_id ,Model model){
		Pjcw pjcw= pjcwService.queryPjcwListById(contract_id);
		model.addAttribute("aesc", pjcw);
		return new ModelAndView("contracts/pjcw/detailPjcw");
	}
	
	/**
	 * 方法名称: redirectUpdatePjcwListById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午8:15:12；
	 * @throws
	 */
	@RequestMapping("/updatePjcwById")
	public ModelAndView redirectUpdatePjcwListById(int contract_id ,Model model){
	  Pjcw pjcw= pjcwService.queryPjcwListById(contract_id);
	  model.addAttribute("aesc", pjcw);
	  return new ModelAndView("contracts/pjcw/updatePjcw");
	}
	
	/**
	 * 方法名称: redirectUpdatePjcwList ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午8:16:03；
	 * @throws
	 */
	@RequestMapping("/updatePjcw")
	public ModelAndView redirectUpdatePjcwList(Pjcw pjcw ,Model model){
	  boolean flag = pjcwService.updatePjcw(pjcw);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", pjcw);
	  return new ModelAndView("contracts/pjcw/updatePjcw");
	}
}
