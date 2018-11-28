package com.aesc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.Dscwcktcw;
import com.aesc.service.DscwcktcwService;

@Controller
public class DscwcktcwController {
	
  @Resource
	private DscwcktcwService dscwcktcwService;
	
	/**
	 * 方法名称: redirectCw ；
	 * 方法描述:  TODO: //跳转到大厦车位车库停车位的合同录入页面  ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午7:57:11；
	 * @throws
	 */
	@RequestMapping("/dscwcktcw")
	public String redirectCw() {
		return "contracts/dscwcktcw/dscwcktcw";
	}
	
	/**
	 * 方法名称: saveDscwcktcw ；
	 * 方法描述:  TODO://点击保存后，执行保存操作   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午7:58:36；
	 * @throws
	 */
	@RequestMapping("/saveDscwcktcw")
	public String saveDscwcktcw(Dscwcktcw dscwcktcw){
		//try {
		  dscwcktcwService.saveDscwcktcw(dscwcktcw);
   /* } catch (DataIntegrityViolationException e) {
      return "manager/error";
    }*/
		return "contracts/dscwcktcw/dscwcktcw";
	}
	
	/**
	 * 方法名称: queryDscwcktcw ；
	 * 方法描述:  TODO://执行查询信息   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午7:58:50；
	 * @throws
	 */
	@RequestMapping("/queryDscwcktcw")
	public ModelAndView queryDscwcktcw(Model model){
		List<Dscwcktcw> dscwcktcwList= new ArrayList<Dscwcktcw>();
		dscwcktcwList = dscwcktcwService.queryDscwcktcw();
		model.addAttribute("dscwcktcwList", dscwcktcwList);
		return new ModelAndView("contracts/dscwcktcw/queryDscwcktcw");
	}
	
	/**
	 * 方法名称: queryDscwcktcwById ；
	 * 方法描述:  TODO://通过ID查询合同信息   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午7:59:05；
	 * @throws
	 */
	@RequestMapping("/querydscwcktcwById")
	public ModelAndView queryDscwcktcwById(int contract_id,Model model){
		Dscwcktcw dscwcktcw = null;
		dscwcktcw = dscwcktcwService.queryDscwcktcwById(contract_id);
		model.addAttribute("aesc",dscwcktcw);
		return new ModelAndView("contracts/dscwcktcw/dscwcktcwDetail");
	}
	
	/**
	 * 方法名称: updateDscwcktcwById ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午7:59:16；
	 * @throws
	 */
	@RequestMapping("/updatedscwcktcwById")
	public ModelAndView updateDscwcktcwById(int contract_id,Model model){
	  Dscwcktcw dscwcktcw = null;
	  dscwcktcw = dscwcktcwService.queryDscwcktcwById(contract_id);
	  model.addAttribute("aesc",dscwcktcw);
	  return new ModelAndView("contracts/dscwcktcw/updateDscwcktcw");
	}
	
	/**
	 * 方法名称: updateDscwcktcw ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: ModelAndView ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月8日 下午8:03:26；
	 * @throws
	 */
	@RequestMapping("/updateDscwcktcw")
	public ModelAndView updateDscwcktcw(Dscwcktcw dscwcktcw,Model model){
	  boolean flag = dscwcktcwService.updateDscwcktcw(dscwcktcw);
	  String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
	  model.addAttribute("aesc",dscwcktcw);
	  return new ModelAndView("contracts/dscwcktcw/updateDscwcktcw");
	}
}
