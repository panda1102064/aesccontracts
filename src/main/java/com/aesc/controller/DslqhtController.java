package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.DslqDate;
import com.aesc.pojo.Dslqht;
import com.aesc.service.DslqhtService;

@Controller
public class DslqhtController {
  
  @Resource
  private DslqhtService dslqhtService;
  
  /**
   * 方法名称: redirectDslqht ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:34:19；
   * @throws
   */
	@RequestMapping("/dslqht")
	public String redirectDslqht() {
		return "contracts/dslqht/dslqht";
	}
	
	/**
	 * 方法名称: redirectSaveDslqht ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月18日 下午4:34:22；
	 * @throws
	 */
	@RequestMapping("/saveDslqht")
	public String redirectSaveDslqht(Dslqht dslqht,DslqDate dslqDate){
	  dslqhtService.saveDslqht(dslqht);
	  dslqhtService.saveDslqDate(dslqDate);
	  return "contracts/dslqht/dslqht";
	}
	
	/**
	 * 方法名称: redirectQueryDslqht ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月18日 下午4:34:26；
	 * @throws
	 */
	@RequestMapping("/queryDslqht")
	public String redirectQueryDslqht(Model model){
	  List<Dslqht> dslqhtList = dslqhtService.queryDslqht();
	  model.addAttribute("dslqhtList", dslqhtList);
    return "contracts/dslqht/queryDslqht";
  }
	
	/**
	 * 方法名称: redirectQueryDslqhtById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年8月18日 下午4:34:11；
	 * @throws
	 */
	@RequestMapping("/queryDslqhtById")
	public String redirectQueryDslqhtById(int contract_id, Model model){
	  Dslqht dslqht = dslqhtService.queryDslqhtById(contract_id);
	  List<DslqDate> dslqList = dslqhtService.queryDslqDateById(contract_id);
	 // List<DslqDate> dslqList = dslqhtService.transverterEscList(dslqDate);
	  model.addAttribute("aesc",dslqht);
	  model.addAttribute("dslqList",dslqList);
    return "contracts/dslqht/detailDslqht";
  }
	
	/**
	 * 方法名称: redirectUpdateDslqhtById ；
	 * 方法描述:  :   ；
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2017年11月6日 下午4:52:34；
	 * @throws
	 */
	
	private int updateDslqDateContractId;
	
	public int getUpdateDslqDateContractId() {
    return updateDslqDateContractId;
  }

  public void setUpdateDslqDateContractId(int updateDslqDateContractId) {
    this.updateDslqDateContractId = updateDslqDateContractId;
  }

  @RequestMapping("/updateDslqhtById")
	public String redirectUpdateDslqhtById(int contract_id, Model model){
    this.updateDslqDateContractId = contract_id;
	  Dslqht dslqht = dslqhtService.queryDslqhtById(contract_id);
	  List<DslqDate> dslqList = dslqhtService.queryDslqDateById(contract_id);
	  model.addAttribute("aesc",dslqht);
	  model.addAttribute("dslqList",dslqList);
	  return "contracts/dslqht/updateDslqht";
	}

	/**
	 * 
	 * 方法名称: redirectUpdateDslqht ；
	 * description:  :  
	 * 返回类型: String ；
	 * 作者：Dawn Chen  ；
	 * 时间：2018年5月25日 上午10:00:13；
	 * @throws
	 */
	@RequestMapping("/updateDslqht")
	public String redirectUpdateDslqht(Dslqht dslqht,DslqDate dslqDate, Model model){
	  List<DslqDate> dslqList = dslqhtService.transvertDslqList(dslqDate);// 将日期内容分成LIST只作返回到页面，不进行后续操作
	  boolean flag2 = dslqhtService.updateDslqDate(dslqDate);// 将日期内容分成实体对象进行修改日期内容操作
	  boolean flag = dslqhtService.updateDslqht(dslqht);// 直接修改合同内容
	  String msg = flag && flag2 ? "修改成功，请详查，若有误，可再次修改！":"修改失败，请详细检查修改内容";
    model.addAttribute("msg", msg);
	  model.addAttribute("aesc",dslqht);
	  model.addAttribute("dslqList",dslqList);
	  return "contracts/dslqht/updateDslqht";
	}
}
