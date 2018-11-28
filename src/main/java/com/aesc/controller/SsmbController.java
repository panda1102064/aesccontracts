package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

//import org.springframework.dao.DataIntegrityViolationException;//数据完整性违例异常
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.Ssmb;
import com.aesc.service.SsmbService;

@Controller
public class SsmbController {
  
  @Resource
  private SsmbService ssmbService;
  
  /**
   * 
   * 方法名称: redirectSsmb ；
   * 方法描述:  TODO:   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月11日 下午5:05:06；
   * @throws
   */
	  @RequestMapping("/ssmb")
	public String redirectSsmb() {
		return "contracts/ssmb/ssmb";
	}
	/**
	 * 
	 * 方法名称: redirectSaveSsmb ；
	 * 方法描述:  TODO:   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月11日 下午5:08:57；
	 * @throws
	 */
	  @RequestMapping("/saveSsmb")
	  public String redirectSaveSsmb(Ssmb ssmb) {
	    //try {
	      ssmbService.saveSsmb(ssmb);
	    /*} catch (DataIntegrityViolationException e) {
	      return "manager/error";
	    } */
	    return "contracts/ssmb/ssmb";
	  }
	  /**
	   * 
	   * 方法名称: redirectQuerySsmb ；
	   * 方法描述:  TODO:   ；
	   * 返回类型: String ；
	   * 作者：Dawn Chen  ；
	   * 时间：2017年8月11日 下午5:08:59；
	   * @throws
	   */
	  @RequestMapping("/querySsmb")
	  public String redirectQuerySsmb(Model model) {
	    List<Ssmb> ssmbList = ssmbService.querySsmb();
	    model.addAttribute("ssmbList", ssmbList);
	    return "contracts/ssmb/querySsmb";
	  }
	  /**
	   * 
	   * 方法名称: redirectQuerySsmbById ；
	   * 方法描述:  TODO:   ；
	   * 返回类型: String ；
	   * 作者：Dawn Chen  ；
	   * 时间：2017年8月11日 下午5:09:04；
	   * @throws
	   */
	  @RequestMapping("/querySsmbById")
	  public String redirectQuerySsmbById(int contract_id, Model model) {
	    Ssmb ssmb = ssmbService.querySsmbById(contract_id);
	    model.addAttribute("aesc", ssmb);
	    return "contracts/ssmb/detailSsmb";
	  }
	  
	  /**
	   * 方法名称: redirectUpdateQuerySsmb ；
	   * 方法描述:  TODO:   ；
	   * 返回类型: String ；
	   * 作者：Dawn Chen  ；
	   * 时间：2017年10月30日 下午3:43:20；
	   * @throws
	   */
	  @RequestMapping("/updateSsmbById")
	  public String redirectUpdateQuerySsmb(int contract_id,Model model) {
	    Ssmb ssmb = ssmbService.querySsmbById(contract_id);
	    model.addAttribute("aesc", ssmb);
	    return "contracts/ssmb/updateSsmb";
	  }
	  /**
	   * 方法名称: redirectUpdateSsmb ；
	   * 方法描述:  TODO:   ；
	   * 返回类型: String ；
	   * 作者：Dawn Chen  ；
	   * 时间：2017年10月30日 下午5:16:50；
	   * @throws
	   */
	  @RequestMapping("/updateSsmb")
	  public String redirectUpdateSsmb(Ssmb ssmb,Model model) {
	    String msg = "修改成功!请核查！若有误，可再次修改！";
	    boolean flag = ssmbService.updateSsmb(ssmb);
	    if(flag) {
	      model.addAttribute("msg",msg);
	    }else {
	      msg = "修改失败！请详细检查所填内容是否正确。";
	      model.addAttribute("msg",msg);
	    }
	    model.addAttribute("aesc", ssmb);
	    return "contracts/ssmb/updateSsmb";
	  }
}
