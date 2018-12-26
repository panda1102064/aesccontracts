/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoController.java  
 * Package Name:com.aesc.controller  
 * Date:2017年9月26日下午1:14:43  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.shichangbu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aesc.pojo.ShiChangBuGuangGaoHeTong;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongMedia;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongTimes;
import com.aesc.service.ShiChangBuGuangGaoService;


/**  
 * ClassName:ShiChangBuGuangGaoController <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年9月26日 下午1:14:43 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

@Controller
public class ShiChangBuGuangGaoController {

  @Resource
  private ShiChangBuGuangGaoService ggService;
  
  /**
   * 方法名称: redirectZwhtSave ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月26日 下午1:16:28；
   * @throws
   */
  @RequestMapping("/gghtLuRu")
  public String redirectZwhtSave() {
    return "shichangbu/gght/gghtLuRu";
  }
  
  /**
   * 方法名称: redirectSaveGuangGao ；
   * 方法描述:  : synchronized是为了防止ggTimes和ggMedia的合同id出错   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 上午11:38:52；
   * @throws
   */
  @RequestMapping("/saveGuangGao")
  public synchronized String redirectSaveGuangGao(ShiChangBuGuangGaoHeTong gght, ShiChangBuGuangGaoHeTongTimes ggTimes, ShiChangBuGuangGaoHeTongMedia ggMedia) {
      ggService.saveHt(gght,ggTimes,ggMedia);
    return "shichangbu/gght/gghtLuRu";
  }
  
  /**
   * 方法名称: redirectGghtQuery ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午4:51:25；
   * @throws
   */
  @RequestMapping("/gghtQuery")
  public String redirectGghtQuery(ModelMap model) {
    List<ShiChangBuGuangGaoHeTong> gghtList = ggService.queryGght();
    model.addAttribute("gghtList", gghtList);
    return "shichangbu/gght/queryGght";
  }
  
  /**
   * 方法名称: redirectQueryGghtById ；
   * 方法描述:  :   ；
   * 返回类型: String ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:30:19；
   * @throws
   */
  @RequestMapping("/queryGghtById")
  public String redirectQueryGghtById(int contract_id, ModelMap model) {
    ShiChangBuGuangGaoHeTong gght = ggService.queryGghtById(contract_id);
    List<ShiChangBuGuangGaoHeTongTimes> ggTimes = ggService.queryGgtimesById(contract_id);
    List<ShiChangBuGuangGaoHeTongMedia> ggMedia = ggService.queryGgMediaById(contract_id);
    model.addAttribute("aesc", gght);
    model.addAttribute("ggTimes", ggTimes);
    model.addAttribute("ggMedia", ggMedia);
    return "shichangbu/gght/detailGght";
  }
}
  
