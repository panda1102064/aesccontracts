/**  
 * Project Name:aescContract  
 * File Name:TyhtDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月17日上午10:01:38  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Tyht;

/**  
 * ClassName:TyhtDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月17日 上午10:01:38 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface TyhtDao {

  /**
   * 方法名称: saveTyht ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午10:02:58；
   * @throws
   */
  void saveTyht(Tyht tyht);

  /**
   * 方法名称: queryTyht ；
   * 方法描述:  :   ；
   * 返回类型: List<Tyht> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午10:03:02；
   * @throws
   */
  List<Tyht> queryTyht();

  /**
   * 方法名称: queryTyhtById ；
   * 方法描述:  :   ；
   * 返回类型: Tyht ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午10:03:05；
   * @throws
   */
  Tyht queryTyhtById(int contract_id);

  /**
   * 方法名称: updateTyht ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月15日 上午10:20:32；
   * @throws
   */
  boolean updateTyht(Tyht tyht);

}
  
