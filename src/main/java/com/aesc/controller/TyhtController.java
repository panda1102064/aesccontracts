package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Tyht;
import com.aesc.service.TyhtService;

@Controller
public class TyhtController {
  
  @Resource
  private TyhtService tyhtService;
  
  /**
   * 方法名称: redirectTyht ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午9:50:49；
   * @throws
   */
	@RequestMapping("/tyht")
	public String redirectTyht() {
		return "contracts/tyht/tyht";
	}
	
	/**
	 * 方法名称: redirectSaveTyht ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 上午9:50:56；
	 * @throws
	 */
	@RequestMapping("/saveTyht")
	public String redirectSaveTyht(Tyht tyht){
	  //try {
	    tyhtService.saveTyht(tyht);
    /*} catch (DataIntegrityViolationException e) {
      return "manager/error";
    } */
	  return "contracts/tyht/tyht";
	}
	
	/**
	 * 方法名称: redirectQueryTyht ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 上午9:54:21；
	 * @throws
	 */
	@RequestMapping("/queryTyht")
	public String redirectQueryTyht(Model model){
	  List<Tyht> tyhtList = tyhtService.queryTyht();
	  model.addAttribute("tyhtList",tyhtList);
	  return "contracts/tyht/queryTyht";
	}
	
	/**
	 * 方法名称: redirectQueryById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月17日 上午9:58:26；
	 * @throws
	 */
	@RequestMapping("/queryTyhtById")
	public String redirectQueryById(int contract_id, Model model){
	  Tyht tyht = null;
	  tyht = tyhtService.queryTyhtById(contract_id);
	  model.addAttribute("aesc",tyht);
	  return "contracts/tyht/detailTyht";
	}
	
	/**
	 * 方法名称: redirectUpdateQueryById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月15日 上午10:27:16；
	 * @throws
	 */
	@RequestMapping("/updateTyhtById")
	public String redirectUpdateQueryById(int contract_id, Model model){
	  Tyht tyht = null;
	  tyht = tyhtService.queryTyhtById(contract_id);
	  model.addAttribute("aesc",tyht);
	  return "contracts/tyht/updateTyht";
	}
	
	/**
	 * 方法名称: redirectUpdateTyht ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月15日 上午10:07:02；
	 * @throws
	 */
	@RequestMapping("/updateTyht")
	public String redirectUpdateTyht(Tyht tyht, Model model){
	  boolean flag = tyhtService.updateTyht(tyht);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc",tyht);
	  return "contracts/tyht/updateTyht";
	}
}
