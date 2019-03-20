package com.aesc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Cw;
import com.aesc.service.CwService;

@Controller
public class CwController {

	@Resource
	private CwService cwService;
	
/**
 * 方法名称: redirectCw ；
 * 方法描述:  :  ；
 * 返回类型: String ；
 * 作者：Dawn Chen  ；
 * 时间：2017年9月11日 下午2:58:19；
 * @throws
 */
	// 跳转到车位租赁合同录入信息
	@RequestMapping("/cw")
	public String redirectCw() {
		return "contracts/cw/cw";
	}

	/**
	 * 方法名称: entryCwContract ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月11日 下午2:58:37；
	 * @throws
	 */
	// 车位的合同录入
	@RequestMapping("/addcw")
	public String entryCwContract(Cw cw) {
		cwService.save(cw);
		return "contracts/cw/cw";
	}

	/**
	 * 方法名称: queryCw ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月11日 下午2:58:41；
	 * @throws
	 */
	// 查询合同信息
	@RequestMapping("/queryCw")
	public ModelAndView queryCw(Model model) {
		List<Cw> cwList = new ArrayList<Cw>();
		cwList = cwService.queryAll();
		model.addAttribute("cwList", cwList);
		return new ModelAndView("contracts/cw/queryCw");
	}

	/**
	 * 方法名称: queryById ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年9月11日 下午2:58:45；
	 * @throws
	 */
	// 通过ID查询合同信息
	@RequestMapping("/queryCwById")
	public ModelAndView queryCwById(int contract_id, Model model) {
		Cw cw = null;
		cw = cwService.queryById(contract_id);
		model.addAttribute("aesc", cw);
		return new ModelAndView("contracts/cw/detailCw");
	}

	/**
	 * 方法名称: updateCwById ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月2日 下午8:57:41；
	 * @throws
	 */
	@RequestMapping("/updateCwById")
	public ModelAndView updateCwById(int contract_id, Model model) {
	  Cw cw = null;
	  cw = cwService.queryById(contract_id);
	  model.addAttribute("aesc", cw);
	  return new ModelAndView("contracts/cw/updateCw");
	}
	
	/**
	 * 方法名称: updateCw ；
	 * 方法描述:  :   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月2日 下午9:05:30；
	 * @throws
	 */
	@RequestMapping("/updateCw")
	public ModelAndView updateCw(Cw cw, Model model) {
	  boolean flag = cwService.updateCw(cw);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
	  model.addAttribute("msg",msg);
	  model.addAttribute("aesc", cw);
	  return new ModelAndView("contracts/cw/updateCw");
	}
}
