/**  
 * Project Name:aescContract  
 * File Name:TyhtService.java  
 * Package Name:com.aesc.service  
 * Date:2017年8月17日上午9:49:10  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Tyht;

/**  
 * ClassName:TyhtService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月17日 上午9:49:10 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface TyhtService {

  /**
   * 方法名称: saveTyht ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午9:58:55；
   * @throws
   */
  void saveTyht(Tyht tyht);

  /**
   * 方法名称: queryTyht ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<Tyht> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午9:59:00；
   * @throws
   */
  List<Tyht> queryTyht();

  /**
   * 方法名称: queryTyhtById ；
   * 方法描述:  TODO:   ；
   * 返回类型: Tyht ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月17日 上午9:59:04；
   * @throws
   */
  Tyht queryTyhtById(int contract_id);

  boolean updateTyht(Tyht tyht);

}
  
