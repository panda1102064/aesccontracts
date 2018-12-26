/**  
 * Project Name:aescContract  
 * File Name:EscDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月23日上午9:58:55  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Esc;
import com.aesc.pojo.EscDate;

/**  
 * ClassName:EscDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月23日 上午9:58:55 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface EscDao {

  /**
   * 方法名称: queryEsc ；
   * 方法描述:  :   ；
   * 返回类型: List<Esc> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午10:05:22；
   * @throws
   */
  List<Esc> queryEsc();

  /**
   * 方法名称: queryEscById ；
   * 方法描述:  :   ；
   * 返回类型: Esc ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午10:05:26；
   * @throws
   */
  Esc queryEscById(int contract_id);

  /**
   * 方法名称: queryEscDateById ；
   * 方法描述:  :   ；
   * 返回类型: EscDate ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午10:05:31；
   * @throws
   */
  List<EscDate> queryEscDateById(int contract_id);

  /**
   * 方法名称: saveEsc ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月25日 上午9:55:14；
   * @throws
   */
  void saveEsc(Esc esc);

  /**
   * 方法名称: saveEscDate ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月25日 上午9:55:19；
   * @throws
   */
  void saveEscDate(List<EscDate> escDateList);
  
  /**
   * 方法名称: getEscId ；
   * 方法描述:  :  获取最后插入数据的id返回给saveEscDate得到id存入数据库与之建立关联关系。当出现高并发，可能会出现id不匹配的异常，由于业务量小，不考虑这样的情形 ；
   * 返回类型: int ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月25日 上午9:55:26；
   * @throws
   */
  int getEscId();

  /**
   * 方法名称: updateEsc ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月20日 上午11:49:21；
   * @throws
   */
  boolean updateEsc(Esc esc);

  /**
   * 方法名称: updateEscDate ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月20日 上午11:49:27；
   * @throws
   */
  boolean updateEscDate(EscDate escDate);
}
  
