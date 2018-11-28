/**  
 * Project Name:aescContract  
 * File Name:EscService.java  
 * Package Name:com.aesc.service  
 * Date:2017年8月22日下午4:47:59  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Esc;
import com.aesc.pojo.EscDate;

/**  
 * ClassName:EscService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月22日 下午4:47:59 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface EscService {

  /**
   * 方法名称: queryEsc ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<Esc> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午9:55:53；
   * @throws
   */
  List<Esc> queryEsc();

  /**
   * 方法名称: queryEscById ；
   * 方法描述:  TODO:   ；
   * 返回类型: Esc ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午9:55:57；
   * @throws
   */
  Esc queryEscById(int contract_id);

  /**
   * 方法名称: queryEscDateById ；
   * 方法描述:  TODO:   ；
   * 返回类型: EscDate ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月23日 上午9:56:00；
   * @throws
   */
  List<EscDate> queryEscDateById(int contract_id);

  /**
   * 方法名称: saveEsc ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月25日 上午9:59:08；
   * @throws
   */
  void saveEsc(Esc esc);

  /**
   * 方法名称: saveEscDate ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月25日 上午9:59:13；
   * @throws
   */
  void saveEscDate(EscDate escDate);

  /**
   * 方法名称: transverterEscList ；
   * 方法描述:  TODO: 将得到的数据转换为List传到前端页面进行处理  ；transverter：转换器；
   * 返回类型: List<EscDate> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月29日 上午11:03:38；
   * @throws
   */
  List<EscDate> transverterEscList(EscDate escDate);

  /**
   * 方法名称: updateEsc ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月10日 下午8:21:44；
   * @throws
   */
  boolean updateEsc(Esc esc);

  /**
   * 方法名称: updateEscDate ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月10日 下午8:21:51；
   * @throws
   */
  boolean updateEscDate(EscDate escDate);
}
  
