package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Mcgcbgsht;
import com.aesc.service.McgcbgshtService;

@Controller
public class McgcbgshtController {
	
	@Resource
	private McgcbgshtService mcgcbgshtService;
	
	@RequestMapping("/mcgcbgsht")
	public String redirectMcgcbgsht() {
		return "contracts/mcgcbgsht/mcgcbgsht";
	}
	/**
	 * 
	 * 方法名称: redirectSaveMcgcbgsht ；
	 * 方法描述:  : 保存名车广场办公室合同  ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月2日 上午10:18:45；
	 * @throws
	 */
	@RequestMapping("/saveMcgcbgsht")
	public String redirectSaveMcgcbgsht(Mcgcbgsht mcgcbgsht){
		  mcgcbgshtService.SaveMcgcbgsht(mcgcbgsht);
		return "contracts/mcgcbgsht/mcgcbgsht";
	}
	
	/**
	 * 
	 * 方法名称: redirectQueryMcgcbgsht ；
	 * 方法描述:  :  查询合同信息 ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月2日 上午10:20:00；
	 * @throws
	 */
	@RequestMapping("/queryMcgcbgsht")
	public ModelAndView redirectQueryMcgcbgsht(Model model){
		List<Mcgcbgsht> mcgcbgshtList = null;
		mcgcbgshtList = mcgcbgshtService.queryMcgcbgsht();
		model.addAttribute("mcgcbgshtList", mcgcbgshtList);
		return new ModelAndView("contracts/mcgcbgsht/queryMcgcbgsht");
	}
	/**
	 * 
	 * 方法名称: redirectquerymcgcbgshtListById ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月2日 上午10:34:02；
	 * @throws
	 */
	@RequestMapping("/querymcgcbgshtListById")
	public ModelAndView redirectquerymcgcbgshtListById(int contract_id,Model model){
		Mcgcbgsht mcgcbgsht = null;
		mcgcbgsht = mcgcbgshtService.querymcgcbgshtListById(contract_id);
		model.addAttribute("aesc", mcgcbgsht);
		return new ModelAndView("contracts/mcgcbgsht/detailMcgcbgsht");
	}
	
	/**
	 * 方法名称: redirectupdatemcgcbgshtListById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月2日 上午8:53:29；
	 * @throws
	 */
	@RequestMapping("/updatemcgcbgshtListById")
	public String redirectupdatemcgcbgshtListById(int contract_id,Model model) {
	  Mcgcbgsht mcgcbgsht = mcgcbgshtService.querymcgcbgshtListById(contract_id);
	  model.addAttribute("aesc", mcgcbgsht);
	  return "contracts/mcgcbgsht/updateMcgcbgsht";
	}
	
	/**
	 * 方法名称: redirectUpdateMcgcbgsht ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月2日 上午8:53:34；
	 * @throws
	 */
	@RequestMapping("/updateMcgcbgsht")
	public String redirectUpdateMcgcbgsht(Mcgcbgsht mcgcbgsht,Model model) {
	  String msg = "修改成功!请核查！若有误，可再次修改！";
    boolean flag = mcgcbgshtService.updateMcgcbgsht(mcgcbgsht);
    if(flag) {
      model.addAttribute("msg",msg);
    }else {
      msg = "修改失败！请详细检查所填内容是否正确。";
      model.addAttribute("msg",msg);
    }
    model.addAttribute("aesc", mcgcbgsht);
	  return "contracts/mcgcbgsht/updateMcgcbgsht";
	}
}
