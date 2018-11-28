package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Mcgctcc;
import com.aesc.service.McgctccService;

@Controller
public class McgctccController {
  
	@Resource
	private McgctccService mcgctccService;
	
	//跳转到录入界面
	@RequestMapping("/mcgctcc")
	public String redirectmcgctcc() {
		return "contracts/mcgctcc/mcgctcc";
	}
	
	//执行保存操作
	@RequestMapping("/saveMcgctcc")
	public String redirectSavemcgctcc(Mcgctcc mcgctcc){
		//try {
		  mcgctccService.saveMcgctcc(mcgctcc);
   /* } catch (DataIntegrityViolationException e) {
      return "manager/error";
    } */
		return "contracts/mcgctcc/mcgctcc";
	}
	
	//执行查询所有合同信息
	@RequestMapping("/queryMcgctcc")
	public String redirectQueryAll( Model model){
		List<Mcgctcc> mcgctcc = mcgctccService.queryMcgctcc();
		model.addAttribute("mcgctcc", mcgctcc);
		return "contracts/mcgctcc/queryMcgctcc";
	}
	
	//通过ID查询合同信息
	@RequestMapping("/queryMcgctccById")
	public String redirectQuerymcgctccById(int contract_id,  Model model){
		Mcgctcc mcgctcc = mcgctccService.queryMcgctccById(contract_id);
		model.addAttribute("aesc", mcgctcc);
		return "contracts/mcgctcc/detailMcgctcc";
	}
	
	/**
	 * 方法名称: redirectUpdatemcgctccById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午9:00:28；
	 * @throws
	 */
	//通过ID查询合同信息
	@RequestMapping("/updateMcgctccById")
	public String redirectUpdatemcgctccById(int contract_id,  Model model){
	  Mcgctcc mcgctcc = mcgctccService.queryMcgctccById(contract_id);
	  model.addAttribute("aesc", mcgctcc);
	  return "contracts/mcgctcc/updateMcgctcc";
	}
	
	/**
	 * 方法名称: redirectUpdatemcgctcc ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午9:02:37；
	 * @throws
	 */
	@RequestMapping("/updateMcgctcc")
	public ModelAndView redirectUpdatemcgctcc(Mcgctcc mcgctcc,  Model model){
	  boolean flag = mcgctccService.updateMcgctcc(mcgctcc);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", mcgctcc);
	  return new ModelAndView("contracts/mcgctcc/updateMcgctcc");
	}
}
