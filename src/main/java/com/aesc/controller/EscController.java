package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Esc;
import com.aesc.pojo.EscDate;
import com.aesc.service.EscService;

@Controller
public class EscController {
  
  @Resource
  private EscService escService;
  
  /**
   * 方法名称: redirectEsc ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月22日 下午4:48:14；
   * @throws
   */
	@RequestMapping("/esc")
	public String redirectEsc() {
		return "contracts/esc/esc";
	}
	
	/**
	 * 方法名称: redirectSaveEsc ；
	 * 方法描述:  TODO:synchronized是为了防止escdate数据库的合同id出错   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月22日 下午4:48:19；
	 * @throws
	 */
	@RequestMapping("/saveEsc")
	public synchronized String redirectSaveEsc(Esc esc, EscDate escDate){
	  //try {
	  escService.saveEsc(esc);
	  escService.saveEscDate(escDate);
	  /*} catch (DataIntegrityViolationException e) {
	    return "manager/error";
	  } */
	  return "contracts/esc/esc";
	}
	  
	/**
	 * 方法名称: redirectQueryEsc ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月22日 下午4:48:22；
	 * @throws
	 */
	@RequestMapping("/queryEsc")
	public String redirectQueryEsc(Model model){
	  List<Esc> escList = escService.queryEsc();
	  model.addAttribute("escList", escList);
	  return "contracts/esc/queryEsc";
	}
	
	/**
	 * 方法名称: redirectQueryEscById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月22日 下午4:48:25；
	 * @throws
	 */
	@RequestMapping("/queryEscById")
	public String redirectQueryEscById(int contract_id, Model model){
	 Esc esc = escService.queryEscById(contract_id);
	 List<EscDate> escList = escService.queryEscDateById(contract_id);
	 model.addAttribute("aesc",esc);
	 model.addAttribute("escList",escList);
	 return "contracts/esc/detailEsc";
	}
	
	/**
	 * 方法名称: redirectUpdateEscById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月10日 下午8:15:05；
	 * @throws
	 */
	@RequestMapping("/updateEscById")
	public String redirectUpdateEscById(int contract_id, Model model){
	  Esc esc = escService.queryEscById(contract_id);
	  List<EscDate> escList = escService.queryEscDateById(contract_id);
	  model.addAttribute("aesc",esc);
	  model.addAttribute("escList",escList);
	  return "contracts/esc/updateEsc";
	}
	
	/**
	 * 方法名称: redirectUpdateEsc ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月10日 下午8:16:42；
	 * @throws
	 */
	@RequestMapping("/updateEsc")
	public String redirectUpdateEsc(Esc esc,EscDate escDate, Model model){
	  boolean flag = escService.updateEsc(esc);
	  boolean flag2 = escService.updateEscDate(escDate);
	  String msg = flag && flag2 ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
	  List<EscDate> escList = escService.transverterEscList(escDate);
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc",esc);
	  model.addAttribute("escList",escList);
	  return "contracts/esc/updateEsc";
	}
	
}
