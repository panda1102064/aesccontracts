package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Qpyqkfmb;
import com.aesc.service.QpyqkfmbService;

@Controller
public class QpyqkfmbController {

	@Resource
	private QpyqkfmbService QpyqkfmbService;

	/**
	 * 
	 * 方法名称: redirectQpyqkfmb ； 方法描述: : ； 返回类型: String ； 创建人：Dawn Chen ；
	 * 创建时间：2017年8月10日 下午1:45:06； @throws
	 */
	@RequestMapping("/qpyqkfmb")
	public String redirectQpyqkfmb() {
		return "contracts/qpyqkfmb/qpyqkfmb";
	}

	/**
	 * 
	 * 方法名称: redirectSaveQpyqkfmb ； 方法描述: : ； 返回类型: String ； 创建人：Dawn Chen ；
	 * 创建时间：2017年8月10日 下午1:45:48； @throws
	 */
	@RequestMapping("/saveQpyqkfmb")
	public String redirectSaveQpyqkfmb(Qpyqkfmb qpyqkfmb) {
		  QpyqkfmbService.saveQpyqkfmb(qpyqkfmb);
		return "contracts/qpyqkfmb/qpyqkfmb";
	}

	/**
	 * 
	 * 方法名称: redirectQueryQpyqkfmb ； 方法描述: : ； 返回类型: String ； 创建人：Dawn Chen
	 * ； 创建时间：2017年8月10日 下午1:46:16； @throws
	 */
	@RequestMapping("/queryQpyqkfmb")
	public String redirectQueryQpyqkfmb(Model model) {
		List<Qpyqkfmb> qpyqkfmbList = QpyqkfmbService.queryQpyqkfmb();
		model.addAttribute("qpyqkfmbList", qpyqkfmbList);
		return "contracts/qpyqkfmb/queryQpyqkfmb";
	}

	/**
	 * 
	 * 方法名称: redirectQueryQpyqkfmbById ； 方法描述: : ； 返回类型: String ； 创建人：Dawn
	 * Chen ； 创建时间：2017年8月10日 下午1:46:51； @throws
	 */
	@RequestMapping("/queryQpyqkfmbById")
	public String redirectQueryQpyqkfmbById(int contract_id, Model model) {
		Qpyqkfmb qpyqkfmb = QpyqkfmbService.queryQpyqkfmbById(contract_id);
		model.addAttribute("aesc", qpyqkfmb);
		return "contracts/qpyqkfmb/detailQpyqkfmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpyqkfmbById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月6日 下午3:06:26；
	 * @throws
	 */
	@RequestMapping("/updateQpyqkfmbById")
	public String redirectUpdateQpyqkfmbById(int contract_id, Model model) {
	  Qpyqkfmb qpyqkfmb = QpyqkfmbService.queryQpyqkfmbById(contract_id);
	  model.addAttribute("aesc", qpyqkfmb);
	  return "contracts/qpyqkfmb/updateQpyqkfmb";
	}
	
	/**
	 * 方法名称: redirectUpdateQpyqkfmb ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午1:55:25；
	 * @throws
	 */
	@RequestMapping("/updateQpyqkfmb")
	public String redirectUpdateQpyqkfmb(Qpyqkfmb qpyqkfmb, Model model) {
	  boolean flag = QpyqkfmbService.updateQpyqkfmb(qpyqkfmb);
	  String msg = flag ? "修改成功，请详查，若有误，可再次修改！":"修改失败，请详细检查修改内容";
	  model.addAttribute("msg", msg);
	  model.addAttribute("aesc", qpyqkfmb);
	  return "contracts/qpyqkfmb/updateQpyqkfmb";
	}
}
