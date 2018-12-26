/**  
 * Project Name:aescContract  
 * File Name:McgctccDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年12月12日下午3:31:56  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Mcgctcc;

/**  
 * ClassName:McgctccDao <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年12月12日 下午3:31:56 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface McgctccDao {

  /**
   * 方法名称: saveMcgctcc ；
   * 方法描述:  :   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年12月12日 下午3:48:43；
   * @throws
   */
  void saveMcgctcc(Mcgctcc mcgctcc);

  /**
   * 方法名称: queryMcgctcc ；
   * 方法描述:  :   ；
   * 返回类型: List<Mcgctcc> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年12月12日 下午3:48:48；
   * @throws
   */
  List<Mcgctcc> queryMcgctcc();

  /**
   * 方法名称: queryMcgctccById ；
   * 方法描述:  :   ；
   * 返回类型: Mcgctcc ；
   * 作者：Dawn Chen  ；
   * 时间：2017年12月12日 下午3:48:51；
   * @throws
   */
  Mcgctcc queryMcgctccById(int contract_id);

  /**
   * 方法名称: updateMcgctcc ；
   * 方法描述:  :   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年12月12日 下午4:36:27；
   * @throws
   */
  boolean updateMcgctcc(Mcgctcc mcgctcc);

}
  
