/**  
 * Project Name:aesccontracts  
 * File Name:XMC_ZhanTingController.java  
 * Package Name:com.aesc.controller  
 * Date:2018年12月19日上午9:32:16  
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

import com.aesc.pojo.XMC_ExhibitionHall;
import com.aesc.pojo.XMC_ExhibitionHallDate;
import com.aesc.service.XMC_ExhibitionHallService;

/**  
 * description：
 * ClassName:XMC_ZhanTingController <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年12月19日 上午9:32:16 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Controller
public class XMC_ZhanTingController {

  @Resource
  private  XMC_ExhibitionHallService exhibitionHallService;
  
  @GetMapping("/exhibitionHallEntry")
  String redirectExhibitionHallEntry() {
    return "contracts/XMC_ZhanTing/exhibitionHallEntry";
  }
  
  @PostMapping("/saveExhibitionHall")
  String redirectSaveExhibitionHall(XMC_ExhibitionHall exhibitionHall,XMC_ExhibitionHallDate exhibitionHallDate) {
    exhibitionHallService.saveExhibitionHall(exhibitionHall);
    exhibitionHallService.saveExhibitionHallDate(exhibitionHallDate);
    return "contracts/XMC_ZhanTing/exhibitionHallEntry";
  }
  
  @GetMapping("/queryExhibitionHall")
  String redirectQueryExhibitionHall(Model model) {
    List<XMC_ExhibitionHall> exhibitionHallList = exhibitionHallService.queryExhibitionHall();
    model.addAttribute("exhibitionHallList",exhibitionHallList);
    return "contracts/XMC_ZhanTing/queryExhibitionHall";
  }
  
  @GetMapping("/queryExhibitionHallById")
  String redirectQueryExhibitionHallById(Model model,Integer contract_id) {
    XMC_ExhibitionHall exhibitionHall = exhibitionHallService.queryExhibitionHallById(contract_id);
    List<XMC_ExhibitionHallDate> exhibitionHallDateList = exhibitionHallService.queryExhibitionHallDateById(contract_id);
    model.addAttribute("aesc",exhibitionHall);
    model.addAttribute("exhibitionHallList",exhibitionHallDateList);
    return "contracts/XMC_ZhanTing/detailExhibitionHall";
  }
  
  @GetMapping("/updateExhibitionHallById")
  String redirectUpdateExhibitionHallById(Model model,Integer contract_id) {
    XMC_ExhibitionHall exhibitionHall = exhibitionHallService.queryExhibitionHallById(contract_id);
    List<XMC_ExhibitionHallDate> exhibitionHallDateList = exhibitionHallService.queryExhibitionHallDateById(contract_id);
    model.addAttribute("aesc",exhibitionHall);
    model.addAttribute("exhibitionHallList",exhibitionHallDateList);
    return "contracts/XMC_ZhanTing/updateExhibitionHall";
  }
  
  @PostMapping("/updateExhibitionHall")
  String redirectUpdateExhibitionHall(Model model,XMC_ExhibitionHall exhibitionHall,XMC_ExhibitionHallDate exhibitionHallDate) {
    boolean flag = exhibitionHallService.updateExhibitionHall(exhibitionHall);
    boolean flag2 = exhibitionHallService.updateExhibitionHallDate(exhibitionHallDate);
    String msg = flag && flag2 ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    List<XMC_ExhibitionHallDate> exhibitionHallDateList = exhibitionHallService.queryExhibitionHallDateById(Integer.parseInt(exhibitionHall.getContract_id()));
    model.addAttribute("msg",msg);
    model.addAttribute("aesc",exhibitionHall);
    model.addAttribute("exhibitionHallDateList",exhibitionHallDateList);
    return "contracts/XMC_ZhanTing/updateExhibitionHall";
  }
}
  
