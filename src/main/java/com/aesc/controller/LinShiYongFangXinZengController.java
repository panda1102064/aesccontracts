/**  
 * Project Name:aescContract  
 * File Name:LinShiYongFangXinZengController.java  
 * Package Name:com.aesc.controller  
 * Date:2018年10月22日下午2:24:55  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aesc.pojo.LinShiYongFangXinZeng;
import com.aesc.pojo.LinShiYongFangXinZengDate;
import com.aesc.service.LinShiYongFangXinZengService;

/**  
 * description：
 * ClassName:LinShiYongFangXinZengController <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年10月22日 下午2:24:55 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Controller
public class LinShiYongFangXinZengController {
  
  
  @Resource
  private LinShiYongFangXinZengService linShiYongFangXinZengService;
  //跳转到录入界面
  @RequestMapping("/luRuLinShiYongFangXinZeng")
  public String redirectLuRuLinShiYongFangXinZeng() {
    return "contracts/linShiYongFangXinZeng/luRuLinShiYongFangXinZeng";
  }
  
  
  //执行保存操作
  @RequestMapping("/saveLsyf_xz")
  public String redirectSaveLsyf_xz(LinShiYongFangXinZeng lsyf_xz,LinShiYongFangXinZengDate lsyf_xzDate ){
      linShiYongFangXinZengService.saveLsyf_xz(lsyf_xz);
      linShiYongFangXinZengService.saveLsyf_xzDate(lsyf_xzDate);
    return "contracts/linShiYongFangXinZeng/luRuLinShiYongFangXinZeng";
  }
  
  //执行查询所有合同信息
  @RequestMapping("/queryLuRuLinShiYongFangXinZeng")
  public ModelAndView redirectQueryAll( Model model){
    List<LinShiYongFangXinZeng> lsyf_xz = null;
    lsyf_xz = linShiYongFangXinZengService.queryLinShiYongFangXinZeng();
    model.addAttribute("lsyf_xz", lsyf_xz);
  return new ModelAndView("contracts/linShiYongFangXinZeng/queryLinShiYongFangXinZeng");
  }
  
  //通过ID查询合同信息
  @RequestMapping("/querylsyf_xzById")
  public ModelAndView redirectQueryLsyf_xzById(int contract_id,  Model model){
    LinShiYongFangXinZeng lsyf_xz = linShiYongFangXinZengService.queryLinShiYongFangXinZengById(contract_id);
    List<LinShiYongFangXinZengDate> lsyfList = linShiYongFangXinZengService.queryLsyfDateById(contract_id);
    model.addAttribute("aesc", lsyf_xz);
    model.addAttribute("lsyfList", lsyfList);
    return new ModelAndView("contracts/linShiYongFangXinZeng/detailLinShiYongFangXinZeng");
  }
  
  /**
   * 方法名称: redirectUpdateLsyf_wwgfById ；
   * 方法描述:  TODO:   ；
   * 返回类型: ModelAndView ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月13日 下午9:00:28；
   * @throws
   */
  //通过ID查询合同信息
  @RequestMapping("/updatelsyf_xzById")
  public ModelAndView redirectUpdateLsyf_xzById(int contract_id,  Model model){
    LinShiYongFangXinZeng lsyf_xz = linShiYongFangXinZengService.queryLinShiYongFangXinZengById(contract_id);
    List<LinShiYongFangXinZengDate> lsyfList = linShiYongFangXinZengService.queryLsyfDateById(contract_id);
    model.addAttribute("aesc", lsyf_xz);
    model.addAttribute("lsyfList", lsyfList);
    return new ModelAndView("contracts/linShiYongFangXinZeng/updateLinShiYongFangXinZeng");
  }
  /**
   * 方法名称: redirectUpdateLsyf_wwgf ；
   * 方法描述:  TODO:   ；
   * 返回类型: ModelAndView ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月13日 下午9:02:37；
   * @throws
   */
  @RequestMapping("/updateLsyf_xz")
  public ModelAndView redirectUpdateLsyf_xz(LinShiYongFangXinZeng lsyf_xz,LinShiYongFangXinZengDate lsyf_xzDate, Model model){
    boolean flag = linShiYongFangXinZengService.updateLsyf_xz(lsyf_xz);
    boolean flag2 = linShiYongFangXinZengService.updateLsyf_xz_Date(lsyf_xzDate);
    List<LinShiYongFangXinZengDate> lsyfList = linShiYongFangXinZengService.queryLsyfDateById(Integer.parseInt(lsyf_xz.getContract_id()));
    String msg = flag && flag2 ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
    model.addAttribute("aesc", lsyf_xz);
    model.addAttribute("lsyfList", lsyfList);
    return new ModelAndView("contracts/linShiYongFangXinZeng/updateLinShiYongFangXinZeng");
  }
}
  
