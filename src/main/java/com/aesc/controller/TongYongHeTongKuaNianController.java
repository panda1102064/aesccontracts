/**  
 * Project Name:aescContract  
 * File Name:TongYongHeTongKuaNianController.java  
 * Package Name:com.aesc.controller  
 * Date:2018年11月19日上午11:03:15  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.aesc.pojo.TongYongHeTongKuaNian;
import com.aesc.pojo.TongYongHeTongKuaNianDate;
import com.aesc.service.TongYongHeTongKuaNianService;

/**  
 * description：
 * ClassName:TongYongHeTongKuaNianController <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年11月19日 上午11:03:15 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Controller
public class TongYongHeTongKuaNianController {

  @Resource
  private TongYongHeTongKuaNianService tongYongHeTongKuaNianService;
  /**
   * 
   * 方法名称: redirectTongYongHeTongKuaNian ；
   * description:  跳转到通用合同跨年的录入界面
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2018年11月19日 上午11:06:00；
   * @throws
   */
  @GetMapping("/tongYongHeTongKuaNianLuRu")
  String redirectTongYongHeTongKuaNian() {
    return "contracts/tongYongHeTongKuaNian/TongYongHeTongKuaNianLuRu";
  }
  
  @PostMapping("/saveTongYongHeTongKuaNianLuRu")
  String redirectSaveTongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian, TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate) {
    tongYongHeTongKuaNianService.saveTongYongHeTongKuaNian(tongYongHeTongKuaNian);
    tongYongHeTongKuaNianService.saveTongYongHeTongKuaNianDate(tongYongHeTongKuaNianDate);
    return "contracts/tongYongHeTongKuaNian/TongYongHeTongKuaNianLuRu";
  }
  
  @GetMapping("/queryTongYongHeTongKuaNian")
  String redirectQueryTongYongHeTongKuaNian(Model model) {
    List<TongYongHeTongKuaNian> tongYongHeTongKuaNianList = tongYongHeTongKuaNianService.queryTongYongHeTongKuaNian();
    model.addAttribute("tongYongHeTongKuaNianList", tongYongHeTongKuaNianList);
    return "contracts/tongYongHeTongKuaNian/queryTongYongHeTongKuaNian";
  }
  
  @GetMapping("/queryTongYongHeTongKuaNianById")
  String redirectQueryTongYongHeTongKuaNianById(Integer contract_id,Model model) {
    TongYongHeTongKuaNian tongYongHeTongKuaNian = tongYongHeTongKuaNianService.querytongYongHeTongKuaNianById(contract_id);
    List<TongYongHeTongKuaNianDate> tongYongHeTongKuaNianList = tongYongHeTongKuaNianService.querytongYongHeTongKuaNianDateById(contract_id);
    model.addAttribute("aesc", tongYongHeTongKuaNian);
    model.addAttribute("tongYongHeTongKuaNianList", tongYongHeTongKuaNianList);
    return "contracts/tongYongHeTongKuaNian/detailTongYongHeTongKuaNian";
  }
  
  @GetMapping("/updateTongYongHeTongKuaNianById")
  String redirectUpdatetongYongHeTongKuaNianById(Integer contract_id,Model model) {
    TongYongHeTongKuaNian tongYongHeTongKuaNian = tongYongHeTongKuaNianService.querytongYongHeTongKuaNianById(contract_id);
    List<TongYongHeTongKuaNianDate> tongYongHeTongKuaNianList = tongYongHeTongKuaNianService.querytongYongHeTongKuaNianDateById(contract_id);
    model.addAttribute("aesc", tongYongHeTongKuaNian);
    model.addAttribute("tongYongHeTongKuaNianList", tongYongHeTongKuaNianList);
    return "contracts/tongYongHeTongKuaNian/updateTongYongHeTongKuaNian";
  }
  
  @PostMapping("/updateTongYongHeTongKuaNian")
  String redirectUpdatetongYongHeTongKuaNian(TongYongHeTongKuaNian tongYongHeTongKuaNian, TongYongHeTongKuaNianDate tongYongHeTongKuaNianDate,Model model) {
    boolean flag = tongYongHeTongKuaNianService.updateTongYongHeTongKuaNian(tongYongHeTongKuaNian);
    boolean flag2 = tongYongHeTongKuaNianService.updateTongYongHeTongKuaNianDate(tongYongHeTongKuaNianDate);
    String msg = flag && flag2 ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    List<TongYongHeTongKuaNianDate> tongYongHeTongKuaNianList = tongYongHeTongKuaNianService.transvertTongYongHeTongKuaNianDateList(tongYongHeTongKuaNianDate);
    model.addAttribute("msg",msg);
    model.addAttribute("aesc", tongYongHeTongKuaNian);
    model.addAttribute("tongYongHeTongKuaNianList", tongYongHeTongKuaNianList);
    return "contracts/tongYongHeTongKuaNian/updateTongYongHeTongKuaNian";
  }
}
