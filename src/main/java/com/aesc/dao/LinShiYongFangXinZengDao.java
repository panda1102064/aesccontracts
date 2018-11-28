/**  
 * Project Name:aescContract  
 * File Name:LinShiYongFangXinZengDao.java  
 * Package Name:com.aesc.dao  
 * Date:2018年10月24日上午11:28:20  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.dao;

import java.util.List;

import com.aesc.pojo.LinShiYongFangXinZeng;
import com.aesc.pojo.LinShiYongFangXinZengDate;

/**  
 * description：
 * ClassName:LinShiYongFangXinZengDao <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年10月24日 上午11:28:20 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */

public interface LinShiYongFangXinZengDao {

   void saveLsyf_xz(LinShiYongFangXinZeng lsyf_xz);

  List<LinShiYongFangXinZeng> queryLinShiYongFangXinZeng();

  void saveLsyf_xzDate(List<LinShiYongFangXinZengDate> lsyfDateList);
  
  LinShiYongFangXinZeng queryLinShiYongFangXinZengById(int contract_id);

  int getLsyf_xz_Id();

  List<LinShiYongFangXinZengDate> queryLsyfDateById(int contract_id);

  LinShiYongFangXinZeng queryLsyf_xzById(int contract_id);

  boolean updateLsyf_xz(LinShiYongFangXinZeng lsyf_xz);

  boolean updateLsyf_xz_Date(LinShiYongFangXinZengDate lsyfxz);

      
    
  

}
  
