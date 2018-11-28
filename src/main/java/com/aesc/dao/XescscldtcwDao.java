/**  
 * Project Name:aescContract  
 * File Name:XescscldtcwDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月17日下午1:37:45  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Xescscldtcw;

/**  
 * ClassName:XescscldtcwDao <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月17日 下午1:37:45 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface XescscldtcwDao {

  /**
   * 方法名称: saveXescscdxtcw ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 下午1:38:58；
   * @throws
   */
  void saveXescscdxtcw(Xescscldtcw xescscldtcw);

  /**
   * 方法名称: queryXescscldtcw ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<Xescscldtcw> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 下午1:39:02；
   * @throws
   */
  List<Xescscldtcw> queryXescscldtcw();

  /**
   * 方法名称: queryXescscldtcwById ；
   * 方法描述:  TODO:   ；
   * 返回类型: Xescscldtcw ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 下午1:39:06；
   * @throws
   */
  Xescscldtcw queryXescscldtcwById(int contract_id);

  /**
   * 方法名称: updateXescscldtcw ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月9日 下午9:20:04；
   * @throws
   */
  boolean updateXescscldtcw(Xescscldtcw xescscldtcw);

}
  
