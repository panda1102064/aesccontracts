/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoService.java  
 * Package Name:com.aesc.service  
 * Date:2017年10月10日上午11:40:55  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.ShiChangBuGuangGaoHeTong;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongMedia;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongTimes;

/**  
 * ClassName:ShiChangBuGuangGaoService <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年10月10日 上午11:40:55 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface ShiChangBuGuangGaoService {

  /**
   * 方法名称: saveHt ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午1:47:36；
   * @throws
   */
  void saveHt(ShiChangBuGuangGaoHeTong gght, ShiChangBuGuangGaoHeTongTimes ggTimes,
      ShiChangBuGuangGaoHeTongMedia ggMedia);

  /**
   * 方法名称: queryGght ；
   * 方法描述:  :   ；
   * 返回类型: List<ShiChangBuGuangGaoHeTong> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午4:48:24；
   * @throws
   */
  List<ShiChangBuGuangGaoHeTong> queryGght();

  /**
   * 方法名称: queryGghtById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuGuangGaoHeTong ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:31:29；
   * @throws
   */
  ShiChangBuGuangGaoHeTong queryGghtById(int contract_id);

  /**
   * 方法名称: queryGgtimesById ；
   * 方法描述:  :   ；
   * 返回类型: List<ShiChangBuGuangGaoHeTongTimes> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:31:33；
   * @throws
   */
  List<ShiChangBuGuangGaoHeTongTimes> queryGgtimesById(int contract_id);

  /**
   * 方法名称: queryGgMediaById ；
   * 方法描述:  :   ；
   * 返回类型: List<ShiChangBuGuangGaoHeTongMedia> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:31:37；
   * @throws
   */
  List<ShiChangBuGuangGaoHeTongMedia> queryGgMediaById(int contract_id);

}
