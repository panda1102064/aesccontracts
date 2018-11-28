/**  
 * Project Name:aescContract  
 * File Name:LinShiYongFangXinZengService.java  
 * Package Name:com.aesc.service  
 * Date:2018年10月22日下午2:41:57  
 * Copyright (c) 2018, dawn@acdiost.com All Rights Reserved.  
 * description：
*/  
  
package com.aesc.service;

import java.util.List;

import com.aesc.pojo.LinShiYongFangXinZeng;
import com.aesc.pojo.LinShiYongFangXinZengDate;

/**  
 * description：
 * ClassName:LinShiYongFangXinZengService <br/>  
 * Function: TODO ADD FUNCTION. <br/>  
 * Reason:   TODO ADD REASON. <br/>  
 * Date:     2018年10月22日 下午2:41:57 <br/>  
 * @author   Dawn Chen  
 * @version    
 * @since    JDK 1.8  
 * @see        
 */
public interface LinShiYongFangXinZengService {

  void saveLsyf_xz(LinShiYongFangXinZeng lsyf_wwgf);

  void saveLsyf_xzDate(LinShiYongFangXinZengDate lsyf_xzDate);

  List<LinShiYongFangXinZeng> queryLinShiYongFangXinZeng();

  LinShiYongFangXinZeng queryLinShiYongFangXinZengById(int contract_id);

  List<LinShiYongFangXinZengDate> queryLsyfDateById(int contract_id);

  LinShiYongFangXinZeng queryLsyf_xzById(int contract_id);

  List<LinShiYongFangXinZengDate> transverterLsyfxzList(LinShiYongFangXinZengDate lsyf_xzDate);

  boolean updateLsyf_xz(LinShiYongFangXinZeng lsyf_xz);

  boolean updateLsyf_xz_Date(LinShiYongFangXinZengDate lsyf_xzDate);


}
  
