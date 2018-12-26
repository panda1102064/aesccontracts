/**  
 * Project Name:aescContract  
 * File Name:ShiChangBuGuangGaoDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年10月10日下午1:49:34  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.ShiChangBuGuangGaoHeTong;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongMedia;
import com.aesc.pojo.ShiChangBuGuangGaoHeTongTimes;

/**  
 * ClassName:ShiChangBuGuangGaoDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年10月10日 下午1:49:34 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface ShiChangBuGuangGaoDao {

  /**
   * 方法名称: savegght ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午2:04:52；
   * @throws
   */
  void savegght(ShiChangBuGuangGaoHeTong gght);

  /**
   * 方法名称: saveggTimes ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午2:04:56；
   * @throws
   */
  void saveggTimes(ShiChangBuGuangGaoHeTongTimes ggTimes);

  /**
   * 方法名称: saveggMedia ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午2:05:00；
   * @throws
   */
  void saveggMedia(ShiChangBuGuangGaoHeTongMedia ggMedia);

  /**
   * 方法名称: getPrkId 获取合同最新一次插入的主键id；
   * 方法描述:  :   ；
   * 返回类型: int ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午3:26:38；
   * @throws
   */
  int getPrkId();

  /**
   * 方法名称: queryGght ；
   * 方法描述:  :   ；
   * 返回类型: List<ShiChangBuGuangGaoHeTong> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月10日 下午4:49:04；
   * @throws
   */
  List<ShiChangBuGuangGaoHeTong> queryGght();

  /**
   * 方法名称: queryGghtById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuGuangGaoHeTong ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:32:35；
   * @throws
   */
  ShiChangBuGuangGaoHeTong queryGghtById(int contract_id);

  /**
   * 方法名称: queryGgtimesById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuGuangGaoHeTongTimes ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:36:35；
   * @throws
   */
  ShiChangBuGuangGaoHeTongTimes queryGgtimesById(int contract_id);

  /**
   * 方法名称: queryGgMediaById ；
   * 方法描述:  :   ；
   * 返回类型: ShiChangBuGuangGaoHeTongMedia ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月11日 上午9:36:39；
   * @throws
   */
  ShiChangBuGuangGaoHeTongMedia queryGgMediaById(int contract_id);
}
  
