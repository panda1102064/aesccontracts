/**  
 * Project Name:aescContract  
 * File Name:SsmbDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月14日上午11:34:52  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Ssmb;

/**  
 * ClassName:SsmbDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月14日 上午11:34:52 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface SsmbDao {

  /**
   * 
   * 方法名称: saveSsmb ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月14日 上午11:35:22；
   * @throws
   */
  void saveSsmb(Ssmb ssmb);

  /**
   * 
   * 方法名称: querySsmb ；
   * 方法描述:  :   ；
   * 返回类型: List<Ssmb> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月14日 上午11:35:26；
   * @throws
   */
  List<Ssmb> querySsmb();

  /**
   * 
   * 方法名称: querySsmbById ；
   * 方法描述:  :   ；
   * 返回类型: Ssmb ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月14日 上午11:35:30；
   * @throws
   */
  Ssmb querySsmbById(int contract_id);

  /**
   * 方法名称: updateSsmb ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月30日 下午5:28:03；
   * @throws
   */
  boolean updateSsmb(Ssmb ssmb);

}
  
