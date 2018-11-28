/**  
 * Project Name:aescContract  
 * File Name:QpyqmsmbDao.java  
 * Package Name:com.aesc.dao  
 * Date:2017年8月11日上午11:23:51  
 * Copyright (c) 2017, smolky7@gmail.com All Rights Reserved.  
 *  
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.Qpyqmsmb;

/**  
 * ClassName:QpyqmsmbDao <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2017年8月11日 上午11:23:51 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface QpyqmsmbDao {
    /**
     * 
     * 方法名称: saveQpyqmsmb ；
     * 方法描述:  TODO:   ；
     * 返回类型: void ；
     * 作者：Dawn Chen  ；
     * 时间：2017年8月11日 上午11:24:59；
     * @throws
     */
    void saveQpyqmsmb(Qpyqmsmb qpyqmsmb);
    /**
     * 
     * 方法名称: queryQpyqmsmb ；
     * 方法描述:  TODO:   ；
     * 返回类型: List<Qpyqmsmb> ；
     * 作者：Dawn Chen  ；
     * 时间：2017年8月11日 上午11:25:03；
     * @throws
     */
    List<Qpyqmsmb> queryQpyqmsmb();
    /**
     * 
     * 方法名称: queryQpyqmsmbById ；
     * 方法描述:  TODO:   ；
     * 返回类型: Qpyqmsmb ；
     * 作者：Dawn Chen  ；
     * 时间：2017年8月11日 上午11:25:05；
     * @throws
     */
    Qpyqmsmb queryQpyqmsmbById(int contract_id);
    
    /**
     * 方法名称: updateQpyqmsmb ；
     * 方法描述:  TODO:   ；
     * 返回类型: boolean ；
     * 作者：Dawn Chen  ；
     * 时间：2017年11月8日 下午1:56:43；
     * @throws
     */
    boolean updateQpyqmsmb(Qpyqmsmb qpyqmsmb);

}
  
