/**  
 * Project Name:aescContract  
 * File Name:DslqhtService.java  
 * Package Name:com.aesc.service  
 * Date:2017年8月18日下午4:31:13  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.DslqDate;
import com.aesc.pojo.Dslqht;

/**  
 * ClassName:DslqhtService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月18日 下午4:31:13 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface DslqhtService {

  /**
   * 方法名称: saveDslqht ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:34:42；
   * @throws
   */
  void saveDslqht(Dslqht dslqht);

  /**
   * 方法名称: queryDslqht ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<Dslqht> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:34:47；
   * @throws
   */
  List<Dslqht> queryDslqht();

  /**
   * 方法名称: queryDslqhtById ；
   * 方法描述:  TODO:   ；
   * 返回类型: Dslqht ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月18日 下午4:34:51；
   * @throws
   */
  Dslqht queryDslqhtById(int contract_id);

  /**
   * 方法名称: saveDslqDate ；
   * 方法描述:  TODO:   ；
   * 返回类型: void ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月31日 上午9:38:32；
   * @throws
   */
  void saveDslqDate(DslqDate dslqDate);

  /**
   * 方法名称: queryDslqDateById ；
   * 方法描述:  TODO:   ；
   * 返回类型: DslqDate ；
   * 作者：Dawn Chen  ；
   * 时间：2017年8月31日 上午9:53:43；
   * @throws
   */
  List<DslqDate> queryDslqDateById(int contract_id);

  /**
   * 方法名称: transverterEscList ；
   * 方法描述:  TODO:   ；
   * 返回类型: List<DslqDate> ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月6日 下午5:05:51；
   * @throws
   */
  List<DslqDate> transverterDslqList(DslqDate dslqDate);

  /**
   * 方法名称: updateDslqht ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月6日 下午5:05:58；
   * @throws
   */
  boolean updateDslqht(Dslqht dslqht);

  /**
   * 方法名称: updateDslqDate ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年11月6日 下午5:07:20；
   * @throws
   */
  boolean updateDslqDate(DslqDate dslqDate);

  /**
   * 
   * 方法名称: getDateId ；
   * description:  TODO:  根据主合同ID获取大厦楼群合同的日期Id
   * 返回类型: int[] ；
   * 作者：Dawn Chen  ；
   * 时间：2018年8月13日 上午10:23:20；
   * @throws
   */
  List<String> getDateId(int updateDslqDateContractId);

  List<DslqDate> transvertDslqList(DslqDate dslqDate);

}
  
