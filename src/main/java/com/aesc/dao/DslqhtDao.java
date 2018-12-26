/**  
 * Project Name:aescContract  
 * File Name:DslqhtDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月18日下午4:37:07  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.DslqDate;
import com.aesc.pojo.Dslqht;

/**  
 * ClassName:DslqhtDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月18日 下午4:37:07 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface DslqhtDao {

  /**
   * 方法名称: saveDslqht ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:37:34；
   * @throws
   */
  void saveDslqht(Dslqht dslqht);

  /**
   * 方法名称: queryDslqht ；
   * 方法描述:  :   ；
   * 返回类型: List<Dslqht> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:37:39；
   * @throws
   */
  List<Dslqht> queryDslqht();

  /**
   * 方法名称: queryDslqhtById ；
   * 方法描述:  :   ；
   * 返回类型: Dslqht ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:37:42；
   * @throws
   */
  Dslqht queryDslqhtById(int contract_id);

  /**
   * 方法名称: saveDslqDate ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月31日 上午9:39:41；
   * @throws
   */
  void saveDslqDate(List<DslqDate> list);
  
  /**
   * 方法名称: getDslqId ；
   * 方法描述:  :   ；
   * 返回类型: int ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月31日 上午9:45:45；
   * @throws
   */
  int getDslqId();

  /**
   * 方法名称: queryDslqDateById ；
   * 方法描述:  :   ；
   * 返回类型: DslqDate ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月31日 上午9:51:53；
   * @throws
   */
  List<DslqDate> queryDslqDateById(int contract_id);

  /**
   * 方法名称: updateDslqht ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月6日 下午5:08:32；
   * @throws
   */
  boolean updateDslqht(Dslqht dslqht);

  /**
   * 方法名称: updateDslqDate ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月6日 下午5:08:36；
   * @throws
   */
  boolean updateDslqDate(DslqDate dslqDate);

  /**
   * 方法名称: getDateId ；
   * description:  :  contract_id == updateDslqDateContractId
   * 返回类型: int[] ；
   * 作者：Dawn Chen  ；
   * 时间：2018年8月13日 上午10:26:24；
   * @throws
   */
  List<String> getDateId(int contract_id);
}
  
