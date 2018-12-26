package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Qpeqmsmb;
import com.aesc.service.QpeqmsmbService;

@Controller
public class QpeqmsmbController {
	
	@Resource
	private QpeqmsmbService qpeqmsmbService;
	
	@RequestMapping("/qpeqmsmb")
	public String redirectQpeqmsmb() {
		return "contracts/qpeqmsmb/qpeqmsmb";
	}
	/**
	 * 
	 * 方法名称: redirectSaveQpeqmsmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月8日 下午2:40:49；
	 * @throws
	 */
	@RequestMapping("/saveQpeqmsmb")
	public String redirectSaveQpeqmsmb(Qpeqmsmb qpeqmsmb){
		  qpeqmsmbService.saveQpeqmsmb(qpeqmsmb);
		  return "contracts/qpeqmsmb/qpeqmsmb";
	}
	/**
	 * 方法名称: redirectQueryQpeqmsmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月8日 下午3:00:28；
	 * @throws
	 */
	@RequestMapping("/queryQpeqmsmb")
	public String redirectQueryQpeqmsmb(Model model){
		List<Qpeqmsmb> qpeqmsmbList = qpeqmsmbService.queryQpeqmsmb();
		model.addAttribute("qpeqmsmbList", qpeqmsmbList);
		return "contracts/qpeqmsmb/queryQpeqmsmb";
	}
	
	/**
	 * 方法名称: redirectQueryQpeqmsmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年12月18日 下午1:44:47；
	 * @throws
	 */
	@RequestMapping("/queryQpeqmsmbById")
	public String redirectQueryQpeqmsmbById(int contract_id ,Model model){
		Qpeqmsmb qpeqmsmb = qpeqmsmbService.queryQpeqmsmbById(contract_id);
		model.addAttribute("aesc", qpeqmsmb);
		return "contracts/qpeqmsmb/detailQpeqmsmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpeqmsmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年12月18日 下午1:50:43；
	 * @throws
	 */
	@RequestMapping("/updateQpeqmsmbById")
	public String redirectUpdateQpeqmsmbById(int contract_id ,Model model){
	  Qpeqmsmb qpeqmsmb = qpeqmsmbService.queryQpeqmsmbById(contract_id);
	  model.addAttribute("aesc", qpeqmsmb);
	  return "contracts/qpeqmsmb/updateQpeqmsmb";
	}
	
	@RequestMapping("/updateQpeqmsmb")
	public String redirectUpdateQpeqmsmb(Qpeqmsmb qpeqmsmb ,Model model){
	  boolean flag = qpeqmsmbService.updateQpeqmsmb(qpeqmsmb);
	  String msg = flag ? "修改成功，请详查，若有误，可再次修改！":"修改失败，请详细检查修改内容";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", qpeqmsmb);
	  return "contracts/qpeqmsmb/updateQpeqmsmb";
	}
}
