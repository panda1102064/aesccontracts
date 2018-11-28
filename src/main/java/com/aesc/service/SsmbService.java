/**  
 * Project Name:aescContract  
 * File Name:SsmbService.java  
 * Package Name:com.aesc.service  
 * Date:2017年8月11日下午5:07:14  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Ssmb;

/**  
 * ClassName:SsmbService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月11日 下午5:07:14 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface SsmbService {
  
/**
 * 
 * 方法名称: saveSsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: void ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 下午5:09:43；
 * 
 */
  void saveSsmb(Ssmb ssmb);
  
/**
 * 
 * 方法名称: querySsmb ；
 * 方法描述:  TODO:   ；
 * 返回类型: List<Ssmb> ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 下午5:09:45；
 * 
 */
  List<Ssmb> querySsmb();
  
/**
 * 
 * 方法名称: querySsmbById ；
 * 方法描述:  TODO:   ；
 * 返回类型: Ssmb ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 下午5:09:47；
 * 
 */
  Ssmb querySsmbById(int contract_id);
  
  /**
   * 方法名称: updateSsmb ；
   * 方法描述:  TODO:   ；
   * 返回类型: boolean ；
   * 作者：Dawn Chen  ；
   * 时间：2017年10月30日 下午5:25:40；
   * @throws
   */
  boolean updateSsmb(Ssmb ssmb);

}
  
