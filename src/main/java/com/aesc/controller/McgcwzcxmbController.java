package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Mcgcwzcxmb;
import com.aesc.service.McgcwzcxmbService;

@Controller
public class McgcwzcxmbController {
	
	@Resource
	private McgcwzcxmbService mcgcwzcxmbService;
	
	
	@RequestMapping("/mcgcwzcxmb")
	public String redirectMcgcwzcxmb() {
		return "contracts/mcgcwzcxmb/mcgcwzcxmb";
	}
	/**
	 * 
	 * 方法名称: redirectSaveMcgcwzcxmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月4日 下午4:52:13；
	 * @throws
	 */
	@RequestMapping("/saveMcgcwzcxmb")
	public String redirectSaveMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb){
		  mcgcwzcxmbService.saveMcgcwzcxmb(mcgcwzcxmb);
		  return "contracts/mcgcwzcxmb/mcgcwzcxmb";
	}
	/**
	 * 
	 * 方法名称: redirectQueryMcgcwzcxmb ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月7日 上午10:52:41；
	 * @throws
	 */
	@RequestMapping("/queryMcgcwzcxmb")
	public ModelAndView redirectQueryMcgcwzcxmb(Model model){
		List<Mcgcwzcxmb> mcgcwzcxmb = null;
		mcgcwzcxmb = mcgcwzcxmbService.queryMcgcwzcxmb();
		model.addAttribute("mcgcwzcxmb",mcgcwzcxmb);
		return new ModelAndView("contracts/mcgcwzcxmb/queryMcgcwzcxmb");
	}
	
	/**
	 * 
	 * 方法名称: redirectqueryMcgcwzcxmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月7日 上午11:01:50；
	 * @throws
	 */
	@RequestMapping("/queryMcgcwzcxmbById")
	public ModelAndView redirectQueryMcgcwzcxmbById(int contract_id, Model model){
		Mcgcwzcxmb mcgcwzcxmb = null;
		mcgcwzcxmb = mcgcwzcxmbService.queryMcgcwzcxmbById(contract_id);
		model.addAttribute("aesc", mcgcwzcxmb);
		return new ModelAndView("contracts/mcgcwzcxmb/detailMcgcwzcxmb");
	}
	
	/**
	 * 方法名称: redirectupdateMcgcwzcxmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午1:33:37；
	 * @throws
	 */
	@RequestMapping("/updateMcgcwzcxmbById")
	public String redirectupdateMcgcwzcxmbById(Integer contract_id, Model model) {
	  Mcgcwzcxmb mcgcwzcxmb = null;
    mcgcwzcxmb = mcgcwzcxmbService.queryMcgcwzcxmbById(contract_id);
    model.addAttribute("aesc", mcgcwzcxmb);
	  return "contracts/mcgcwzcxmb/updateMcgcwzcxmb";
	}
	
	/**
	 * 方法名称: redirectupdateMcgcwzcxmb ；
	 * 方法描述:  :  修改方法 ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月1日 下午1:34:08；
	 * @throws
	 */
	@RequestMapping("/updateMcgcwzcxmb")
	public String redirectupdateMcgcwzcxmb(Mcgcwzcxmb mcgcwzcxmb ,Model model) {
	  String msg = "修改成功!请核查！若有误，可再次修改！";
	  boolean flag = mcgcwzcxmbService.updateMcgcwzcxmb(mcgcwzcxmb);
	  if(flag) {
      model.addAttribute("msg",msg);
    }else {
      msg = "修改失败！请详细检查所填内容是否正确。";
      model.addAttribute("msg",msg);
    }
	  model.addAttribute("aesc", mcgcwzcxmb);
	  return "contracts/mcgcwzcxmb/updateMcgcwzcxmb";
	}
}
