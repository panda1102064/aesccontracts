/**  
 * Project Name:aescContract  
 * File Name:QpyqmsmbService.java  
 * Package Name:com.aesc.service  
 * Date:2017年8月11日上午11:14:29  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.Qpyqmsmb;

/**  
 * ClassName:QpyqmsmbService <br/>  
 * Function:  ADD FUNCTION. <br/>  
 * Reason:    ADD REASON. <br/>  
 * Date:     2017年8月11日 上午11:14:29 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface QpyqmsmbService {
/**
 * 
 * 方法名称: saveQpyqmsmb ；
 * 方法描述:  :   ；
 * 返回类型: void ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 上午11:15:13；
 * @throws
 */
    void saveQpyqmsmb(Qpyqmsmb qpyqmsmb);
/**
 * 
 * 方法名称: queryQpyqmsmb ；
 * 方法描述:  :   ；
 * 返回类型: List<Qpyqmsmb> ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 上午11:16:22；
 * @throws
 */
List<Qpyqmsmb> queryQpyqmsmb();
/**
 * 
 * 方法名称: queryQpyqmsmbById ；
 * 方法描述:  :   ；
 * 返回类型: Qpyqmsmb ；
 * 作者：Dawn Chen  ；
 * 时间：2017年8月11日 上午11:17:13；
 * @throws
 */
Qpyqmsmb queryQpyqmsmbById(int contract_id);

/**
 * 方法名称: updateQpyqmsmb ；
 * 方法描述:  :   ；
 * 返回类型: boolean ；
 * 作者：Dawn Chen  ；
 * 时间：2017年11月8日 下午1:55:55；
 * @throws
 */
boolean updateQpyqmsmb(Qpyqmsmb qpyqmsmb);

}
