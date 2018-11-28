/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuZhanWeiService.java  
 * Package Name:com.aesc.service  
 * Date:2017年9月29日下午2:46:26  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.ShiChangBuZhanWeiHeTong;
import com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes;

/**  
 * ClassName:ShiChangBuZhanWeiService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年9月29日 下午2:46:26 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface ShiChangBuZhanWeiService {

  /**
   * 方法名称: saveHt ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:13:13；
   * @throws
   */
  void saveHt(ShiChangBuZhanWeiHeTong zeHt, ShiChangBuZhanWeiHeTongTimes zwTime);

  /**
   * 方法名称: queryZwht ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<ShiChangBuZhanWeiHeTong> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:27:12；
   * @throws
   */
  List<ShiChangBuZhanWeiHeTong> queryZwht();

  /**
   * 方法名称: queryZwhtById ；
   * 方法描述:  TODO:   ；
   * 返回类型: ShiChangBuZhanWeiHeTong ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:37:09；
   * @throws
   */
  ShiChangBuZhanWeiHeTong queryZwhtById(int contract_id);

  /**
   * 方法名称: queryZwhtTimeById ；
   * 方法描述:  TODO:   ；
   * 返回类型: ShiChangBuZhanWeiHeTongTimes ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:37:13；
   * @throws
   */
  ShiChangBuZhanWeiHeTongTimes queryZwhtTimeById(int contract_id);

  /**
   * 方法名称: transverterZhanWeiHeTongTimesList ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<ShiChangBuZhanWeiHeTongTimes> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:43:32；
   * @throws
   */
  List<ShiChangBuZhanWeiHeTongTimes> transverterZhanWeiHeTongTimesList(ShiChangBuZhanWeiHeTongTimes zwTimes);

}
  
