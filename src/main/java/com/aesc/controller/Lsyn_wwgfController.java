package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Lsyf_wwgf;
import com.aesc.service.Lsyf_wwgfService;

@Controller
public class Lsyn_wwgfController {
  
	@Resource
	private Lsyf_wwgfService lsyf_wwgfService;
	
	//跳转到录入界面
	@RequestMapping("/lsyf_wwgf")
	public String redirectLsyf_wwgf() {
		return "contracts/lsyf_wwgf/lsyf_wwgf";
	}
	
	//执行保存操作
	@RequestMapping("/saveLsyf_wwgf")
	public String redirectSaveLsyf_wwgf(Lsyf_wwgf lsyf_wwgf){
		//try {
		  lsyf_wwgfService.saveLsyf_wwgf(lsyf_wwgf);
   /* } catch (DataIntegrityViolationException e) {
      return "manager/error";
    } */
		return "contracts/lsyf_wwgf/lsyf_wwgf";
	}
	
	//执行查询所有合同信息
	@RequestMapping("/queryLsyf_wwgf")
	public ModelAndView redirectQueryAll( Model model){
		List<Lsyf_wwgf> lsyf_wwgf = null;
		lsyf_wwgf = lsyf_wwgfService.queryLsyf_wwgf();
		model.addAttribute("lsyf_wwgf", lsyf_wwgf);
		return new ModelAndView("contracts/lsyf_wwgf/queryLsyf_wwgf");
	}
	
	//通过ID查询合同信息
	@RequestMapping("/querylsyf_wwgfById")
	public ModelAndView redirectQueryLsyf_wwgfById(int contract_id,  Model model){
		Lsyf_wwgf lsyf_wwgf = null;
		lsyf_wwgf = lsyf_wwgfService.queryLsyf_wwgfById(contract_id);
		model.addAttribute("aesc", lsyf_wwgf);
		return new ModelAndView("contracts/lsyf_wwgf/detailLsyf_wwgf");
	}
	
	/**
	 * 方法名称: redirectUpdateLsyf_wwgfById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午9:00:28；
	 * @throws
	 */
	//通过ID查询合同信息
	@RequestMapping("/updatelsyf_wwgfById")
	public ModelAndView redirectUpdateLsyf_wwgfById(int contract_id,  Model model){
	  Lsyf_wwgf lsyf_wwgf = null;
	  lsyf_wwgf = lsyf_wwgfService.queryLsyf_wwgfById(contract_id);
	  model.addAttribute("aesc", lsyf_wwgf);
	  return new ModelAndView("contracts/lsyf_wwgf/updateLsyf_wwgf");
	}
	
	/**
	 * 方法名称: redirectUpdateLsyf_wwgf ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月13日 下午9:02:37；
	 * @throws
	 */
	@RequestMapping("/updateLsyf_wwgf")
	public ModelAndView redirectUpdateLsyf_wwgf(Lsyf_wwgf lsyf_wwgf,  Model model){
	  boolean flag = lsyf_wwgfService.updateLsyf_wwgf(lsyf_wwgf);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", lsyf_wwgf);
	  return new ModelAndView("contracts/lsyf_wwgf/updateLsyf_wwgf");
	}
}
