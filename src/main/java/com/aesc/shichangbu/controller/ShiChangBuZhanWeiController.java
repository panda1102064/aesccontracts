/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuZhanWeiController.java  
 * Package Name:com.aesc.controller  
 * Date:2017年9月26日上午10:10:55  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.shichangbu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.ShiChangBuZhanWeiHeTong;
import com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes;
import com.aesc.service.ShiChangBuZhanWeiService;

/**  
 * ClassName:ShiChangBuZhanWeiController <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年9月26日 上午10:10:55 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
@Controller
public class ShiChangBuZhanWeiController {

  @Resource
  private ShiChangBuZhanWeiService zwService;
  
  /**
   * 方法名称: redirectZwhtSave ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月26日 下午1:16:35；
   * @throws
   */
  @RequestMapping("/zwhtLuRu")
  public String redirectZwhtSave() {
    return "shichangbu/zwht/zwhtLuRu";
  }
  
  /**
   * 方法名称: redirectSaveZhanWei ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 上午9:26:14；
   * @throws
   */
  @RequestMapping("/saveZhanWei")
  public synchronized String redirectSaveZhanWei(ShiChangBuZhanWeiHeTong zwHt, ShiChangBuZhanWeiHeTongTimes zwTime) {
    try {
      zwService.saveHt(zwHt,zwTime);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "shichangbu/zwht/zwhtLuRu";
  }
  
  /**
   * 方法名称: redirectQueryZwht ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:27:03；
   * @throws
   */
  @RequestMapping("/zwhtQuery")
  public String redirectQueryZwht(ModelMap model) {
    List<ShiChangBuZhanWeiHeTong> zwhtList = zwService.queryZwht();
    model.addAttribute("zwhtList", zwhtList);
    return "shichangbu/zwht/queryZwht";
  }
  
  /**
   * 方法名称: redirectQueryZwhtById ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:36:57；
   * @throws
   */
  @RequestMapping("/queryZwhtById")
  public String redirectQueryZwhtById(int contract_id, ModelMap model) {
    ShiChangBuZhanWeiHeTong zeHt = zwService.queryZwhtById(contract_id);
    ShiChangBuZhanWeiHeTongTimes zwTime = zwService.queryZwhtTimeById(contract_id);
    List<ShiChangBuZhanWeiHeTongTimes> zwTimeList= zwService.transverterZhanWeiHeTongTimesList(zwTime);
    model.addAttribute("aesc", zeHt);
    model.addAttribute("zwTimeList", zwTimeList);
    return "shichangbu/zwht/detailZwht";
  }
}
  
