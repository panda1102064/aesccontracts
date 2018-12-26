/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuZhanWeiDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年9月30日上午9:16:42  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.ShiChangBuZhanWeiHeTong;
import com.aesc.pojo.ShiChangBuZhanWeiHeTongTimes;

/**  
 * ClassName:ShiChangBuZhanWeiDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年9月30日 上午9:16:42 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface ShiChangBuZhanWeiDao {

  /**
   * 方法名称: saveHt ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 上午9:17:38；
   * @throws
   */
  void saveHt(ShiChangBuZhanWeiHeTong zeHt);

  /**
   * 方法名称: saveHtime ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 上午9:41:07；
   * @throws
   */
  void saveHtime(ShiChangBuZhanWeiHeTongTimes zwTime);

  /**
   * 方法名称: getZwId ；
   * 方法描述:  :   ；
   * 返回类型: int ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 上午9:42:32；
   * @throws
   */
  int getZwId();

  /**
   * 方法名称: queryZwht ；
   * 方法描述:  :   ；
   * 返回类型: List<ShiChangBuZhanWeiHeTong> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:27:55；
   * @throws
   */
  List<ShiChangBuZhanWeiHeTong> queryZwht();

  /**
   * 方法名称: queryZwhtById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuZhanWeiHeTong ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:38:31；
   * @throws
   */
  ShiChangBuZhanWeiHeTong queryZwhtById(int contract_id);

  /**
   * 方法名称: queryZwhtTimeById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuZhanWeiHeTongTimes ；
   * 作者：Dawn Chen  ；
   * 时间：2017年9月30日 下午3:38:35；
   * @throws
   */
  ShiChangBuZhanWeiHeTongTimes queryZwhtTimeById(int contract_id);
}
  
