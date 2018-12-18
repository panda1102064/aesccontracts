/**  
 * Project Name:aesccontracts  
 * File Name:XMC_DiXiaTingCheKuController.java  
 * Package Name:com.aesc.controller  
 * Date:2018年12月12日上午11:36:35  
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

import com.aesc.pojo.XMC_ParkingSpace;
import com.aesc.service.XMC_ParkingSpaceService;

/**  
 * description：
 * ClassName:XMC_DiXiaTingCheKuController <br/>  
 * Function: 
 * Reason:   
 * Date:     2018年12月12日 上午11:36:35 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Controller
public class XMC_TingCheWeiController {

  @Resource
  private XMC_ParkingSpaceService parkingSpaceService;
 
  @GetMapping("/ParkingSpaceEntry")
  String redirectParkingSpaceEntry () {
    return "contracts/XMC_TingCheWei/ParkingSpaceEntry";
  }
  
  @PostMapping("/saveParkingSpace")
  String redirectSaveParkingSpaceEntry (XMC_ParkingSpace parkingSpace) {
    parkingSpaceService.saveParkingSpace(parkingSpace);
    return "contracts/XMC_TingCheWei/ParkingSpaceEntry";
  }
  
  @GetMapping("/queryParkingSpace")
  String redirectQueryParkingSpace (Model model) {
    List<XMC_ParkingSpace> contractsList = parkingSpaceService.queryParkingSpace();
    model.addAttribute("contractsList",contractsList);
    return "contracts/XMC_TingCheWei/queryParkingSpace";
  }
  
  @GetMapping("/queryParkingSpaceById")
  String redirectQueryParkingSpaceById (Model model,Integer contract_id) {
    XMC_ParkingSpace parkingSpace = parkingSpaceService.queryParkingSpaceById(contract_id);
    model.addAttribute("aesc",parkingSpace);
    return "contracts/XMC_TingCheWei/detailParkingSpace";
  }
  
  @GetMapping("/updateParkingSpaceById")
  String redirectUpdateParkingSpaceById (Model model,Integer contract_id) {
    XMC_ParkingSpace parkingSpace = parkingSpaceService.queryParkingSpaceById(contract_id);
    model.addAttribute("aesc",parkingSpace);
    return "contracts/XMC_TingCheWei/updateParkingSpace";
  }
  
  @PostMapping("/updateParkingSpace")
  String redirectUpdateParkingSpace (Model model,XMC_ParkingSpace parkingSpace) {
    boolean flag = parkingSpaceService.updateParkingSpace(parkingSpace);
    String msg = flag ? "修改成功，请核查！若有误，可再次修改！" : "修改失败，请详细检查！";
    model.addAttribute("msg",msg);
    model.addAttribute("aesc",parkingSpace);
    return "contracts/XMC_TingCheWei/updateParkingSpace";
  }
}
  
