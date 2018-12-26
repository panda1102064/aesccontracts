package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Qpsqmsmb;
import com.aesc.service.QpsqmsmbService;

@Controller
public class QpsqmsmbController {
	
	@Resource
	private QpsqmsmbService qpsqmsmbService;
	
	@RequestMapping("/qpsqmsmb")
	public String redirectQpsqmsmb() {
		return "contracts/qpsqmsmb/qpsqmsmb";
	}
	/**
	 * 方法名称: redirectSaveQpsqmsmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月10日 上午10:19:06；
	 * @throws
	 */
	@RequestMapping("/saveQpsqmsmb")
	public String redirectSaveQpsqmsmb(Qpsqmsmb qpsqmsmb){
		  qpsqmsmbService.saveQpsqmsmb(qpsqmsmb);
		  return "contracts/qpsqmsmb/qpsqmsmb";
	}
	/**
	 * 方法名称: redirectQueryQpsqmsmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月10日 上午10:19:43；
	 * @throws
	 */
	@RequestMapping("/queryQpsqmsmb")
	public String redirectQueryQpsqmsmb(Model model){
		List<Qpsqmsmb> qpsqmsmbList = qpsqmsmbService.queryQpsqmsmb();
		model.addAttribute("qpsqmsmbList", qpsqmsmbList);
		return "contracts/qpsqmsmb/queryQpsqmsmb";
	}
	/**
	 * 方法名称: redirectQueryQpsqmsmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月10日 上午10:20:31；
	 * @throws
	 */
	@RequestMapping("/queryQpsqmsmbById")
	public String redirectQueryQpsqmsmbById(int contract_id, Model model){
		Qpsqmsmb qpsqmsmb = qpsqmsmbService.queryQpsqmsmbById(contract_id);
		model.addAttribute("aesc", qpsqmsmb);
		return "contracts/qpsqmsmb/detailQpsqmsmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpsqmsmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月24日 下午3:57:55；
	 * @throws
	 */
	@RequestMapping("/updateQpsqmsmbById")
	public String redirectUpdateQpsqmsmbById(int contract_id, Model model){
	  Qpsqmsmb qpsqmsmb = qpsqmsmbService.queryQpsqmsmbById(contract_id);
	  model.addAttribute("aesc", qpsqmsmb);
	  return "contracts/qpsqmsmb/updateQpsqmsmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpsqmsmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月24日 下午3:58:46；
	 * @throws
	 */
	@RequestMapping("/updateQpsqmsmb")
	public String redirectUpdateQpsqmsmb(Qpsqmsmb qpsqmsmb, Model model){
	  boolean flag = qpsqmsmbService.updateQpsqmsmb(qpsqmsmb);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc", qpsqmsmb);
	  return "contracts/qpsqmsmb/updateQpsqmsmb";
	}
}
