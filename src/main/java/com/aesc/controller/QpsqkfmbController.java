package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Qpsqkfmb;
import com.aesc.service.QpsqkfmbService;

@Controller
public class QpsqkfmbController {
	
	@Resource
	private QpsqkfmbService qpsqkfmbService;
	
	@RequestMapping("/qpsqkfmb")
	public String redirectQpsqkfmb() {
		return "contracts/qpsqkfmb/qpsqkfmb";
	}
	/**
	 * 
	 * 方法名称: redirectSaveQpsqkfmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月9日 上午11:36:34；
	 * @throws
	 */
	@RequestMapping("/saveQpsqkfmb")
	public String redirectSaveQpsqkfmb(Qpsqkfmb qpsqkfmb){
		try {
		  qpsqkfmbService.saveQpsqkfmb(qpsqkfmb);
    } catch (DataIntegrityViolationException e) {
      return "manager/error";
    } 
		return "contracts/qpsqkfmb/qpsqkfmb";
	}
	/**
	 * 
	 * 方法名称: redirectQueryQpsqkfmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月9日 上午11:55:35；
	 * @throws
	 */
	@RequestMapping("/queryQpsqkfmb")
	public String redirectQueryQpsqkfmb(Model model){
		List<Qpsqkfmb> qpsqkfmbList = qpsqkfmbService.queryQpsqkfmb();
		model.addAttribute("qpsqkfmbList", qpsqkfmbList);
		return "contracts/qpsqkfmb/queryQpsqkfmb";
	}
	/**
	 * 
	 * 方法名称: redirectQueryQpsqkfmbById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 创建人：Dawn Chen  ；
	 * 创建时间：2017年8月9日 上午11:57:08；
	 * @throws
	 */
	@RequestMapping("/queryQpsqkfmbById")
	public String redirectQueryQpsqkfmbById(int contract_id, Model model){
		Qpsqkfmb qpsqkfmb = qpsqkfmbService.queryQpsqkfmbById(contract_id);
		model.addAttribute("aesc", qpsqkfmb);
		return "contracts/qpsqkfmb/detailQpsqkfmb";
	}

	/**
	 * 方法名称: redirectUpdateQpsqkfmbById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月6日 下午4:15:13；
	 * @throws
	 */
	@RequestMapping("/updateQpsqkfmbById")
	public String redirectUpdateQpsqkfmbById(int contract_id, Model model){
	  Qpsqkfmb qpsqkfmb = qpsqkfmbService.queryQpsqkfmbById(contract_id);
	  model.addAttribute("aesc", qpsqkfmb);
	  return "contracts/qpsqkfmb/updateQpsqkfmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpsqkfmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月6日 下午4:15:22；
	 * @throws
	 */
	@RequestMapping("/updateQpsqkfmb")
	public String redirectUpdateQpsqkfmb(Qpsqkfmb qpsqkfmb, Model model){
	  boolean flag = qpsqkfmbService.updateQpsqkfmb(qpsqkfmb);
	  String msg = flag ? "修改成功，请详查，若有误，可再次修改！":"修改失败，请详细检查修改内容";
	  model.addAttribute("msg", msg);
	  model.addAttribute("aesc", qpsqkfmb);
	  return "contracts/qpsqkfmb/updateQpsqkfmb";
	}
}
